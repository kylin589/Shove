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
using System.Text;


public partial class Home_Room_AccountDetail : SitePageBase
{
    int outCount = 0;
    int inCount = 0;
    double outMoney = 0;
    double inMoney = 0;


    int outScoreCount = 0;
    int inScoreCount = 0;
    double outScoreMoney = 0;
    double inScoreMoney = 0;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {

            BindDataForYearMonth();

            BindDataForYearMonth1();

            BinDataForDay();

            BinDataForDay1();

            BindData();

            BindHistoryData();

            BindRewardData();

            BindUserPayData();

            BindDistills();

            BindScoring();
        }
    }

    protected override void OnLoad(EventArgs e)
    {
        isRequestLogin = true;
        base.OnLoad(e);
    }

    private void BindDataForYearMonth()
    {
        ddlYear.Items.Clear();

        DateTime dt = DateTime.Now;
        int Year = dt.Year;
        int Month = dt.Month;

        if (Year < PF.SystemStartYear)
        {
            btnGO.Enabled = false;

            return;
        }

        for (int i = PF.SystemStartYear; i <= Year; i++)
        {
            ddlYear.Items.Add(new ListItem(i.ToString() + "年", i.ToString()));
        }

        ddlYear.SelectedIndex = ddlYear.Items.Count - 1;
        if (Month >= 4)
        {
            ddlMonth.SelectedIndex = Month - 4;
        }
        else
        {
            ddlMonth.SelectedIndex = 0;
        }
    }

    private void BinDataForDay()
    {
        ddlDay.Items.Clear();

        int[] Month = new Int32[7];
        Month[0] = 1;
        Month[1] = 3;
        Month[2] = 5;
        Month[3] = 7;
        Month[4] = 8;
        Month[5] = 10;
        Month[6] = 12;

        DateTime dtTime = DateTime.Now;
        int Year = dtTime.Year;
        int Day = dtTime.Day;
        int i = int.Parse(ddlMonth.SelectedValue);
        int MaxDay = 0;

        foreach (int j in Month)
        {
            if (i == j)
            {
                MaxDay = 31;
                break;
            }
            else if (i == 2)
            {
                if (((Year % 4) == 0) && ((Year % 100) != 0) && ((Year % 400) == 0))
                {
                    MaxDay = 29;
                    break;
                }
                else
                {
                    MaxDay = 28;
                    break;
                }
            }
            else
            {
                MaxDay = 30;
            }
        }

        for (int j = 1; j <= MaxDay; j++)
        {
            ddlDay.Items.Add(new ListItem(j.ToString() + "日", j.ToString()));
        }

        if (Day > MaxDay)
        {
            Day = MaxDay;
        }

        ddlDay.SelectedIndex = Day - 1;
    }
    private void BindDataForYearMonth1()
    {
        ddlYear1.Items.Clear();

        DateTime dt = DateTime.Now;
        int Year = dt.Year;
        int Month = dt.Month;

        if (Year < PF.SystemStartYear)
        {
            btnGO.Enabled = false;

            return;
        }

        for (int i = PF.SystemStartYear; i <= Year; i++)
        {
            ddlYear1.Items.Add(new ListItem(i.ToString() + "年", i.ToString()));
        }

        ddlYear1.SelectedIndex = ddlYear.Items.Count - 1;

        ddlMonth1.SelectedIndex = Month - 1;
    }
    private void BinDataForDay1()
    {
        ddlDay1.Items.Clear();

        int[] Month = new Int32[7];
        Month[0] = 1;
        Month[1] = 3;
        Month[2] = 5;
        Month[3] = 7;
        Month[4] = 8;
        Month[5] = 10;
        Month[6] = 12;

        DateTime dtTime = DateTime.Now;
        int Year = dtTime.Year;
        int Day = dtTime.Day;
        int i = int.Parse(ddlMonth.SelectedValue);
        int MaxDay = 0;

        foreach (int j in Month)
        {
            if (i == j)
            {
                MaxDay = 31;
                break;
            }
            else if (i == 2)
            {
                if (((Year % 4) == 0) && ((Year % 100) != 0) && ((Year % 400) == 0))
                {
                    MaxDay = 29;
                    break;
                }
                else
                {
                    MaxDay = 28;
                    break;
                }
            }
            else
            {
                MaxDay = 30;
            }
        }

        for (int j = 1; j <= MaxDay; j++)
        {
            ddlDay1.Items.Add(new ListItem(j.ToString() + "日", j.ToString()));
        }

        if (Day > MaxDay)
        {
            Day = MaxDay;
        }

        ddlDay1.SelectedIndex = Day - 1;
    }

    private void BindData()
    {
        DataTable dt = Shove._Web.Cache.GetCacheAsDataTable(Shove._Web.WebConfig.GetAppSettingsString("SystemPreFix") + _Site.ID.ToString() + "AccountDetail_" + _User.ID.ToString());
        string start = ddlYear.SelectedValue + "-" + ddlMonth.SelectedValue + "-" + ddlDay.SelectedValue + " 00:00:00";
        DateTime dtStart = Shove._Convert.StrToDateTime(start, System.DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss"));
        string end = ddlYear1.SelectedValue + "-" + ddlMonth1.SelectedValue + "-" + ddlDay1.SelectedValue + " 23:59:59";
        DateTime dtEnd = Shove._Convert.StrToDateTime(end, System.DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss"));

        if (dt == null)
        {
            if (ddlYear.Items.Count < 1)
            {
                return;
            }

            //一下2个判断为时间判断
            //如果当前时间小于选择时间 则把 选择时间改成当前时间
            if (DateTime.Now.CompareTo(dtEnd) <= 0)
            {
                dtEnd = DateTime.Now;
            }

            if (dtEnd.CompareTo(dtStart) < 0)
            {
                Shove._Web.JavaScript.Alert(this.Page, "开始时间不能小于结束时间.");

                return;
            }


            int ReturnValue = 0;
            string ReturnDescription = "";

            DataSet ds = null;
            DAL.Procedures.P_GetUserAccountDetails(ref ds, 1, _User.ID, dtStart, dtEnd, ref ReturnValue, ref ReturnDescription);

            if ((ds == null) || (ds.Tables.Count < 1))
            {
                PF.GoError(ErrorNumber.DataReadWrite, "数据库繁忙，请重试", "Room_AccountDetail");

                return;
            }

            if (ReturnValue < 0)
            {
                Shove._Web.JavaScript.Alert(this.Page, ReturnDescription);

                return;
            }

            dt = ds.Tables[0];

            Shove._Web.Cache.SetCache(Shove._Web.WebConfig.GetAppSettingsString("SystemPreFix") + _Site.ID.ToString() + "AccountDetail_" + _User.ID.ToString(), dt);
        }

        PF.DataGridBindData(g, dt, gPager);

        this.lblInCount.Text = inCount.ToString();
        this.lblOutCount.Text = outCount.ToString();
        this.lblInMoney.Text = inMoney.ToString("N");
        this.lblOutMoney.Text = outMoney.ToString("N");
    }

    protected void g_ItemDataBound(object sender, System.Web.UI.WebControls.DataGridItemEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem || e.Item.ItemType == ListItemType.EditItem)
        {
            double money;

            money = Shove._Convert.StrToDouble(e.Item.Cells[2].Text, 0);
            e.Item.Cells[2].Text = (money == 0) ? "" : money.ToString("N");
            if (money != 0)
            {
                inCount++;
                inMoney += money;
            }

            money = Shove._Convert.StrToDouble(e.Item.Cells[3].Text, 0);
            e.Item.Cells[3].Text = (money == 0) ? "" : money.ToString("N");
            if (money != 0)
            {
                outCount++;
                outMoney += money;
            }

            money = Shove._Convert.StrToDouble(e.Item.Cells[4].Text, 0);
            e.Item.Cells[4].Text = (money == 0) ? "" : money.ToString("N");

            money = Shove._Convert.StrToDouble(e.Item.Cells[5].Text, 0);
            e.Item.Cells[5].Text = (money == 0) ? "0.00" : money.ToString("N");

            money = Shove._Convert.StrToDouble(e.Item.Cells[6].Text, 0);
            e.Item.Cells[6].Text = (money == 0) ? "" : money.ToString("N");

            money = Shove._Convert.StrToDouble(e.Item.Cells[7].Text, 0);
            e.Item.Cells[7].Text = (money == 0) ? "" : money.ToString("N");

            long SchemeID = Shove._Convert.StrToLong(e.Item.Cells[8].Text, 0);

            if (SchemeID > 0)
            {
                e.Item.Cells[1].Text = "<span><a href='Scheme.aspx?id=" + SchemeID.ToString() + "' target='_blank'>" + e.Item.Cells[1].Text + "</a></span>";
            }
        }
    }

    protected void btnGO_Click(object sender, EventArgs e)
    {
        Shove._Web.Cache.ClearCache(Shove._Web.WebConfig.GetAppSettingsString("SystemPreFix") + _Site.ID.ToString() + "AccountDetail_" + _User.ID.ToString());

        BindData();
    }

    protected void gPager_PageWillChange(object Sender, Shove.Web.UI.PageChangeEventArgs e)
    {
        string gPagerId = ((Shove.Web.UI.ShoveGridPager)(Sender)).ID;
        switch (gPagerId)
        {
            case "gPager":
                hdCurDiv.Value = "divAccountDetail";
                BindData();
                break;
            case "gPagerHistory":
                hdCurDiv.Value = "divBuy";
                BindHistoryData();
                break;
            case "gPagerReward":
                hdCurDiv.Value = "divReward";
                BindRewardData();
                break;
            case "gPagerUserPay":
                hdCurDiv.Value = "divUserPay";
                BindUserPayData();
                break;
            case "gPagergDistills":
                hdCurDiv.Value = "divUserDistills";
                BindDistills();
                break;
            case "gPagerScoring":
                hdCurDiv.Value = "divScoring";
                BindScoring();
                break;
        }

    }

    protected void ddlMonth_SelectedIndexChanged(object sender, EventArgs e)
    {
        BinDataForDay();
    }

    private void BindHistoryData()
    {
        string CacheKey = "Home_Room_Invest_BindHistoryData" + _User.ID.ToString();
        DataTable dt = Shove._Web.Cache.GetCacheAsDataTable(CacheKey);

        if (dt == null)
        {
            StringBuilder sb = new StringBuilder();

            sb.Append("select * from (select LotteryID,LotteryName,PlayTypeID,InitiateName,PlayTypeName, ")
                .Append("SchemeShare,a.Money,b.Share,b.DetailMoney,SchemeWinMoney, b.WinMoneyNoWithTax,a.DateTime, ")
                .Append("b.SchemeID,QuashStatus,Buyed,AssureMoney,BuyedShare,IsOpened,c.Memo  from   ")
                .Append("(select UserID,SchemeID,SUM(Share) as Share,SUM(DetailMoney) as DetailMoney, ")
                .Append("sum(WinMoneyNoWithTax) as  WinMoneyNoWithTax  from V_BuyDetailsWithQuashedAll   ")
                .Append("where  UserID = " + _User.ID.ToString() + " and InitiateUserID = UserID group by SchemeID,UserID)b ")
                .Append("left join (select * from V_BuyDetailsWithQuashedAll where UserID = " + _User.ID.ToString() + " and   ")
                .Append("UserID = InitiateUserID and isWhenInitiate = 1)a ")
                .Append("on a.UserID = b.UserID and ")
                .Append("a.SchemeID = b.SchemeID  left join (select SchemeID,Memo from T_UserDetails where ")
                .Append("OperatorType = 9 and UserID = " + _User.ID.ToString() + ") c  ")
                .Append("on b.SchemeID = c.SchemeID union select  LotteryID,LotteryName,PlayTypeID,InitiateName, ")
                .Append("PlayTypeName,SchemeShare,a.Money,Share,DetailMoney,SchemeWinMoney, WinMoneyNoWithTax, ")
                .Append("a.DateTime,a.SchemeID,QuashStatus,Buyed,AssureMoney,BuyedShare,IsOpened,b.Memo from  ")
                .Append("(select * from V_BuyDetailsWithQuashedAll where UserID = " + _User.ID.ToString() + " and UserID<>InitiateUserID) a left join (select SchemeID,Memo from T_UserDetails where  ")
                .Append("OperatorType = 9 and UserID = " + _User.ID.ToString() + ")b on a.SchemeID = b.SchemeID)a order by DateTime desc");

            dt = Shove.Database.MSSQL.Select(sb.ToString());

            if (dt == null)
            {
                PF.GoError(ErrorNumber.DataReadWrite, "数据库繁忙，请重试", this.GetType().BaseType.FullName);

                return;
            }

            Shove._Web.Cache.SetCache(CacheKey, dt, 60);
        }

        PF.DataGridBindData(gHistory, dt, gPagerHistory);

        int count = 0;
        double money = 0;
        foreach (DataRow dr in dt.Rows)
        {
            if (dr["QuashStatus"].ToString() == "0")
            {
                count++;
                money += Shove._Convert.StrToDouble(dr["DetailMoney"].ToString(), 0);
            }
        }

        lblBuyOutCount.Text = count.ToString();
        lblBuyOutMoney.Text = money.ToString("N");
        gPagerHistory.Visible = true;
    }

    protected void gHistory_ItemDataBound(object sender, System.Web.UI.WebControls.DataGridItemEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem || e.Item.ItemType == ListItemType.EditItem)
        {
            long SchemeID = Shove._Convert.StrToLong(e.Item.Cells[13].Text, 0);
            string str = e.Item.Cells[2].Text;

            if (str.Length > 6)
            {
                str = str.Substring(0, 5) + "..";
            }

            e.Item.Cells[2].Text = "<span class='red12_2'><a href='Scheme.aspx?id=" + SchemeID.ToString() + "' target='_blank'>" + str + "</a></span>";

            double money;

            money = Shove._Convert.StrToDouble(e.Item.Cells[4].Text, 0);
            e.Item.Cells[4].Text = (money == 0) ? "" : money.ToString("N");

            money = Shove._Convert.StrToDouble(e.Item.Cells[6].Text, 0);
            e.Item.Cells[6].Text = (money == 0) ? "" : money.ToString("N");

            double i = Shove._Convert.StrToDouble(e.Item.Cells[3].Text, 0);
            double j = Shove._Convert.StrToDouble(e.Item.Cells[5].Text, 0);

            if (j >= i)
            {
                e.Item.Cells[7].Text = "100%";
            }
            else
            {
                if (i > 0)
                {
                    e.Item.Cells[7].Text = Math.Round(j / i * 100, 2).ToString() + "%";
                }
            }

            money = Shove._Convert.StrToDouble(e.Item.Cells[8].Text, 0);
            e.Item.Cells[8].Text = (money == 0) ? "" : money.ToString("N");

            money = Shove._Convert.StrToDouble(e.Item.Cells[9].Text, 0);
            e.Item.Cells[9].Text = (money == 0) ? "" : money.ToString("N");

            if (money == 0)
            {

                e.Item.Cells[10].Text = "<a href='Scheme.aspx?id=" + SchemeID.ToString() + "' target='_blank'>" + "<font color=\"blue\"> 未中奖 </font>" + "</a>";
                e.Item.Cells[10].Style.Add(HtmlTextWriterStyle.Color, "FFFFCC");

            }
            else
            {
                e.Item.Cells[10].Text = "<a href='Scheme.aspx?id=" + SchemeID.ToString() + "' target='_blank'>" + "<font color=\"red\">中奖啦!</font>" + "</a>";
            }

            bool IsOpened = false;

            try
            {
                DataRowView drv = (DataRowView)e.Item.DataItem;
                DataRow dr = drv.Row;

                IsOpened = Shove._Convert.StrToBool(dr["IsOpened"].ToString(), false);

                if (!IsOpened)
                {
                    e.Item.BackColor = System.Drawing.Color.FromName("#FFFFCA");
                    e.Item.Cells[10].Text = "<a href='Scheme.aspx?id=" + SchemeID.ToString() + "' target='_blank'>" + "<font color=\"blue\">未开奖</font>" + "</a>";
                    e.Item.Style.Add(HtmlTextWriterStyle.BackgroundColor, "#FFFFCA");
                }
            }
            catch { }

            short QuashStatus = Shove._Convert.StrToShort(e.Item.Cells[14].Text, 1);

            if (QuashStatus != 0)
            {
                string StatusDescription = "已撤单";

                e.Item.Cells[12].Text = "<span class='red12_2'><a href='Scheme.aspx?id=" + SchemeID.ToString() + "' target='_blank'>" + StatusDescription + "</a></span>";
            }
            else
            {
                if (!IsOpened)
                {

                    bool Buyed = Shove._Convert.StrToBool(e.Item.Cells[15].Text, false);

                    if (Buyed)
                    {
                        e.Item.Cells[12].Text = "<a href='Scheme.aspx?id=" + SchemeID.ToString() + "' target='_blank'>" + "<Font color=\'Red\'>已出票</font>" + "</a>";
                    }
                    else
                    {
                        int BuyedShare = Shove._Convert.StrToInt(e.Item.Cells[17].Text, 0);
                        int SchemeShare = Shove._Convert.StrToInt(e.Item.Cells[3].Text, 0);

                        if (BuyedShare >= SchemeShare)
                        {
                            e.Item.Cells[12].Text = "<a href='Scheme.aspx?id=" + SchemeID.ToString() + "' target='_blank'>" + "<font color=\"blue\">" + "<Font color=\'Red\'>已满员</font>" + "</a>";
                        }
                        else
                        {
                            e.Item.Cells[12].Text = "<span class='red12_2'><a href='Scheme.aspx?id=" + SchemeID.ToString() + "' target='_blank'>" + "未满员" + "</a></span>";
                        }
                    }
                }
                else
                {
                    e.Item.Cells[12].Text = "<a href='Scheme.aspx?id=" + SchemeID.ToString() + "' target='_blank'>" + "<font color=\"red\">等待出票</font>" + "</a>";
                }
            }
        }
    }

    protected void gPager_SortBefore(object source, System.Web.UI.WebControls.DataGridSortCommandEventArgs e)
    {
        BindHistoryData();
    }

    private void BindRewardData()
    {
        if (_User == null)
        {
            return;
        }

        string CacheKeyName = "Room_Welcome_Reward_" + _User.ID.ToString();

        DataTable dt = Shove._Web.Cache.GetCacheAsDataTable(CacheKeyName);

        if (dt == null)
        {
            dt = new DAL.Views.V_BuyDetailsWithQuashedAll().Open("UserID, SchemeID, LotteryNumber, IsuseName, SchemeWinMoney, LotteryName, WinMoneyNoWithTax,DetailMoney", "[UserID] = " + _User.ID.ToString() + " and EndTime < GetDate() and WinMoneyNoWithTax > 0", "[DateTime] desc, [ID]");

            if (dt == null)
            {
                PF.GoError(ErrorNumber.DataReadWrite, "数据库繁忙，请重试(732)", this.GetType().FullName);

                return;
            }

            Shove._Web.Cache.SetCache(CacheKeyName, dt, 60);
        }

        gReward.DataSource = dt;
        gReward.DataBind();

        this.lblRewardCount.Text = dt.Rows.Count.ToString();
        this.lblRewardMoney.Text = PF.GetSumByColumn(dt, 6, false, gPagerReward.PageSize, gPagerReward.PageIndex).ToString("N");
    }

    protected void gReward_ItemDataBound(object sender, System.Web.UI.WebControls.DataGridItemEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem || e.Item.ItemType == ListItemType.EditItem)
        {
            double money;

            money = Shove._Convert.StrToDouble(e.Item.Cells[4].Text, 0);
            e.Item.Cells[4].Text = (money == 0) ? "" : money.ToString("N");

            money = Shove._Convert.StrToDouble(e.Item.Cells[5].Text, 0);
            e.Item.Cells[5].Text = (money == 0) ? "" : money.ToString("N");


            if (money > 0)
            {
                e.Item.Cells[7].Text = "<font color=\"red\">中奖啦!</font>";
            }
            else
            {
                e.Item.Cells[7].Text = "未中奖";
            }

            e.Item.ToolTip = e.Item.Cells[2].Text;

            e.Item.Cells[2].Text = "<span class='red12_2'><a href='Scheme.aspx?id=" + e.Item.Cells[8].Text + "' target='_blank'>投注内容</a></span>";

            double winMoneyNoWithTax = Shove._Convert.StrToDouble(e.Item.Cells[5].Text, 0);  //我的奖金
            double detailMoney = Shove._Convert.StrToDouble(e.Item.Cells[3].Text, 0);        //我投注的金额
            double winMoney = (winMoneyNoWithTax - detailMoney);

            double winRate = winMoney / detailMoney;

            if (winRate >= 1)
            {
                e.Item.Cells[6].Text = Math.Round(winRate, 2).ToString() + "倍";
            }
            else
            {
                e.Item.Cells[6].Text = (Math.Round(winRate, 2) * 100).ToString() + "%";
            }

            if (winMoney < 0)
            {
                e.Item.Cells[6].Text = "";
            }
        }
    }

    private void BindUserPayData()
    {
        if (_User == null)
        {
            return;
        }

        string CacheKeyName = "Room_UserPayDetail_" + _User.ID.ToString();

        DataTable dt = Shove._Web.Cache.GetCacheAsDataTable(CacheKeyName);

        if (dt == null)
        {
            dt = new DAL.Views.V_UserPayDetails().Open("ID,[DateTime],PayType,[Money],FormalitiesFees", "[UserID] = " + _User.ID.ToString() + " and Result = 1", "[DateTime] desc, [ID]");

            if (dt == null)
            {
                PF.GoError(ErrorNumber.DataReadWrite, "数据库繁忙，请重试(732)", this.GetType().FullName);

                return;
            }

            Shove._Web.Cache.SetCache(CacheKeyName, dt, 60);
        }

        gUserPay.DataSource = dt;
        gUserPay.DataBind();

        this.lblUserPayCount.Text = dt.Rows.Count.ToString();
        this.lblUserPayMoney.Text = PF.GetSumByColumn(dt, 3, false, gUserPay.PageSize, 0).ToString("N");
    }

    protected void gUserPay_ItemDataBound(object sender, System.Web.UI.WebControls.DataGridItemEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem || e.Item.ItemType == ListItemType.EditItem)
        {
            double money;
            money = Shove._Convert.StrToDouble(e.Item.Cells[1].Text, 0);
            e.Item.Cells[1].Text = (money == 0) ? "" : money.ToString("N");

            money = Shove._Convert.StrToDouble(e.Item.Cells[2].Text, 0);
            e.Item.Cells[2].Text = (money == 0) ? "" : money.ToString("N");

            e.Item.Cells[3].Text = getBankName(e.Item.Cells[3].Text);
        }
    }


    private void BindDistills()
    {
        if (_User == null)
        {
            return;
        }

        string CacheKeyName = "Room_UserDistills_" + _User.ID.ToString();

        DataTable dt = Shove._Web.Cache.GetCacheAsDataTable(CacheKeyName);

        if (dt == null)
        {
            dt = new DAL.Views.V_UserDistills().Open("ID,[DateTime],[Money],FormalitiesFees,Result,Memo", "[UserID] = " + _User.ID.ToString() + "", "[DateTime] desc, [ID]");

            if (dt == null)
            {
                PF.GoError(ErrorNumber.DataReadWrite, "数据库繁忙，请重试(732)", this.GetType().FullName);

                return;
            }

            Shove._Web.Cache.SetCache(CacheKeyName, dt, 60);
        }


            gUserDistills.DataSource = dt;
            gUserDistills.DataBind();

        this.lblDistillCount.Text = dt.Rows.Count.ToString();
        this.lblDistillMoney.Text = PF.GetSumByColumn(dt, 2, false, gUserDistills.PageSize, 0).ToString("N");
    }
    protected void gUserDistills_ItemDataBound(object sender, System.Web.UI.WebControls.DataGridItemEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem || e.Item.ItemType == ListItemType.EditItem)
        {
            double money;
            money = Shove._Convert.StrToDouble(e.Item.Cells[1].Text, 0);
            e.Item.Cells[1].Text = (money == 0) ? "" : money.ToString("N");

            money = Shove._Convert.StrToDouble(e.Item.Cells[2].Text, 0);
            e.Item.Cells[2].Text = (money == 0) ? "" : money.ToString("N");

            e.Item.Cells[3].Text = "提款";

            string result = e.Item.Cells[4].Text;
            if (result == "0")
            {
                e.Item.Cells[4].Text = "申请状态";
            }
            else if (result == "-1")
            {
                e.Item.Cells[4].Text = "不受理";
            }
            else if (result == "1")
            {
                e.Item.Cells[4].Text = "已受理";
            }
            else if (result == "-2")
            {
                e.Item.Cells[4].Text = "已取消";
            }
            else
            {
                e.Item.Cells[4].Text = "";
            }
        }
    }

    private void BindScoring()
    {
        if (_User == null)
        {
            return;
        }

        string CacheKeyName = "Room_UserScoring_" + _User.ID.ToString();

        DataTable dt = Shove._Web.Cache.GetCacheAsDataTable(CacheKeyName);

        if (dt == null)
        {
            dt = new DAL.Views.V_UserScoringDetails().Open("ID,[DateTime],[Scoring],OperatorType", "[UserID] = " + _User.ID.ToString() + "", "[DateTime] desc, [ID]");

            if (dt == null)
            {
                PF.GoError(ErrorNumber.DataReadWrite, "数据库繁忙，请重试(732)", this.GetType().FullName);

                return;
            }

            Shove._Web.Cache.SetCache(CacheKeyName, dt, 60);
        }

        gScoring.DataSource = dt;
        gScoring.DataBind();

        this.lblScoreInCount.Text = inScoreCount.ToString();
        this.lblScoreOutCount.Text = outScoreCount.ToString();
        this.lblScoreInMoney.Text = inScoreMoney.ToString("N");
        this.lblScoreOutMoney.Text = outScoreMoney.ToString("N");
    }
    protected void gScoring_ItemDataBound(object sender, System.Web.UI.WebControls.DataGridItemEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem || e.Item.ItemType == ListItemType.EditItem)
        {
            double money;

            //e.Item.Cells[3].Text = "提款";

            string operatorType = e.Item.Cells[3].Text;
            switch (operatorType)
            {
                //1 购彩奖积分 2 下级购彩奖积分 3 系统奖励积分 4 手工增加积分 5 中奖赠送积分 101 兑换积分 201 惩罚扣积分

                case "1":
                    e.Item.Cells[3].Text = "购彩奖积分";
                    money = Shove._Convert.StrToDouble(e.Item.Cells[1].Text, 0);
                    e.Item.Cells[1].Text = (money == 0) ? "" : money.ToString("N");
                    if (money != 0)
                    {
                        inScoreCount++;
                        inScoreMoney += money;
                    }
                    break;
                case "2":
                    e.Item.Cells[3].Text = "下级购彩奖积分";
                    money = Shove._Convert.StrToDouble(e.Item.Cells[1].Text, 0);
                    e.Item.Cells[1].Text = (money == 0) ? "" : money.ToString("N");
                    if (money != 0)
                    {
                        inScoreCount++;
                        inScoreMoney += money;
                    }
                    break;
                case "3":
                    e.Item.Cells[3].Text = "系统奖励积分";
                    money = Shove._Convert.StrToDouble(e.Item.Cells[1].Text, 0);
                    e.Item.Cells[1].Text = (money == 0) ? "" : money.ToString("N");
                    if (money != 0)
                    {
                        inScoreCount++;
                        inScoreMoney += money;
                    }
                    break;
                case "4":
                    e.Item.Cells[3].Text = "手工增加积分";
                    money = Shove._Convert.StrToDouble(e.Item.Cells[1].Text, 0);
                    e.Item.Cells[1].Text = (money == 0) ? "" : money.ToString("N");
                    if (money != 0)
                    {
                        inScoreCount++;
                        inScoreMoney += money;
                    }
                    break;
                case "5":
                    e.Item.Cells[3].Text = "中奖赠送积分";
                    money = Shove._Convert.StrToDouble(e.Item.Cells[1].Text, 0);
                    e.Item.Cells[1].Text = (money == 0) ? "" : money.ToString("N");
                    if (money != 0)
                    {
                        inScoreCount++;
                        inScoreMoney += money;
                    }
                    break;
                case "101":
                    e.Item.Cells[3].Text = "兑换积分";
                    money = Shove._Convert.StrToDouble(e.Item.Cells[1].Text, 0);
                    e.Item.Cells[2].Text = (money == 0) ? "" : money.ToString("N");
                    if (money != 0)
                    {
                        e.Item.Cells[1].Text = "";
                        outScoreCount++;
                        outScoreMoney += money;
                    }
                    break;
                case "201":
                    e.Item.Cells[3].Text = "惩罚扣积分";
                    money = Shove._Convert.StrToDouble(e.Item.Cells[1].Text, 0);
                    e.Item.Cells[2].Text = (money == 0) ? "" : money.ToString("N");
                    if (money != 0)
                    {
                        e.Item.Cells[1].Text = "";
                        outScoreCount++;
                        outScoreMoney += money;
                    }
                    break;
                default:
                    e.Item.Cells[3].Text = "";
                    money = Shove._Convert.StrToDouble(e.Item.Cells[1].Text, 0);
                    e.Item.Cells[2].Text = (money == 0) ? "" : money.ToString("N");
                    if (money != 0)
                    {
                        outScoreCount++;
                        outScoreMoney += money;
                    }
                    break;
            }
        }
    }
    protected void g_SortCommand(object source, DataGridSortCommandEventArgs e)
    {
        DataGrid grid = (DataGrid)source;
        switch (grid.ID)
        {
            case "g":
                BindData();
                break;
            case "gHistory":
                BindHistoryData();
                break;
            case "gReward":
                BindRewardData();
                break;
            case "gUserPay":
                BindUserPayData();
                break;
            case "gUserDistills":
                BindDistills();
                break;
            case "gScoring":
                BindScoring();
                break;
        }
    }

    /// <summary>
    /// 用户自行撤销提款
    /// </summary>
    /// <param name="source"></param>
    /// <param name="e"></param>
    protected void gUserDistills_ItemCommand(object source, DataGridCommandEventArgs e)
    {

        HiddenField hidDistillID = (HiddenField)e.Item.FindControl("tdDistillID");
        try
        {


            int DistillID = Shove._Convert.StrToInt(hidDistillID.Value, 0);
            if (e.CommandName == "QuashDistills")
            {
                string CacheKeyName = "Room_UserDistills_" + _User.ID.ToString();
                string ReturnDescription = "";

                int Result = _User.DistillQuash(DistillID, ref ReturnDescription);
                if (Result < 0)
                {
                    Shove._Web.JavaScript.Alert(this.Page, "数据库读写错误.");

                    return;
                }

                if (ReturnDescription != "")
                {
                    Shove._Web.JavaScript.Alert(this.Page, ReturnDescription);

                    return;
                }

                Shove._Web.JavaScript.Alert(this.Page, "撤销成功。");
                Shove._Web.Cache.ClearCache(CacheKeyName);
                BindDistills();
            }
            else if (e.CommandName == "ShowDistillDetail")
            {
                string CardNum = "";
                string AlipayName = "";
                string time = "";
                DataTable dt = new DAL.Tables.T_UserDistills().Open("BankCardNumber,AlipayName,[DateTime],BankName", "id = " + DistillID, "");
                CardNum = dt.Rows[0]["BankCardNumber"].ToString();
                AlipayName = dt.Rows[0]["AlipayName"].ToString();
                time = dt.Rows[0]["DateTime"].ToString();
                if (CardNum == "")
                {
                    this.lblDistillBankType.Text = "支付宝提款";
                    this.lblDistillBanks.Text = "支付宝账号: ";
                    this.lblDistillBankDetail.Text = AlipayName;
                    this.lbAccountBank.Visible = false;
                    this.lbAccountBankDetail.Visible = false;
                }
                else
                {

                    this.lblDistillBankType.Text = "银行卡提款";
                    this.lblDistillBankDetail.Text = CardNum;
                    this.lblDistillBanks.Text = "银行卡号: ";
                    this.lbAccountBank.Visible = true;
                    this.lbAccountBankDetail.Visible = true;
                    this.lbAccountBank.Text = dt.Rows[0]["BankName"].ToString();
                }
                this.lblDistillTime.Text = time.ToString();
            }

            BindUserPayData();
            BindDistills();
        }
        catch
        {

        }
    }
    protected void gUserPay_ItemCommand(object source, DataGridCommandEventArgs e)
    {
       
        HiddenField tdUserPayID = (HiddenField)e.Item.FindControl("tdUserPayDetail");
        try
        {

            int PayID = Shove._Convert.StrToInt(tdUserPayID.Value.ToString(), 0);
            string payType = "";
            string Money = "";
            string time = "";

            if (e.CommandName == "ShowUserPayDetail")
            {

                DataTable dt = new DAL.Tables.T_UserPayDetails().Open("PayType , [Money] , [DateTime]", "id = " + PayID, "");
                payType = dt.Rows[0]["PayType"].ToString();
                Money = dt.Rows[0]["Money"].ToString();
                time = dt.Rows[0]["DateTime"].ToString();
                this.lblUserPayBank.Text = getBankName(payType); //== "alipay" ? "支付宝充值" :"网银充值";


                this.lblUserPayMoneys.Text = Money.Substring(0, Money.IndexOf('.')) + Money.Substring(Money.IndexOf('.'), 3);
                this.lblUserPayTime.Text = time;
            }
            BindUserPayData();
            BindDistills();
        }
        catch{
        
        }

    }

    //根据支付方式来获取相应的中文说明
    private string getBankName(string bankCode)
    {

        string bankName = "";
        string[] banks = bankCode.Split('_');

        if (banks.Length < 2)
        {
            return "未知银行";
        }

        if (banks[0].ToUpper() == "ALIPAY")
        {
            switch (banks[1].ToUpper())
            {
                case "ALIPAY":
                    bankName = "支付宝";
                    break;

                case "ICBCB2C":
                    bankName = "中国工商银行";
                    break;
                case "GDB":
                    bankName = "广东发展银行";
                    break;
                case "CEBBANK":
                    bankName = "中国光大银行";
                    break;
                case "CCB":
                    bankName = "中国建设银行";
                    break;
                case "COMM":
                    bankName = "中国交通银行";
                    break;
                case "ABC":
                    bankName = "中国农业银行";
                    break;
                case "SPDB":
                    bankName = "上海浦发银行";
                    break;
                case "SDB":
                    bankName = "深圳发展银行";
                    break;
                case "CIB":
                    bankName = "兴业银行";
                    break;
                case "HZCBB2C":
                    bankName = "杭州银行";
                    break;
                case "CMBC":
                    bankName = "杭州银行";
                    break;
                case "BOCB2C":
                    bankName = "中国银行";
                    break;
                case "CMB":
                    bankName = "中国招商银行";
                    break;
                case "CITIC":
                    bankName = "中信银行";
                    break;
                default:
                    bankName = "支付宝";
                    break;
            }
        }
        else if (banks[0].ToUpper() == "TENPAY")
        {
            switch (banks[1].ToUpper())
            {
                case "0":
                    bankName = "财付通";

                    break;
                case "1001":
                    bankName = "招商银行";

                    break;
                case "1002":
                    bankName = "中国工商银行";

                    break;
                case "1003":
                    bankName = "中国建设银行";

                    break;
                case "1004":
                    bankName = "上海浦东发展银行";

                    break;
                case "1005":
                    bankName = "中国农业银行";

                    break;
                case "1006":
                    bankName = "中国民生银行";

                    break;
                case "1008":
                    bankName = "深圳发展银行";

                    break;
                case "1009":
                    bankName = "兴业银行";

                    break;
                case "1028":
                    bankName = "广州银联";

                    break;
                case "1032":
                    bankName = "   北京银行";

                    break;
                case "1020":
                    bankName = "   中国交通银行";

                    break;
                case "1022":
                    bankName = "   中国光大银行";

                    break;
                default:
                    bankName = "财付通";
                    break;
            }
        }
        else if (banks[0].ToUpper() == "51ZFK")
        {
            switch (banks[1].ToUpper())
            {
                case "SZX":
                    bankName = "神州行充值卡";
                    break;

                case "ZFK":
                    bankName = "51支付卡";
                    break;
            }
        }

        else if (banks[0].ToLower() == "007KA")
        {
            bankName = "神州行充值卡";
            return bankName;
        }
        return bankName;

    }
}
