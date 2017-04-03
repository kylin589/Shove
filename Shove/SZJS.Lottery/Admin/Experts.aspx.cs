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

public partial class Admin_Experts : AdminPageBase
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            BindDataForLottery();

            BindData();

            g.Columns[10].Visible = _User.Competences.IsOwnedCompetences(Competences.BuildCompetencesList(Competences.MemberManagement));
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
            PF.GoError(ErrorNumber.DataReadWrite, "数据库繁忙，请重试", this.GetType().BaseType.FullName);

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

        DataTable dt = new DAL.Views.V_Experts().Open("", "SiteID = " + _Site.ID.ToString() + (ddlLottery.SelectedValue == "0" ? "" : " and LotteryID = " +  Shove._Web.Utility.FilteSqlInfusion(ddlLottery.SelectedValue)), "");

        if (dt == null)
        {
            PF.GoError(ErrorNumber.DataReadWrite, "数据库繁忙，请重试", this.GetType().BaseType.FullName);

            return;
        }

        PF.DataGridBindData(g, dt, gPager);
    }

    protected void g_ItemDataBound(object sender, System.Web.UI.WebControls.DataGridItemEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem || e.Item.ItemType == ListItemType.EditItem)
        {
            ((TextBox)e.Item.Cells[4].FindControl("tbDescription")).Text = e.Item.Cells[13].Text;
            ((TextBox)e.Item.Cells[5].FindControl("tbMaxPrice")).Text = e.Item.Cells[14].Text;
            ((TextBox)e.Item.Cells[6].FindControl("tbBonusScale")).Text = e.Item.Cells[15].Text;
            ((TextBox)e.Item.Cells[7].FindControl("tbReadCount")).Text = e.Item.Cells[18].Text;

            ((CheckBox)e.Item.Cells[8].FindControl("cbON")).Checked = Shove._Convert.StrToBool(e.Item.Cells[16].Text, true);
            ((CheckBox)e.Item.Cells[9].FindControl("cbisCommend")).Checked = Shove._Convert.StrToBool(e.Item.Cells[17].Text, true);
        }
    }

    protected void g_ItemCommand(object source, DataGridCommandEventArgs e)
    {
        if (e.CommandName == "Edit")
        {
            long ExpertsID = Shove._Convert.StrToLong(e.Item.Cells[12].Text, -1);

            if (ExpertsID < 1)
            {
                PF.GoError(ErrorNumber.DataReadWrite, "数据库繁忙，请重试", this.GetType().BaseType.FullName);

                return;
            }

            string Description = ((TextBox)e.Item.Cells[4].FindControl("tbDescription")).Text.Trim();

            if (Description == "")
            {
                Shove._Web.JavaScript.Alert(this.Page, "请输入专家描述。");

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

            int ReadCount = Shove._Convert.StrToInt(((TextBox)e.Item.Cells[7].FindControl("tbReadCount")).Text, -1);

            if (ReadCount < 0)
            {
                Shove._Web.JavaScript.Alert(this.Page, "请输入正确的人气指数。");

                return;
            }

            int ReturnValue = -1;
            string ReturnDescription = "";
            int Results = -1;
            Results = DAL.Procedures.P_ExpertsEdit(_Site.ID, ExpertsID, Description, MaxPrice, BonusScale, ((CheckBox)e.Item.Cells[7].FindControl("cbON")).Checked, ((CheckBox)e.Item.Cells[8].FindControl("cbisCommend")).Checked, ReadCount, ref ReturnValue, ref ReturnDescription);

            if (Results < 0)
            {
                PF.GoError(ErrorNumber.DataReadWrite, "数据库繁忙，请重试", this.GetType().BaseType.FullName);

                return;
            }

            if (ReturnValue < 0)
            {
                Shove._Web.JavaScript.Alert(this.Page, ReturnDescription);

                return;
            }

            return;
        }

        if (e.CommandName == "Del")
        {
            long ExpertsID = Shove._Convert.StrToLong(e.Item.Cells[12].Text, -1);

            if (ExpertsID < 1)
            {
                PF.GoError(ErrorNumber.DataReadWrite, "数据库繁忙，请重试", this.GetType().BaseType.FullName);

                return;
            }

            int ReturnValue = -1;
            string ReturnDescription = "";
            int Results = -1;
            Results = DAL.Procedures.P_ExpertsDelete(_Site.ID, ExpertsID, ref ReturnValue, ref ReturnDescription);


            if (Results < 0)
            {
                PF.GoError(ErrorNumber.DataReadWrite, "数据库繁忙，请重试", this.GetType().BaseType.FullName);

                return;
            }

            if (ReturnValue < 0)
            {
                PF.GoError(ErrorNumber.Unknow, ReturnDescription, this.GetType().BaseType.FullName);

                return;
            }

            BindData();

            return;
        }
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
