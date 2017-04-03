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

public partial class Home_Room_ExpertsCommendsList : SitePageBase
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!_Site.SiteOptions["Opt_Experts_Status_ON"].ToBoolean(false))
        {
            PF.GoError(ErrorNumber.Unknow, "功能无效，限制访问", "Room_ExpertsCommendsList");

            return;
        }

        if (!IsPostBack)
        {
            ddlExpertsBindData();

            BindData();
        }
    }

    #region Web 窗体设计器生成的代码

    override protected void OnInit(EventArgs e)
    {
        RequestLoginPage = this.Request.Url.AbsoluteUri;

        isRequestLogin = true;

        base.OnInit(e);
    }

    #endregion

    private void BindData()
    {
        DataTable dt = new DAL.Tables.T_ExpertsCommends().Open("", "SiteID = " + _Site.ID.ToString() + " and ExpertsID = " + Shove._Web.Utility.FilteSqlInfusion(ddlExperts.SelectedValue), "[DateTime] desc");

        if (dt == null)
        {
            PF.GoError(ErrorNumber.DataReadWrite, "数据库繁忙，请重试", "Room_ExpertsCommendsList");

            return;
        }

        if (dt.Rows.Count > 0)
        {
            dt.Columns.Add("Number1", System.Type.GetType("System.String"));

            foreach (DataRow dr in dt.Rows)
            {
                try
                {
                    dr["Number1"] = dr["Number"];
                }
                catch
                {
                    dr["Number1"] = "";
                }

                dt.AcceptChanges();
            }
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

    protected void g_ItemDataBound(object sender, System.Web.UI.WebControls.DataGridItemEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem || e.Item.ItemType == ListItemType.EditItem)
        {
            double money;

            money = Shove._Convert.StrToDouble(e.Item.Cells[2].Text, 0);
            e.Item.Cells[2].Text = (money == 0) ? "" : money.ToString("N");
        }
    }

    protected void g_ItemCommand(object source, System.Web.UI.WebControls.DataGridCommandEventArgs e)
    {
        if (e.CommandName == "btnRead")
        {
            this.Response.Redirect("ShowExpertsCommend.aspx?ID=" + e.Item.Cells[5].Text, true);

            return;
        }
    }

    private void ddlExpertsBindData()
    {
        string UseLotteriesList = DAL.Functions.F_GetExpertsLotteryList(_Site.ID, _User.ID);
        if (UseLotteriesList == "")
        {
            PF.GoError(ErrorNumber.NoData, "没有您的相关数据或者您的申请还未处理", "Room_ExpertsCommendsList");

            return;
        }

        DataTable dt = new DAL.Views.V_Experts().Open("ID,LotteryName", "UserID = " + _User.ID.ToString() + " and LotteryID in (" + UseLotteriesList + ")", "");

        if ((dt == null) || (dt.Rows.Count == 0))
        {
            PF.GoError(ErrorNumber.NoData, "没有您的相关数据或者您的申请还未处理", "Room_ExpertsCommendsList");

            return;
        }

        Shove.ControlExt.FillDropDownList(ddlExperts, dt, "LotteryName", "ID");

        ddlExperts_SelectedIndexChanged(ddlExperts, new EventArgs());
    }

    protected void ddlExperts_SelectedIndexChanged(object sender, EventArgs e)
    {
        BindData();
    }
}
