using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class Home_Room_UserRegAgree : SitePageBase
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            string type = Request["type"];
            string key = "Opt_UserRegisterAgreement";
            if ((!string.IsNullOrEmpty(type)) && type.Trim().ToUpper() == "CPS")
                key = "Opt_CpsRegisterAgreement";
            labAgreement.Text = _Site.SiteOptions[key].ToString("").Replace("[SiteName]", _Site.Name).Replace("[SiteUrl]", Shove._Web.Utility.GetUrl()).Replace("http://" + _Site.Url, Shove._Web.Utility.GetUrl());
        }
    }
}
