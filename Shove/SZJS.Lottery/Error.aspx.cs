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

public partial class Error : SitePageBase
{
    protected string script = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            short iErrorNumber = Shove._Convert.StrToShort(Shove._Web.Utility.GetRequest("ErrorNumber"), ErrorNumber.Unknow);
            string Tip = Shove._Web.Utility.GetRequest("Tip");
            string ClassName = Shove._Security.Encrypt.UnEncryptString(PF.GetCallCert(), Shove._Web.Utility.GetRequest("ClassName"));

            labTip.Text = Tip;
            labTipForNoIsuse.Text = Tip;
            labClassName1.Text = ClassName;
            labClassName2.Text = ClassName;

            if ((iErrorNumber == ErrorNumber.NoIsuse) || (iErrorNumber == ErrorNumber.NoData))
            {
                tabError.Visible = false;
                tabErrorForNoIsuse.Visible = true;
            }
            else
            {
                tabError.Visible = true;
                tabErrorForNoIsuse.Visible = false;
            }
            script = Shove._Web.Utility.GetUrl() + "/Lottery/buy.aspx";
        }
    }

    #region Web 窗体设计器生成的代码

    override protected void OnInit(EventArgs e)
    {
        base.OnInit(e);
    }

    #endregion
}