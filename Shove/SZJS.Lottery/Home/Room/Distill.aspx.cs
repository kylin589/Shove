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

public partial class Home_Room_Distill : SitePageBase
{
    public string IsCps = "0";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            IsCps = Shove._Web.Utility.GetRequest("IsCps");

            if (string.IsNullOrEmpty(IsCps))
            {
                IsCps = "0";
            }

            if (IsCps == "1")
            {
                tdDistill.InnerHtml = "我的推广佣金";
                imgDistill.Src = "images/icon_13.gif";
            }

            distillFrame.Attributes.Add("onload", "handleOnLoad()");
        }
    }

    #region Web 窗体设计器生成的代码

    override protected void OnInit(EventArgs e)
    {
        RequestLoginPage = this.Request.Url.AbsoluteUri;

        base.OnInit(e);
    }

    #endregion
}
