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
using System.Text;
using System.Text.RegularExpressions;

public partial class CPS_UserRegCPS : SitePageBase
{
    protected void Page_Load(object sender, EventArgs e)
    {
        AjaxPro.Utility.RegisterTypeForAjax(typeof(CPS_UserRegCPS), this.Page);
        if (!IsPostBack)
        {
            tbSiteName.Value = _Site.Name;
            tbWebUrl.Value = _Site.Url;
            tbMD5.Value = "123456";
            hType.Value = Shove._Web.Utility.GetRequest("type");
            if (hType.Value == "2")
            {
                spanType.InnerHtml = "注册代理商";
            }

            if (_User != null)
            {
                this.tbPhone.Value = _User.Mobile;
                hUserID.Value = _User.ID.ToString();


                this.tbUser1.Visible = false;
                tbPhone.Value = _User.Mobile;
                tbEmail.Value = _User.Email;
                tbQQ.Value = _User.QQ;

                if (_User.cps.ID > 0)
                {
                    if (_User.cps.Type == 1)
                    {
                        tdCpsApply.InnerHtml = "<div class=\"delu\" style=\"text-align:center; color:Red; font-weight:bold\">您已经是推广员</div>";
                    }
                    else
                    {
                        tdCpsApply.InnerHtml = "<div class=\"delu\" style=\"text-align:center; color:Red; font-weight:bold\">您已经是代理商</div>";
                    }
                }
                else
                {
                    if (new DAL.Tables.T_CpsTrys().GetCount("HandleResult = 0 and UserID=" + _User.ID.ToString()) > 0)
                    {
                        tdCpsApply.InnerHtml = "您已申请过CPS推广联盟，正在审核中。";
                    }
                }
            }
        }
    }

    /// <summary>
    /// 校验用户是否可用
    /// </summary>
    /// <returns></returns>
    [AjaxPro.AjaxMethod(AjaxPro.HttpSessionStateRequirement.None)]
    public int CheckUserName(string name)
    {
        if (!PF.CheckUserName(name))
        {
            return -1;
        }

        DataTable dt = new DAL.Tables.T_Users().Open("ID", "Name = '" + Shove._Web.Utility.FilteSqlInfusion(name) + "'", "");

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

    /// <summary>
    /// 校验注册信息
    /// </summary>
    /// <returns></returns>
    [AjaxPro.AjaxMethod(AjaxPro.HttpSessionStateRequirement.None)]
    public string CheckReg(string name, string password, string realyName, string siteName, string webUrl, string phone, string email, string userID)
    {
        name = name.Trim();
        password = password.Trim();
        siteName = siteName.Trim();
        webUrl = webUrl.Trim();
        phone = phone.Trim();
        email = email.Trim();

        if (Shove._Convert.StrToLong(userID, -1) < 1)
        {
            if (!PF.CheckUserName(name))
            {
                return "对不起用户名中含有禁止使用的字符";
            }

            if (Shove._String.GetLength(name) < 5 || Shove._String.GetLength(name) > 16)
            {
                return "用户名长度在 5-16 个英文字符或数字、中文 3-8 之间。";
            }

            if (password.Length < 6 || password.Length > 16)
            {
                return "密码长度必须在 6-16 位之间。";
            }

            if (realyName == "")
            {
                return "真实姓名不能为空。";
            }
        }

        if (!Shove._String.Valid.isUrl(webUrl))
        {
            return "网址不正确！";
        }

        if (string.IsNullOrEmpty(siteName))
        {
            return "请输入网站名称。";
        }

        if (!Shove._String.Valid.isMobile(phone))
        {
            return "请输入正确的手机号码。";
        }

        if (!Shove._String.Valid.isEmail(email))
        {
            return "请输入正确的电子信箱。";
        }

        return "";
    }

    protected void btnReg_Click(object sender, EventArgs e)
    {
        string textCode = Verify.Value;
        if (!cbAgree.Checked)
        {
            Shove._Web.JavaScript.Alert(this.Page, "必须同意注册协议！");

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

        string url = tbWebUrl.Value;

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

        double scale = scale = _Site.SiteOptions["Opt_CpsBonusScale"].ToDouble(0);

        if (_User == null)  //没有登录注册
        {
            Users user = new Users(_Site.ID);

            user.Name = tbUserName.Value.Trim();
            user.Password = tbPassword.Value.Trim();
            user.Email = tbEmail.Value.Trim();
            user.RealityName = tbRealyName.Value.Trim();
            user.Mobile = tbPhone.Value.Trim();
            user.QQ = tbQQ.Value.Trim();
            user.UserType = 1;

            string ReturnDescription = "";
            long Result = user.Add(ref ReturnDescription);

            if (Result < 0)
            {
                Shove._Web.JavaScript.Alert(this, ReturnDescription);

                return;
            }

            //登录
            Result = user.Login(ref ReturnDescription);

            if (Result < 0)
            {
                Shove._Web.JavaScript.Alert(this, ReturnDescription);

                return;
            }

            user.cps.BonusScale = scale;
            user.cps.ON = true;
            user.cps.ResponsiblePerson = tbRealyName.Value.Trim();
            user.cps.ContactPerson = tbRealyName.Value.Trim();
            user.cps.Mobile = tbPhone.Value.Trim();
            user.cps.Email = tbEmail.Value.Trim();
            user.cps.QQ = tbQQ.Value.Trim();
            user.cps.Type = Shove._Convert.StrToShort(ddlCpsType.SelectedValue, 1);
            user.cps.OwnerUserID = user.ID;
            user.cps.Url = tbWebUrl.Value.Trim();
            user.cps.Name = tbSiteName.Value.Trim();
            user.cps.MD5Key = tbMD5.Value.Trim();
            user.cps.Content = "";

            if (ddlCpsType.SelectedValue == "2")
            {
                ReturnDescription = "";
                Result = user.cps.Try(ref ReturnDescription);

                if (Result < 0)
                {
                    Shove._Web.JavaScript.Alert(this, ReturnDescription);

                    return;
                }

                Shove._Web.Cache.ClearCache("Cps_Administrator_CpsTry");
            }
            else
            {
                ReturnDescription = "";
                long newCpsID = user.cps.Add(ref ReturnDescription);

                if (newCpsID < 0)
                {
                    Shove._Web.JavaScript.Alert(this, ReturnDescription);

                    return;
                }

                user.cps.ID = newCpsID;
                user.cps.DomainName = Shove._Web.Utility.GetUrl() + "/index.aspx?cpsid=" + newCpsID.ToString(); //为站长商家成生默认的推广地址

                int result = user.cps.EditByID(ref ReturnDescription);

                if (result < 0)
                {
                    Shove._Web.JavaScript.Alert(this, ReturnDescription);

                    return;
                }
            }

            Response.Redirect("index.aspx");
        }
        else
        {
            if (_User.cps.ID != -1)
            {

                Shove._Web.JavaScript.Alert(this.Page, "您已注册成商家！");

                return;
            }

            if (new DAL.Tables.T_CpsTrys().GetCount("HandleResult = 0 and UserID=" + _User.ID.ToString()) > 0)
            {
                Shove._Web.JavaScript.Alert(this.Page, "您已申请过CPS，正在审核中。");

                return;
            }

            _User.cps.BonusScale = scale;
            _User.cps.ON = true;
            _User.cps.ResponsiblePerson = _User.RealityName;
            _User.cps.ContactPerson = _User.RealityName;
            _User.cps.Mobile = tbPhone.Value.Trim();
            _User.cps.Email = tbEmail.Value.Trim();
            _User.cps.QQ = tbQQ.Value.Trim();
            _User.cps.Type = Shove._Convert.StrToShort(ddlCpsType.SelectedValue, 1);
            _User.cps.OwnerUserID = _User.ID;
            _User.cps.Url = tbWebUrl.Value.Trim();
            _User.cps.Name = tbSiteName.Value.Trim();
            _User.cps.MD5Key = tbMD5.Value.Trim();
            _User.cps.Content = "";

            string ReturnDescription = "";

            if (ddlCpsType.SelectedValue == "2")
            {
                int Result = _User.cps.Try(ref ReturnDescription);

                if (Result < 0)
                {
                    Shove._Web.JavaScript.Alert(this, ReturnDescription);

                    return;
                }

                Shove._Web.Cache.ClearCache("Cps_Administrator_CpsTry");
            }
            else
            {
                long newCpsID = _User.cps.Add(ref ReturnDescription);

                if (newCpsID < 0)
                {
                    Shove._Web.JavaScript.Alert(this, ReturnDescription);

                    return;
                }

                _User.cps.ID = newCpsID;
                _User.cps.DomainName = Shove._Web.Utility.GetUrl() + "/index.aspx?cpsid=" + newCpsID.ToString();  //为站长商家成生默认的推广地址

                int result = _User.cps.EditByID(ref ReturnDescription);

                if (result < 0)
                {
                    Shove._Web.JavaScript.Alert(this, ReturnDescription);

                    return;
                }
            }

            Response.Redirect("index.aspx");
        }
    }
}
