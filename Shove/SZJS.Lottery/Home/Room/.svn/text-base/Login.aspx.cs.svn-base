using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Text;
using System.Security.Cryptography;

public partial class Home_Room_Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SystemOptions so = new SystemOptions();

        string key = so["MemberSharing_Alipay_MD5"].ToString("").Trim();
        string return_url = Shove._Web.Utility.GetUrl() + "/Home/Room/Receive.aspx".Trim();// + System.Web.HttpUtility.UrlEncode("BuyID=" + Request["BuyID"]).Trim(); //服务器通知返回接口
        string gateway = so["MemberSharing_Alipay_Gateway"].ToString("").Trim();             //支付接口
        string _input_charset = "utf-8".Trim();
        string service = "alipay.auth.authorize".Trim();
        string target_service = "user.auth.quick.login".Trim();
        string sign_type = "MD5".Trim();
        string partner = so["MemberSharing_Alipay_UserNumber"].ToString("").Trim();          //卖家商户号       
        Alipay.Gateway.Utility aps = new Alipay.Gateway.Utility();
        string ss = aps.CreatUrl(gateway, service, target_service, partner, sign_type, key, return_url, _input_charset);
        Response.Redirect(ss.Trim(), true);
    }
}
