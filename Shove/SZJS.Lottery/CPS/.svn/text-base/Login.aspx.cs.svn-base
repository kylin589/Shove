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

public partial class CPS_Login : CpsPageBase
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bool Opt_isUseCheckCode = _Site.SiteOptions["Opt_isUseCheckCode"].ToBoolean(true);
            if (Opt_isUseCheckCode)
            {
                System.Web.UI.HtmlControls.HtmlTableRow textCheckCodeHidden = tbLogin1.FindControl("textCheckCodeHidden") as System.Web.UI.HtmlControls.HtmlTableRow;
              
               this.textCheckCodeHidden.Visible = true;
            }
            else
            {
                textCheckCodeHidden.Visible = false;
            }

            if (_User != null)
            {
                Response.Redirect("index.aspx");
            }
        }
    }

    #region Web 窗体设计器生成的代码

    override protected void OnInit(EventArgs e)
    {
        isRequestLogin = false;

        base.OnInit(e);
    }

    #endregion

    protected void btnOK_Click(object sender, EventArgs e)
    {
        string ReturnDescription = "";
        int Result = -1;
        bool Opt_isUseCheckCode = _Site.SiteOptions["Opt_isUseCheckCode"].ToBoolean(true);
        if (Opt_isUseCheckCode)
        {
            if (this.textCheckCode.Value.Trim() != Session["CheckCode"].ToString())
            {
                Shove._Web.JavaScript.Alert(this.Page, "验证码输入错误");
                return;
            }
        }
        if (this.textCheckCodeHidden.Visible)

        {
            Result = new Login().LoginSubmit(this.Page, _Site, tbUserName.Value.ToString(), tbPwd.Value.ToString(),ref ReturnDescription);
        }
        else
        {
            Result = new Login().LoginSubmit(this.Page, _Site, tbUserName.Value.ToString(), tbPwd.Value.ToString(), ref ReturnDescription);
        }

        if (Result < 0)
        {
            Shove._Web.JavaScript.Alert(this.Page, ReturnDescription);

            return;
        }

        Response.Redirect("index.aspx");
    }
}

