using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class Admin_ISPAccount : AdminPageBase
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            BindData(); //打开便可使用
        }
    }

    #region Web 窗体设计器生成的代码

    override protected void OnInit(EventArgs e)
    {
        RequestLoginPage = this.Request.Url.AbsoluteUri;

        RequestCompetences = Competences.BuildCompetencesList(Competences.Finance);

        base.OnInit(e);
    }

    #endregion

    private void BindData()
    {
        string Betting_SMS_UserID = _Site.SiteOptions["Opt_ISP_UserID"].Value.ToString();
        string Betting_SMS_UserPassword = _Site.SiteOptions["Opt_ISP_UserPassword"].Value.ToString();

        if ((Betting_SMS_UserID == "") || (Betting_SMS_UserPassword == ""))
        {
            PF.GoError(ErrorNumber.Unknow, "查询短信服务器失败，可能是参数设置错误。", this.GetType().BaseType.FullName);

            return;
        }

        SMS.Eucp.Gateway.Gateway segg = new SMS.Eucp.Gateway.Gateway(Betting_SMS_UserID, Betting_SMS_UserPassword);
        SMS.Eucp.Gateway.CallResult Result1 = segg.GetBalance();
        SMS.Eucp.Gateway.CallResult Result2 = segg.GetPrice();

        if (Result1.Code < 0)
        {
            PF.GoError(ErrorNumber.Unknow, "查询短信服务器失败，查询余额时：" + Result1.Description, this.GetType().BaseType.FullName);

            return;
        }

        if (Result2.Code < 0)
        {
            PF.GoError(ErrorNumber.Unknow, "查询短信服务器失败，查询单价时：" + Result2.Description, this.GetType().BaseType.FullName);

            return;
        }

        Label1.Text = Result1.Value + " 元";
        Label2.Text = Result2.Value + " 元/条";
        Label3.Text = "服务商不提供此数据";
        Label4.Text = "服务商不提供此数据";
        Label5.Text = "服务商不提供此数据";

        Label6.Text = "服务商不提供此数据";
    }
}
