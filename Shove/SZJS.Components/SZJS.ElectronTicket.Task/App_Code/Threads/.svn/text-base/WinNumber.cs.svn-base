using System;
using System.Data;
using System.Configuration;
using System.Net;
using System.IO;
using System.Xml;
using System.Xml.XPath;
using System.Text;

using Shove.Database;

namespace SZJS.ElectronTicket.Task
{
    public class WinNumber
    {
        private const int TimeoutSeconds = 100;
        private long gCount1 = 0;

        private System.Threading.Thread thread;
        private string ConnectionString;

        private Message msg = new Message("WinNumber");
        private Log log = new Log("WinNumber");

        public int State = 0;   // 0 停止 1 运行中 2 置为停止

        public string ElectronTicket_Getway;//网关地址
        public string ElectronTicket_Agent_UserNumber;//代理商编号
        public string ElectronTicket_Agent_Key;//代理商密钥
        public string ElectronTicket_Agent_UserName;//代理商用户名
        public string ElectronTicket_Agent_UserPassword;//代理商用户密码
        public string ElectronTicket_Agent_PostPassword;//代理商投注密码
        public WinNumber(string connectionstring)
        {
            ConnectionString = connectionstring;
        }
        public void Run()
        {
            SystemOptions so = new SystemOptions(ConnectionString);

            if ((ElectronTicket_Getway == "") || (ElectronTicket_Agent_UserNumber == "") || (ElectronTicket_Agent_Key == "") || (ElectronTicket_Agent_UserName == "") || (ElectronTicket_Agent_UserPassword == "") || (ElectronTicket_Agent_PostPassword == ""))
            {
                log.Write("WinNumber Task 参数配置不完整.");

                return;
            }

            // 已经启动
            if (State == 1)
            {
                return;
            }

            lock (this) // 确保临界区被一个 Thread 所占用
            {
                State = 1;

                gCount1 = 0;

                thread = new System.Threading.Thread(new System.Threading.ThreadStart(Do));
                thread.IsBackground = true;

                thread.Start();

                log.Write("WinNumber Task Start.");
            }
        }

        public void Exit()
        {
            State = 2;
        }

        public void Do()
        {
            while (true)
            {
                if (State == 2)
                {
                    msg.Send("WinNumber Task Stop.");
                    log.Write("WinNumber Task Stop.");

                    State = 0;

                    Stop();

                    return;
                }

                System.Threading.Thread.Sleep(1000);   // 1秒为单位

                gCount1++;

                #region 10 秒，发送请求数据

                if (gCount1 >= 10)
                {
                    gCount1 = 0;

                    try
                    {
                        Send();         // 循环发送开奖号码请求
                    }
                    catch { }
                }

                #endregion
            }
        }

        private void Stop()
        {
            if (thread != null)
            {
                thread.Abort();
                thread = null;
            }
        }

        #region 定时器执行的事件

        //向大赢家出票接口发送票  发送类型110(发送开奖号码请求)
        private void Send()
        {
            DataTable SiteLoID = new DAL.Tables.T_Lotteries().Open("[ID]", "[ID] in (2,3,5,6,9,13,15,28,29,39,61,63,64,65,70,74,75)", "[Order]");
            ElectronTicket_BLL ElectronTicket_BLL = new ElectronTicket_BLL();
            for (int i = 0; i < SiteLoID.Rows.Count; i++)
            {
                DataTable dt = GetIsusesInfo(SiteLoID.Rows[i]["ID"].ToString());
                if (dt.Rows.Count > 0)
                {
                    //上期期信息（未开奖）
                    string LastIsuseName = null;
                    string LastLotteryID = null;
                    string wMsgID = null;
                    try
                    {
                        LastIsuseName = dt.Rows[0]["Name"].ToString();
                        LastLotteryID = dt.Rows[0]["LotteryID"].ToString();
                        wMsgID = dt.Rows[0]["ID"].ToString(); ;
                    }
                    catch (Exception ex)
                    {
                        msg.Send(ex.Message);
                        log.Write(ex.Message);
                        continue;
                    }
                    //wAgent=3821&wAction=110&wMsgID=1238494210&wSign=b7c289e65e00f5fb834f338e6b753e44&wParam=LotID=11_LotIssue=2008001
                    //wAgent+wAction+wMsgID+wParam+代理商密钥
                    string wParamStr = "";
                    string wSignStr = "";

                    try
                    {
                        wParamStr = "LotID=" + ElectronTicket_BLL.GetLotteryID(LastLotteryID) + "_LotIssue=" + ElectronTicket_BLL.GetIsuse(Convert.ToInt32(LastLotteryID), LastIsuseName) + "";
                    }
                    catch (Exception ex)
                    {
                        msg.Send(ex.Message);
                        log.Write(ex.Message);
                        continue;
                    }
                    try
                    {
                        wSignStr = Shove._Security.Encrypt.MD5(ElectronTicket_Agent_UserNumber + "110" + wMsgID + wParamStr + ElectronTicket_Agent_Key + "", "gb2312");
                    }
                    catch (Exception ex)
                    {
                        msg.Send(ex.Message);
                        log.Write(ex.Message);
                        continue;
                    }

                    string ReceiveString = "";
                    try
                    {
                        //log.Write(ElectronTicket_Getway + "wAgent=" + ElectronTicket_Agent_UserNumber + "&wAction=110&wMsgID=" + wMsgID + "&wSign=" + wSignStr + "&wParam=" + wParamStr);
                        System.Threading.Thread.Sleep(500);
                        ReceiveString = PublicFunction.Post(ElectronTicket_Getway, "wAgent=" + ElectronTicket_Agent_UserNumber + "&wAction=110&wMsgID=" + wMsgID + "&wSign=" + wSignStr + "&wParam=" + wParamStr + "", TimeoutSeconds);
                    }
                    catch
                    {
                        msg.Send("获取开奖号-110 发送失败");
                        log.Write("获取开奖号-110 发送失败");
                        continue;
                    }

                   // log.Write(ReceiveString);
                    System.Threading.Thread.Sleep(500);
                    string code = ElectronTicket_BLL.GetXMLCode(ReceiveString, "xCode");
                    if (code == "0")
                    {
                        string xValue = ElectronTicket_BLL.GetXMLCode(ReceiveString, "xValue");
                        string IsuseID = ElectronTicket_BLL.GetXMLCode(ReceiveString, "xMsgID");
                        var arrInfo = xValue.Split('_');
                        DAL.Tables.T_Isuses T_Isuses = new DAL.Tables.T_Isuses();
                        T_Isuses.WinLotteryNumber.Value = arrInfo[1];

                        if (T_Isuses.Update("[ID] = " + IsuseID) < 0)
                        {
                            msg.Send("自动录入开奖号码失败 彩种ID：" + IsuseID);
                            log.Write("自动录入开奖号码失败 彩种ID：" + IsuseID);
                            continue;
                        }
                    }
                }
                continue;
            }
        }

        private DataTable GetIsusesInfo(string LotteryID)
        {
            string SQLStr = @"SELECT ID,LotteryID,Name,WinLotteryNumber,StartTime,EndTime,IsOpened FROM dbo.T_Isuses WHERE LotteryID=" + LotteryID + " AND WinLotteryNumber ='' AND GETDATE()>EndTime  ORDER BY EndTime ASC";
            return MSSQL.Select(SQLStr.ToString(), new MSSQL.Parameter[0]);
        }
        #endregion
    }
}
