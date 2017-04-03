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

public partial class Admin_NewWinNumber : AdminPageBase
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindDataForLottery();
            BindDataForYearMonth();
            BindData();
        }
    }
    #region Web 窗体设计器生成的代码

    override protected void OnInit(EventArgs e)
    {
        isRequestLogin = true;
        RequestLoginPage = "Admin/NewWinNumber.aspx";

        RequestCompetences = Competences.BuildCompetencesList(Competences.LotteryWin);

        base.OnInit(e);
    }

    #endregion
    private void BindDataForYearMonth()
    {
        ddlYear.Items.Clear();

        DateTime dt = DateTime.Now;
        int Year = dt.Year;
        int Month = dt.Month;

        if (Year < PF.SystemStartYear)
        {
            btnRead.Enabled = false;

            return;
        }

        for (int i = PF.SystemStartYear; i <= Year; i++)
        {
            ddlYear.Items.Add(new ListItem(i.ToString() + "年", i.ToString()));
        }

        ddlYear.SelectedIndex = ddlYear.Items.Count - 1;

        ddlMonth.SelectedIndex = Month - 1;
    }

    protected void gPager_PageWillChange(object Sender, Shove.Web.UI.PageChangeEventArgs e)
    {
        BindData();
    }
    protected void g_ItemDataBound(object sender, System.Web.UI.WebControls.DataGridItemEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem || e.Item.ItemType == ListItemType.EditItem)
        {
            e.Item.Cells[0].Text = getLotteryName(e.Item.Cells[0].Text);

            string strResult = e.Item.Cells[5].Text;

            if (strResult == "1")
            {
                strResult = "True";
            }
            e.Item.Cells[5].Text = Shove._Convert.StrToBool(strResult, false) ? "<font color='Red'>已开奖</font>" : "未开奖";
        }
    }
    private void BindData()
    {
        if (ddlYear.Items.Count == 0)
        {
            return;
        }
        DataTable dt = new DAL.Tables.T_Isuses().Open("*", "WinLotteryNumber <> '' and year([StateUpdateTime]) = " + ddlYear.SelectedValue + " and month([EndTime]) = " + ddlMonth.SelectedValue + " and LotteryID=" + ddlLottery.SelectedValue + "", "Name DESC");
        PF.DataGridBindData(g, dt, gPager);
    }
    private void BindDataForLottery()
    {
        DataTable dt = new DAL.Tables.T_Lotteries().Open("[ID], [Name]", "[ID] in (" + (_Site.UseLotteryList == "" ? "-1" : _Site.UseLotteryList) + ")", "[Order]");

        if (dt == null)
        {
            PF.GoError(ErrorNumber.DataReadWrite, "数据库繁忙，请重试", this.GetType().BaseType.FullName);

            return;
        }

        Shove.ControlExt.FillDropDownList(ddlLottery, dt, "Name", "ID");

        string LotteryID = Shove._Web.Utility.GetRequest("LotteryID");

        if (LotteryID != "")
        {
            Shove.ControlExt.SetDownListBoxTextFromValue(ddlLottery, LotteryID);
        }
    }

    protected void btnRead_Click(object sender, System.EventArgs e)
    {
        BindData();
    }

    private string getLotteryName(string LotteryID)
    {
        return new DAL.Tables.T_Lotteries().Open("Name", "ID=" + LotteryID + "", "").Rows[0]["Name"].ToString();
    }
    protected void ddlLottery_SelectedIndexChanged(object sender, EventArgs e)
    {
        BindData();
    }
}
