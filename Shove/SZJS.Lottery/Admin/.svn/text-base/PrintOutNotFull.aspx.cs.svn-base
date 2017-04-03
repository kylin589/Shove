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

public partial class Admin_PrintOutNotFull : AdminPageBase
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            BindDataForElectronTicket();

            BindDataForLottery();

            BindData();


        }
    }

    #region Web 窗体设计器生成的代码

    override protected void OnInit(EventArgs e)
    {
        RequestLoginPage = this.Request.Url.AbsoluteUri;

        RequestCompetences = Competences.BuildCompetencesList(Competences.LotteryIsuseScheme);

        base.OnInit(e);
    }

    #endregion

    private void BindDataForElectronTicket()
    {
        ddlElectronTicket.Items.Clear();
        SystemOptions so = new SystemOptions();
        ddlElectronTicket.Items.Add(new ListItem("向大赢家电子票中心", "101"));
        ddlElectronTicket.Items.Add(new ListItem("中民卓彩竞彩票中心", "102"));
        ddlElectronTicket.Items.Add(new ListItem("中民卓彩体彩票中心", "103"));
        ddlElectronTicket.Items.Add(new ListItem("中民卓彩福彩票中心", "104"));
    }

    private void BindDataForLottery()
    {
        if (ddlElectronTicket.Items.Count < 1)
        {
            return;
        }

        DataTable dt = new DAL.Tables.T_Lotteries().Open("[ID], [Name]", "PrintOutType = " + Shove._Web.Utility.FilteSqlInfusion(ddlElectronTicket.SelectedValue) + " and [ID] in (" + (_Site.UseLotteryList == "" ? "-1" : _Site.UseLotteryList) + ")", "[Order]");

        if (dt == null)
        {
            PF.GoError(ErrorNumber.DataReadWrite, "数据库繁忙，请重试", this.Page.GetType().BaseType.FullName);

            return;
        }

        Shove.ControlExt.FillDropDownList(ddlLottery, dt, "Name", "ID");
    }

    private void BindData()
    {
        if (ddlLottery.Items.Count < 1)
        {
            return;
        }

        DataTable dt = new DAL.Views.V_SchemeSchedules().Open("", "LotteryID = " + Shove._Web.Utility.FilteSqlInfusion(ddlLottery.SelectedValue) + " and Schedule >= 100 and QuashStatus = 0 and Buyed = 0 and EndTime < GetDate() and not [ID] in (select SchemeID from T_SchemesSendToCenter where HandleResult <> 1)", "[Money] desc");

        if (dt == null)
        {
            PF.GoError(ErrorNumber.DataReadWrite, "数据库繁忙，请重试", this.Page.GetType().BaseType.FullName);

            return;
        }

        dt.Columns.Add("LocateWaysAndMultiples", System.Type.GetType("System.String"));

        string BuyContent = "";
        string CnLocateWaysAndMultiples = "";

        for (int i = 0; i < dt.Rows.Count; i++)
        {
            dt.Rows[i]["Money"] = double.Parse(dt.Rows[i]["Money"].ToString()).ToString("N");

            if (new SZJS.Lottery()[SZJS.Lottery.ZCDC.sID].CheckPlayType(int.Parse(dt.Rows[i]["PlayTypeID"].ToString())))
            {
                dt.Rows[i]["Multiple"] = 0;

                try
                {
                    BuyContent = "";
                    CnLocateWaysAndMultiples = "";

                    if (new SZJS.Lottery()[SZJS.Lottery.ZCDC.sID].GetSchemeSplit(dt.Rows[i]["LotteryNumber"].ToString(), ref BuyContent, ref CnLocateWaysAndMultiples))
                    {
                        dt.Rows[i]["LocateWaysAndMultiples"] = CnLocateWaysAndMultiples;
                    }
                    else
                    {
                        dt.Rows[i]["LocateWaysAndMultiples"] = "<font color='red'>读取错误！</font>";
                    }
                }
                catch
                {
                    dt.Rows[i]["LocateWaysAndMultiples"] = "<font color='red'>读取错误！</font>";
                }
            }

            dt.AcceptChanges();
        }

        g.DataSource = dt;
        g.DataBind();
    }

    protected void ddlElectronTicket_SelectedIndexChanged(object sender, EventArgs e)
    {
        BindDataForLottery();

        BindData();
    }

    protected void ddlLottery_SelectedIndexChanged(object sender, System.EventArgs e)
    {
        BindData();
    }

    protected void btnRefresh_Click(object sender, System.EventArgs e)
    {
        BindData();
    }

    protected void g_ItemCommand(object source, System.Web.UI.WebControls.DataListCommandEventArgs e)
    {
        if (e.CommandName == "btnQuash")
        {
            long SiteID = Shove._Convert.StrToLong(((HtmlInputHidden)e.Item.FindControl("tbSiteID")).Value, -1);
            long InitiateUserID = Shove._Convert.StrToLong(((HtmlInputHidden)e.Item.FindControl("tbInitiateUserID")).Value, -1);
            long SchemeID = Shove._Convert.StrToLong(((HtmlInputHidden)e.Item.FindControl("tbSchemeID")).Value, -1);

            if ((SiteID < 0) || (InitiateUserID < 0) || (SchemeID < 0))
            {
                PF.GoError(ErrorNumber.Unknow, "参数错误", this.Page.GetType().BaseType.FullName);

                return;
            }

            Users tu = new Users(SiteID)[SiteID, InitiateUserID];

            if (tu == null)
            {
                PF.GoError(ErrorNumber.DataReadWrite, "数据库繁忙，请重试", this.Page.GetType().BaseType.FullName);

                return;
            }

            string ReturnDescription = "";

            if (tu.QuashScheme(SchemeID, true, ref ReturnDescription) < 0)
            {
                PF.GoError(ErrorNumber.Unknow, ReturnDescription, this.Page.GetType().BaseType.FullName);

                return;
            }

            BindData();

            return;
        }

        if (e.CommandName == "btnPrintOut")
        {
            int ReturnValue = -1;
            string ReturnDescription = "";

            int Results = -1;
            Results = DAL.Procedures.P_SchemePrintOut(
                Shove._Convert.StrToLong(((HtmlInputHidden)e.Item.FindControl("tbSiteID")).Value, -1),
                Shove._Convert.StrToLong(((HtmlInputHidden)e.Item.FindControl("tbSchemeID")).Value, -1),
                _User.ID, short.Parse(ddlElectronTicket.SelectedValue), "请电询", true, ref ReturnValue, ref ReturnDescription);

            if (Results < 0)
            {
                PF.GoError(ErrorNumber.DataReadWrite, "数据库繁忙，请重试", this.Page.GetType().BaseType.FullName);

                return;
            }

            if (ReturnValue < 0)
            {
                PF.GoError(ErrorNumber.Unknow, ReturnDescription, this.Page.GetType().BaseType.FullName);

                return;
            }

            BindData();

            return;
        }
    }
    protected void g_ItemDataBound(object sender, DataListItemEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem || e.Item.ItemType == ListItemType.EditItem)
        {
            Shove.Web.UI.ShoveConfirmButton btnQuash = e.Item.FindControl("btnQuash") as Shove.Web.UI.ShoveConfirmButton;

            btnQuash.Visible = _User.Competences.IsOwnedCompetences(Competences.BuildCompetencesList(Competences.LotteryIsuseScheme));

            Shove.Web.UI.ShoveConfirmButton btnPrintOut = e.Item.FindControl("btnPrintOut") as Shove.Web.UI.ShoveConfirmButton;

            btnPrintOut.Visible = btnQuash.Visible;
        }
    }
}
