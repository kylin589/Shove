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
using System.Security.Cryptography;
using System.Text;

public partial class UserRegemail : SitePageBase
{
    protected void Page_Load(object sender, EventArgs e)
    {
        AjaxPro.Utility.RegisterTypeForAjax(typeof(UserRegemail), this.Page);
    }
    [AjaxPro.AjaxMethod(AjaxPro.HttpSessionStateRequirement.None)]
    public int EmailUpdate(long ID,string strname,string stremail)
    {
       
            if (strname != "")
            {
                if (stremail.Trim() == "")
                {
                    return -1;
                }
                if (!Shove._String.Valid.isEmail(stremail))
                {
                    return -2;
                }
                DataTable dt = new DAL.Tables.T_Users().Open("ID", "SiteID=" + ID + " and [Name] = '" + Shove._Web.Utility.FilteSqlInfusion(strname) + "'", "");
                Users users = new Users(ID);
                users.ID = (long)dt.Rows[0]["ID"];
                users.Name = strname;
                users.Email = stremail;
                string strDescription = "";
                int id = users.EditByID(ref strDescription);
                if (id == 0)
                {
                    return -3;
                }

            }
        

        return 1;
    }
    /// <summary>
    /// 邮箱激活
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void emailActivate_Click(object sender, EventArgs e)
    {
        SendEmialMethod();
    }
 
    private void SendEmialMethod()
    {
        if (_User != null)
        {
            string Email = _User.Email;
            if (Email == "")
            {
                Shove._Web.JavaScript.Alert(this.Page, "请输入 Email 地址。");
                return;
            }

            if (!Shove._String.Valid.isEmail(Email))
            {
                Shove._Web.JavaScript.Alert(this.Page, "输入 Email 格式不正确。");
                return;
            }

            if ((Email == _User.Email) && (_User.isEmailValided))
            {
                Shove._Web.JavaScript.Alert(this.Page, "你的 Email 已经激活了，不需要再次激活。");
                return;
            }

            string ReturnDescriptin = "";
            _User.isEmailValided = false;
            int Result = _User.EditByID(ref ReturnDescriptin);

            if (Result < 0)
            {
                PF.GoError(-1, "数据库读写错误", this.GetType().FullName);
                return;
            }

            string key = Shove._Security.Encrypt.EncryptString(PF.GetCallCert(), _User.ID.ToString() + "," + DateTime.Now.ToString() + "," + Email);

            //key进行md5加密后转成16进制后得到一个32位的密文
            MD5CryptoServiceProvider md5 = new MD5CryptoServiceProvider();
            string sign = BitConverter.ToString(md5.ComputeHash(Encoding.UTF8.GetBytes(key))).Replace("-", "");

            key = sign.Substring(0, 16) + key + sign.Substring(16, 16);

            string url = Shove._Web.Utility.GetUrl() + "/Home/Room/EmailReg.aspx?emailvalidkey=" + key;

            StringBuilder sb = new StringBuilder();

            sb.Append("<div style='font-weight:bold;'>尊敬的" + _Site.Name + "客户(").Append(_User.Name).Append("):</div>")
                .Append("<div>您好!</div>")
                .Append("<div>系统已收到您的邮箱激活申请，请点击链接<a href='").Append(url).Append("' target='_top'>").Append(url).Append("</a>校验您的身份。</div>")
                .Append("<div>为了您的安全，该邮件通知地址将在 24 小时后失效，谢谢合作。</div>")
                .Append("<div>此邮件由系统发出，请勿直接回复!</div>")
                .Append("<div>免费客服电话：" + _Site.ServiceTelephone + "</div>")
                .Append("<div>意见收集与提交：BD@handtouchworld.com</div>")
                .Append("<div>").Append(Shove._Web.Utility.GetUrlWithoutHttp()).Append(" 版权所有(C)</div>");

            if (PF.SendEmail(_Site, Email, _Site.Name + "邮箱激活验证", sb.ToString()) == 0)
            {
                Response.Redirect("UserRegSuccess.aspx");
            }
            else
            {
                new Log("System").Write(this.GetType().FullName + "发送邮件失败");
            }
        }
    }


    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        SendEmialMethod();
    }
}
