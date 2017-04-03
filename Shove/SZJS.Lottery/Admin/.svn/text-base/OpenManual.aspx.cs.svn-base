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

using Shove.Database;

public partial class Admin_OpenManual : AdminPageBase
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            BindDataForLottery();

            BindDataForIsuse();
        }
    }

    #region Web 窗体设计器生成的代码

    override protected void OnInit(EventArgs e)
    {
        RequestLoginPage = this.Request.Url.AbsoluteUri;

        RequestCompetences = Competences.BuildCompetencesList(Competences.LotteryWin);

        base.OnInit(e);
    }

    #endregion

    private void BindDataForLottery()
    {
        DataTable dt = new DAL.Tables.T_Lotteries().Open("[ID], [Name]", "[ID] in (" + (_Site.UseLotteryList == "" ? "-1" : _Site.UseLotteryList) + ")", "[Order]");

        if (dt == null)
        {
            PF.GoError(ErrorNumber.DataReadWrite, "数据库繁忙，请重试", "Admin_OpenManual");

            return;
        }

        Shove.ControlExt.FillDropDownList(ddlLottery, dt, "Name", "ID");
    }

    private void BindDataForIsuse()
    {
        if (ddlLottery.Items.Count < 1)
        {
            return;
        }

        DataTable dt = new DAL.Tables.T_Isuses().Open("[ID], [Name]", "LotteryID = " + Shove._Web.Utility.FilteSqlInfusion(ddlLottery.SelectedValue) + " and EndTime < GetDate() and isOpened = 0", "EndTime");

        if (dt == null)
        {
            PF.GoError(ErrorNumber.DataReadWrite, "数据库繁忙，请重试", "Admin_OpenManual");

            return;
        }

        Shove.ControlExt.FillDropDownList(ddlIsuse, dt, "Name", "ID");

        if (ddlIsuse.Items.Count > 0)
        {
            ddlIsuse_SelectedIndexChanged(ddlIsuse, new System.EventArgs());

            if (ddlIsuse.SelectedValue == SZJS.Lottery.ZCDC.sID)
            {
                Label1.Visible = false;
                tbWinLotteryNumber.Visible = false;
                lbTipLotteryNumber.Visible = false;
                tbWinLotteryNumber.Enabled = true;
                lbTipLotteryNumber.Visible = true;
                btnEnd.Enabled = true;
                tbOpenAffiche.EnableViewState = false;
            }
            else
            {
                Label1.Visible = true;
                tbWinLotteryNumber.Visible = true;
                lbTipLotteryNumber.Visible = true;
                tbWinLotteryNumber.Enabled = true;
                lbTipLotteryNumber.Visible = true;
                btnEnd.Enabled = true;
                tbOpenAffiche.EnableViewState = false;
            }
        }
        else
        {
            Label1.Visible = true;
            tbWinLotteryNumber.Visible = true;
            lbTipLotteryNumber.Visible = true;
            tbWinLotteryNumber.Enabled = false;
            lbTipLotteryNumber.Visible = false;
            btnEnd.Enabled = false;
            tbOpenAffiche.EnableViewState = true;
        }
    }

    protected void ddlLottery_SelectedIndexChanged(object sender, System.EventArgs e)
    {
        BindDataForIsuse();
    }

    protected void ddlIsuse_SelectedIndexChanged(object sender, System.EventArgs e)
    {
        BindData();

        // 填充下面的开奖结束的内容

        string WinLotteryNumber = "";
        try
        {
            WinLotteryNumber = Convert.ToString(MSSQL.ExecuteScalar("select WinLotteryNumber from T_Isuses where [ID] = " + Shove._Web.Utility.FilteSqlInfusion(ddlIsuse.SelectedValue)));
        }
        catch { }

        tbWinLotteryNumber.Text = WinLotteryNumber;
        lbTipLotteryNumber.Text = "格式：" + GetWinLotteryNumberTip(int.Parse(ddlLottery.SelectedValue));
        tbOpenAffiche.Value = new OpenAfficheTemplates()[int.Parse(ddlLottery.SelectedValue)];
    }

    private void BindData()
    {
        if (ddlIsuse.Items.Count < 1)
        {
            return;
        }

        DataTable dt = new DAL.Views.V_Schemes().Open("", "IsuseID = " + Shove._Web.Utility.FilteSqlInfusion(ddlIsuse.SelectedValue) + " and Buyed = 1 and SchemeIsOpened = 0", "");

        if (dt == null)
        {
            PF.GoError(ErrorNumber.DataReadWrite, "数据库繁忙，请重试", "Admin_OpenManual");

            return;
        }

        dt.Columns.Add("LocateWaysAndMultiples", System.Type.GetType("System.String"));

        if (ddlIsuse.SelectedValue == SZJS.Lottery.ZCDC.sID)
        {
            string BuyContent = "";
            string CnLocateWaysAndMultiples = "";

            for (int i = 0; i < dt.Rows.Count; i++)
            {
                dt.Rows[i]["Money"] = double.Parse(dt.Rows[i]["Money"].ToString()).ToString("N");
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

                dt.AcceptChanges();
            }
        }

        g.DataSource = dt.DefaultView;
        g.DataBind();
    }

    protected void g_PageIndexChanged(object sender, System.EventArgs e)
    {
        BindData();
    }

    private string GetWinLotteryNumberTip(int LotteryID)
    {
        return DAL.Functions.F_GetLotteryWinNumberExemple(LotteryID);
    }

    protected void g_ItemCommand(object source, System.Web.UI.WebControls.DataListCommandEventArgs e)
    {
        if (e.CommandName == "btnWin")
        {
            double WinMoney = Shove._Convert.StrToDouble(((TextBox)e.Item.FindControl("tbWinMoney")).Text, 0);
            double WinMoneyNoWithTax = Shove._Convert.StrToDouble(((TextBox)e.Item.FindControl("tbWinMoneyNoWithTax")).Text, 0);
            string WinDescription = ((TextBox)e.Item.FindControl("tbWinDescription")).Text.Trim();

            long SchemeID = Shove._Convert.StrToLong(((HtmlInputHidden)e.Item.FindControl("tbSchemeID")).Value, -1);

            if (SchemeID < 1)
            {
                PF.GoError(ErrorNumber.Unknow, "参数错误", "Admin_OpenManual");

                return;
            }

            if ((WinMoney <= 0) || (WinMoneyNoWithTax <= 0) || (WinDescription == ""))
            {
                Shove._Web.JavaScript.Alert(this.Page, "输入不完整。");

                return;
            }

            int ReturnValue = -1;
            string ReturnDescription = "";

            DataSet ds = null;
            int Results = -1;
            Results = DAL.Procedures.P_WinByOpenManual(ref ds, _Site.ID, SchemeID, WinMoney, WinMoneyNoWithTax, WinDescription, _User.ID, ref ReturnValue, ref ReturnDescription);


            if (Results < 0)
            {
                PF.GoError(ErrorNumber.DataReadWrite, "数据库繁忙，请重试", "Admin_OpenManual");

                return;
            }

            if (ReturnValue < 0)
            {
                Shove._Web.JavaScript.Alert(this.Page, ReturnDescription);

                return;
            }

            if ((ds == null) || (ReturnDescription != ""))
            {
                PF.GoError(ErrorNumber.Unknow, "开奖错误：" + ReturnDescription, "Admin_OpenManual");

                return;
            }

            PF.SendWinNotification(ds);

            BindData();

            return;
        }
    }

    protected void btnEnd_Click(object sender, System.EventArgs e)
    {
        string WinLotteryNumber = tbWinLotteryNumber.Text.Trim();

        if (ddlIsuse.SelectedValue != SZJS.Lottery.ZCDC.sID)
        {
            if (WinLotteryNumber == "")
            {
                Shove._Web.JavaScript.Alert(this.Page, "请输入开奖号码。");
                return;
            }
        }

        Shove.Database.MSSQL.ExecuteNonQuery("update T_Isuses set isOpened = 1, WinLotteryNumber = @p1, OpenAffiche = @p2 where [ID] = " + ddlIsuse.SelectedValue,
           new Shove.Database.MSSQL.Parameter("p1", SqlDbType.VarChar, 0, ParameterDirection.Input, WinLotteryNumber),
           new Shove.Database.MSSQL.Parameter("p2", SqlDbType.VarChar, 0, ParameterDirection.Input, tbOpenAffiche.Value));

        BindData();
    }
}
