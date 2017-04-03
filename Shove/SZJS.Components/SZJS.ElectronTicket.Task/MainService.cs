using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Diagnostics;
using System.Linq;
using System.ServiceProcess;
using System.Text;

namespace SZJS.ElectronTicket.Task
{
    public partial class MainService : ServiceBase
    {
        private string ConnectionString = "";

        private ElectronTicket ElectronTicket_Task = null;//电子出票
        private WinNumber WinNumber_Task = null;//自动录入开奖号码

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

            // 上海大赢家电子票自动任务
            try
            {
                if ((new DAL.Tables.T_Lotteries().GetCount(ConnectionString, "PrintOutType = 101") > 0))
                {
                    ElectronTicket_Task = new ElectronTicket(ConnectionString);

                    ElectronTicket_Task.ElectronTicket_Getway = so["ElectronTicket_Getway"].ToString("");
                    ElectronTicket_Task.ElectronTicket_Agent_UserNumber = so["ElectronTicket_Agent_UserNumber"].ToString("");
                    ElectronTicket_Task.ElectronTicket_Agent_Key = so["ElectronTicket_Agent_Key"].ToString("");
                    ElectronTicket_Task.ElectronTicket_Agent_UserName = so["ElectronTicket_Agent_UserName"].ToString("");
                    ElectronTicket_Task.ElectronTicket_Agent_UserPassword = so["ElectronTicket_Agent_UserPassword"].ToString("");
                    ElectronTicket_Task.ElectronTicket_Agent_PostPassword = so["ElectronTicket_Agent_PostPassword"].ToString("");

                    Shove._IO.IniFile ini = new Shove._IO.IniFile(System.AppDomain.CurrentDomain.BaseDirectory + "Config.ini");

                    if ((ElectronTicket_Task.ElectronTicket_Getway != "") && (ElectronTicket_Task.ElectronTicket_Agent_UserNumber != "") && (ElectronTicket_Task.ElectronTicket_Agent_Key != "") && (ElectronTicket_Task.ElectronTicket_Agent_UserName != "") && (ElectronTicket_Task.ElectronTicket_Agent_UserPassword != "") && (ElectronTicket_Task.ElectronTicket_Agent_PostPassword != ""))
                    {
                        ElectronTicket_Task.Run();
                    }
                }
            }
            catch (Exception e)
            {
                new Log("System").Write("ElectronTicket 启动失败：" + e.Message);
            }

            // 上海大赢家自动录入开奖号任务
            try
            {

                WinNumber_Task = new WinNumber(ConnectionString);
                WinNumber_Task.ElectronTicket_Getway = so["ElectronTicket_Getway"].ToString("");
                WinNumber_Task.ElectronTicket_Agent_UserNumber = so["ElectronTicket_Agent_UserNumber"].ToString("");
                WinNumber_Task.ElectronTicket_Agent_Key = so["ElectronTicket_Agent_Key"].ToString("");
                WinNumber_Task.ElectronTicket_Agent_UserName = so["ElectronTicket_Agent_UserName"].ToString("");
                WinNumber_Task.ElectronTicket_Agent_UserPassword = so["ElectronTicket_Agent_UserPassword"].ToString("");
                WinNumber_Task.ElectronTicket_Agent_PostPassword = so["ElectronTicket_Agent_PostPassword"].ToString("");

                Shove._IO.IniFile ini = new Shove._IO.IniFile(System.AppDomain.CurrentDomain.BaseDirectory + "Config.ini");
                if ((WinNumber_Task.ElectronTicket_Getway != "") && (WinNumber_Task.ElectronTicket_Agent_UserNumber != "") && (WinNumber_Task.ElectronTicket_Agent_Key != "") && (WinNumber_Task.ElectronTicket_Agent_UserName != "") && (WinNumber_Task.ElectronTicket_Agent_UserPassword != "") && (WinNumber_Task.ElectronTicket_Agent_PostPassword != ""))
                {
                    WinNumber_Task.Run();
                }

            }
            catch (Exception e)
            {
                new Log("System").Write("WinNumber 启动失败：" + e.Message);
            }
        }

        protected override void OnStop()
        {
            if (ElectronTicket_Task != null)
            {
                ElectronTicket_Task.Exit();
            }
            while ((ElectronTicket_Task != null) && (ElectronTicket_Task.State != 0)) { System.Threading.Thread.Sleep(500); };

            if (WinNumber_Task != null)
            {
                WinNumber_Task.Exit();
            }
            while ((WinNumber_Task != null) && (WinNumber_Task.State != 0)) { System.Threading.Thread.Sleep(500); };
        }
    }
}
