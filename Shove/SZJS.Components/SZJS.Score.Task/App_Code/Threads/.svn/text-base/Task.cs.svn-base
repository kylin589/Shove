using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Collections;

using Shove.Database;

namespace SZJS.Score.Task
{
    /// <summary>
    /// Task 的摘要说明
    /// </summary>
    public class Task
    {
        private long gCount1 = 0;

        private System.Threading.Thread thread;
        private string ConnectionString;

        private Message msg = new Message("Task");
        private Log log = new Log("Task");

        public int State = 0;   // 0 停止 1 运行中 2 置为停止

        public Task(string connectionstring)
        {
            ConnectionString = connectionstring;
        }

        public void Run()
        {
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

                msg.Send("Task Start.");
                log.Write("Task Start.");
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
                    msg.Send("Task Stop.");
                    log.Write("Task Stop.");

                    State = 0;

                    Stop();

                    return;
                }

                System.Threading.Thread.Sleep(1000);   // 1秒为单位

                gCount1++;

                #region 半小时, 计算积分

                if (gCount1 >= 60 * 30)
                {
                    gCount1 = 0;

                    try
                    {
                        CalculateScore();
                    }
                    catch (Exception e)
                    {
                        msg.Send("CalculateScore is Fail: " + e.Message);
                        log.Write("CalculateScore is Fail: " + e.Message);
                    }
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

        private void CalculateScore()	//计算积分
        {
            int ReturnValue = 0;
            string ReturnDescription = "";

            if (DAL.Procedures.P_CalculateScore(ConnectionString, ref ReturnValue, ref ReturnDescription) < 0)
            {
                msg.Send("Exec CalculateScore: Procedure \"P_CalculateScore\" Fail.");
                log.Write("Exec CalculateScore: Procedure \"P_CalculateScore\" Fail.");

                return;
            }

            if (ReturnValue < 0)
            {
                msg.Send("Exec CalculateScore: Procedure \"P_CalculateScore\" Return: " + ReturnDescription);
                log.Write("Exec CalculateScore: Procedure \"P_CalculateScore\" Return: " + ReturnDescription);
            }
        }

        #endregion
    }
}