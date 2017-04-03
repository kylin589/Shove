using System;
using System.Collections.Generic;
using System.ServiceProcess;
using System.Linq;
using System.Text;

namespace SZJS.All.Task
{
    static class Program
    {
        /// <summary>
        /// 应用程序的主入口点。
        /// </summary>
        static void Main()
        {
            ServiceBase[] ServicesToRun;
            ServicesToRun = new ServiceBase[] 
			{ 
				new MainService() 
			};
            ServiceBase.Run(ServicesToRun);
        }
    }
}
