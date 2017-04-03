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
using Shove.Database;
public partial class UserLogin : SitePageBase
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            bool Opt_isUseCheckCode = _Site.SiteOptions["Opt_isUseCheckCode"].ToBoolean(true);
            if (Opt_isUseCheckCode)
            {
                this.Code.Visible = true;
                this.IsCode.InnerText = "true";
            }
            else
            {
                this.Code.Visible = false;
            }
        }
    }
    protected void Login_Click(object sender, EventArgs e)
    {
        int Result = -1;
        string ReturnDescription = "";
        
        string textName=UserName.Value;
        string textPwd = PassWord.Value;
        string textCode = Verify.Value;

        if (textName.Trim() == "" || textPwd.Trim() == "")
        {
            Shove._Web.JavaScript.Alert(this.Page, "用户名或密码为空！");
            return;
        }
        bool Opt_isUseCheckCode = _Site.SiteOptions["Opt_isUseCheckCode"].ToBoolean(true);
        if (Opt_isUseCheckCode)
        {
            if (textCode.Trim() != Session["CheckCode"].ToString())
            {
                Shove._Web.JavaScript.Alert(this.Page, "验证码错误！");
                return;
            }
        }
        Result = new Login().LoginSubmit(this.Page, _Site, textName.Trim(), textPwd.Trim(), ref ReturnDescription);
        if (Result < 0)
        {
            Shove._Web.JavaScript.Alert(this.Page, ReturnDescription);
            return;
        }

        object Url = Shove._Web.Cache.GetCache("OnGotoLoginUrl");
        if (Url != null)
        {
            Shove._Web.Cache.GetCache("OnGotoLoginUrl");
            Response.Redirect(Url.ToString());
        }
        else if (Shove._Web.Utility.GetRequest("Rollback") != null || Shove._Web.Utility.GetRequest("Rollback") != "")
        {
            string strReturn = Shove._Web.Utility.GetRequest("Rollback");
            strReturn = Shove._Security.Encrypt.UnEncryptString(PF.GetCallCert(), strReturn);
            if (strReturn == "MyIcaile.aspx")
            {
                new Login().GoToRequestLoginPage("Home/Room/AccountDetail.aspx");
            }
            else
            {
                new Login().GoToRequestLoginPage("index.aspx");
            }
        }
        else
        {
            new Login().GoToRequestLoginPage("index.aspx");
        }

    }
}
