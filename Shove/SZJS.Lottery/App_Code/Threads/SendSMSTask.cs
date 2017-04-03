using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Collections;

using Shove.Database;

/// <summary>
/// Task 的摘要说明
/// </summary>
public class SendSMSTask
{
    private Sites Site;
    private string Mobile, Body;
    private long UserID;  // UserID 付费用户， < 0 则系统付费

    private System.Threading.Thread thread;

    public SendSMSTask(Sites site, long userid, string mobile, string body)
    {
        Site = site;
        UserID = userid;

        Mobile = mobile;
        Body = body;
    }

    public void Run()
    {
        if ((Site == null) || (Site.ID < 1))
        {
            return;
        }

        lock (this) // 确保临界区被一个 Thread 所占用
        {
            thread = new System.Threading.Thread(new System.Threading.ThreadStart(Do));
            thread.IsBackground = true;

            thread.Start();
        }
    }

    public void Do()
    {
        System.Threading.Thread.Sleep(1000);

        if (Site == null)
        {
            new Log("System").Write("Send SMS: Site is null.");
            Stop();

            return;
        }

        string Betting_SMS_UserID = Site.SiteOptions["Opt_ISP_UserID"].Value.ToString();
        string Betting_SMS_UserPassword = Site.SiteOptions["Opt_ISP_UserPassword"].Value.ToString();
        string Betting_SMS_RegCode = Site.SiteOptions["Opt_ISP_RegCode"].Value.ToString();

        if ((Betting_SMS_UserID == "") || (Betting_SMS_UserPassword == ""))
        {
            new Log("System").Write("Send SMS: SMS config error.");
            Stop();

            return;
        }

        SMS.Eucp.Gateway.Gateway segg = new SMS.Eucp.Gateway.Gateway(Betting_SMS_UserID, Betting_SMS_UserPassword);

        if (Betting_SMS_RegCode != "")
        {
            segg.SetKey(Betting_SMS_RegCode);
        }

        SMS.Eucp.Gateway.CallResult Result = segg.Send(Mobile, Body);

        if (Result.Code < 0)
        {
            new Log("System").Write("Send SMS: Send SMS fail." + Result.Description);
            Stop();

            return;
        }
    
        long NewSMSID = 0;
        DAL.Procedures.P_WriteSMS(Site.ID, -1, "", Mobile, Body, ref NewSMSID);

        Stop();
    }

    private void Stop()
    {
       
    }
}
