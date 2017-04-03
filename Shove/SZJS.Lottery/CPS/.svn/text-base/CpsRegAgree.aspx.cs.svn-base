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

public partial class CPS_CpsRegAgree : SitePageBase
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            labAgreement.InnerHtml = _Site.SiteOptions["Opt_CpsRegisterAgreement"].ToString("").Replace("[SiteName]", _Site.Name).Replace("http://www.icaile.com", Shove._Web.Utility.GetUrl()).Replace("http://" + _Site.Url, Shove._Web.Utility.GetUrl());
        }
    }
}
