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
using System.Text.RegularExpressions;

public partial class UserForgetPassword : SitePageBase
{

    protected void Page_Load(object sender, EventArgs e)
    {
        AjaxPro.Utility.RegisterTypeForAjax(typeof(UserForgetPassword), this.Page);

        if (!IsPostBack)
        {
            ddlQuestion.DataSource = DataCache.SecurityQuestions;
            ddlQuestion.DataBind();

        }
    }
    /// <summary>
    /// 根据自定义问题查找出对应的问题来
    /// </summary>
    /// <param name="customQuestion"></param>
    /// <param name="name"></param>
    /// <returns></returns>
    [AjaxPro.AjaxMethod(AjaxPro.HttpSessionStateRequirement.None)]
    public string BindQuestion(long siteid,string customQuestion, string name)
    {
        string content = "";
        string strQuestion = customQuestion.Trim();
        string strName = name.Trim();
        if (strName== "")
        {
            return "";
        }
        if (strQuestion == "")
        {
            return "";
        }
        string strSecurityQuestion = "";
        DataTable dt = new DAL.Tables.T_Users().Open("SecurityQuestion", "SiteID=" + siteid + " and [Name] = '" + Shove._Web.Utility.FilteSqlInfusion(strName) + "'", "");
        if (dt.Rows.Count > 0)
        {
            strSecurityQuestion = dt.Rows[0]["SecurityQuestion"].ToString();
        }
        else
        {
            return "";
        }
        if (strSecurityQuestion == "")
        {
            return "";
        }
        if (strQuestion.Equals(strSecurityQuestion))
        {
            return strQuestion;
        }
        else
        {
            string[] strArray=strSecurityQuestion.Split('|');
            if (strArray != null)
            {
                if (strArray.Length > 0)
                {
                    content = strArray[1].ToString();
                }
            }
        }
        
        return content;
    }
    /// <summary>
    /// 校验用户是否存在
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

        return 0;
    }




    /// <summary>
    /// 提交事件
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void btnPwd_Click(object sender, EventArgs e)
    {
        string strUserName = Shove._Web.Utility.GetRequest("tbUserName");
        if (strUserName == "")
        {
            Shove._Web.JavaScript.Alert(this, "用户名不能为空。");
            return;

        }
    
        string strAnswer = Shove._Web.Utility.GetRequest("tbAnswer");
        string strTrueName = Shove._Web.Utility.GetRequest("TrueName");
        string strCardNO = Shove._Web.Utility.GetRequest("cardNO");
        if (strAnswer == "" && strTrueName == "" && strCardNO == "")
        {
            Shove._Web.JavaScript.Alert(this, "真实姓名、问题答案、省份证号码至少填一项！");
            return;
        }

        string strChekID = Shove._Web.Utility.GetRequest("chekID");
        if (strChekID == "1")
        {

            string strEmailAccounts = Shove._Web.Utility.GetRequest("EmailAccounts");
            if (strEmailAccounts == "")
            {
                Shove._Web.JavaScript.Alert(this, "邮箱地址不能为空。");

                return;
            }

            if (!Shove._String.Valid.isEmail(strEmailAccounts))
            {
                Shove._Web.JavaScript.Alert(this, "邮箱地址格式不正确。");

                return;
            }


            DataTable dt = new DAL.Tables.T_Users().Open("", "Name = '" + strUserName + "' and Email = '" + strEmailAccounts + "'", "");

            if (dt == null || dt.Rows.Count < 1)
            {
                Shove._Web.JavaScript.Alert(this, "用户名或邮箱不正确。");

                return;
            }


            if (!Shove._Convert.StrToBool(dt.Rows[0]["isEmailValided"].ToString(), false))
            {
                Shove._Web.JavaScript.Alert(this, "您的邮箱当前还没有激活，不能使用密码找回功能，请联系客服人员帮你找回密码，谢谢合作。");

                return;
            }
            if (strAnswer != "")
            {
                string answer = dt.Rows[0]["SecurityAnswer"].ToString();
                if (!strAnswer.Trim().Equals(answer.Trim()))
                {
                    Shove._Web.JavaScript.Alert(this, "回答问题不正确。");
                    return;
                }
            }

            if (strTrueName != "")
            {
                string strNames = dt.Rows[0]["RealityName"].ToString();
                if (!strTrueName.Trim().Equals(strNames.Trim()))
                {
                    Shove._Web.JavaScript.Alert(this, "真实姓名不正确。");
                    return;
                }
            }
            if (strCardNO != "")
            {
                string CardNumber = dt.Rows[0]["IDCardNumber"].ToString();
                if (!strCardNO.Trim().Equals(CardNumber.Trim()))
                {
                    Shove._Web.JavaScript.Alert(this, "身份证号码不正确。");
                    return;
                }

            }
            string password = RandPwd();
            Users user = new Users(_Site.ID);
            user.ID = (long)dt.Rows[0]["ID"];
            user.Name = strUserName;
            user.Password = password;
            string key = Shove._Security.Encrypt.EncryptString(PF.GetCallCert(), dt.Rows[0]["ID"].ToString() + "," + DateTime.Now.ToString());

            //key进行md5加密后转成16进制后得到一个32位的密文
            MD5CryptoServiceProvider md5 = new MD5CryptoServiceProvider();
            string sign = BitConverter.ToString(md5.ComputeHash(Encoding.UTF8.GetBytes(key))).Replace("-", "");

            key = sign.Substring(0, 16) + key + sign.Substring(16, 16);

            string url = Shove._Web.Utility.GetUrl() + "/UserLogin.aspx?key=" + key;

            StringBuilder sb = new StringBuilder();

            sb.Append("<div style='font-weight:bold;'>尊敬的" + _Site.Name + "客户(").Append(strUserName).Append("):</div>")
                .Append("<div>您好!</div>")
                .Append("<div>系统已收到您的密码找回：<em style='color:red;'>" + password + "   </em>   <a href='").Append(url).Append("' target='_top'>").Append(url).Append("</a>登录您的帐号密码</div>")
                .Append("<div>为了您的安全，该邮件通知地址将在 24 小时后失效，谢谢合作。</div>")
                .Append("<div>此邮件由系统发出，请勿直接回复!</div>")
                .Append("<div>免费客服电话：<%=_Site.ServiceTelephone %></div>")
                .Append("<div>意见收集与提交：BD@handtouchworld.com</div>")
                .Append("<div>").Append(Shove._Web.Utility.GetUrlWithoutHttp()).Append(" 版权所有(C) 2008-2009</div>");

            int Result = PF.SendEmail(_Site, strEmailAccounts, "密码找回通知信", sb.ToString());

            if (Result < 0)
            {
                new Log("System").Write(this.GetType().FullName + "发送邮件密码失败");
            }
            else
            {
                string strDescription = "";
                int id = user.EditByID(ref strDescription);
                if (id == 0)
                {
                    Shove._Web.JavaScript.Alert(this, "邮件密码发送成功！请查收后登录！");

                }
                else
                {
                    Shove._Web.JavaScript.Alert(this, strDescription);
                }
            }


        }
        else
        {
            //手机验证
            string strUserMobile = Shove._Web.Utility.GetRequest("tbUserMobile");

            if (strUserMobile == "")
            {
                Shove._Web.JavaScript.Alert(this, "手机号码不能为空。");

                return;
            }

            if (!Shove._String.Valid.isMobile(strUserMobile))
            {
                Shove._Web.JavaScript.Alert(this, "手机格式不正确。");
                return;
            }


            DataTable dt = new DAL.Tables.T_Users().Open("", "Name = '" + strUserName + "' and Mobile = '" + strUserMobile + "'", "");

            if (dt == null || dt.Rows.Count < 1)
            {
                Shove._Web.JavaScript.Alert(this, "用户名或手机号码不正确。");

                return;
            }


            if (!Shove._Convert.StrToBool(dt.Rows[0]["isMobileValided"].ToString(), false))
            {
                Shove._Web.JavaScript.Alert(this, "您的手机当前还没有绑定，不能使用密码找回功能，请联系客服人员帮你找回密码，谢谢合作。");

                return;
            }
            if (strAnswer != "")
            {
                string answer = dt.Rows[0]["SecurityAnswer"].ToString();
                if (!strAnswer.Trim().Equals(answer.Trim()))
                {
                    Shove._Web.JavaScript.Alert(this, "回答问题不正确。");
                    return;
                }
            }

            if (strTrueName != "")
            {
                string strNames = dt.Rows[0]["RealityName"].ToString();
                if (!strTrueName.Trim().Equals(strNames.Trim()))
                {
                    Shove._Web.JavaScript.Alert(this, "真实姓名不正确。");
                    return;
                }
            }
            if (strCardNO != "")
            {
                string CardNumber = dt.Rows[0]["IDCardNumber"].ToString();
                if (!strCardNO.Trim().Equals(CardNumber.Trim()))
                {
                    Shove._Web.JavaScript.Alert(this, "身份证号码不正确。");
                    return;
                }

            }
            string password = RandPwd();
            Users user = new Users(_Site.ID);
            user.ID = (long)dt.Rows[0]["ID"];
            user.Name = strUserName;
            user.Password = password;
            StringBuilder strSB = new StringBuilder();
            strSB.Append("尊敬的" + _Site.Name + "客户("+strUserName+"):").Append("帐号密码找回："+password);
            int Result = PF.SendSMS(_Site, user.ID, strUserMobile,strSB.ToString());
            if (Result < 0)
            {
                new Log("System").Write(this.GetType().FullName + "发送手机密码短信失败");

            }
            else
            {
                string strDescription = "";
                int id = user.EditByID(ref strDescription);
                if (id == 0)
                {
                    Shove._Web.JavaScript.Alert(this, "手机短信密码发送成功！请查收后登录！");
                }
                else
                {
                    Shove._Web.JavaScript.Alert(this, strDescription);
                }
            }



        }
       

    }
    /// <summary>
    /// 随机6位密码
    /// </summary>
    /// <returns></returns>
    public string RandPwd()
    {
        Random rand = new Random();
        string strPwd = "";
        for (int i = 0; i < 6; i++)
        {
            strPwd += rand.Next(0, 9).ToString();
        }
        if (strPwd != "")
        {
            if (strPwd.Length == 6)
            {
                return strPwd;
            }
        }
        return "444444";
        
    }
   
}
