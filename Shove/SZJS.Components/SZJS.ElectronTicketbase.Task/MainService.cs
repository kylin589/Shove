using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Diagnostics;
using System.Linq;
using System.ServiceProcess;
using System.Text;

namespace SZJS.ElectronTicketbase.Task
{
    partial class MainService : ServiceBase
    {
        private string ConnectionString = "";

        private ElectronTicket_TC ElectronTicket_TC_Task = null;//体彩电子出票
        private ElectronTicket_FC ElectronTicket_FC_Task = null;//福彩电子出票
        private ElectronTicket_JC ElectronTicket_JC_Task = null;//竞彩电子出票

        public MainService()
        {
            InitializeComponent();
            Shove._IO.IniFile ini = new Shove._IO.IniFile(System.AppDomain.CurrentDomain.BaseDirectory + "Config.ini");
            ConnectionString = ini.Read("Options", "ConnectionString");
        }

        protected override void OnStart(string[] args)
        {
            try
            {
                System.Data.SqlClient.SqlConnection conn = Shove.Database.MSSQL.CreateDataConnection<System.Data.SqlClient.SqlConnection>(ConnectionString);

                while (conn.State != ConnectionState.Open)
                {
                    conn.Open();

                    new Log("System").Write("数据库连接失败");

                    System.Threading.Thread.Sleep(1000);
                }

                conn.Close();
            }
            catch (Exception e)
            {
                new Log("System").Write(e.Message);
            }

            SystemOptions so = new SystemOptions(ConnectionString);

            // 中民卓彩竞彩电子票自动任务
            try
            {

                if ((new DAL.Tables.T_Lotteries().GetCount(ConnectionString, "PrintOutType = 102") > 0))
                {
                    ElectronTicket_JC_Task = new ElectronTicket_JC(ConnectionString);

                    ElectronTicket_JC_Task.ElectronTicketbase_JC_Getway = so["ElectronTicketbase_JC_Getway"].ToString("");
                    ElectronTicket_JC_Task.ElectronTicketbase_JC_Agent_UserNumber = so["ElectronTicketbase_JC_Agent_UserNumber"].ToString("");
                    ElectronTicket_JC_Task.ElectronTicketbase_JC_Agent_Key = so["ElectronTicketbase_JC_Agent_Key"].ToString("");

                    Shove._IO.IniFile ini = new Shove._IO.IniFile(System.AppDomain.CurrentDomain.BaseDirectory + "Config.ini");

                    if ((ElectronTicket_JC_Task.ElectronTicketbase_JC_Getway != "") && (ElectronTicket_JC_Task.ElectronTicketbase_JC_Agent_UserNumber != "") && (ElectronTicket_JC_Task.ElectronTicketbase_JC_Agent_Key != ""))
                    {
                        ElectronTicket_JC_Task.Run();
                    }
                }
               
            }
            catch (Exception e)
            {
                new Log("System").Write("ElectronTicket_JC_Task 启动失败：" + e.Message);
            }


            // 中民卓彩体彩电子票自动任务
            try
            {
                if ((new DAL.Tables.T_Lotteries().GetCount(ConnectionString, "PrintOutType = 103") > 0))
                {
                    ElectronTicket_TC_Task = new ElectronTicket_TC(ConnectionString);

                    ElectronTicket_TC_Task.ElectronTicketbase_TC_Getway = so["ElectronTicketbase_TC_Getway"].ToString("");
                    ElectronTicket_TC_Task.ElectronTicketbase_TC_Agent_UserNumber = so["ElectronTicketbase_TC_Agent_UserNumber"].ToString("");
                    ElectronTicket_TC_Task.ElectronTicketbase_TC_Agent_Key = so["ElectronTicketbase_TC_Agent_Key"].ToString("");

                    Shove._IO.IniFile ini = new Shove._IO.IniFile(System.AppDomain.CurrentDomain.BaseDirectory + "Config.ini");

                    if ((ElectronTicket_TC_Task.ElectronTicketbase_TC_Agent_Key != "") && (ElectronTicket_TC_Task.ElectronTicketbase_TC_Agent_UserNumber != "") && (ElectronTicket_TC_Task.ElectronTicketbase_TC_Getway != ""))
                    {
                        ElectronTicket_TC_Task.Run();
                    }
                }
               
            }
            catch (Exception e)
            {
                new Log("System").Write("ElectronTicket_TC_Task 启动失败：" + e.Message);
            }

            //中民卓彩福彩电子票自动任务
            try
            {
                if ((new DAL.Tables.T_Lotteries().GetCount(ConnectionString, "PrintOutType = 104") > 0))
                {
                    ElectronTicket_FC_Task = new ElectronTicket_FC(ConnectionString);

                    ElectronTicket_FC_Task.ElectronTicketbase_FC_Getway = so["ElectronTicketbase_FC_Getway"].ToString("");
                    ElectronTicket_FC_Task.ElectronTicketbase_FC_Agent_UserNumber = so["ElectronTicketbase_FC_Agent_UserNumber"].ToString("");
                    ElectronTicket_FC_Task.ElectronTicketbase_FC_Agent_Key = so["ElectronTicketbase_FC_Agent_Key"].ToString("");

                    Shove._IO.IniFile ini = new Shove._IO.IniFile(System.AppDomain.CurrentDomain.BaseDirectory + "Config.ini");

                    if ((ElectronTicket_FC_Task.ElectronTicketbase_FC_Getway != "") && (ElectronTicket_FC_Task.ElectronTicketbase_FC_Agent_UserNumber != "") && (ElectronTicket_FC_Task.ElectronTicketbase_FC_Agent_Key != ""))
                    {
                        ElectronTicket_FC_Task.Run();
                    }
                }
                
            }
            catch (Exception e)
            {
                new Log("System").Write("ElectronTicket_FC_Task 启动失败：" + e.Message);
            }

        }

        protected override void OnStop()
        {
            if (ElectronTicket_TC_Task != null)
            {
                ElectronTicket_TC_Task.Exit();
            }
            while ((ElectronTicket_TC_Task != null) && (ElectronTicket_TC_Task.State != 0)) { System.Threading.Thread.Sleep(500); };

            if (ElectronTicket_FC_Task != null)
            {
                ElectronTicket_FC_Task.Exit();
            }
            while ((ElectronTicket_FC_Task != null) && (ElectronTicket_FC_Task.State != 0)) { System.Threading.Thread.Sleep(500); };

            if (ElectronTicket_JC_Task != null)
            {
                ElectronTicket_JC_Task.Exit();
            }
            while ((ElectronTicket_JC_Task != null) && (ElectronTicket_JC_Task.State != 0)) { System.Threading.Thread.Sleep(500); };
        }
    }
}
