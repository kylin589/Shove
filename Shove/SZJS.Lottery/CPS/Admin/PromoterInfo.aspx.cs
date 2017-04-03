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

public partial class CPS_Admin_PromoterInfo : CpsPageBase
{
    protected long CpsID = -1;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            CpsID = Shove._Convert.StrToLong(Shove._Web.Utility.GetRequest("id"), -1);

            if (CpsID < 1)
            {
                PF.GoError(ErrorNumber.Unknow, "参数错误", this.GetType().BaseType.FullName);

                return;
            }

            DataTable dt = new DAL.Views.V_Cps().Open("", "ID=" + CpsID.ToString() + " and ParentID=" + _User.cps.ID.ToString(), "");

            if (dt == null)
            {
                PF.GoError(ErrorNumber.DataReadWrite, "数据库繁忙，请重试", this.GetType().BaseType.FullName);

                return;
            }

            if (dt.Rows.Count == 0)
            {
                PF.GoError(ErrorNumber.Unknow, "参数错误", this.GetType().BaseType.FullName);

                return;
            }

            DataRow dr = dt.Rows[0];

            spanLinkUrl.InnerHtml = Shove._Web.Utility.GetUrl() + "/Default.aspx?cpsid=" + CpsID.ToString();
            tdRealyName.InnerHtml = dr["RealityName"].ToString();
            tdUserName.InnerHtml = dr["UserName"].ToString();
            tbUrlName.Text = dr["Name"].ToString();
            tbUrl.Text = dr["Url"].ToString();
            tbContactPerson.Text = dr["ContactPerson"].ToString();
            tbPhone.Text = dr["Telephone"].ToString();
            tbMobile.Text = dr["Mobile"].ToString();
            tbQQNum.Text = dr["QQ"].ToString();
            tbEmail.Text = dr["Email"].ToString();

            lbUserName.InnerHtml = _User.Name + ",你好!";
            if (_User.cps.Type == 2)
            {
                lbUserType.InnerHtml = "代理商";
                trPromoterCPS.Visible = false;
                trPromoter.Visible = true;
            }
        }
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
    #region Web 窗体设计器生成的代码

    override protected void OnInit(EventArgs e)
    {
        isCpsRequestLogin = true;
        RequestLoginPage = Shove._Web.Utility.GetUrl() + "/CPS/Admin/Default.aspx?SubPage=PromoterInfo.aspx";

        base.OnInit(e);
    }

    #endregion
}
