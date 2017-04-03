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

public partial class Admin_OptionISP : AdminPageBase
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            BindData();

            btnOK.Visible = _User.Competences.IsOwnedCompetences(Competences.BuildCompetencesList(Competences.Options));
        }

        tb4.Attributes.Add("value", tb4.Text);
    }

    #region Web 窗体设计器生成的代码

    override protected void OnInit(EventArgs e)
    {
        RequestLoginPage = this.Request.Url.AbsoluteUri;

        RequestCompetences = Competences.BuildCompetencesList(Competences.Options, Competences.QueryData);

        base.OnInit(e);
    }

    #endregion

    private void BindData()
    {
        tb1.Text = _Site.SiteOptions["Opt_ISP_HostName"].ToString("");
        tb2.Text = _Site.SiteOptions["Opt_ISP_HostPort"].ToString("");
        tb3.Text = _Site.SiteOptions["Opt_ISP_UserID"].ToString("");
        tb4.Text = _Site.SiteOptions["Opt_ISP_UserPassword"].ToString("");
        tb5.Text = _Site.SiteOptions["Opt_ISP_RegCode"].ToString("");
        tb6.Text = _Site.SiteOptions["Opt_ISP_ServiceNumber"].ToString("");
    }

    protected void btnOK_Click(object sender, EventArgs e)
    {
        try
        {
            _Site.SiteOptions["Opt_ISP_HostName"] = new OptionValue(tb1.Text);
            _Site.SiteOptions["Opt_ISP_HostPort"] = new OptionValue(tb2.Text);
            _Site.SiteOptions["Opt_ISP_UserID"] = new OptionValue(tb3.Text);
            _Site.SiteOptions["Opt_ISP_UserPassword"] = new OptionValue(tb4.Text);
            _Site.SiteOptions["Opt_ISP_RegCode"] = new OptionValue(tb5.Text);
            _Site.SiteOptions["Opt_ISP_ServiceNumber"] = new OptionValue(tb6.Text);

            SystemOptions so = new SystemOptions();
            so["Betting_SMS_UserID"] = new OptionValue(tb3.Text);
            so["Betting_SMS_UserPassword"] = new OptionValue(tb4.Text);
            so["Betting_SMS_RegCode"] = new OptionValue(tb5.Text);
        }
        catch (Exception exception)
        {
            Shove._Web.JavaScript.Alert(this.Page, exception.Message);

            return;
        }

        Shove._Web.JavaScript.Alert(this.Page, "设置成功。");
    }
}
