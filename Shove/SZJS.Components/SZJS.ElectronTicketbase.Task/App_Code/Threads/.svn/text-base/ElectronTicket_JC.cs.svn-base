using System;
using System.Data;
using System.Configuration;
using System.Collections.Generic;
using System.Net;
using System.IO;
using System.Xml;
using System.Xml.XPath;

using Shove.Database;

namespace SZJS.ElectronTicketbase.Task
{
    /// <summary>
    /// 竞彩篮球、竞彩足球、北京单场
    /// </summary>
    public class ElectronTicket_JC
    {
        private long gCount1 = 0;

        private System.Threading.Thread thread;
        private string ConnectionString;

        private Message msg = new Message("ElectronTicketJC");
        private Log log = new Log("ElectronTicketJC");

        public int State = 0;   // 0 停止 1 运行中 2 置为停止

        public string ElectronTicketbase_JC_Getway;//网关地址
        public string ElectronTicketbase_JC_Agent_UserNumber;//代理商编号
        public string ElectronTicketbase_JC_Agent_Key;//代理商密钥
        /// <summary>
        /// 竞彩102
        /// </summary>
        /// <param name="connectionstring"></param>
        public ElectronTicket_JC(string connectionstring)
        {
            ConnectionString = connectionstring;
        }
        public void Run()
        {
            SystemOptions so = new SystemOptions(ConnectionString);

            if ((ElectronTicketbase_JC_Getway == "") || (ElectronTicketbase_JC_Agent_UserNumber == "") || (ElectronTicketbase_JC_Agent_Key == ""))
            {
                log.Write("ElectronTicket_JC Task 参数配置不完整.");

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

                log.Write("ElectronTicket_JC Task Start.");
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
                    msg.Send("ElectronTicket_JC Task Stop.");
                    log.Write("ElectronTicket_JC Task Stop.");

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
            DataTable dt = new DAL.Views.V_SchemeSchedules().Open(ConnectionString, " ID, LotteryID, PlayTypeID, LotteryNumber, Multiple, Money", "Buyed = 0 and PrintOutType = 102 and (GetDate() between StartTime and EndTime) and Schedule >= 100 and not [ID] in (select SchemeID from T_SchemesSendToCenter)", "[ID]");
            if (dt == null)
            {
                msg.Send("读取方案错误(WriteTickets)。");
                log.Write("读取方案错误(WriteTickets)。");
                return;
            }

            DAL.Tables.T_Schemes t_Schemes = new DAL.Tables.T_Schemes();
            ElectronTicketBase.ElectronTicketTwo ElectronTicket = new ElectronTicketBase.ElectronTicketTwo();
            foreach (DataRow dr in dt.Rows)
            {
                List<string> TicekList = ElectronTicket.ToResault(Convert.ToInt32(dr["PlayTypeID"].ToString()), dr["LotteryNumber"].ToString());
                string LotterNumber = null;
                long SchemeID = Shove._Convert.StrToLong(dr["ID"].ToString(), -1);
                for (int j = 0; j < TicekList.Count; j++)
                {
                    LotterNumber += TicekList[j].ToString() + ",";
                }
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

        //向中民卓彩票出票接口发送票  发送类型102(投注请求)
        private void Send()
        {
            DataTable dt = new DAL.Views.V_SchemesSendToCenter().Open(ConnectionString, "", "Buyed = 0 and PrintOutType = 102 and (GetDate() between StartTime and EndTime) and ((Sends = 0) or (Sends < 3 and HandleResult = 0 and datediff(minute, [Datetime], GetDate()) > 3))", "[ID]");

            if (dt == null)
            {
                log.Write("向中民卓彩票电子票网关发送数据出错：读取方案错误。");
                return;
            }
            DAL.Tables.T_SchemesSendToCenter t_SchemesSendToCenter = new DAL.Tables.T_SchemesSendToCenter();
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
            ElectronTicketBase.ElectronTicketTwo ElectronTicket = new ElectronTicketBase.ElectronTicketTwo();
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
                        var Ticket = dr["Ticket"].ToString().Split(',');
                        string transcode = "102";
                        wParamStr = @"<?xml version='1.0' encoding='utf-8'?>";
                        wParamStr += @"<msg>";
                        wParamStr += @"<head transcode='" + transcode + "' partnerid='" + ElectronTicketbase_JC_Agent_UserNumber + "' version='1.0' time='" + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss") + "'/>";
                        wParamStr += @"<body>";
                        wParamStr += @"<ticketorder lotteryid='" + ElectronTicket.GetLotteryID(dr["LotteryID"].ToString()) + "' issueid='" + ElectronTicket.GetToPalyIsuse(Convert.ToInt32(dr["LotteryID"].ToString()), dr["IsuseName"].ToString()) + "'  ticketnum='" + Convert.ToInt32(Ticket.Length - 1) + "'  totalmoney='" + Convert.ToDecimal(dr["Money"].ToString()).ToString("F2") + "' > ";
                        wParamStr += @"<tickets>";
                        for (int k = 0; k < Ticket.Length - 1; k++)
                        {
                            wParamStr += @"<ticket play='" + Ticket[k].Split('|')[0].ToString() + "' id='" + Guid.NewGuid().ToString() + "'  multiple='" + dr["Multiple"].ToString() + "' money='" + Ticket[k].Split('|')[2].ToString() + "' code='" + Ticket[k].Split('|')[1].ToString() + "'/>";
                        }
                        wParamStr += @"</tickets>";
                        wParamStr += @"</ticketorder>";
                        wParamStr += @"</body>";
                        wParamStr += @"</msg>";
                    }
                    catch (Exception ex)
                    {
                        msg.Send(ex.Message);
                        log.Write(ex.Message);
                        continue;
                    }
                    try
                    {
                        wSignStr = Shove._Security.Encrypt.MD5(wParamStr + ElectronTicketbase_JC_Agent_Key, "UTF-8").ToUpper();
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
                        log.Write(wParamStr);
                        ReceiveString = PublicFunction.Post(ElectronTicketbase_JC_Getway, wParamStr, wSignStr);
                    }
                    catch
                    {
                        msg.Send("电子票-102 发送失败(SendTickets)。方案ID：" + dt.Rows[i]["SchemeID"].ToString());
                        log.Write("电子票-102 发送失败(SendTickets)。方案ID：" + dt.Rows[i]["SchemeID"].ToString());
                        continue;
                    }

                     log.Write(ReceiveString);

                    string code = ElectronTicket.GetXMLValue(ReceiveString, "head", "transcode");
                    int ReturnValue = 0;
                    string ReturnDescription = "";
                    if (code == "702")
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

                    t_SchemesSendToCenter.Sends.Value = 100 + State;
                    t_SchemesSendToCenter.Update(ConnectionString, "SchemeID = " + dt.Rows[i]["SchemeID"].ToString());
                    if ("9999 9001 9005 9002 9003 9004".IndexOf(code) >= 0)
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
