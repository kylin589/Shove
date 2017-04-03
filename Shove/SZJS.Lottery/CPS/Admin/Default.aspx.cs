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

public partial class CPS_Admin_Default : CpsPageBase
{

    public string SubPage = "Default.aspx";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            SubPage = Shove._Web.Utility.GetRequest("SubPage");
            BindData();
            if (SubPage == "")
            {
                SubPage = "Default.aspx";
            }
            else
            {
                Response.Redirect(SubPage);
            }

            lbUserName.InnerHtml = _User.Name + ",你好!";
            if (_User.cps.Type == 2)
            {
                lbUserType.InnerHtml = "代理商";
                trPromoterCPS.Visible = false;
                trPromoter.Visible = true;
                
            }
        }

    }

    #region Web 窗体设计器生成的代码

    override protected void OnInit(EventArgs e)
    {
        isCpsRequestLogin = true;
        RequestLoginPage = Shove._Web.Utility.GetUrl() + "/CPS/Admin/Default.aspx";

        base.OnInit(e);
    }

    #endregion

    protected void lbExit_Click(object sender, EventArgs e)
    {
        if (_User != null)
        {
            string ReturnDescription = "";
            _User.Logout(ref ReturnDescription);
        }

        this.Response.Redirect("../index.aspx");
    }
    private void BindData()
    {
        long curCpsID = _User.cps.ID;

        string cacheKey = "CPS_Admin_BaseInfo_BindData" + curCpsID.ToString();

        DataTable dt = Shove._Web.Cache.GetCacheAsDataTable(cacheKey);

        if (dt == null)
        {
            int ReturnValue = -1;
            string ReturnDescription = "";
            DataSet ds = null;

            int Result = DAL.Procedures.P_GetCpsByDay(ref ds, curCpsID, ref ReturnValue, ref ReturnDescription);

            if (Result < 0 || ds == null || ds.Tables.Count < 1)
            {
                PF.GoError(ErrorNumber.DataReadWrite, "数据库繁忙，请重试", this.GetType().BaseType.FullName);

                return;
            }

            if (ReturnValue < 0)
            {
                PF.GoError(ErrorNumber.Unknow, ReturnDescription, this.GetType().BaseType.FullName);

                return;
            }

            dt = ds.Tables[0];
            Shove._Web.Cache.SetCache(cacheKey, dt, 3600);
        }

        spanMemberCountByDay.InnerHtml = dt.Rows[0]["TodayMembers"].ToString();
        spanMemberCount.InnerHtml = dt.Rows[0]["TotalMembers"].ToString();
        spanIncomeByDay.InnerHtml = Shove._Convert.StrToDouble(dt.Rows[0]["TodayIncome"].ToString(), 0).ToString("N");
        spanIncome.InnerHtml = _User.Bonus.ToString("N");
        lbThisMonthIncome.InnerHtml = Shove._Convert.StrToDouble(dt.Rows[0]["ThisMonthIncome"].ToString(), 0).ToString("N");
        spanUsedBonus.InnerHtml = _User.BonusUse.ToString("N");
        spanAllowBonus.InnerHtml = _User.BonusAllow.ToString("N");
    }
}
