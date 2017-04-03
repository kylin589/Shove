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

public partial class UserReg : SitePageBase
{
    protected void Page_Load(object sender, EventArgs e)
    {
        AjaxPro.Utility.RegisterTypeForAjax(typeof(UserReg), this.Page);

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


    /// <summary>
    /// 校验注册信息
    /// </summary>
    /// <returns></returns>
    [AjaxPro.AjaxMethod(AjaxPro.HttpSessionStateRequirement.None)]
    public string CheckReg(string name, string password, string password2, string email)
    {
        name = name.Trim();
        password = password.Trim();
        password2 = password2.Trim();
        email = email.Trim();

        if (!PF.CheckUserName(name))
        {
            return "对不起用户名中含有禁止使用的字符。";
        }

        if (Shove._String.GetLength(name) < 5 || Shove._String.GetLength(name) > 16)
        {
            return "用户名长度在 5-16 个英文字符或数字、中文 3-8 之间。";
        }

        if (password != password2)
        {
            return "两次密码输入不一致，请仔细检查。";
        }

        if (password.Length < 6 || password.Length > 16)
        {
            return "密码长度必须在 6-16 位之间。";
        }

        if (!Shove._String.Valid.isEmail(email))
        {
            return "电子邮件地址格式不正确。";
        }
        return "";
    }
    /// <summary>
    /// 注册提交
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void btnReg_Click(object sender, EventArgs e)
    {
        if (!PF.IsSystemRegister())
        {
            PF.GoError(ErrorNumber.DataReadWrite, "请联系网站管理员输入软件序列号", this.GetType().BaseType.FullName);
            return;
        }

        if (ckbAgree.Visible)
        {
            if (YZMcode.Value.Trim() == "")
            {
                Shove._Web.JavaScript.Alert(this.Page, "请输入验证码!");
                return;
            }
            else
            {
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

                if (YZMcode.Value.Trim().ToUpper() != CheckCode.ToUpper())
                {
                    Shove._Web.JavaScript.Alert(this.Page, "验证码输入错误!");
                }

            }
        }

        long CpsID = -1;
        long CommenderID = -1;
        string Memo = "";

        FirstUrl firstUrl = new FirstUrl();
        string URL = firstUrl.Get();

        if (!URL.StartsWith("http://"))
        {
            URL = "http://" + URL;
            URL = URL.Split('?'.ToString().ToCharArray())[0];
        }

        DataTable dt = new DAL.Tables.T_Cps().Open("id, [ON], [Name]", "SiteID = " + _Site.ID.ToString() + " and( DomainName = '" + URL + "' or DomainName='" + Shove._Web.Utility.GetUrl() + "')", "");

        if (Shove._Convert.StrToLong(firstUrl.CpsID, -1) > 0) //读取第一次访问页面时保存的CPS ID
        {
            CpsID = Shove._Convert.StrToLong(firstUrl.CpsID, -1);
        }
        else if ((dt != null) && (dt.Rows.Count > 0))
        {
            CpsID = Shove._Convert.StrToLong(dt.Rows[0]["ID"].ToString(), -1);
            Memo = firstUrl.PID;//联盟商推广URL的PID
        }

        System.Threading.Thread.Sleep(500);

        string Name = this.userName.Value.Trim();
        string Password = this.passwordOne.Value.Trim();
        string Password2 = this.passwordTwo.Value.Trim();
        string Email = this.email.Value.Trim();
        Users user = new Users(_Site.ID);

        user.Name = Name;
        user.Password = Password;
        user.Email = Email;
        user.UserType = 1;

        dt = new DAL.Tables.T_Users().Open("", "id=" + Shove._Web.Utility.GetRequest("CID") + " and Name='" + Shove._Web.Utility.GetRequest("CN") + "'", "");

        if ((dt != null) && (dt.Rows.Count == 1))
        {
            CommenderID = Shove._Convert.StrToLong(Shove._Web.Utility.GetRequest("CID"), -1);
        }

        user.CommenderID = CommenderID;
        user.CpsID = CpsID;
        user.Memo = Memo;

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

        Response.Redirect("UserRegemail.aspx");

    }
}
