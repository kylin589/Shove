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

public partial class Home_Room_UserControls_WebHead : UserControlBase
{
    private static long SiteID;
    private static string Admin;
    private static string NotifyImg;
    private static string Message;
    private static string RefreshImg;
    private static string ForgetPassword;
    private static string Reg;
    private static string MyIcaile;
    private static string LoginUrl;
    public string DefaultUrl;
    private static string Register;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            SiteID = _Site.ID;
            Admin = ResolveUrl("~/Admin/Default.aspx");
            NotifyImg = ResolveUrl("~/Home/Room/Images/notify_bg.gif");
            Message = ResolveUrl("~/Home/Room/Message.aspx");
            RefreshImg = ResolveUrl("~/Home/Room/Images/icon_shuaxin.gif");
            ForgetPassword = ResolveUrl("~/UserForgetPassword.aspx");
            Register = ResolveUrl("~/UserReg.aspx");
            Reg = ResolveUrl("~/Index.aspx");
            MyIcaile = ResolveUrl("~/Home/Room/UserEdit.aspx");

            LoginUrl = ResolveUrl("~/UserLogin.aspx?ReturnUrl=" + Shove._Security.Encrypt.EncryptString(PF.GetCallCert(), this.Request.Url.AbsoluteUri));
            if (_User != null)
            {
                hUserID.Value = _User.ID.ToString();
                UserAddValue.Visible = true;
                UserDistill.Visible = true;
                this.span1.Visible = true;
                this.span2.Visible = true;
            }

            string UseLotteryList = Shove._Web.Cache.GetCacheAsString("Site_UseLotteryList" + _Site.ID, "");
            string[] LotteryList = null;

            if (UseLotteryList == "")
            {
                UseLotteryList = DAL.Functions.F_GetUsedLotteryList(_Site.ID);

                if (UseLotteryList != "")
                {
                    Shove._Web.Cache.SetCache("Site_UseLotteryList" + _Site.ID, UseLotteryList);
                }
            }

            LotteryList = UseLotteryList.Split(',');

            for (int i = 0; i < LotteryList.Length; i++)
            {
                if (LotteryList[i].Equals("5"))
                {
                    this.aHref5.Disabled = false;
                    this.aHref5.HRef = "~/Lottery/BuySSQ.aspx";
                    //this.aHref5.Target = "_blank";
                }
                else if (LotteryList[i].Equals("6"))
                {
                    this.aHref6.Disabled = false;
                    this.aHref6.HRef = "~/Lottery/Buy3D.aspx";
                   // this.aHref6.Target = "_blank";
                }
                else if (LotteryList[i].Equals("13"))
                {
                    this.aHref13.Disabled = false;
                    this.aHref13.HRef = "~/Lottery/BuyQLC.aspx";
                   // this.aHref13.Target = "_blank";
                }
                else if (LotteryList[i].Equals("59"))
                {
                    this.aHref59.Disabled = false;
                    this.aHref59.HRef = "~/Lottery/Buy15X5.aspx";
                    //this.aHref59.Target = "_blank";
                }
                else if (LotteryList[i].Equals("58"))
                {
                    this.aHref58.Disabled = false;
                    this.aHref58.HRef = "~/Lottery/BuyDF6J1.aspx";
                   // this.aHref58.Target = "_blank";
                }
                else if (LotteryList[i].Equals("3"))
                {
                    this.aHref3.Disabled = false;
                    this.aHref3.HRef = "~/Lottery/BuyQXC.aspx";
                   // this.aHref3.Target = "_blank";
                }
                else if (LotteryList[i].Equals("39"))
                {
                    this.aHref39.Disabled = false;
                    this.aHref39.HRef = "~/Lottery/BuyCJDLT.aspx";
                   // this.aHref39.Target = "_blank";
                }
                else if (LotteryList[i].Equals("9"))
                {
                    this.aHref9.Disabled = false;
                    this.aHref9.HRef = "~/Lottery/Buy22X5.aspx";
                   // this.aHref9.Target = "_blank";
                }
                else if (LotteryList[i].Equals("63"))
                {
                    this.aHref63.Disabled = false;
                    this.aHref63.HRef = "~/Lottery/BuyPL3.aspx";
                    //this.aHref63.Target = "_blank";
                }
                else if (LotteryList[i].Equals("64"))
                {
                    this.aHref64.Disabled = false;
                    this.aHref64.HRef = "~/Lottery/BuyPL5.aspx";
                    //this.aHref64.Target = "_blank";
                }
                else if (LotteryList[i].Equals("65"))
                {
                    this.aHref65.Disabled = false;
                    this.aHref65.HRef = "~/Lottery/Buy31X7.aspx";
                    //this.aHref65.Target = "_blank";
                }
                else if (LotteryList[i].Equals("74"))
                {
                    this.aHref1.Disabled = false;
                    this.aHref1.HRef = "~/Lottery/BuySFC.aspx";
                   // this.aHref1.Target = "_blank";
                }
                else if (LotteryList[i].Equals("75"))
                {
                    this.aHref1_9.Disabled = false;
                    this.aHref1_9.HRef = "~/Lottery/BuySFC_9_D.aspx";
                   // this.aHref1_9.Target = "_blank";
                }
                else if (LotteryList[i].Equals("2"))
                {
                    this.aHref2.Disabled = false;
                    this.aHref2.HRef = "~/Lottery/BuyJQC.aspx";
                   // this.aHref2.Target = "_blank";
                }
                else if (LotteryList[i].Equals("15"))
                {
                    this.aHref15.Disabled = false;
                    this.aHref15.HRef = "~/Lottery/BuyLCBQC.aspx";
                   // this.aHref15.Target = "_blank";
                }
                else if (LotteryList[i].Equals("29"))
                {
                    this.aHref29.Disabled = false;
                    this.aHref29.HRef = "~/Lottery/BuySSL.aspx";
                    //this.aHref29.Target = "_blank";
                }
                else if (LotteryList[i].Equals("62"))
                {
                    this.aHref62.Disabled = false;
                    this.aHref62.HRef = "~/Lottery/BuySYYDJ.aspx";
                    //this.aHref62.Target = "_blank";
                }
                else if (LotteryList[i].Equals("61"))
                {
                    this.aHref61.Disabled = false;
                    this.aHref61.HRef = "~/Lottery/BuySSC.aspx";
                    //this.aHref61.Target = "_blank";
                }
                else if (LotteryList[i].Equals("28"))
                {
                    this.aHref28.Disabled = false;
                    this.aHref28.HRef = "~/Lottery/BuyCQSSC.aspx";
                    //this.aHref28.Target = "_blank";
                }
                else if (LotteryList[i].Equals("70"))
                {
                    this.aHref70.Disabled = false;
                    this.aHref70.HRef = "~/Lottery/BuyJX11X5.aspx";
                    //this.aHref70.Target = "_blank";
                }
            }
        }
    }
    public static string SetNoCache(HttpContext context)
    {
        Users user = null;
        user = Users.GetCurrentUser(SiteID);
        StringBuilder sb = new StringBuilder();

        if (user != null)
        {
            sb.Append("<span>欢迎光临百姓彩&nbsp;&nbsp;");

            if (user.Competences.CompetencesList != "")
            {
                sb.Append("<a href='" + Admin + "' target='_blank'>【超级管理】</a>");
            }
            sb.Append("<span class=\"hui12\"><strong>" + user.Name + "</strong></span>&nbsp;");
            string sql = "select COUNT(*) from T_StationSMS where (AimID = @UserId or AimID = -1 ) and isRead = 0 and Type = 2 and isShow = 1";
            DataTable dtStationSMS = Shove.Database.MSSQL.Select(sql, new Shove.Database.MSSQL.Parameter("UserId", SqlDbType.BigInt, 0, ParameterDirection.Input, user.ID));
            if (dtStationSMS != null && dtStationSMS.Rows.Count > 0)
            {
                if (Shove._Convert.StrToInt(dtStationSMS.Rows[0][0].ToString(), 0) > 0)
                {
                    string str = "<img src=" + NotifyImg + "><a href='" + Message + "'>" + dtStationSMS.Rows[0][0].ToString() + "个提醒</a>&nbsp;&nbsp;";
                    sb.Append(str);
                }
            }
            sb.Append("余额:<span id='lbUserBalance'>").Append(user.Balance.ToString("N")).Append("</span>元&nbsp; <a href=\"javascript:;\" onclick=\"UpdateBindData();\" title=\"点击刷新余额\">")
                .Append("<img src=" + RefreshImg + " border=\"0\" />")
                .Append("</a><a href=" + MyIcaile + " target='_blank'>【用户中心】</a> ")
                .Append("<a href='" + Reg + "?Logout=1'>【安全退出】</asp:LinkButton></span>");
        }
        else
        {
            sb.Append("<span> <a href=" + LoginUrl + ">登录</a>")
                .Append("&nbsp; <a href=" + ForgetPassword + ">忘记密码</a>&nbsp;")
                .Append(" <a href=" + Register + ">注册</a>&nbsp;&nbsp;</span>");
        }
        return sb.ToString();
    }
}
