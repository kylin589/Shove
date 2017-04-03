using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Diagnostics;
using System.Linq;
using System.ServiceProcess;
using System.Text;

namespace SZJS.All.Task
{
    public partial class MainService : ServiceBase
    {
        private string ConnectionString = "";//连接数据库
        private Task task = null; //自动任务
        private SendSMSTask SendSms_Task = null; //发送手机短信
        private SmsBettingTask SmsBetting_Task = null; //发送短信接收

        public MainService()
        {
            InitializeComponent();
            Shove._IO.IniFile ini = new Shove._IO.IniFile(System.AppDomain.CurrentDomain.BaseDirectory + "Config.ini");
            ConnectionString = ini.Read("Options", "ConnectionString");
        }

        protected override void OnStart(string[] args)
        {
            SystemOptions so = new SystemOptions(ConnectionString);

            #region 自动连接数据库
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
            #endregion

            #region 自动任务
            try
            {
                task = new Task(ConnectionString);

                task.Run();
            }
            catch (Exception e)
            {
                new Log("System").Write("Task 启动失败：" + e.Message);
            }
            #endregion

            #region 自动任务发送短信
            try
            {
                SendSms_Task = new SendSMSTask(ConnectionString);

                SendSms_Task.Run();
            }
            catch (Exception e)
            {
                new Log("System").Write("SendSMSTask 启动失败：" + e.Message);
            }
            #endregion

            #region 自动任务短信接收
            try
            {
                if (so["Betting_SMS_Status_ON"].ToBoolean(false))
                {
                    SmsBetting_Task = new SmsBettingTask(ConnectionString);

                    SmsBetting_Task.Run();
                }
            }
            catch (Exception e)
            {
                new Log("System").Write("SmsBettingTask 启动失败：" + e.Message);
            }
            #endregion

        }

        protected override void OnStop()
        {
            if (SendSms_Task != null)
            {
                SendSms_Task.Exit();
            }
            while ((SendSms_Task != null) && (SendSms_Task.State != 0)) { System.Threading.Thread.Sleep(500); };

            if (SmsBetting_Task != null)
            {
                SmsBetting_Task.Exit();
            }
            while ((SmsBetting_Task != null) && (SmsBetting_Task.State != 0)) { System.Threading.Thread.Sleep(500); };
        }
    }
}
