using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;

public partial class CPS_Admin_WordCode : CpsPageBase
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            lbUserName.InnerHtml = _User.Name + ",你好!";
            if (_User.cps.Type == 2)
            {
                lbUserType.InnerHtml = "代理商";
            }
            tbWordCode1.Text = BindImageCode("买彩票，就上" + _Site.Name + "。");
            tbWordCode2.Text = BindImageCode("买彩票，就上" + _Site.Name + "。");
        }
    }
    #region Web 窗体设计器生成的代码

    override protected void OnInit(EventArgs e)
    {
        isCpsRequestLogin = true;
        RequestLoginPage = this.Request.Url.AbsoluteUri;

        base.OnInit(e);
    }

    #endregion
    private string BindImageCode(string Word)
    {
        string code = "<a style='line-height:22px;color:#c00; FONT-SIZE:14px; FONT-WEIGHT:600' href='" + Shove._Web.Utility.GetUrl() + "/Index.aspx?cpsid=" + _User.cps.ID.ToString() + "' target='_bank'>" + Word + "</a>";

        return code;
    }
    protected void lbExit_Click(object sender, EventArgs e)
    {
        if (_User != null)
        {
            string ReturnDescription = "";
            _User.Logout(ref ReturnDescription);
        }

        this.Response.Redirect("../index.aspx");
    }
}
