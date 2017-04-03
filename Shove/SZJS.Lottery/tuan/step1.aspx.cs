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

public partial class tuan_step1 : SitePageBase
{
    protected void Page_Load(object sender, EventArgs e)
    {
        AjaxPro.Utility.RegisterTypeForAjax(typeof(tuan_step1), this.Page);
        if (!IsPostBack) { }
    }
    protected void btnMobileValid_Click(object sender, System.EventArgs e)
    {
        string Mobile = Shove._Web.Utility.FilteSqlInfusion(Shove._Convert.ToDBC(txtPhone.Value.Trim()));

        if (Mobile == "")
        {
            Shove._Web.JavaScript.Alert(this.Page, "请输入手机号码。");

            return;
        }

        if (!Shove._String.Valid.isMobile(Mobile))
        {
            Shove._Web.JavaScript.Alert(this.Page, "输入手机号码格式不正确。");

            return;
        }

        if (txtUser.Value.Trim() == "")
        {
            Shove._Web.JavaScript.Alert(this.Page, "用户名不能为空。");

            return;
        }

        string ValidNumber = GetValidNumber();
        ViewState["MobileValidNumber_" + "SZJS"] = Shove._Security.Encrypt.Encrypt3DES(PF.GetCallCert(), Shove._Security.Encrypt.EncryptString(PF.GetCallCert(), ValidNumber), PF.DesKey);

        string Bodys = "尊敬的" + txtUser.Value.Trim() + "，您的注册手机校验码是" + ValidNumber + "。[深圳久盛网络彩票网客服中心]";

        PF.SendSMS(_Site, 1, Mobile, Bodys);

        Label1.Visible = true;
        btnMobileValid.Enabled = false;
        time.InnerHtml = "60";
        IDTime.InnerHtml = "<script language=\"javascript\" type=\"text/javascript\">var oTimer = null;function DisplayTimer() {var seconds = parseInt(time.innerHTML)>0 ? parseInt(time.innerHTML)-1:0; time.innerHTML = seconds.toString();if (seconds == 0) {window.clearInterval(oTimer); } }oTimer = setInterval('DisplayTimer()', 1000); </script>";

    }

    private string GetValidNumber()
    {
        int MobileCheckCharset = _Site.SiteOptions["Opt_MobileCheckCharset"].ToInt(1);
        int MobileCheckStringLength = _Site.SiteOptions["Opt_MobileCheckStringLength"].ToInt(6);

        if ((MobileCheckCharset < 1) || (MobileCheckCharset > 4))
        {
            MobileCheckCharset = 1;
        }

        if ((MobileCheckStringLength < 1) || (MobileCheckStringLength > 20))
        {
            MobileCheckStringLength = 6;
        }

        string strs;
        switch (MobileCheckCharset)
        {
            case 1:
                strs = "0123456789";
                break;
            case 2:
                strs = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
                break;
            case 3:
                strs = "abcdefghijklmnopqrstuvwxyz";
                break;
            default:
                strs = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
                break;
        }

        System.Random rd = new Random();

        string str = "";

        for (int i = 0; i < MobileCheckStringLength; i++)
        {
            str += strs[rd.Next(strs.Length - 1)].ToString();
        }

        return str;
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        btnMobileValid.Enabled = true;
        string ValidNumber = "LtnyeFVjxGloveshove19791130ea8g502shove!@#$%^&*()__";

        try
        {
            ValidNumber = ViewState["MobileValidNumber_" + "SZJS"].ToString();
            ValidNumber = Shove._Security.Encrypt.UnEncryptString(PF.GetCallCert(), Shove._Security.Encrypt.Decrypt3DES(PF.GetCallCert(), ValidNumber, PF.DesKey));
        }
        catch { }

        if (ValidNumber != tbValidPassword.Value.Trim())
        {
            Shove._Web.JavaScript.Alert(this.Page, "验证串错误。");

            return;
        }

        if (txtCode.Value.Trim() == "")
        {
            Shove._Web.JavaScript.Alert(this.Page, "请输入验证码!");
            return;
        }
        else
        {
            if (!PF.CheckUserName(txtUser.Value))
            {
                Shove._Web.JavaScript.Alert(this.Page, "对不起用户名中含有禁止使用的字符。");
                return;
            }

            if (Shove._String.GetLength(txtUser.Value) < 5 || Shove._String.GetLength(txtUser.Value) > 16)
            {
                Shove._Web.JavaScript.Alert(this.Page, "用户名长度在 5-16 个英文字符或数字、中文 3-8 之间。");
                return;
            }

            if (txtPwdOne.Value != txtPwdTwo.Value)
            {
                Shove._Web.JavaScript.Alert(this.Page, "两次密码输入不一致，请仔细检查。");
                return;
            }

            if (txtPwdOne.Value.Length < 6 || txtPwdTwo.Value.Length > 16)
            {
                Shove._Web.JavaScript.Alert(this.Page, "密码长度必须在 6-16 位之间。");
                return;
            }

            if (!Shove._String.Valid.isEmail(txtEmail.Value))
            {
                Shove._Web.JavaScript.Alert(this.Page, "电子邮件地址格式不正确");
                return;
            }
            if (!Shove._String.Valid.isMobile(txtPhone.Value))
            {
                Shove._Web.JavaScript.Alert(this.Page, "手机格式不正确");
                return;
            }

            if (new DAL.Tables.T_Users().GetCount("Mobile = '" + txtPhone.Value + "'") > 0)
            {
                Shove._Web.JavaScript.Alert(this.Page, "此手机号码已经被其他用户验证，请重新输入一个手机号码。");
                return;
            }

            string CheckCode = "";
            try
            {
                CheckCode = this.Session["CheckCode"].ToString();
            }
            catch
            {
                Shove._Web.JavaScript.Alert(this.Page, "验证码输入错误!");
                return;
            }

            if (txtCode.Value.Trim().ToUpper() != CheckCode.ToUpper())
            {
                Shove._Web.JavaScript.Alert(this.Page, "验证码输入错误!");
                return;
            }

        }

        string Name = this.txtUser.Value;
        string Password = this.txtPwdOne.Value;
        string Email = this.txtEmail.Value;
        string Phpne = this.txtPhone.Value;
        Users user = new Users(_Site.ID);
        user.Name = Name;
        user.Password = Password;
        user.Email = Email;
        user.UserType = 1;
        user.Mobile = Phpne;



        string ReturnDescription = "";
        int Result = user.Add(ref ReturnDescription);



        if (Result < 0)
        {
            new Log("Users").Write("会员注册不成功：" + ReturnDescription);
            Shove._Web.JavaScript.Alert(this, ReturnDescription);
            return;
        }

        Result = user.Login(ref ReturnDescription);
        if (Result < 0)
        {
            new Log("Users").Write("注册成功后登录失败：" + ReturnDescription);
            Shove._Web.JavaScript.Alert(this, ReturnDescription);

            return;
        }

        Response.Redirect("Alipay/Send.aspx");

    }

    /// <summary>
    /// 校验用户是否可用
    /// </summary>
    /// <returns></returns>
    [AjaxPro.AjaxMethod(AjaxPro.HttpSessionStateRequirement.None)]
    public int CheckUserName(long siteid, string name)
    {
        if (!PF.CheckUserName(name))
        {
            return -1;
        }

        DataTable dt = new DAL.Tables.T_Users().Open("ID", "SiteID=" + siteid + " and [Name] = '" + Shove._Web.Utility.FilteSqlInfusion(name) + "'", "");

        if (dt != null && dt.Rows.Count > 0)
        {
            return -2;
        }

        if (Shove._String.GetLength(name) < 5 || Shove._String.GetLength(name) > 16)
        {
            return -3;
        }

        return 0;
    }

}
