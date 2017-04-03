using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Admin_ExpertsPredict : AdminPageBase
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            BindLotteryType();
            BindData();

            hlAdd.Visible = _User.Competences.IsOwnedCompetences(Competences.BuildCompetencesList(Competences.FillContent));
            hlExpertsPredictNew.Visible = hlAdd.Visible;
            hlExpertsPredictNewAdd.Visible = hlAdd.Visible;
            g.Columns[5].Visible = hlAdd.Visible;
        }
    }

    protected override void OnInit(EventArgs e)
    {
        RequestLoginPage = this.Request.Url.AbsoluteUri;

        RequestCompetences = Competences.BuildCompetencesList(Competences.FillContent,Competences.QueryData);

        base.OnInit(e);
    }

    private void BindLotteryType()
    {
        DataTable dtLotteries = new DAL.Tables.T_Lotteries().Open("[ID], [Name], [Code]", "[ID] in(" + (_Site.UseLotteryList == "" ? "-1" : _Site.UseLotteryList) + ")", "[ID]");

        if (dtLotteries == null)
        {
            PF.GoError(ErrorNumber.DataReadWrite, "数据库繁忙，请重试", this.GetType().BaseType.FullName + "(-46)");

            return;
        }

        ddlLotteries.DataSource = dtLotteries;
        ddlLotteries.DataTextField = "Name";
        ddlLotteries.DataValueField = "ID";
        ddlLotteries.DataBind();
    }

    private void BindData()
    {
        hlAdd.NavigateUrl = "ExpertsPredictAdd.aspx";

        DataTable dt = new DAL.Tables.T_ExpertsPredict().Open("", "LotteryID=" + ddlLotteries.SelectedValue, "");

        if (dt == null)
        {
            PF.GoError(ErrorNumber.DataReadWrite, "数据库繁忙，请重试", this.GetType().BaseType.FullName + "(-62)");

            return;
        }

        g.DataSource = dt;
        g.DataBind();
    }

    protected void g_ItemDataBound(object sender, DataGridItemEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem || e.Item.ItemType == ListItemType.EditItem)
        {
            CheckBox cb = (CheckBox)e.Item.Cells[4].FindControl("cbisShow");
            cb.Checked = Shove._Convert.StrToBool(e.Item.Cells[7].Text, true);
        }
    }

    protected void g_ItemCommand(object source, DataGridCommandEventArgs e)
    {
        if (e.CommandName == "Edit")
        {
            this.Response.Redirect("ExpertsPredictEdit.aspx?ID=" + e.Item.Cells[6].Text, true);
        }
    }

    protected void ddlLotteries_SelectedIndexChanged(object sender, EventArgs e)
    {
        BindData();
    }
}
