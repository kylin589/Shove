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

public partial class Admin_Advertisements : AdminPageBase
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindType();
            ddlType_SelectedIndexChanged(ddlType, new EventArgs());

            hlAdd.Visible = _User.Competences.IsOwnedCompetences(Competences.BuildCompetencesList(Competences.FillContent));
            g.Columns[5].Visible = hlAdd.Visible;
        }
    }

    protected override void OnInit(EventArgs e)
    {
        RequestLoginPage = this.Request.Url.AbsoluteUri;

        RequestCompetences = Competences.BuildCompetencesList(Competences.FillContent,Competences.QueryData);

        base.OnInit(e);
    }

    private void BindType()
    {
        string LotteryID = Shove._Web.Utility.GetRequest("LotteryID");
        string TypeID = Shove._Web.Utility.GetRequest("TypeID");

        string CacheKey = "dtLotteriesUseLotteryList";
        DataTable dtLotteries = Shove._Web.Cache.GetCacheAsDataTable(CacheKey);

        if (dtLotteries == null)
        {
            dtLotteries = new DAL.Tables.T_Lotteries().Open("[ID], [Name], [Code]", "[ID] in(" + (_Site.UseLotteryList == "" ? "-1" : _Site.UseLotteryList) + ")", "[ID]");

            if (dtLotteries == null)
            {
                PF.GoError(ErrorNumber.DataReadWrite, "数据库繁忙，请重试", this.GetType().BaseType.FullName + "(-46)");

                return;
            }

            Shove._Web.Cache.SetCache(CacheKey, dtLotteries, 6000);
        }

        ddlLotteries.DataSource = dtLotteries;
        ddlLotteries.DataTextField = "Name";
        ddlLotteries.DataValueField = "ID";
        ddlLotteries.DataBind();

        if (ddlLotteries.Items.FindByValue(LotteryID) != null)
        {
            ddlLotteries.SelectedValue = LotteryID;
            
        }

        if (ddlType.Items.FindByValue(TypeID) != null)
        {
            ddlType.SelectedValue = TypeID;
        }
    }

    private void BindData()
    {
        hlAdd.NavigateUrl = "AdvertisementsAdd.aspx?LotteryID=" + ddlLotteries.SelectedValue + "&TypeID=" + ddlType.SelectedValue;

        DataTable dt = new DAL.Tables.T_Advertisements().Open("", "LotteryID=" +  Shove._Web.Utility.FilteSqlInfusion(ddlLotteries.SelectedValue) + " and [Name]='" +  Shove._Web.Utility.FilteSqlInfusion(ddlType.SelectedItem.Text) + "'", "[Order]");

        if (dt == null)
        {
            PF.GoError(ErrorNumber.DataReadWrite, "数据库繁忙，请重试", this.GetType().BaseType.FullName + "(59)");

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

            e.Item.Cells[0].Text = e.Item.Cells[0].Text.Split(new string[] { "Color" }, StringSplitOptions.None)[0];
        }
    }

    protected void g_ItemCommand(object source, DataGridCommandEventArgs e)
    {
        if (e.CommandName == "Edit")
        {
            this.Response.Redirect("AdvertisementsEdit.aspx?ID=" + e.Item.Cells[6].Text + "&LotteryID=" + ddlLotteries.SelectedValue + "&TypeID=" + ddlType.SelectedValue + "", true);
        }
    }

    protected void ddlType_SelectedIndexChanged(object sender, EventArgs e)
    {
        BindData();
    }

    protected void ddlLotteries_SelectedIndexChanged(object sender, EventArgs e)
    {
        BindData();
    }
}
