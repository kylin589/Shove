using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text.RegularExpressions;

public partial class CPS_Admin_NewsLink : CpsPageBase
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            lbUserName.InnerHtml = _User.Name + ",你好!";
            if (_User.cps.Type == 2)
            {
                lbUserType.InnerHtml = "代理商";
                tdType.InnerHtml = "代理商";
                trPromoterCPS.Visible = false;
                trPromoter.Visible = true;
            }

            spanLinkUrl.InnerHtml = Shove._Web.Utility.GetUrl() + "/Index.aspx?cpsid=" + _User.cps.ID.ToString();
            tdRealyName.InnerHtml = _User.RealityName;
            tdUserName.InnerHtml = _User.Name;
            tbUrlName.Value = _User.cps.Name;
            tbUrl.Value = _User.cps.Url;
            tbMD5Key.Text = _User.cps.MD5Key;
            tbContactPerson.Value = _User.cps.ContactPerson;
            tbPhone.Value = _User.cps.Telephone;
            tbMobile.Value = _User.cps.Mobile;
            tbQQNum.Value = _User.cps.QQ;
            tbEmail.Value = _User.cps.Email;
        }

    }

    #region Web 窗体设计器生成的代码

    override protected void OnInit(EventArgs e)
    {
        isCpsRequestLogin = true;
        RequestLoginPage = Shove._Web.Utility.GetUrl() + "/CPS/Admin/Default.aspx?SubPage=AdvermentLink.aspx";

        base.OnInit(e);
    }

    #endregion

    protected void btnOK_Click(object sender, EventArgs e)
    {
        string email = tbEmail.Value.Trim();

        if (!Shove._String.Valid.isEmail(email))
        {
            Shove._Web.JavaScript.Alert(this.Page, "Email填写错误");

            return;
        }

        string mobile = tbMobile.Value.Trim();

        if (!Shove._String.Valid.isMobile(mobile))
        {
            Shove._Web.JavaScript.Alert(this.Page, "手机号码填写错误");

            return;
        }

        string url = tbUrl.Value;

        if (!url.StartsWith("http://"))
        {
            url = "http://" + url;
        }

        Regex regex = new Regex(@"^http://([\w-]+\.)+[\w-]+(/[\w-./?%&=]*)?$", RegexOptions.IgnoreCase | RegexOptions.Compiled);
        Match m = regex.Match(url);

        if (!m.Success)
        {
            Shove._Web.JavaScript.Alert(this.Page, "网址填写错误");

            return;
        }

        _User.cps.Name = tbUrlName.Value;
        _User.cps.Url = url;
        _User.cps.MD5Key = tbMD5Key.Text;
        _User.cps.ContactPerson = tbContactPerson.Value;
        _User.cps.Telephone = tbPhone.Value;
        _User.cps.Mobile = tbMobile.Value;
        _User.cps.QQ = tbQQNum.Value;
        _User.cps.Email = tbEmail.Value;

        string ReturnDescription = "";

        if (_User.cps.EditByID(ref ReturnDescription) < 0)
        {
            Shove._Web.JavaScript.Alert(this.Page, ReturnDescription);

            return;
        }

        Shove._Web.JavaScript.Alert(this.Page, "基本信息修改成功!");
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
