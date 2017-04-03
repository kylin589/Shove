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
using System.Data.SqlClient;

using Shove.Database;
using System.Text;

public partial class Admin_Open : AdminPageBase
{
    private bool Step1IsOpen;
    private bool Step2IsOpen;

    protected void Page_Load(object sender, EventArgs e)
    {
        this.Server.ScriptTimeout = 60 * 10;

        if (!this.IsPostBack)
        {
            BindDataForLottery();

            BindDataForIsuse();

            h_SchemeID.Value = "0";
        }

        btnGO_Step1.AlertText = "确信输入无误，并立即执行开奖第一步骤吗？";
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
            PF.GoError(ErrorNumber.DataReadWrite, "数据库繁忙，请重试", this.GetType().BaseType.FullName);

            return;
        }

        Shove.ControlExt.FillDropDownList(ddlLottery, dt, "Name", "ID");

        if (ddlLottery.Items.Count < 1)
        {
            tbOpenAffiche.EnableViewState = true;
            btnGO.Enabled = false;
            btnGO_Step1.Enabled = false;
            btnGO_Step2.Enabled = false;
            btnGO_Step3.Enabled = false;
            tbWinNumber.Enabled = false;
        }
        else
        {
            ddlLottery_SelectedIndexChanged(ddlLottery, new EventArgs());
        }
    }

    private void BindDataForIsuse()
    {
        if (ddlLottery.Items.Count < 1)
        {
            return;
        }

        string Code = "";

        if (ddlLottery.SelectedValue != SZJS.Lottery.ZCDC.sID)
        {
            Code = "and EndTime < GetDate()";
        }

        DataTable dt = new DAL.Tables.T_Isuses().Open("[ID], [Name]", "LotteryID = " + Shove._Web.Utility.FilteSqlInfusion(ddlLottery.SelectedValue) + Code + " and isOpened = 0", "EndTime");

        if (dt == null)
        {
            PF.GoError(ErrorNumber.DataReadWrite, "数据库繁忙，请重试", this.GetType().BaseType.FullName);

            return;
        }

        Shove.ControlExt.FillDropDownList(ddlIsuse, dt, "Name", "ID");

        if (ddlIsuse.Items.Count > 0)
        {
            if (ddlLottery.SelectedValue == SZJS.Lottery.ZCDC.sID)
            {
                BindDataForZCDC();

                WinNumberZCDC.Visible = true;
                WinNumberOther.Visible = false;
                tbOpenAffiche.EnableViewState = false;
                btnGO.Visible = true;
                btnGO.Enabled = true;
                btnGO_Step1.Visible = true;
                btnGO_Step1.Enabled = true;
                btnGO_Step2.Visible = true;
                btnGO_Step2.Enabled = false;
                btnGO_Step3.Visible = true;
                btnGO_Step3.Enabled = false;
            }
            else
            {
                WinNumberZCDC.Visible = false;
                WinNumberOther.Visible = true;
                tbOpenAffiche.EnableViewState = false;
                btnGO.Enabled = true;
                btnGO_Step1.Enabled = true;
                btnGO_Step2.Enabled = false;
                btnGO_Step3.Enabled = false;
                tbWinNumber.Enabled = true;
            }
        }
        else
        {
            WinNumberZCDC.Visible = false;
            WinNumberOther.Visible = true;
            tbOpenAffiche.EnableViewState = true;
            btnGO.Enabled = false;
            btnGO_Step1.Enabled = false;
            btnGO_Step2.Enabled = false;
            btnGO_Step3.Enabled = false;
            tbWinNumber.Enabled = false;
        }
    }

    private void BindDataForWinMoney()
    {
        if (ddlLottery.Items.Count < 1)
        {
            return;
        }

        DataTable dt = new DAL.Tables.T_WinTypes().Open("", "LotteryID = " + Shove._Web.Utility.FilteSqlInfusion(ddlLottery.SelectedValue), "[Order]");

        if (dt == null)
        {
            PF.GoError(ErrorNumber.DataReadWrite, "数据库繁忙，请重试", this.GetType().BaseType.FullName);

            return;
        }

        g.DataSource = dt.DefaultView;
        g.DataBind();
    }

    protected void ddlLottery_SelectedIndexChanged(object sender, System.EventArgs e)
    {
        BindDataForWinMoney();

        string WinLotteryExemple = "格式：" + DAL.Functions.F_GetLotteryWinNumberExemple(int.Parse(ddlLottery.SelectedValue));

        labTip.Text = WinLotteryExemple;
        tbWinNumber.MaxLength = WinLotteryExemple.Length - 3;

        tbOpenAffiche.Value = new OpenAfficheTemplates()[int.Parse(ddlLottery.SelectedValue)];

        BindDataForIsuse();
    }

    protected void ddlIsuse_SelectedIndexChanged(object sender, System.EventArgs e)
    {
        if (ddlLottery.Items.Count < 1)
        {
            return;
        }

        DataTable dt = new DAL.Tables.T_Isuses().Open("WinLotteryNumber, isOpened", "[ID] = " + Shove._Web.Utility.FilteSqlInfusion(ddlIsuse.SelectedValue), "");

        if ((dt == null) || (dt.Rows.Count < 1))
        {
            PF.GoError(ErrorNumber.DataReadWrite, "数据库繁忙，请重试", this.GetType().BaseType.FullName);

            return;
        }

        bool isOpened = Shove._Convert.StrToBool(dt.Rows[0]["isOpened"].ToString(), true);
        string WinLotteryNumber = dt.Rows[0]["WinLotteryNumber"].ToString();

        if (isOpened)
        {
            tbOpenAffiche.EnableViewState = true;
            btnGO.Enabled = false;
            btnGO_Step1.Enabled = false;
            btnGO_Step2.Enabled = false;
            btnGO_Step3.Enabled = false;
            tbWinNumber.Enabled = false;

            PF.GoError(ErrorNumber.Unknow, "此期已经开奖了，不能重复开奖。", this.GetType().BaseType.FullName);

            return;
        }

        if (ddlLottery.SelectedValue == SZJS.Lottery.ZCDC.sID)
        {
            BindDataForZCDC();

            WinNumberZCDC.Visible = true;
            WinNumberOther.Visible = false;
            tbOpenAffiche.EnableViewState = false;
            btnGO.Visible = true;
            btnGO.Enabled = true;
            btnGO_Step1.Visible = true;
            btnGO_Step1.Enabled = true;
            btnGO_Step2.Visible = true;
            btnGO_Step2.Enabled = false;
            btnGO_Step3.Visible = true;
            btnGO_Step3.Enabled = false;
        }
        else
        {
            WinNumberZCDC.Visible = false;
            WinNumberOther.Visible = true;
            tbOpenAffiche.EnableViewState = false;
            btnGO.Enabled = true;
            btnGO_Step1.Enabled = true;
            btnGO_Step2.Enabled = false;
            btnGO_Step3.Enabled = false;
            tbWinNumber.Enabled = true;

            if (WinLotteryNumber != "")
            {
                tbWinNumber.Text = WinLotteryNumber;
            }
        }
    }

    protected void g_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            DataKey key = g.DataKeys[g.DataKeys.Count - 1];

            double money = Shove._Convert.StrToDouble(key.Values[0].ToString(), 0);
            ((TextBox)e.Row.Cells[1].FindControl("tbMoney")).Text = (money == 0 ? "" : money.ToString());

            money = Shove._Convert.StrToDouble(key.Values[1].ToString(), 0);
            ((TextBox)e.Row.Cells[2].FindControl("tbMoneyNoWithTax")).Text = (money == 0 ? "" : money.ToString());
        }
    }

    protected void btnGO_Click(object sender, System.EventArgs e)
    {
        if (ddlLottery.SelectedValue == SZJS.Lottery.ZCDC.sID)
        {
            btnGO_ClickForZCDC();

            return;
        }

        tbWinNumber.Text = Shove._Convert.ToDBC(tbWinNumber.Text.Trim().Replace("　", " ")).Trim();

        if (!new SZJS.Lottery()[int.Parse(ddlLottery.SelectedValue)].AnalyseWinNumber(tbWinNumber.Text))
        {
            Shove._Web.JavaScript.Alert(this.Page, "开奖号码不正确！");

            return;
        }

        SystemOptions so = new SystemOptions();
        bool isCompareWinMoneyNoWithFax = so["isCompareWinMoneyNoWithFax"].ToBoolean(true);

        double[] WinMoneyList = new double[g.Rows.Count * 2];

        for (int i = 0; i < g.Rows.Count; i++)
        {
            WinMoneyList[i * 2] = Shove._Convert.StrToDouble(((TextBox)g.Rows[i].Cells[1].FindControl("tbMoney")).Text, 0);
            WinMoneyList[i * 2 + 1] = Shove._Convert.StrToDouble(((TextBox)g.Rows[i].Cells[2].FindControl("tbMoneyNoWithTax")).Text, 0);

            if (WinMoneyList[i * 2] < 0)
            {
                Shove._Web.JavaScript.Alert(this.Page, "第 " + (i + 1).ToString() + " 项奖金输入错误！");

                return;
            }

            if (WinMoneyList[i * 2] < WinMoneyList[i * 2 + 1])
            {
                if (isCompareWinMoneyNoWithFax)
                {
                    Shove._Web.JavaScript.Alert(this.Page, "第 " + (i + 1).ToString() + " 项税后奖金输入错误(不能大于税前奖金)！");

                    return;
                }
            }
        }

        if (Shove._Convert.ToTextCode(tbOpenAffiche.Value.Trim()) == "")
        {
            Shove._Web.JavaScript.Alert(this.Page, "请输入开奖公告！");

            return;
        }

        DataTable dt = new DAL.Tables.T_Schemes().Open("", "IsuseID = " + Shove._Web.Utility.FilteSqlInfusion(ddlIsuse.SelectedValue) + " and isOpened = 0", "[ID]");

        if (dt == null)
        {
            PF.GoError(ErrorNumber.DataReadWrite, "数据库繁忙，请重试", this.GetType().BaseType.FullName);

            return;
        }

        for (int i = 0; i < dt.Rows.Count; i++)
        {
            string LotteryNumber = dt.Rows[i]["LotteryNumber"].ToString();
            string Description = "";
            double WinMoneyNoWithTax = 0;

            double WinMoney = new SZJS.Lottery()[int.Parse(ddlLottery.SelectedValue)].ComputeWin(LotteryNumber, tbWinNumber.Text.Trim(), ref Description, ref WinMoneyNoWithTax, int.Parse(dt.Rows[i]["PlayTypeID"].ToString()), WinMoneyList);

            Shove.Database.MSSQL.ExecuteNonQuery("update T_Schemes set PreWinMoney = @p1, PreWinMoneyNoWithTax = @p2, EditWinMoney = @p3, EditWinMoneyNoWithTax = @p4, WinDescription = @p5 where [ID] = " + dt.Rows[i]["ID"].ToString(),
                new Shove.Database.MSSQL.Parameter("p1", SqlDbType.Money, 0, ParameterDirection.Input, WinMoney * Shove._Convert.StrToInt(dt.Rows[i]["Multiple"].ToString(), 1)),
                new Shove.Database.MSSQL.Parameter("p2", SqlDbType.Money, 0, ParameterDirection.Input, WinMoneyNoWithTax * Shove._Convert.StrToInt(dt.Rows[i]["Multiple"].ToString(), 1)),
                new Shove.Database.MSSQL.Parameter("p3", SqlDbType.Money, 0, ParameterDirection.Input, WinMoney * Shove._Convert.StrToInt(dt.Rows[i]["Multiple"].ToString(), 1)),
                new Shove.Database.MSSQL.Parameter("p4", SqlDbType.Money, 0, ParameterDirection.Input, WinMoneyNoWithTax * Shove._Convert.StrToInt(dt.Rows[i]["Multiple"].ToString(), 1)),
                new Shove.Database.MSSQL.Parameter("p5", SqlDbType.VarChar, 0, ParameterDirection.Input, Description));
        }

        Shove._Web.JavaScript.Alert(this.Page, "奖金已经计算完成，请执行第三步进行派奖!。");
        BindDataForIsuse();

    }

    protected void btnGO_Step1_Click(object sender, EventArgs e)
    {
        btnGO_Step1.AlertText = "";

        if (ddlLottery.SelectedValue == SZJS.Lottery.ZCDC.sID)
        {
            Shove._Web.JavaScript.Alert(this.Page, "足彩单场不支持分步开奖。");

            return;
        }

        tbWinNumber.Text = Shove._Convert.ToDBC(tbWinNumber.Text.Trim().Replace("　", " ")).Trim();

        if (!new SZJS.Lottery()[int.Parse(ddlLottery.SelectedValue)].AnalyseWinNumber(tbWinNumber.Text))
        {
            Shove._Web.JavaScript.Alert(this.Page, "开奖号码不正确！");

            return;
        }

        SystemOptions so = new SystemOptions();
        bool isCompareWinMoneyNoWithFax = so["isCompareWinMoneyNoWithFax"].ToBoolean(true);

        string WinListXML = "<WinLists>";

        double[] WinMoneyList = new double[g.Rows.Count * 2];

        for (int i = 0; i < g.Rows.Count; i++)
        {
            WinMoneyList[i * 2] = Shove._Convert.StrToDouble(((TextBox)g.Rows[i].Cells[1].FindControl("tbMoney")).Text, 0);
            WinMoneyList[i * 2 + 1] = Shove._Convert.StrToDouble(((TextBox)g.Rows[i].Cells[2].FindControl("tbMoneyNoWithTax")).Text, 0);

            if (WinMoneyList[i * 2] < 0)
            {
                Shove._Web.JavaScript.Alert(this.Page, "第 " + (i + 1).ToString() + " 项奖金输入错误！");

                return;
            }

            if (WinMoneyList[i * 2] < WinMoneyList[i * 2 + 1])
            {
                if (isCompareWinMoneyNoWithFax)
                {
                    Shove._Web.JavaScript.Alert(this.Page, "第 " + (i + 1).ToString() + " 项税后奖金输入错误(不能大于税前奖金)！");

                    return;
                }
            }

            WinListXML += "<WinList defaultMoney=\"" + WinMoneyList[i * 2].ToString() + "\" DefaultMoneyNoWithTax=\"" + WinMoneyList[i * 2 + 1].ToString() + "\"/>";
        }

        WinListXML += "</WinLists>";

        DataTable dtIsuseBonuses = new DAL.Tables.T_IsuseBonuses().Open("", "IsuseID = " + Shove._Web.Utility.FilteSqlInfusion(ddlIsuse.SelectedValue), "");

        if (dtIsuseBonuses == null)
        {
            PF.GoError(ErrorNumber.DataReadWrite, "数据库繁忙，请重试", this.GetType().BaseType.FullName);

            return;
        }

        if (dtIsuseBonuses.Rows.Count < 1)
        {
            int ReturnValue = -1;
            string ReturnDescription = "";


            int Result = DAL.Procedures.P_IsuseBonusesAdd(Shove._Convert.StrToLong(ddlIsuse.SelectedValue, 0), _User.ID, WinListXML, ref ReturnValue, ref ReturnDescription);

            if (Result < 0)
            {
                PF.GoError(ErrorNumber.DataReadWrite, "数据库繁忙，请重试", this.GetType().BaseType.FullName);

                return;
            }

            if (ReturnValue < 0)
            {
                Shove._Web.JavaScript.Alert(this.Page, ReturnDescription);

                return;
            }

            Shove._Web.JavaScript.Alert(this.Page, "请让下一位开奖操作员继续下一步开奖操作！");

            return;
        }

        if (dtIsuseBonuses.Rows[0]["UserID"].ToString() == _User.ID.ToString())
        {
            Shove._Web.JavaScript.Alert(this.Page, "请让下一位开奖操作员继续下一步开奖操作！");

            return;
        }

        for (int i = 0; i < dtIsuseBonuses.Rows.Count; i++)
        {
            if ((WinMoneyList[i * 2] != Shove._Convert.StrToDouble(dtIsuseBonuses.Rows[i]["defaultMoney"].ToString(), 0)) || (WinMoneyList[i * 2 + 1] != Shove._Convert.StrToDouble(dtIsuseBonuses.Rows[i]["DefaultMoneyNoWithTax"].ToString(), 0)))
            {
                DAL.Tables.T_IsuseBonuses T_IsuseBonuses = new DAL.Tables.T_IsuseBonuses();
                T_IsuseBonuses.Delete("IsuseID = " + ddlIsuse.SelectedValue);

                Shove._Web.JavaScript.Alert(this.Page, "两次奖项输入不一致，请联系上一次开奖操作员！");

                return;
            }
        }

        DataTable dt = new DAL.Tables.T_Schemes().Open("top 500 * ", "IsuseID = " + Shove._Web.Utility.FilteSqlInfusion(ddlIsuse.SelectedValue) + " and isOpened = 0 and Buyed = 1", "[ID]");

        if (dt == null)
        {
            PF.GoError(ErrorNumber.DataReadWrite, "数据库繁忙，请重试", this.GetType().BaseType.FullName);

            return;
        }

        StringBuilder sb = new StringBuilder();

        for (int i = 0; i < dt.Rows.Count; i++)
        {
            string LotteryNumber = dt.Rows[i]["LotteryNumber"].ToString();
            string Description = "";
            double WinMoneyNoWithTax = 0;


            double WinMoney = 0;

            try
            {
                WinMoney = new SZJS.Lottery()[int.Parse(ddlLottery.SelectedValue)].ComputeWin(LotteryNumber, tbWinNumber.Text.Trim(), ref Description, ref WinMoneyNoWithTax, int.Parse(dt.Rows[i]["PlayTypeID"].ToString()), WinMoneyList);
            }
            catch
            {
                WinMoney = 0;

                new Log("System").Write("方案 ID:" + dt.Rows[i]["ID"].ToString() + " 算奖出现错误!");
            }

            sb.Append("update T_Schemes set PreWinMoney = ").Append(WinMoney * Shove._Convert.StrToInt(dt.Rows[i]["Multiple"].ToString(), 1))
                .Append(", PreWinMoneyNoWithTax = ").Append(WinMoneyNoWithTax * Shove._Convert.StrToInt(dt.Rows[i]["Multiple"].ToString(), 1))
                .Append(", EditWinMoney = ").Append(WinMoney * Shove._Convert.StrToInt(dt.Rows[i]["Multiple"].ToString(), 1))
                .Append(", EditWinMoneyNoWithTax = ").Append(WinMoneyNoWithTax * Shove._Convert.StrToInt(dt.Rows[i]["Multiple"].ToString(), 1))
                .Append(", WinDescription = '").Append(Description).Append("'")
                .Append(" where [ID] = ").AppendLine(dt.Rows[i]["ID"].ToString());
        }

        Shove.Database.MSSQL.ExecuteNonQuery(sb.ToString(), new Shove.Database.MSSQL.Parameter[0]);

        Step1IsOpen = (dt.Rows.Count == 500);

        if (!Step1IsOpen)
        {
            dt = new DAL.Tables.T_Schemes().Open("top 1 * ", "IsuseID = " + Shove._Web.Utility.FilteSqlInfusion(ddlIsuse.SelectedValue) + " and isOpened = 0 and Buyed = 1 and WinDescription is null", "[ID]");

            if (dt == null)
            {
                PF.GoError(ErrorNumber.DataReadWrite, "数据库繁忙，请重试", this.GetType().BaseType.FullName);

                return;
            }

            Step1IsOpen = (dt.Rows.Count > 0);
        }

        btnGO_Step1.Enabled = Step1IsOpen;
        btnGO_Step2.Enabled = (!Step1IsOpen);
        btnGO_Step3.Enabled = ((!Step1IsOpen) && (!Step2IsOpen));

        string Message = "请再次执行第一步";

        if (!Step1IsOpen)
        {
            Message = "开奖步骤一已经完成，请执行第二步.";
        }

        Shove._Web.JavaScript.Alert(this.Page, Message);
    }

    protected void btnGO_Step2_Click(object sender, EventArgs e)
    {
        btnGO_Step1.AlertText = "";

        if (ddlLottery.SelectedValue == SZJS.Lottery.ZCDC.sID)
        {
            Shove._Web.JavaScript.Alert(this.Page, "足彩单场不支持分步开奖。");

            return;
        }

        tbWinNumber.Text = Shove._Convert.ToDBC(tbWinNumber.Text.Trim().Replace("　", " ")).Trim();

        if (!new SZJS.Lottery()[int.Parse(ddlLottery.SelectedValue)].AnalyseWinNumber(tbWinNumber.Text))
        {
            Shove._Web.JavaScript.Alert(this.Page, "开奖号码不正确！");

            return;
        }

        SystemOptions so = new SystemOptions();
        bool isCompareWinMoneyNoWithFax = so["isCompareWinMoneyNoWithFax"].ToBoolean(true);

        double[] WinMoneyList = new double[g.Rows.Count * 2];

        for (int i = 0; i < g.Rows.Count; i++)
        {
            WinMoneyList[i * 2] = Shove._Convert.StrToDouble(((TextBox)g.Rows[i].Cells[1].FindControl("tbMoney")).Text, 0);
            WinMoneyList[i * 2 + 1] = Shove._Convert.StrToDouble(((TextBox)g.Rows[i].Cells[2].FindControl("tbMoneyNoWithTax")).Text, 0);

            if (WinMoneyList[i * 2] < 0)
            {
                Shove._Web.JavaScript.Alert(this.Page, "第 " + (i + 1).ToString() + " 项奖金输入错误！");

                return;
            }

            if (WinMoneyList[i * 2] < WinMoneyList[i * 2 + 1])
            {
                if (isCompareWinMoneyNoWithFax)
                {
                    Shove._Web.JavaScript.Alert(this.Page, "第 " + (i + 1).ToString() + " 项税后奖金输入错误(不能大于税前奖金)！");

                    return;
                }
            }
        }

        if (Shove._Convert.ToTextCode(tbOpenAffiche.Value.Trim()) == "")
        {
            Shove._Web.JavaScript.Alert(this.Page, "请输入开奖公告！");

            return;
        }

        DataTable dt = new DAL.Tables.T_ElectronTicketAgentSchemes().Open("top 500 *", "IsuseID = " + Shove._Web.Utility.FilteSqlInfusion(ddlIsuse.SelectedValue) + " and WinMoney is null and state = 1", "[ID]");

        if (dt == null)
        {
            PF.GoError(ErrorNumber.DataReadWrite, "数据库繁忙，请重试", this.GetType().BaseType.FullName);

            return;
        }

        DAL.Tables.T_ElectronTicketAgentSchemes t_ElectronTicketAgentSchemes = new DAL.Tables.T_ElectronTicketAgentSchemes();

        for (int i = 0; i < dt.Rows.Count; i++)
        {
            string LotteryNumber = dt.Rows[i]["LotteryNumber"].ToString();
            string Description = "";
            double WinMoneyNoWithTax = 0;

            double WinMoney = new SZJS.Lottery()[int.Parse(ddlLottery.SelectedValue)].ComputeWin(LotteryNumber, tbWinNumber.Text.Trim(), ref Description, ref WinMoneyNoWithTax, int.Parse(dt.Rows[i]["PlayTypeID"].ToString()), WinMoneyList);

            t_ElectronTicketAgentSchemes.WinMoney.Value = WinMoney * Shove._Convert.StrToInt(dt.Rows[i]["Multiple"].ToString(), 1);
            t_ElectronTicketAgentSchemes.WinMoneyWithoutTax.Value = WinMoneyNoWithTax * Shove._Convert.StrToInt(dt.Rows[i]["Multiple"].ToString(), 1);
            t_ElectronTicketAgentSchemes.WinDescription.Value = Description;

            t_ElectronTicketAgentSchemes.Update("[ID] =" + dt.Rows[i]["ID"].ToString());
        }

        Step2IsOpen = (dt.Rows.Count == 500);

        if (!Step2IsOpen)
        {
            dt = new DAL.Tables.T_ElectronTicketAgentSchemes().Open("top 1 * ", "IsuseID = " + Shove._Web.Utility.FilteSqlInfusion(ddlIsuse.SelectedValue) + " and state = 1 and WinMoney is null", "[ID]");

            if (dt == null)
            {
                PF.GoError(ErrorNumber.DataReadWrite, "数据库繁忙，请重试", this.GetType().BaseType.FullName);

                return;
            }

            Step2IsOpen = (dt.Rows.Count > 0);
        }

        btnGO_Step2.Enabled = Step2IsOpen;
        btnGO_Step3.Enabled = (!Step2IsOpen);

        string Message = "请再次执行第二步";

        if (!Step2IsOpen)
        {
            Message = "开奖步骤二已经完成，请执行第三步.";
        }

        Shove._Web.JavaScript.Alert(this.Page, Message);
    }

    protected void btnGO_Step3_Click(object sender, EventArgs e)
    {
        btnGO_Step1.AlertText = "";

        if (ddlLottery.SelectedValue == SZJS.Lottery.ZCDC.sID)
        {
            Shove._Web.JavaScript.Alert(this.Page, "足彩单场不支持分步开奖。");

            return;
        }

        tbWinNumber.Text = Shove._Convert.ToDBC(tbWinNumber.Text.Trim().Replace("　", " ")).Trim();

        if (!new SZJS.Lottery()[int.Parse(ddlLottery.SelectedValue)].AnalyseWinNumber(tbWinNumber.Text))
        {
            Shove._Web.JavaScript.Alert(this.Page, "开奖号码不正确！");

            return;
        }

        int SchemeCount = 0, QuashCount = 0, WinCount = 0, WinNoBuyCount = 0;
        //  总方案数，处理时撤单数，中奖数，中奖但未成功数

        int ReturnValue = -1;
        string ReturnDescription = "";
        DataSet ds = null;
        bool isEndOpen = false;

        new Log("System").Write("开奖1");

        int Result = DAL.Procedures.P_Win(ref ds,
             long.Parse(ddlIsuse.SelectedValue),
             tbWinNumber.Text.Trim(),
             tbOpenAffiche.Value,
             _User.ID,
             true,
             ref SchemeCount, ref QuashCount, ref WinCount, ref WinNoBuyCount,
             ref isEndOpen,
             ref ReturnValue, ref ReturnDescription);

        new Log("System").Write("开奖1");

        if ((ds == null) || (ReturnDescription != "") || (ReturnValue < 0) || (Result < 0))
        {
            Response.Write(ddlIsuse.SelectedValue + "<br>");
            Response.Write(tbWinNumber.Text.Trim() + "<br>");
            Response.Write(tbOpenAffiche.Value + "<br>");
            Response.Write(_User.ID.ToString() + "<br>");
            Response.Write(SchemeCount.ToString() + "<br>");
            Response.Write(QuashCount.ToString() + "<br>");
            Response.Write(WinCount.ToString() + "<br>");
            Response.Write(WinNoBuyCount.ToString() + "<br>");
            Response.Write(isEndOpen.ToString() + "<br>");
            Response.Write(ReturnValue.ToString() + "<br>");
            Response.Write(ReturnDescription.ToString() + "<br>");
            Response.Write(Result.ToString() + "<br>");

            return;
        }

        PF.SendWinNotification(ds);

        btnGO_Step1.Enabled = false;
        btnGO_Step2.Enabled = false;
        btnGO_Step3.Enabled = true;

        string Message = "开奖成功，总方案 {0} 个，撤单未满员或未出票方案 {1} 个，有效中奖方案 {2} 个。本期开奖还未全部完成, 请继续操作第三步。";

        if (isEndOpen)
        {
            BindDataForIsuse();
            btnGO_Step3.Enabled = false;
            Message = "开奖成功，总方案 {0} 个，撤单未满员或未出票方案 {1} 个，有效中奖方案 {2} 个。本期开奖已全部完成。";
        }

        DataTable dt = new DAL.Tables.T_Schemes().Open("", "IsuseID=" + Shove._Convert.StrToLong(ddlIsuse.SelectedValue, 0).ToString(), "");

        if (dt == null)
        {
            Shove._Web.JavaScript.Alert(this.Page, "开奖出现异常!请联系开发维护人员");
            return;
        }

        SchemeCount = dt.Rows.Count;

        DataRow[] dr = dt.Select("QuashStatus <> 0");

        QuashCount = dr.Length;

        dr = dt.Select("WinMoney > 0");

        WinCount = dr.Length;

        Shove._Web.Cache.ClearCache(DataCache.IsusesInfo + ddlLottery.SelectedValue);
        Shove._Web.JavaScript.Alert(this.Page, String.Format(Message, SchemeCount, QuashCount, WinCount));
    }

    #region 单场相关

    private void btnGO_ClickForZCDC()
    {
        if (Shove._Convert.ToTextCode(tbOpenAffiche.Value.Trim()) == "")
        {
            Shove._Web.JavaScript.Alert(this.Page, "请输入开奖公告！");

            return;
        }

        DataTable dtWinNumber = MSSQL.Select("select * from T_IsuseForZCDC where IsuseID = " + ddlIsuse.SelectedValue + " order by [NO]");

        if ((dtWinNumber == null) || (dtWinNumber.Rows.Count < 1))
        {
            PF.GoError(ErrorNumber.DataReadWrite, "数据库繁忙，请重试", this.GetType().BaseType.FullName);

            return;
        }

        int CompetitionCount = dtWinNumber.Rows.Count;

        #region     构建开奖号码串
        string WinNumberList = "";  //最终开奖号码

        string WinNumberSPFList = "";
        string WinNumberZJQList = "";
        string WinNumberSXDSList = "";
        string WinNumberZQBFList = "";
        string WinNumberBQCSPFList = "";
        for (int i = 0; i < CompetitionCount; i++)
        {
            if (dtWinNumber.Rows[i]["Result"].ToString() == "" || dtWinNumber.Rows[i]["SPFResult"].ToString() == "" || dtWinNumber.Rows[i]["SPF_SP"].ToString() == "")
            {
                Shove._Web.JavaScript.Alert(this.Page, "第" + dtWinNumber.Rows[i]["No"].ToString() + "场比赛的彩果没有输入！请先输入！！");
                return;
            }

            WinNumberSPFList += dtWinNumber.Rows[i]["No"].ToString() + "(" + Shove._Convert.ToDBC(dtWinNumber.Rows[i]["SPFResult"].ToString()).Trim() + "," + Shove._Convert.ToDBC(dtWinNumber.Rows[i]["SPF_SP"].ToString()).Trim() + ")|";
            WinNumberZJQList += dtWinNumber.Rows[i]["No"].ToString() + "(" + Shove._Convert.ToDBC(dtWinNumber.Rows[i]["ZJQResult"].ToString()).Trim() + "," + Shove._Convert.ToDBC(dtWinNumber.Rows[i]["ZJQ_SP"].ToString()).Trim() + ")|";
            WinNumberSXDSList += dtWinNumber.Rows[i]["No"].ToString() + "(" + Shove._Convert.ToDBC(dtWinNumber.Rows[i]["SXDSResult"].ToString()).Trim() + "," + Shove._Convert.ToDBC(dtWinNumber.Rows[i]["SXDS_SP"].ToString()).Trim() + ")|";
            WinNumberZQBFList += dtWinNumber.Rows[i]["No"].ToString() + "(" + Shove._Convert.ToDBC(dtWinNumber.Rows[i]["ZQBFResult"].ToString()).Trim() + "," + Shove._Convert.ToDBC(dtWinNumber.Rows[i]["ZQBF_SP"].ToString()).Trim() + ")|";
            WinNumberBQCSPFList += dtWinNumber.Rows[i]["No"].ToString() + "(" + Shove._Convert.ToDBC(dtWinNumber.Rows[i]["BQCSPFResult"].ToString()).Trim() + "," + Shove._Convert.ToDBC(dtWinNumber.Rows[i]["BQCSPF_SP"].ToString()).Trim() + ")|";
        }
        WinNumberSPFList = WinNumberSPFList.Substring(0, WinNumberSPFList.Length - 1);
        WinNumberZJQList = WinNumberZJQList.Substring(0, WinNumberZJQList.Length - 1);
        WinNumberSXDSList = WinNumberSXDSList.Substring(0, WinNumberSXDSList.Length - 1);
        WinNumberZQBFList = WinNumberZQBFList.Substring(0, WinNumberZQBFList.Length - 1);
        WinNumberBQCSPFList = WinNumberBQCSPFList.Substring(0, WinNumberBQCSPFList.Length - 1);

        WinNumberList = WinNumberSPFList + ";" + WinNumberZJQList + ";" + WinNumberSXDSList + ";" + WinNumberZQBFList + ";" + WinNumberBQCSPFList;
        #endregion

        if (!new SZJS.Lottery()[int.Parse(ddlLottery.SelectedValue)].AnalyseWinNumber(WinNumberList, dtWinNumber.Rows.Count))
        {
            Shove._Web.JavaScript.Alert(this.Page, "开奖号码不正确！");

            return;
        }

        DataTable dt = new DAL.Tables.T_Schemes().Open("", "IsuseID = " + Shove._Web.Utility.FilteSqlInfusion(ddlIsuse.SelectedValue) + " and isOpened = 0", "");

        if (dt == null)
        {
            PF.GoError(ErrorNumber.DataReadWrite, "数据库繁忙，请重试", this.GetType().BaseType.FullName);

            return;
        }

        for (int i = 0; i < dt.Rows.Count; i++)
        {
            string LotteryNumber = dt.Rows[i]["LotteryNumber"].ToString();
            string strBuyType = LotteryNumber.Trim().Split(';')[0].ToString();
            int BuyType = Shove._Convert.StrToInt(strBuyType, 0);

            string Description = "";
            double WinMoneyNoWithTax = 0;
            double WinMoney = new SZJS.Lottery()[int.Parse(ddlLottery.SelectedValue)].ComputeWin(LotteryNumber, WinNumberList, ref Description, ref WinMoneyNoWithTax, BuyType, CompetitionCount, "");

            Shove.Database.MSSQL.ExecuteNonQuery("update T_Schemes set PreWinMoney = @p1, PreWinMoneyNoWithTax = @p2, EditWinMoney = @p3, EditWinMoneyNoWithTax = @p4, WinDescription = @p5 where [ID] = " + dt.Rows[i]["ID"].ToString(),
            new Shove.Database.MSSQL.Parameter("p1", SqlDbType.Money, 0, ParameterDirection.Input, WinMoney * Shove._Convert.StrToInt(dt.Rows[i]["Multiple"].ToString(), 1)),
            new Shove.Database.MSSQL.Parameter("p2", SqlDbType.Money, 0, ParameterDirection.Input, WinMoneyNoWithTax * Shove._Convert.StrToInt(dt.Rows[i]["Multiple"].ToString(), 1)),
            new Shove.Database.MSSQL.Parameter("p3", SqlDbType.Money, 0, ParameterDirection.Input, WinMoney * Shove._Convert.StrToInt(dt.Rows[i]["Multiple"].ToString(), 1)),
            new Shove.Database.MSSQL.Parameter("p4", SqlDbType.Money, 0, ParameterDirection.Input, WinMoneyNoWithTax * Shove._Convert.StrToInt(dt.Rows[i]["Multiple"].ToString(), 1)),
            new Shove.Database.MSSQL.Parameter("p5", SqlDbType.VarChar, 0, ParameterDirection.Input, Description));

        }

        int SchemeCount = 0, QuashCount = 0, WinCount = 0, WinNoBuyCount = 0;

        BindDataForIsuse();

        tbWinNumber.Text = "";

        Shove._Web.JavaScript.Alert(this.Page, String.Format("开奖成功，总方案 {0} 个，撤单未满员或未出票方案 {1} 个，有效中奖方案 {2} 个，中奖但未成功方案 {3} 个。", SchemeCount, QuashCount, WinCount, WinNoBuyCount));
    }

    protected void DataListZCDC_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem || e.Item.ItemType == ListItemType.EditItem)
        {
            if (e.CommandName == "btEdit")
            {
                this.DataListZCDC.EditItemIndex = e.Item.ItemIndex;
            }

            if (e.CommandName == "btUpdate")
            {
                #region Update

                if (e.Item.ItemType == ListItemType.EditItem)
                {
                    string GameResult = "";
                    string HalftimeResult = "";
                    string TmpGameResult = "";
                    string TmpHalftimeResult = "";
                    string TmpBQCResult = "";
                    string LetBall = "0";
                    string SPFResult = "";
                    string ZJQResult = "";
                    string SXDSResult = "";
                    string ZQBFResult = "";
                    string BQCSPFResult = "";
                    double SPFSpResult = 0;
                    double ZJQSpResult = 0;
                    double SXDSSpResult = 0;
                    double ZQBFSpResult = 0;
                    double BQCSPFSpResult = 0;
                    int TmpZJQ = 0;

                    CheckBox cbResultDelay = (CheckBox)(DataListZCDC.Items[e.Item.ItemIndex].FindControl("cbResultDelay"));
                    HiddenField hfId = (HiddenField)(DataListZCDC.Items[e.Item.ItemIndex].FindControl("hfId"));

                    if (cbResultDelay.Checked)
                    {
                        GameResult = "*";
                        HalftimeResult = "*";
                        SPFResult = "*";
                        ZJQResult = "*";
                        SXDSResult = "*";
                        ZQBFResult = "*";
                        BQCSPFResult = "*";
                        SPFSpResult = 1;
                        ZJQSpResult = 1;
                        SXDSSpResult = 1;
                        ZQBFSpResult = 1;
                        BQCSPFSpResult = 1;
                    }
                    else
                    {
                        DropDownList ddlLetBall = (DropDownList)(DataListZCDC.Items[e.Item.ItemIndex].FindControl("ddlLetBall"));
                        DropDownList ddlGame1 = (DropDownList)(DataListZCDC.Items[e.Item.ItemIndex].FindControl("ddlGame1"));
                        DropDownList ddlGame2 = (DropDownList)(DataListZCDC.Items[e.Item.ItemIndex].FindControl("ddlGame2"));
                        DropDownList ddlHalftime1 = (DropDownList)(DataListZCDC.Items[e.Item.ItemIndex].FindControl("ddlHalftime1"));
                        DropDownList ddlHalftime2 = (DropDownList)(DataListZCDC.Items[e.Item.ItemIndex].FindControl("ddlHalftime2"));
                        DropDownList ddlZQBF = (DropDownList)(DataListZCDC.Items[e.Item.ItemIndex].FindControl("ddlZQBF"));
                        DropDownList ddlBQCSPF = (DropDownList)(DataListZCDC.Items[e.Item.ItemIndex].FindControl("ddlBQCSPF"));
                        TextBox tbSPF_SP = (TextBox)(DataListZCDC.Items[e.Item.ItemIndex].FindControl("tbSPF_SP"));
                        TextBox tbZJQ_SP = (TextBox)(DataListZCDC.Items[e.Item.ItemIndex].FindControl("tbZJQ_SP"));
                        TextBox tbSXDS_SP = (TextBox)(DataListZCDC.Items[e.Item.ItemIndex].FindControl("tbSXDS_SP"));
                        TextBox tbZQBF_SP = (TextBox)(DataListZCDC.Items[e.Item.ItemIndex].FindControl("tbZQBF_SP"));
                        TextBox tbBQCSPF_SP = (TextBox)(DataListZCDC.Items[e.Item.ItemIndex].FindControl("tbBQCSPF_SP"));


                        GameResult = ddlGame1.SelectedValue + ":" + ddlGame2.SelectedValue;
                        HalftimeResult = ddlHalftime1.SelectedValue + ":" + ddlHalftime2.SelectedValue;
                        LetBall = ddlLetBall.SelectedValue;

                        if ((int.Parse(ddlGame1.SelectedValue) + int.Parse(ddlLetBall.SelectedValue)) > int.Parse(ddlGame2.SelectedValue))
                        {
                            SPFResult = "3";
                        }
                        else if ((int.Parse(ddlGame1.SelectedValue) + int.Parse(ddlLetBall.SelectedValue)) == int.Parse(ddlGame2.SelectedValue))
                        {
                            SPFResult = "1";
                        }
                        else
                        {
                            SPFResult = "0";
                        }

                        TmpZJQ = int.Parse(ddlGame1.SelectedValue) + int.Parse(ddlGame2.SelectedValue);

                        if (TmpZJQ >= 7)
                        {
                            ZJQResult = "7";
                        }
                        else
                        {
                            ZJQResult = TmpZJQ.ToString();
                        }

                        if (TmpZJQ >= 3)
                        {
                            if ((TmpZJQ % 2) != 0)
                            {
                                SXDSResult = "1";
                            }
                            else
                            {
                                SXDSResult = "2";
                            }
                        }
                        else
                        {
                            if ((TmpZJQ % 2) != 0)
                            {
                                SXDSResult = "3";
                            }
                            else
                            {
                                SXDSResult = "4";
                            }
                        }

                        if (int.Parse(ddlGame1.SelectedValue) > int.Parse(ddlGame2.SelectedValue))
                        {
                            if (int.Parse(ddlGame1.SelectedValue) > 4)
                            {
                                if (Shove._Convert.StrToInt(ddlZQBF.SelectedValue, -1) != 10)
                                {
                                    Shove._Web.JavaScript.Alert(this.Page, "请正确选择本场比赛的正确比分结果！");
                                    return;
                                }

                                ZQBFResult = ddlZQBF.SelectedValue;
                            }
                            else
                            {
                                if ((int.Parse(ddlGame1.SelectedValue) == 4) && int.Parse(ddlGame2.SelectedValue) == 3)
                                {

                                    if (ddlZQBF.SelectedItem.Text.Trim() != "胜其他")
                                    {
                                        Shove._Web.JavaScript.Alert(this.Page, "请正确选择本场比赛的正确比分结果！");
                                        return;
                                    }
                                }
                                else if (ddlZQBF.SelectedItem.Text != GameResult)
                                {
                                    Shove._Web.JavaScript.Alert(this.Page, "请正确选择本场比赛的正确比分结果！");
                                    return;
                                }

                                ZQBFResult = ddlZQBF.SelectedValue;
                            }
                        }
                        else if (int.Parse(ddlGame1.SelectedValue) == int.Parse(ddlGame2.SelectedValue))
                        {
                            if (int.Parse(ddlGame1.SelectedValue) > 3)
                            {
                                if (Shove._Convert.StrToInt(ddlZQBF.SelectedValue, -1) != 15)
                                {
                                    Shove._Web.JavaScript.Alert(this.Page, "请正确选择本场比赛的正确比分结果！");
                                    return;
                                }

                                ZQBFResult = ddlZQBF.SelectedValue;
                            }
                            else
                            {
                                if (ddlZQBF.SelectedItem.Text != GameResult)
                                {
                                    Shove._Web.JavaScript.Alert(this.Page, "请正确选择本场比赛的正确比分结果！");
                                    return;
                                }

                                ZQBFResult = ddlZQBF.SelectedValue;
                            }
                        }
                        else
                        {
                            if (int.Parse(ddlGame2.SelectedValue) > 4)
                            {
                                if (Shove._Convert.StrToInt(ddlZQBF.SelectedValue, -1) != 25)
                                {
                                    Shove._Web.JavaScript.Alert(this.Page, "请正确选择本场比赛的正确比分结果！");
                                    return;
                                }

                                ZQBFResult = ddlZQBF.SelectedValue;
                            }
                            else
                            {
                                if ((int.Parse(ddlGame1.SelectedValue) == 3) && int.Parse(ddlGame2.SelectedValue) == 4)
                                {
                                    if (ddlZQBF.SelectedItem.Text != "负其他")
                                    {
                                        Shove._Web.JavaScript.Alert(this.Page, "请正确选择本场比赛的正确比分结果！");
                                        return;
                                    }
                                }
                                else if (ddlZQBF.SelectedItem.Text != GameResult)
                                {
                                    Shove._Web.JavaScript.Alert(this.Page, "请正确选择本场比赛的正确比分结果！");
                                    return;
                                }

                                ZQBFResult = ddlZQBF.SelectedValue;
                            }
                        }

                        if (int.Parse(ddlHalftime1.SelectedValue) > int.Parse(ddlHalftime2.SelectedValue))
                        {
                            TmpHalftimeResult = "胜";
                        }
                        else if (int.Parse(ddlHalftime1.SelectedValue) == int.Parse(ddlHalftime2.SelectedValue))
                        {
                            TmpHalftimeResult = "平";
                        }
                        else
                        {
                            TmpHalftimeResult = "负";
                        }

                        if (int.Parse(ddlGame1.SelectedValue) > int.Parse(ddlGame2.SelectedValue))
                        {
                            TmpGameResult = "胜";
                        }
                        else if (int.Parse(ddlGame1.SelectedValue) == int.Parse(ddlGame2.SelectedValue))
                        {
                            TmpGameResult = "平";
                        }
                        else
                        {
                            TmpGameResult = "负";
                        }

                        TmpBQCResult = TmpHalftimeResult + "-" + TmpGameResult;

                        if (ddlBQCSPF.SelectedItem.Text != TmpBQCResult)
                        {
                            Shove._Web.JavaScript.Alert(this.Page, "请正确选择本场比赛半全场胜平负的结果！");
                            return;
                        }

                        BQCSPFResult = ddlBQCSPF.SelectedValue;

                        if (Shove._Convert.StrToDouble(tbSPF_SP.Text.Trim(), -1) < 0)
                        {
                            Shove._Web.JavaScript.Alert(this.Page, "请正确输入全场比赛胜平负的SP结果值！");
                            return;
                        }

                        if (Shove._Convert.StrToDouble(tbZJQ_SP.Text.Trim(), -1) < 0)
                        {
                            Shove._Web.JavaScript.Alert(this.Page, "请正确输入全场比赛总进球的SP结果值！");
                            return;
                        }

                        if (Shove._Convert.StrToDouble(tbSXDS_SP.Text.Trim(), -1) < 0)
                        {
                            Shove._Web.JavaScript.Alert(this.Page, "请正确输入全场比赛上下单双的SP结果值！");
                            return;
                        }

                        if (Shove._Convert.StrToDouble(tbZQBF_SP.Text.Trim(), -1) < 0)
                        {
                            Shove._Web.JavaScript.Alert(this.Page, "请正确输入全场比赛正确比分的SP结果值！");
                            return;
                        }

                        if (Shove._Convert.StrToDouble(tbBQCSPF_SP.Text.Trim(), -1) < 0)
                        {
                            Shove._Web.JavaScript.Alert(this.Page, "请正确输入本场比赛半全场胜平负的SP结果值！");
                            return;
                        }

                        SPFSpResult = Shove._Convert.StrToDouble(tbSPF_SP.Text.Trim(), 0);
                        ZJQSpResult = Shove._Convert.StrToDouble(tbZJQ_SP.Text.Trim(), 0);
                        SXDSSpResult = Shove._Convert.StrToDouble(tbSXDS_SP.Text.Trim(), 0);
                        ZQBFSpResult = Shove._Convert.StrToDouble(tbZQBF_SP.Text.Trim(), 0);
                        BQCSPFSpResult = Shove._Convert.StrToDouble(tbBQCSPF_SP.Text.Trim(), 0);
                    }

                    long id = int.Parse(hfId.Value);
                    int ReturnValue = 0;
                    string ReturnDescription = "";

                    DAL.Procedures.P_IsuseInsertOneResultForZCDC(id, HalftimeResult, GameResult, LetBall, SPFResult, SPFSpResult, ZJQResult, ZJQSpResult, SXDSResult, SXDSSpResult, ZQBFResult, ZQBFSpResult, BQCSPFResult, BQCSPFSpResult, ref ReturnValue, ref ReturnDescription);

                    if (ReturnValue < 0)
                    {
                        Shove._Web.JavaScript.Alert(this.Page, ReturnDescription);

                        return;
                    }

                    Shove._Web.JavaScript.Alert(this.Page, "更新成功!");
                }

                this.DataListZCDC.EditItemIndex = -1;

                #endregion
            }

            if (e.CommandName == "btOpenWin")
            {
                if (e.Item.ItemType == ListItemType.EditItem)
                {
                    Label lbZCDC = (Label)(DataListZCDC.Items[e.Item.ItemIndex].FindControl("lbZCDC"));

                    DataTable dtCompetitionCount = MSSQL.Select("select * from T_IsuseForZCDC where IsuseID = " + ddlIsuse.SelectedValue + " order by [NO]");

                    if ((dtCompetitionCount == null) || (dtCompetitionCount.Rows.Count < 1))
                    {
                        PF.GoError(ErrorNumber.DataReadWrite, "数据库繁忙，请重试", this.GetType().BaseType.FullName);

                        return;
                    }

                    int CompetitionCount = dtCompetitionCount.Rows.Count;

                    DataTable dtWinNumber = MSSQL.Select("select * from T_IsuseForZCDC where IsuseID = " + ddlIsuse.SelectedValue + " and [NO] <= " + lbZCDC.Text + "  order by [NO]");

                    if ((dtWinNumber == null) || (dtWinNumber.Rows.Count < 1))
                    {
                        PF.GoError(ErrorNumber.DataReadWrite, "数据库繁忙，请重试", this.GetType().BaseType.FullName);

                        return;
                    }

                    int NowCompetitionCount = dtWinNumber.Rows.Count;

                    #region     构建开奖号码串
                    string WinNumberList = "";  //最终开奖号码

                    string WinNumberSPFList = "";
                    string WinNumberZJQList = "";
                    string WinNumberSXDSList = "";
                    string WinNumberZQBFList = "";
                    string WinNumberBQCSPFList = "";
                    for (int i = 0; i < NowCompetitionCount; i++)
                    {
                        if (dtWinNumber.Rows[i]["Result"].ToString() == "" || dtWinNumber.Rows[i]["SPFResult"].ToString() == "" || dtWinNumber.Rows[i]["SPF_SP"].ToString() == "")
                        {
                            Shove._Web.JavaScript.Alert(this.Page, "第" + dtWinNumber.Rows[i]["No"].ToString() + "场比赛的彩果没有输入！请先输入！！");
                            return;
                        }

                        WinNumberSPFList += dtWinNumber.Rows[i]["No"].ToString() + "(" + dtWinNumber.Rows[i]["SPFResult"].ToString() + "," + dtWinNumber.Rows[i]["SPF_SP"].ToString() + ")|";
                        WinNumberZJQList += dtWinNumber.Rows[i]["No"].ToString() + "(" + dtWinNumber.Rows[i]["ZJQResult"].ToString() + "," + dtWinNumber.Rows[i]["ZJQ_SP"].ToString() + ")|";
                        WinNumberSXDSList += dtWinNumber.Rows[i]["No"].ToString() + "(" + dtWinNumber.Rows[i]["SXDSResult"].ToString() + "," + dtWinNumber.Rows[i]["SXDS_SP"].ToString() + ")|";
                        WinNumberZQBFList += dtWinNumber.Rows[i]["No"].ToString() + "(" + dtWinNumber.Rows[i]["ZQBFResult"].ToString() + "," + dtWinNumber.Rows[i]["ZQBF_SP"].ToString() + ")|";
                        WinNumberBQCSPFList += dtWinNumber.Rows[i]["No"].ToString() + "(" + dtWinNumber.Rows[i]["BQCSPFResult"].ToString() + "," + dtWinNumber.Rows[i]["BQCSPF_SP"].ToString() + ")|";
                    }
                    WinNumberSPFList = WinNumberSPFList.Substring(0, WinNumberSPFList.Length - 1);
                    WinNumberZJQList = WinNumberZJQList.Substring(0, WinNumberZJQList.Length - 1);
                    WinNumberSXDSList = WinNumberSXDSList.Substring(0, WinNumberSXDSList.Length - 1);
                    WinNumberZQBFList = WinNumberZQBFList.Substring(0, WinNumberZQBFList.Length - 1);
                    WinNumberBQCSPFList = WinNumberBQCSPFList.Substring(0, WinNumberBQCSPFList.Length - 1);

                    WinNumberList = WinNumberSPFList + ";" + WinNumberZJQList + ";" + WinNumberSXDSList + ";" + WinNumberZQBFList + ";" + WinNumberBQCSPFList;

                    #endregion

                    if (!new SZJS.Lottery()[int.Parse(ddlLottery.SelectedValue)].AnalyseWinNumber(WinNumberList, dtWinNumber.Rows.Count))
                    {
                        Shove._Web.JavaScript.Alert(this.Page, "开奖号码不正确！");

                        return;
                    }

                    DataTable dt = new DAL.Tables.T_Schemes().Open("", "IsuseID = " + ddlIsuse.SelectedValue + " and isOpened = 0", "");

                    if (dt == null)
                    {
                        PF.GoError(ErrorNumber.DataReadWrite, "数据库繁忙，请重试", this.GetType().BaseType.FullName);

                        return;
                    }

                    int SchemeCount = 0, Fail = 0, WinCount = 0;
                    //  总方案数，失败数，中奖数

                    for (int i = 0; i < dt.Rows.Count; i++)
                    {
                        string LotteryNumber = dt.Rows[i]["LotteryNumber"].ToString();
                        string strBuyType = LotteryNumber.Trim().Split(';')[0].ToString();
                        int BuyType = Shove._Convert.StrToInt(strBuyType, 0);

                        //拆分方案，得到方案的最大场次
                        string BuyNumber = LotteryNumber.Trim().Split(';')[1].ToString();
                        string Numbers = BuyNumber.Substring(1, BuyNumber.Length - 1).Substring(0, BuyNumber.Length - 2).ToString().Trim();

                        string[] TeamContent = Numbers.Split('|');

                        string MaxTeam = TeamContent[TeamContent.Length - 1].Substring(0, (TeamContent[TeamContent.Length - 1].IndexOf('(')));

                        //拆分结束
                        if (NowCompetitionCount >= Shove._Convert.StrToInt(MaxTeam, 0))
                        {
                            SchemeCount++;

                            string Description = "";
                            double WinMoneyNoWithTax = 0;
                            double WinMoney = new SZJS.Lottery()[int.Parse(ddlLottery.SelectedValue)].ComputeWin(LotteryNumber, WinNumberList, ref Description, ref WinMoneyNoWithTax, BuyType, NowCompetitionCount, "");

                            if (WinMoney > 0)
                            {
                                WinCount++;
                            }

                            int ReturnValue = 0;
                            string ReturnDescription = "";

                            DataSet ds = null;

                            DAL.Procedures.P_WinByOpenManual(ref ds, _Site.ID, Shove._Convert.StrToLong(dt.Rows[i]["ID"].ToString(), 0), WinMoney, WinMoneyNoWithTax, Description, _User.ID, ref ReturnValue, ref ReturnDescription);

                            if ((ds == null) || (ReturnDescription != ""))
                            {
                                Fail++;
                                new Log("System").Write(dt.Rows[i]["ID"].ToString() + "方案派奖错误!");
                            }

                            PF.SendWinNotification(ds);
                        }
                    }

                    if (CompetitionCount == NowCompetitionCount)
                    {
                        Shove.Database.MSSQL.ExecuteNonQuery("update T_Isuses set isOpened = 1, OpenAffiche = @p2 where [ID] = " + ddlIsuse.SelectedValue,
                        new Shove.Database.MSSQL.Parameter("p1", SqlDbType.VarChar, 0, ParameterDirection.Input, WinNumberList),
                        new Shove.Database.MSSQL.Parameter("p2", SqlDbType.VarChar, 0, ParameterDirection.Input, "无开奖模板"));
                    }


                    BindDataForIsuse();

                    Shove._Web.JavaScript.Alert(this.Page, String.Format("开奖成功，总方案 {0} 个，失败方案 {1} 个，有效中奖方案 {2} 个。", SchemeCount, Fail, WinCount));
                }

                this.DataListZCDC.EditItemIndex = -1;
            }

            BindDataForZCDC();
        }
    }

    private void BindDataForZCDC()
    {
        if (Shove._Convert.StrToLong(ddlIsuse.SelectedValue, -1) > 0)
        {

            DataTable dt = new DAL.Views.V_IsuseForZCDC().Open("", "IsuseID = " + Shove._Web.Utility.FilteSqlInfusion(ddlIsuse.SelectedValue) + "and DateTime < getdate()", "[No]");

            if (dt == null)
            {
                PF.GoError(ErrorNumber.DataReadWrite, "数据库繁忙，请重试", this.GetType().BaseType.FullName);

                return;
            }

            DataListZCDC.DataSource = dt.DefaultView;
            DataListZCDC.DataBind();
        }
    }

    protected void DataListZCDC_ItemDataBound(object sender, DataListItemEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.EditItem)
        {
            TextBox tbResult = (TextBox)(e.Item.FindControl("tbResult"));
            TextBox tbHalftimeResult = (TextBox)(e.Item.FindControl("tbHalftimeResult"));
            TextBox tbLetBall = (TextBox)(e.Item.FindControl("tbLetBall"));
            TextBox tbSPFResult = (TextBox)(e.Item.FindControl("tbSPFResult"));
            TextBox tbZJQResult = (TextBox)(e.Item.FindControl("tbZJQResult"));
            TextBox tbSXDSResult = (TextBox)(e.Item.FindControl("tbSXDSResult"));
            TextBox tbZQBFResult = (TextBox)(e.Item.FindControl("tbZQBFResult"));
            TextBox tbBQCSPFResult = (TextBox)(e.Item.FindControl("tbBQCSPFResult"));

            DropDownList ddlLetBall = (DropDownList)(e.Item.FindControl("ddlLetBall"));
            DropDownList ddlGame1 = (DropDownList)(e.Item.FindControl("ddlGame1"));
            DropDownList ddlGame2 = (DropDownList)(e.Item.FindControl("ddlGame2"));
            DropDownList ddlHalftime1 = (DropDownList)(e.Item.FindControl("ddlHalftime1"));
            DropDownList ddlHalftime2 = (DropDownList)(e.Item.FindControl("ddlHalftime2"));
            DropDownList ddlSPF = (DropDownList)(e.Item.FindControl("ddlSPF"));
            DropDownList ddlZJQ = (DropDownList)(e.Item.FindControl("ddlZJQ"));
            DropDownList ddlSXDS = (DropDownList)(e.Item.FindControl("ddlSXDS"));
            DropDownList ddlZQBF = (DropDownList)(e.Item.FindControl("ddlZQBF"));
            DropDownList ddlBQCSPF = (DropDownList)(e.Item.FindControl("ddlBQCSPF"));

            Button btOpenWin = (Button)(e.Item.FindControl("btOpenWin"));

            CheckBox cbResultDelay = (CheckBox)(e.Item.FindControl("cbResultDelay"));

            if (tbResult.Text != "")
            {
                if (tbResult.Text != "*")
                {
                    string[] TmpResult = tbResult.Text.Split(':');
                    DropDownListDefault(ddlGame1, TmpResult[0], true);
                    DropDownListDefault(ddlGame2, TmpResult[1], true);
                }
                else
                {
                    cbResultDelay.Checked = true;
                }

                btOpenWin.Enabled = true;
            }
            else
            {
                btOpenWin.Enabled = false;
            }

            if (tbHalftimeResult.Text != "")
            {
                if (tbHalftimeResult.Text != "*")
                {
                    string[] TmpHalftimeResult = tbHalftimeResult.Text.Split(':');
                    DropDownListDefault(ddlHalftime1, TmpHalftimeResult[0], true);
                    DropDownListDefault(ddlHalftime2, TmpHalftimeResult[1], true);
                }
            }

            if (tbLetBall.Text != "")
            {
                DropDownListDefault(ddlLetBall, tbLetBall.Text, true);
            }

            if (tbSPFResult.Text != "")
            {
                DropDownListDefault(ddlSPF, tbSPFResult.Text, false);
            }

            if (tbZJQResult.Text != "")
            {
                DropDownListDefault(ddlZJQ, tbZJQResult.Text, false);
            }

            if (tbSXDSResult.Text != "")
            {
                DropDownListDefault(ddlSXDS, tbSXDSResult.Text, false);
            }

            if (tbZQBFResult.Text != "")
            {
                DropDownListDefault(ddlZQBF, tbZQBFResult.Text, true);
            }

            if (tbBQCSPFResult.Text != "")
            {
                DropDownListDefault(ddlBQCSPF, tbBQCSPFResult.Text, true);
            }
        }
    }

    private void DropDownListDefault(DropDownList ddl, string defaultValue, bool UserEnabled)
    {
        if (!ddl.Enabled)
        {
            ddl.Enabled = true;
        }

        foreach (ListItem item in ddl.Items)
        {
            if (item.Value == defaultValue)
            {
                item.Selected = true;
            }
        }

        ddl.Enabled = UserEnabled;
    }

    #endregion
}
