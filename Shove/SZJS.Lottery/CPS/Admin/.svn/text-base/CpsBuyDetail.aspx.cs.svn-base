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

public partial class CPS_Admin_CpsBuyDetail : CpsPageBase
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindData();
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
        RequestLoginPage = Shove._Web.Utility.GetUrl() + "/CPS/Admin/Default.aspx?SubPage=CpsBuyDetail.aspx";

        base.OnInit(e);
    }

    #endregion

    private void BindData()
    {
        long cpsID = Shove._Convert.StrToLong(Shove._Web.Utility.GetRequest("ID"), -1);

        if (cpsID < 1)
        {
            PF.GoError(ErrorNumber.DataReadWrite, "参数错误", this.GetType().BaseType.FullName);

            return;
        }

        DateTime fromDate = new DateTime(2000, 1, 1); //不能传DateTime.MinValue
        DateTime toDate = DateTime.Now;

        if (Request["StartTime"] != null && Request["EndTime"] != null)
        {
            fromDate = Shove._Convert.StrToDateTime(Shove._Web.Utility.GetRequest("StartTime") + " 0:0:0", DateTime.Now.ToString());
            toDate = Shove._Convert.StrToDateTime(Shove._Web.Utility.GetRequest("EndTime") + " 23:59:59", DateTime.Now.ToString());
        }

        string key = "CPS_Admin_CpsBuyDetail_" + cpsID + "_" + fromDate.ToString("yyyyMMdd") + toDate.ToString("yyyyMMdd");

        DataTable dt = Shove._Web.Cache.GetCacheAsDataTable(key);

        if (dt == null)
        {
            int returnValue = -1;
            string returnDescription = "";
            DataSet ds = null;

            int Result = DAL.Procedures.P_GetCpsBuyDetailByDate(ref ds, _Site.ID, cpsID, fromDate, toDate, ref returnValue, ref returnDescription);

            if (Result < 0)
            {
                PF.GoError(ErrorNumber.DataReadWrite, "数据库繁忙，请重试", this.GetType().BaseType.FullName);

                return;
            }

            if (returnValue < 0)
            {
                Shove._Web.JavaScript.Alert(this.Page, returnDescription);

                return;
            }

            if ((ds == null) || (ds.Tables.Count < 1))
            {
                PF.GoError(ErrorNumber.DataReadWrite, "数据库繁忙，请重试", this.GetType().BaseType.FullName);

                return;
            }

            dt = ds.Tables[0];
            Shove._Web.Cache.SetCache(key, dt, 3600);

        }

        PF.DataGridBindData(g, dt, gPager);
    }

    protected void gPager_PageWillChange(object Sender, Shove.Web.UI.PageChangeEventArgs e)
    {
        BindData();
    }

    protected void gPager_SortBefore(object source, System.Web.UI.WebControls.DataGridSortCommandEventArgs e)
    {
        BindData();
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
