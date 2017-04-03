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

public partial class Admin_ExpertsTrys : AdminPageBase
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            BindDataForLottery();

            BindData();

            g.Columns[7].Visible = _User.Competences.IsOwnedCompetences(Competences.BuildCompetencesList(Competences.MemberManagement));
        }
    }

    #region Web 窗体设计器生成的代码

    override protected void OnInit(EventArgs e)
    {
        RequestLoginPage = this.Request.Url.AbsoluteUri;

        RequestCompetences = Competences.BuildCompetencesList(Competences.MemberManagement,Competences.QueryData);

        base.OnInit(e);
    }

    #endregion

    private void BindDataForLottery()
    {
        DataTable dt = new DAL.Tables.T_Lotteries().Open("[ID], [Name]", "[ID] in (" + (_Site.UseLotteryList == "" ? "-1" : _Site.UseLotteryList) + ")", "[Order]");

        if (dt == null)
        {
            PF.GoError(ErrorNumber.DataReadWrite, "数据库繁忙，请重试", "Admin_ExpertsTrys");

            return;
        }

        ddlLottery.Items.Clear();

        ddlLottery.Items.Add(new ListItem("所有彩种", "0"));

        foreach (DataRow dr in dt.Rows)
        {
            ddlLottery.Items.Add(new ListItem(dr["Name"].ToString(), dr["ID"].ToString()));
        }
    }

    private void BindData()
    {
        if (ddlLottery.Items.Count < 1)
        {
            return;
        }

        DataTable dt = new DAL.Views.V_ExpertsTrys().Open("", "SiteID = " + _Site.ID.ToString() + (ddlLottery.SelectedValue == "0" ? "" : " and LotteryID = " +  Shove._Web.Utility.FilteSqlInfusion(ddlLottery.SelectedValue)) + " and HandleResult = " + HandleResult.Trying.ToString(), "");

        if (dt == null)
        {
            PF.GoError(ErrorNumber.DataReadWrite, "数据库繁忙，请重试", "Admin_ExpertsTrys");

            return;
        }

        PF.DataGridBindData(g, dt, gPager);
    }

    protected void g_ItemDataBound(object sender, System.Web.UI.WebControls.DataGridItemEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem || e.Item.ItemType == ListItemType.EditItem)
        {
            ((TextBox)e.Item.Cells[4].FindControl("tbDescription")).Text = e.Item.Cells[11].Text;
            ((TextBox)e.Item.Cells[5].FindControl("tbMaxPrice")).Text = e.Item.Cells[12].Text;
            ((TextBox)e.Item.Cells[6].FindControl("tbBonusScale")).Text = e.Item.Cells[13].Text;
        }
    }

    protected void g_ItemCommand(object source, DataGridCommandEventArgs e)
    {
        if (e.CommandName == "Accept")
        {
            long TryID = Shove._Convert.StrToLong(e.Item.Cells[10].Text, -1);

            if (TryID < 1)
            {
                PF.GoError(ErrorNumber.DataReadWrite, "数据库繁忙，请重试", "Admin_ExpertsTrys");

                return;
            }

            string Description = ((TextBox)e.Item.Cells[4].FindControl("tbDescription")).Text.Trim();

            if (Description == "")
            {
                Shove._Web.JavaScript.Alert(this.Page, "请输入超级发起人描述。");

                return;
            }

            double MaxPrice = Shove._Convert.StrToDouble(((TextBox)e.Item.Cells[5].FindControl("tbMaxPrice")).Text, -1);

            if (MaxPrice < 0)
            {
                Shove._Web.JavaScript.Alert(this.Page, "请输入正确的最大单价。");

                return;
            }

            double BonusScale = Shove._Convert.StrToDouble(((TextBox)e.Item.Cells[6].FindControl("tbBonusScale")).Text, -1);

            if ((BonusScale < 0) || (BonusScale > 1))
            {
                Shove._Web.JavaScript.Alert(this.Page, "请输入正确的所得佣金比例。");

                return;
            }

            CheckBox cb = (CheckBox)e.Item.Cells[7].FindControl("cbisCommend");
            bool isCommend = cb.Checked;

            int ReturnValue = -1;
            string ReturnDescription = "";
            int Results = -1;
            Results = DAL.Procedures.P_ExpertsTryHandle(_Site.ID, TryID, HandleResult.Accepted, Description, MaxPrice, BonusScale, isCommend, ref ReturnValue, ref ReturnDescription) ;


            if ( Results < 0)
            {
                PF.GoError(ErrorNumber.DataReadWrite, "数据库繁忙，请重试", "Admin_ExpertsTrys");

                return;
            }

            if (ReturnValue < 0)
            {
                Shove._Web.JavaScript.Alert(this.Page, ReturnDescription);

                return;
            }

            BindData();
        }

        if (e.CommandName == "NoAccept")
        {
            long TryID = Shove._Convert.StrToLong(e.Item.Cells[10].Text, -1);

            if (TryID < 1)
            {
                PF.GoError(ErrorNumber.DataReadWrite, "数据库繁忙，请重试", "Admin_ExpertsTrys");

                return;
            }

            int ReturnValue = -1;
            string ReturnDescription = "";
            int Results = -1;
            Results = DAL.Procedures.P_ExpertsTryHandle(_Site.ID, TryID, HandleResult.NoAcception, "", 0, 0, false, ref ReturnValue, ref ReturnDescription);

            if (Results < 0)
            {
                PF.GoError(ErrorNumber.DataReadWrite, "数据库繁忙，请重试", "Admin_ExpertsTrys");

                return;
            }

            if (ReturnValue < 0)
            {
                PF.GoError(ErrorNumber.Unknow, ReturnDescription, "Admin_ExpertsTrys");

                return;
            }
        }

        BindData();

        return;
    }

    protected void gPager_PageWillChange(object Sender, Shove.Web.UI.PageChangeEventArgs e)
    {
        BindData();
    }

    protected void gPager_SortBefore(object source, System.Web.UI.WebControls.DataGridSortCommandEventArgs e)
    {
        BindData();
    }

    protected void ddlLottery_SelectedIndexChanged(object sender, EventArgs e)
    {
        BindData();
    }
}
