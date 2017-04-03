using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Collections;

using Shove.Database;
using System.Text;

namespace SZJS.Resource.Task
{
    /// <summary>
    /// Task 的摘要说明
    /// </summary>
    public class Task
    {

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

                System.Threading.Thread.Sleep(1000);   // 2秒为单位

                try
                {
                    BonusNumber.GetLastWinNumber_CQSSC(ConnectionString, "28");
                    BonusNumber.GetLastWinNumber_JXSSC(ConnectionString, "61");
                    BonusNumber.GetLastWinNumber_SYYDJ(ConnectionString, "62");
                    BonusNumber.GetLastWinNumber_11X5(ConnectionString, "70");

                    msg.Send("GetLastWinNumber ...... OK.");
                }
                catch (Exception e)
                {
                    msg.Send("GetLastWinNumber is Fail: " + e.Message);
                    log.Write("GetLastWinNumber is Fail: " + e.Message);
                }
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

    }
}