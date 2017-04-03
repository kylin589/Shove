using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Data;
using Shove.Database;

public partial class WinQuery_OpenInfoList : SitePageBase
{

    public string LotteryName = "";
    public int LotteryID = 5;
    public string BuyUrl = "";
    public string TrendUrl = "";
    public string IsusesName = "";
    private string LotteryCode = "";
    public string tbWinNumber = "";
    public string lbWinInfo = "";
    private void GoToBuy()
    {
        if (LotteryID == 5)
        {
            BuyUrl = "../Lottery/BuySSQ.aspx";
            TrendUrl = "../TrendCharts/SSQ/SSQ_CGXMB.aspx";
            LotteryCode = "logo_ssq.gif";
        }
        else if (LotteryID == 6)
        {
            BuyUrl = "../Lottery/Buy3D.aspx";
            TrendUrl = "../TrendCharts/FC3D/FC3D_ZHXT.aspx";
            LotteryCode = "logo_6.gif";
        }
        else if (LotteryID == 59)
        {
            BuyUrl = "../Lottery/Buy15X5.aspx";
            TrendUrl = "../TrendCharts/HD15X5/C15X5_CGXMB.aspx";
            LotteryCode = "logo_59.gif";
        }
        else if (LotteryID == 13)
        {
            BuyUrl = "../Lottery/BuyQLC.aspx";
            TrendUrl = "../TrendCharts/QLC/7LC_CGXMB.aspx";
            LotteryCode = "logo_13.gif";
        }
        else if (LotteryID == 58)
        {
            BuyUrl = "../Lottery/BuyDF6J1.aspx";
            TrendUrl = "../TrendCharts/DF6J1/DF61_ZHFB.aspx";
            LotteryCode = "logo_58.gif";
        }
        else if (LotteryID == 39)
        {
            BuyUrl = "../Lottery/BuyCJDLT.aspx";
            TrendUrl = "../TrendCharts/CJDLT/CJDLT_HMFB.aspx";
            LotteryCode = "logo_39.gif";
        }
        else if (LotteryID == 63)
        {
            BuyUrl = "../Lottery/BuyPL3.aspx";
            TrendUrl = "../TrendCharts/PL3/PL3_HMFB.aspx";
            LotteryCode = "logo_63.gif";
        }
        else if (LotteryID == 3)
        {
            BuyUrl = "../Lottery/BuyQXC.aspx";
            TrendUrl = "../TrendCharts/7Xing/7X_HMFB.aspx";
            LotteryCode = "qxc_logo.gif";
        }
        else if (LotteryID == 64)
        {
            BuyUrl = "../Lottery/BuyPL5.aspx";
            TrendUrl = "../TrendCharts/PL5/PL5_KJFB.aspx";
            LotteryCode = "logo_64.gif";
        }
        else if (LotteryID == 9)
        {
            BuyUrl = "../Lottery/Buy22X5.aspx";
            TrendUrl = "../TrendCharts/TC22X5/22X5_HMFB.aspx";
            LotteryCode = "logo_9.gif";
        }
        else if (LotteryID == 65)
        {
            BuyUrl = "../Lottery/Buy31X7.aspx";
            TrendUrl = "../TrendCharts/SSQ/SSQ_CGXMB.aspx";
            LotteryCode = "logo_65.gif";
        }
        else if (LotteryID == 29)
        {
            BuyUrl = "../Lottery/BuySSL.aspx";
            TrendUrl = "../TrendCharts/SHSSL/SHSSL_ZHFB.aspx";
            LotteryCode = "logo_29.gif";
        }
        else if (LotteryID == 62)
        {
            BuyUrl = "../Lottery/BuySYYDJ.aspx";
            TrendUrl = "../TrendCharts/SYYDJ/SYDJ_FBZS.aspx";
            LotteryCode = "logo_70.gif";
        }
        else if (LotteryID == 74)
        {
            BuyUrl = "../Lottery/BuySFC.aspx";
            TrendUrl = "../TrendCharts/SSQ/SSQ_CGXMB.aspx";
            LotteryCode = "logo_1.gif";
        }
        else if (LotteryID == 75)
        {
            BuyUrl = "../Lottery/BuySFC9_D.aspx";
            TrendUrl = "../TrendCharts/SSQ/SSQ_CGXMB.aspx";
            LotteryCode = "rx9c_logo.gif";
        }
        else if (LotteryID == 2)
        {
            BuyUrl = "../Lottery/BuyJQC.aspx";
            TrendUrl = "../TrendCharts/SSQ/SSQ_CGXMB.aspx";
            LotteryCode = "scjqc_logo.gif";
        }
        else if (LotteryID == 15)
        {
            BuyUrl = "../Lottery/BuyLCBQC.aspx";
            TrendUrl = "../TrendCharts/SSQ/SSQ_CGXMB.aspx";
            LotteryCode = "6cbqc_logo.gif";
        }
        else if (LotteryID == 61)
        {
            BuyUrl = "../Lottery/BuySSC.aspx";
            TrendUrl = "../TrendCharts/JXSSC/SSC_5X_ZHFB.aspx";
            LotteryCode = "cz_logo_ssc.gif";
        }
        else if (LotteryID == 28)
        {
            BuyUrl = "../Lottery/BuyCQSSC.aspx";
            TrendUrl = "../TrendCharts/JXSSC/SSC_5X_ZHFB.aspx";
            LotteryCode = "cq_ssc.gif";
        }
        else if (LotteryID == 70)
        {
            BuyUrl = "../Lottery/BuyJX11x5.aspx";
            TrendUrl = "../TrendCharts/SYYDJ/SYDJ_FBZS.aspx";
            LotteryCode = "11x5_logo.gif";
        }
    }

    private static Dictionary<int, string> LotteryOpenedDay = new Dictionary<int, string>();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            LotteryID = Shove._Convert.StrToInt(Shove._Web.Utility.GetRequest("LotteryID"), 5);

            if (!DataCache.Lotteries.ContainsKey(LotteryID))
            {
                LotteryID = DataCache.Lotteries.First().Key;
            }
            GoToBuy();
            LotteryName = DataCache.Lotteries[LotteryID];

            HidLotteryID.Value = LotteryID.ToString();

            BindOpenInfoList(LotteryID, LotteryCode);

            long IsuseID = Shove._Convert.StrToLong(Shove._Web.Utility.GetRequest("IsuseID"), 0);
            HidIsuseID.Value = IsuseID.ToString();

            long PlayTypeID = Shove._Convert.StrToLong(Shove._Web.Utility.GetRequest("PlayTypeID"), 0);
            HidPlayType.Value = PlayTypeID.ToString();
            BindDataForIsuses(LotteryID);
            lbWinDay.Text ="<span style=\"color:red\">"+LoadOpenDay(Convert.ToInt32(LotteryID))+"</span>";
        }
    }

    private void BindOpenInfoList(int LotteryID, string LotteryCode)
    {
        StringBuilder sb = new StringBuilder();
        sb.Append("");
        string IsuseName = "";
        string WinNumber = "";
        DataTable dt = GetWinNumber(LotteryID, LotteryCode);

        sb.Append("<table width='100%' border='0' cellspacing='0' cellpadding='0'>");
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            IsuseName = dt.Rows[i]["Name"].ToString();
            WinNumber = dt.Rows[i]["WinLotteryNumber"].ToString();
       sb.AppendLine("<tr><td width='100%' height='28'>")
            .Append("&#9642;&nbsp;第&nbsp;<em style=\"color:red\">" + IsuseName + "</em><em>&nbsp;期&nbsp;&nbsp;&nbsp;&nbsp;</em>")
          .Append("<em>" + WinNumber + "</em>")
          .AppendLine("</td></tr>");
        }
       sb.Append("</table>");
        LatestOpenInfo.InnerHtml = sb.ToString();
    }

    //绑定开奖号码
    private DataTable GetWinNumber(int LotteryID, string LotteryCode)
    {
        string key = LotteryCode + "WinNumber" + LotteryID.ToString();
        DataTable dt = Shove._Web.Cache.GetCacheAsDataTable(key);

        if (dt == null || dt.Rows.Count == 0)
        {
            dt = new DAL.Tables.T_Isuses().Open("top 10 ID, Name, WinLotteryNumber, EndTime", "LotteryID=" + LotteryID + " and IsOpened = 1 and IsNull(WinLotteryNumber,'')<>''", "EndTime Desc");

            if (dt == null)
            {
                return null;
            }

            if (dt.Rows.Count > 0)
            {
                Shove._Web.Cache.SetCache(key, dt, 600);
            }
        }

        return dt;
    }

    private void BindDataForIsuses(int LotteryID)
    {
        string CacheKey = "Isuses";
        DataTable dt = Shove._Web.Cache.GetCacheAsDataTable(CacheKey);

        if (dt == null)
        {
            dt = MSSQL.Select("select ID,EndTime,WinLotteryNumber,OpenAffiche,Name,LotteryID from T_Isuses where IsOpened = 1 and EndTime < GETDATE() order by EndTime desc");
            if (dt == null)
            {
                PF.GoError(ErrorNumber.NoData, "数据库繁忙，请重试", this.GetType().FullName);

                return;
            }

            Shove._Web.Cache.SetCache(CacheKey, dt, 600);
        }

        ddlIsuses.Items.Clear();

        DataRow[] drIsuse = dt.Select("LotteryID=" + LotteryID.ToString());

        foreach (DataRow dr in drIsuse)
        {
            ListItem li = new ListItem(dr["Name"].ToString(), dr["ID"].ToString());

            ddlIsuses.Items.Add(li);
        }

        imgLogo.Src = "../Home/Room/Images/" + LotteryCode;

        int IsuseID = Shove._Convert.StrToInt(HidIsuseID.Value, 0);

        if (ddlIsuses.Items.Count > 0)
        {
            if (ddlIsuses.Items.FindByValue(IsuseID.ToString()) != null)
            {
                ddlIsuses.SelectedValue = IsuseID.ToString();
            }

            lbIsuse.Text = ddlIsuses.SelectedItem.Text.Trim();
            IsusesName = lbIsuse.Text;

            HidIsuseID.Value = ddlIsuses.SelectedValue;

            string CacheKeyIsusess = "Isuses";
            DataTable dtIsusess = Shove._Web.Cache.GetCacheAsDataTable(CacheKeyIsusess);

            if (dtIsusess == null)
            {
                dtIsusess = MSSQL.Select("select ID,EndTime,WinLotteryNumber,OpenAffiche,Name,LotteryID from T_Isuses where IsOpened = 1 and EndTime < GETDATE() order by EndTime desc");
                if (dtIsusess == null || dtIsusess.Rows.Count < 1)
                {
                    PF.GoError(ErrorNumber.NoData, "数据库繁忙，请重试", this.GetType().FullName);

                    return;
                }

                Shove._Web.Cache.SetCache(CacheKeyIsusess, dtIsusess, 600);
            }

            DataRow Isuse = dtIsusess.Select("ID = " + ddlIsuses.SelectedValue)[0];

            lbOpenDate.Text = Convert.ToDateTime(Isuse["EndTime"]).ToString("yyyy年MM月dd日");
            tbWinNumber = FormatWinNumber(Shove._Convert.StrToInt(HidLotteryID.Value, 5), Isuse["WinLotteryNumber"].ToString());
            lbWinInfo = Isuse["OpenAffiche"].ToString();
            BindDataForPlayTypes(int.Parse(HidLotteryID.Value));
        }
    }

    private void BindDataForPlayTypes(int LotteryID)
    {
        //玩法信息缓存 600 秒
        string CacheKey = "dtPlayTypes_" + LotteryID.ToString();
        DataTable dtPlayTypes = Shove._Web.Cache.GetCacheAsDataTable(CacheKey);

        if (dtPlayTypes == null)
        {
            dtPlayTypes = new DAL.Tables.T_PlayTypes().Open("", "LotteryID in (" + (_Site.UseLotteryList == "" ? "-1" : _Site.UseLotteryList) + ") and LotteryID = " + LotteryID.ToString(), "[ID]");

            if (dtPlayTypes == null || dtPlayTypes.Rows.Count < 1)
            {
                PF.GoError(ErrorNumber.NoData, "数据库繁忙，请重试", this.GetType().FullName);

                return;
            }

            Shove._Web.Cache.SetCache(CacheKey, dtPlayTypes, 600);
        }

        ddlPlayTypes.Items.Clear();
        ddlPlayTypes.Items.Add(new ListItem("全部玩法", "0"));

        foreach (DataRow dr in dtPlayTypes.Rows)
        {
            ListItem li = new ListItem(dr["Name"].ToString(), dr["ID"].ToString());

            ddlPlayTypes.Items.Add(li);
        }

        int PlayTypeID = Shove._Convert.StrToInt(Shove._Web.Utility.GetRequest("PlayTypeID"), 0);

        if (ddlPlayTypes.Items.Count > 0)
        {
            if (ddlPlayTypes.Items.FindByValue(PlayTypeID.ToString()) != null)
            {
                ddlPlayTypes.SelectedValue = PlayTypeID.ToString();
            }

            HidPlayType.Value = ddlPlayTypes.SelectedValue;
        }
    }

    protected void ddlIsuses_SelectedIndexChanged(object sender, EventArgs e)
    {
        Response.Redirect("OpenInfoList.aspx?LotteryID=" + HidLotteryID.Value + "&IsuseID=" + ddlIsuses.SelectedValue + "");
    }

    protected void ddlPlayTypes_SelectedIndexChanged(object sender, EventArgs e)
    {
        Response.Redirect("OpenInfoList.aspx?LotteryID=" + HidLotteryID.Value + "&IsuseID=" + HidIsuseID.Value + "&PlayTypeID=" + ddlPlayTypes.SelectedValue + "");
    }
    private static string FormatWinNumber(int LotteryID, string WinNumber)
    {
        String rightNumber = "";
        if (LotteryID == 6 || LotteryID == 63 || LotteryID == 64 || LotteryID == 3 || LotteryID == 29 || LotteryID == 61 || LotteryID == 28)
        {
            for (int j = 0; j < WinNumber.Length; j++)
            {
                rightNumber += "<span>" + WinNumber.Substring(j, 1) + "</span>";
            }
        }
        else if (LotteryID == 5 || LotteryID == 13 || LotteryID == 65)
        {
            string winNumbers = WinNumber.Replace(" + ", " ");
            string[] numbers = winNumbers.Split(' ');
            rightNumber = "";
            for (int i = 0; i < numbers.Length; i++)
            {
                if (i < numbers.Length - 1)
                {
                    rightNumber += " <span>" + numbers[i] + "</span>";
                }
                else
                {
                    rightNumber += "<span style=\"background-image: url('../Home/Room/Images/zfb_blueball.gif'); margin-left: 10px;\">" + numbers[i] + "</span>";
                }
            }
        }
        else if (LotteryID == 9 || LotteryID == 62 || LotteryID == 59 || LotteryID == 70)
        {
            string[] numbers = WinNumber.Split(' ');
            for (int i = 0; i < numbers.Length; i++)
            {
                rightNumber += "<span>" + numbers[i] + "</span>";
            }
        }
        else if (LotteryID == 58)
        {
            string winNumbers = WinNumber.Replace("+", "");
            for (int j = 0; j < winNumbers.Length - 1; j++)
            {
                rightNumber += "<span>" + winNumbers.Substring(j, 1) + "</span>";
            }
            rightNumber += "<span style=\"background-image: url('../Home/Room/Images/zfb_blueball.gif'); margin-left: 10px;\">" + winNumbers.Substring(winNumbers.Length - 1, 1) + "</span>";

        }
        else if (LotteryID == 39)
        {
            string winNumbers = WinNumber.Replace(" + ", " ");
            string[] numbers = winNumbers.Split(' ');
            rightNumber = "";
            for (int i = 0; i < numbers.Length; i++)
            {
                if (i < numbers.Length - 2)
                {
                    rightNumber += "<span>" + numbers[i] + "</span>";
                }
                else
                {
                    rightNumber += "<span style=\"background-image: url('../Home/Room/Images/zfb_blueball.gif'); margin-left: 10px;\">" + numbers[i] + "</span>";
                }
            }
        }
        else
        {
            for (int j = 0; j < WinNumber.Length; j++)
            {
                rightNumber += "<span>" + WinNumber.Substring(j, 1) + "</span>";
            }
        }

        return rightNumber;
    }

    private string LoadOpenDay(int LotteryID)
    {
        if (LotteryID == 59 || LotteryID == 9 || LotteryID == 63 || LotteryID == 64 || LotteryID == 6)
        {
            LotteryOpenedDay[LotteryID] = "每日";
        }
        else if (LotteryID == 5)
        {
            LotteryOpenedDay[LotteryID] = "二 四 日 ";
        }
        else if (LotteryID == 39 || LotteryID == 58)
        {
            LotteryOpenedDay[LotteryID] = "一 三 六 ";
        }
        else if (LotteryID == 13)
        {
            LotteryOpenedDay[LotteryID] = "一 三 五 ";
        }
        else if (LotteryID == 3)
        {
            LotteryOpenedDay[LotteryID] = "二 五 日 ";
        }
        else if (LotteryID == 65)
        {
            LotteryOpenedDay[LotteryID] = "一 四 六";
        }
        else if (LotteryID == 1 || LotteryID == 2 || LotteryID == 15 || LotteryID == 74 || LotteryID == 75)
        {
            LotteryOpenedDay[LotteryID] = "不定期";
        }
        else if (LotteryID == 61)
        {
            LotteryOpenedDay[LotteryID] = "每天84期";
        }
        else if (LotteryID == 62 || LotteryID == 70)
        {
            LotteryOpenedDay[LotteryID] = "每天65期";
        }
        else if (LotteryID == 29)
        {
            LotteryOpenedDay[LotteryID] = "每天23期";
        }
        else if (LotteryID == 28)
        {
            LotteryOpenedDay[LotteryID] = "每天120期";
        }

        return LotteryOpenedDay[LotteryID];

    }

}