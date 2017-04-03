using System;
using System.Data;
using System.Configuration;
using System.Net;
using System.IO;
using System.Xml;
using System.Xml.XPath;

using Shove.Database;

namespace SZJS.ElectronTicket.Task
{
    public class ElectronTicket
    {
        private const int TimeoutSeconds = 100;
        private long gCount1 = 0;

        private System.Threading.Thread thread;
        private string ConnectionString;

        private Message msg = new Message("ElectronTicket");
        private Log log = new Log("ElectronTicket");

        public int State = 0;   // 0 停止 1 运行中 2 置为停止

        public string ElectronTicket_Getway;//网关地址
        public string ElectronTicket_Agent_UserNumber;//代理商编号
        public string ElectronTicket_Agent_Key;//代理商密钥
        public string ElectronTicket_Agent_UserName;//代理商用户名
        public string ElectronTicket_Agent_UserPassword;//代理商用户密码
        public string ElectronTicket_Agent_PostPassword;//代理商投注密码

        public ElectronTicket(string connectionstring)
        {
            ConnectionString = connectionstring;
        }

        public void Run()
        {
            SystemOptions so = new SystemOptions(ConnectionString);

            if ((ElectronTicket_Getway == "") || (ElectronTicket_Agent_UserNumber == "") || (ElectronTicket_Agent_Key == "") || (ElectronTicket_Agent_UserName == "") || (ElectronTicket_Agent_UserPassword == "") || (ElectronTicket_Agent_PostPassword == ""))
            {
                log.Write("ElectronTicket Task 参数配置不完整.");

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

                log.Write("ElectronTicket Task Start.");
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
                    msg.Send("ElectronTicket Task Stop.");
                    log.Write("ElectronTicket Task Stop.");

                    State = 0;

                    Stop();

                    return;
                }

                System.Threading.Thread.Sleep(1000);   // 1秒为单位

                gCount1++;

                #region 10 秒，发送电子票数据

                if (gCount1 >= 10)
                {
                    gCount1 = 0;

                    try
                    {
                        WriteTickets(); // 满员方案拆分为票
                    }
                    catch { }

                    try
                    {
                        Send();         // 循环发送出票请求
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

        // 满员方案拆分为票
        private void WriteTickets()
        {
            DataTable dt = new DAL.Views.V_SchemeSchedules().Open(ConnectionString, " ID, LotteryID, PlayTypeID, LotteryNumber, Multiple, Money", "Buyed = 0 and PrintOutType = 101 and (GetDate() between StartTime and EndTime) and Schedule >= 100 and not [ID] in (select SchemeID from T_SchemesSendToCenter)", "[ID]");
            ElectronTicket_BLL ElectronTicket_BLL = new ElectronTicket_BLL();
            if (dt == null)
            {
                msg.Send("读取方案错误(WriteTickets)。");
                log.Write("读取方案错误(WriteTickets)。");
                return;
            }

            DAL.Tables.T_Schemes t_Schemes = new DAL.Tables.T_Schemes();

            foreach (DataRow dr in dt.Rows)
            {
                long SchemeID = Shove._Convert.StrToLong(dr["ID"].ToString(), -1);
                string LotterNumber = ElectronTicket_BLL.GetLottreyNumber(Convert.ToInt32(dr["PlayTypeID"].ToString()), dr["LotteryNumber"].ToString());
                int PlayTypeID = Shove._Convert.StrToInt(dr["PlayTypeID"].ToString(), -1);
                int Multiple = Shove._Convert.StrToInt(dr["Multiple"].ToString(), -1);
                decimal Money = Convert.ToDecimal(dr["Money"].ToString());

                if ((SchemeID < 0) || (PlayTypeID < 0) || (Multiple < 1))
                {
                    msg.Send("读取方案错误(WriteTickets)。方案号：" + SchemeID.ToString());
                    log.Write("读取方案错误(WriteTickets)。方案号：" + SchemeID.ToString());

                    continue;
                }

                string TicketXML = "<Tickets>";
                TicketXML += "<Ticket LotteryNumber=\"" + LotterNumber + "\" Multiple=\"" + Multiple + "\" Money=\"" + Money + "\" />";
                TicketXML += "</Tickets>";

                int ReturnValue = 0;
                string ReturnDescription = "";

                int Result = DAL.Procedures.P_SchemesSendToCenterAdd(ConnectionString, SchemeID, PlayTypeID, TicketXML, ref ReturnValue, ref ReturnDescription);

                if ((Result < 0) || (ReturnValue < 0))
                {
                    msg.Send("票写入错误(WriteTickets)：方案号：" + SchemeID.ToString() + "，" + ReturnDescription);
                    log.Write("票写入错误(WriteTickets)：方案号：" + SchemeID.ToString() + "，" + ReturnDescription);
                }
            }
        }

        //向大赢家出票接口发送票  发送类型101(投注请求)
        private void Send()
        {
            DataTable dt = new DAL.Views.V_SchemesSendToCenter().Open(ConnectionString, "", "Buyed = 0 and PrintOutType = 101 and (GetDate() between StartTime and EndTime) and ((Sends = 0) or (Sends < 3 and HandleResult = 0 and datediff(minute, [Datetime], GetDate()) > 3))", "[ID]");

            if (dt == null)
            {
                log.Write("向大赢家电子票网关发送数据出错：读取方案错误。");
                return;
            }

            DAL.Tables.T_SchemesSendToCenter t_SchemesSendToCenter = new DAL.Tables.T_SchemesSendToCenter();
            ElectronTicket_BLL ElectronTicket_BLL = new ElectronTicket_BLL();

            if (dt.Rows.Count < 1)
            {
                return;
            }

            int SendCount = 0;

            if ((dt.Rows.Count % 500) != 0)
            {
                SendCount = (dt.Rows.Count - (dt.Rows.Count % 500)) / 500 + 1;
            }
            else
            {
                SendCount = dt.Rows.Count / 500;
            }
            // wAgent=3821&wAction=101&wMsgID=1194065967&wSign=6d8ce6c8cb4c76d60af98a87c8a9d723&wParam=OrderID=2007129298_LotID=10202_LotIssue=2007110818_LotMoney=12_LotMulti=2_OneMoney=2_LotCode=1|68,2,9;6|5,1,8_Attach=投注测试
            //wAgent+wAction+wMsgID+wParam+代理商密钥
            for (int i = 0; i < SendCount; i++)
            {
                DateTime Now = DateTime.Now;
                for (int j = i * 500; j < (i * 500) + 500; j++)
                {
                    if (j >= dt.Rows.Count)
                    {
                        break;
                    }

                    DataRow dr = dt.Rows[j];
                    string wParamStr = "";
                    string wSignStr = "";
                    try
                    {
                        wParamStr = "OrderID=" + dr["SchemeIdentifiers"].ToString() + "_LotID=" + ElectronTicket_BLL.GetLotteryID(dr["LotteryID"].ToString()) + "_LotIssue=" + ElectronTicket_BLL.GetIsuse(Convert.ToInt32(dr["LotteryID"].ToString()), dr["IsuseName"].ToString()) + "_LotMoney=" + Shove._Convert.StrToFloat(dr["Money"].ToString(), 0) + "_LotMulti=" + dr["Multiple"].ToString() + "_OneMoney=" + ElectronTicket_BLL.getSingleMoney(dr["PlayTypeName"].ToString()) + "_LotCode=" + dr["Ticket"].ToString() + "_Attach=Betting";
                    }
                    catch (Exception ex)
                    {
                        msg.Send(ex.Message);
                        log.Write(ex.Message);
                        continue;
                    }
                    try
                    {
                        wSignStr = Shove._Security.Encrypt.MD5(ElectronTicket_Agent_UserNumber + "101" + dr["Identifiers"].ToString() + wParamStr + ElectronTicket_Agent_Key + "", "gb2312");
                    }
                    catch (Exception ex)
                    {
                        msg.Send(ex.Message);
                        log.Write(ex.Message);
                        continue;
                    }
                    string Sends = dr["Sends"].ToString();
                    if (MSSQL.ExecuteNonQuery(ConnectionString, "update T_SchemesSendToCenter set Sends = Sends + 1, [DateTime] = GetDate() where [ID] =" + dr["ID"].ToString()) < 0)
                    {
                        msg.Send("更新票发送状态时出错(SendTickets)。方案ID：" + dt.Rows[i]["SchemeID"].ToString());
                        log.Write("更新票发送状态时出错(SendTickets)。方案ID：" + dt.Rows[i]["SchemeID"].ToString());
                        continue;
                    }

                    string ReceiveString = "";

                    try
                    {
                       log.Write(ElectronTicket_Getway + "wAgent=" + ElectronTicket_Agent_UserNumber + "&wAction=101&wMsgID=" + dr["Identifiers"].ToString() + "&wSign=" + wSignStr + "&wParam=" + wParamStr);

                        ReceiveString = PublicFunction.Post(ElectronTicket_Getway, "wAgent=" + ElectronTicket_Agent_UserNumber + "&wAction=101&wMsgID=" + dr["Identifiers"].ToString() + "&wSign=" + wSignStr + "&wParam=" + wParamStr + "", TimeoutSeconds);
                    }
                    catch
                    {
                        msg.Send("电子票-101 发送失败(SendTickets)。方案ID：" + dt.Rows[i]["SchemeID"].ToString());
                        log.Write("电子票-101 发送失败(SendTickets)。方案ID：" + dt.Rows[i]["SchemeID"].ToString());
                        continue;
                    }

                      log.Write(ReceiveString);
                    string code = ElectronTicket_BLL.GetXMLCode(ReceiveString, "xCode");
                    int ReturnValue = 0;
                    string ReturnDescription = "";
                    if (code == "0")
                    {
                        int Result = DAL.Procedures.P_SchemesSendToCenterHandleUniteAnte(ConnectionString, Shove._Convert.StrToLong(dt.Rows[i]["SchemeID"].ToString(), -1), DateTime.Now, true, ref ReturnValue, ref ReturnDescription);

                        if ((Result < 0) || (ReturnValue < 0))
                        {
                            msg.Send("对所发送的成功的代购票第一次处理出错(SendTickets)：数据读写错误。票号：" + dt.Rows[i]["SchemeID"].ToString() + "，" + ReturnDescription);
                            log.Write("对所发送的成功的代购票第一次处理出错(SendTickets)：数据读写错误。票号：" + dt.Rows[i]["SchemeID"].ToString() + "，" + ReturnDescription);
                        }

                        continue;
                    }

                    int State = 0;
                    int SiteID = Shove._Convert.StrToInt(dt.Rows[i]["SiteID"].ToString(), 1);

                    try
                    {
                        State = int.Parse(code);
                    }
                    catch { }

                    if (code == "1007")     // 系统限号，投注失败！
                    {
                        if (Shove._Convert.StrToInt(Sends, 0) < 99)
                        {
                            t_SchemesSendToCenter.Sends.Value = 99;
                            t_SchemesSendToCenter.Update(ConnectionString, "SchemeID = " + dt.Rows[i]["SchemeID"].ToString());
                        }
                        else
                        {
                            int Result = DAL.Procedures.P_QuashScheme(ConnectionString, SiteID, Shove._Convert.StrToLong(dt.Rows[i]["SchemeID"].ToString(), 0), true, false, ref ReturnValue, ref ReturnDescription);

                            if ((Result < 0) || (ReturnValue < 0))
                            {
                                msg.Send("对所发送失败的代购票【作撤单】处理出错(SendTickets)：数据读写错误。票号：" + dt.Rows[i]["SchemeID"].ToString() + "，" + code + "，" + ReturnDescription);
                                log.Write("对所发送失败的代购票【作撤单】处理出错(SendTickets)：数据读写错误。票号：" + dt.Rows[i]["SchemeID"].ToString() + "，" + code + "，" + ReturnDescription);
                            }
                        }

                        continue;
                    }

                    t_SchemesSendToCenter.Sends.Value = 100 + State;
                    t_SchemesSendToCenter.Update(ConnectionString, "SchemeID = " + dt.Rows[i]["SchemeID"].ToString());
                    if ("100 101 102 103 104 198 199 1001 1002 1003 1004 1005 1006 1007 1008 1009 1010 1011 1012 1013 2001 2002 2003 2004 2005 2006 2007 8001 8002".IndexOf(code) >= 0)
                    {
                        int Result = DAL.Procedures.P_QuashScheme(ConnectionString, SiteID, Shove._Convert.StrToLong(dt.Rows[i]["SchemeID"].ToString(), 0), true, false, ref ReturnValue, ref ReturnDescription);

                        if ((Result < 0) || (ReturnValue < 0))
                        {
                            msg.Send("对所发送落地失败的代购票【作撤单】处理出错(SendTickets)：数据读写错误。票号：" + dt.Rows[i]["SchemeID"].ToString() + "，" + code + "，" + ReturnDescription);
                            log.Write("对所发送落地失败的代购票【作撤单】处理出错(SendTickets)：数据读写错误。票号：" + dt.Rows[i]["SchemeID"].ToString() + "，" + code + "，" + ReturnDescription);
                        }
                    }
                }
            }
        }

        #endregion
    }

}
