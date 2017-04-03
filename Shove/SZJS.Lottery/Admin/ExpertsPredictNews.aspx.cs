using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Admin_ExpertsPredictNews : AdminPageBase
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            BindExpertsPredict();
            BindData();
        }
    }

    protected override void OnInit(EventArgs e)
    {
        RequestLoginPage = this.Request.Url.AbsoluteUri;

        RequestCompetences = Competences.BuildCompetencesList(Competences.FillContent);

        base.OnInit(e);
    }

    private void BindExpertsPredict()
    {
        DataTable dtExpertsPredict = new DAL.Tables.T_ExpertsPredict().Open("", "", "[ID]");

        if (dtExpertsPredict == null)
        {
            PF.GoError(ErrorNumber.DataReadWrite, "数据库繁忙，请重试", this.GetType().BaseType.FullName + "(-40)");

            return;
        }

        ddlExpertsPredictNews.DataSource = dtExpertsPredict;
        ddlExpertsPredictNews.DataTextField = "Name";
        ddlExpertsPredictNews.DataValueField = "ID";
        ddlExpertsPredictNews.DataBind();
    }

    private void BindData()
    {
        hlExpertsPredictNewAdd.NavigateUrl = "ExpertsPredictNewsAdd.aspx";

        DataTable dt = new DAL.Tables.T_ExpertsPredictNews().Open("", "", "");

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

            CheckBox cbisWinning = (CheckBox)e.Item.Cells[3].FindControl("cbisWinning");
            cbisWinning.Checked = Shove._Convert.StrToBool(e.Item.Cells[8].Text, true);
        }
    }

    protected void g_ItemCommand(object source, DataGridCommandEventArgs e)
    {
        if (e.CommandName == "Edit")
        {
            this.Response.Redirect("ExpertsPredictNewsEdit.aspx?ID=" + e.Item.Cells[6].Text, true);
        }
    }

    protected void ddlExpertsPredictNews_SelectedIndexChanged(object sender, EventArgs e)
    {
        BindData();
    }
}
