using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;

public partial class WinQuery_Default : SitePageBase
{
    private static Dictionary<int, string> LotteryOpenedDay = new Dictionary<int, string>();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string LotteryTicaiID = "39, 9, 63, 64, 3, 65";
            string LotteryFucaiID = "5, 6, 13, 58, 59";
            string LotteryGaopingID = "29, 61, 62,70,28";
            string LotteryZucaiID = "1, 2, 15,74,75";
            this.Ticai.InnerHtml = BindNationalOpenInfo(LotteryTicaiID, "Ticai");
            this.Fucai.InnerHtml = BindNationalOpenInfo(LotteryFucaiID, "Fucai");
            this.Gaoping.InnerHtml = BindNationalOpenInfo(LotteryGaopingID, "Gaoping");
            this.Zucai.InnerHtml = BindNationalOpenInfo(LotteryZucaiID, "Zucai");
        }
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

    //获取开奖信息
    private DataTable GetNationalOpenInfo(string LotteryID, string LotteryType)
    {
        string Key = "NationalOpenInfo" + LotteryType;
        DataTable dt = Shove._Web.Cache.GetCacheAsDataTable(Key);

        if (dt == null)
        {
            StringBuilder sb = new StringBuilder();
            sb.AppendLine("select a.ID as IsuseID, b.ID as LotteryID, b.[Name] as LotteryName,a.[Name] as IsuseName, a.EndTime, a.WinLotteryNumber,c.TotalMoney,b.IntervalType from T_Isuses a ")
               .Append(" left join T_Lotteries as b on a.LotteryID=b.ID")
               .Append(" left join T_TotalMoney as c on c.IsuseID=a.ID")
               .Append(" where a.id in(select max(ID) from T_Isuses ")
               .Append(" where LotteryId in ( " + LotteryID + " ) and isopened=1 and ISNULL(WinLotteryNumber, '')<>'' group by LotteryId)");
            dt = Shove.Database.MSSQL.Select(sb.ToString());

            if (dt == null)
            {
                PF.GoError(ErrorNumber.DataReadWrite, "数据繁忙，请重试！", this.GetType().BaseType.FullName);
                return null;
            }
            Shove._Web.Cache.SetCache(Key, dt, 600);
        }

        return dt;
    }

    //绑定开奖信息
    private string BindNationalOpenInfo(string LotteryID, string LotteryType)
    {
        StringBuilder sb = new StringBuilder();
        DataTable dt = GetNationalOpenInfo(LotteryID, LotteryType);

        if (dt != null)
        {
            int num = 0;
            foreach (DataRow dr in dt.Rows)
            {
                string openDay = LoadOpenDay(Convert.ToInt32(dr["LotteryID"]));
                sb.AppendLine("<tr>")
                .AppendLine(" <td>" + dr["LotteryName"] + "</td>")
                .AppendLine("<td>" + dr["IsuseName"] + "期</td>")
                .AppendLine(" <td> " + dr["EndTime"] + "</td>")
                .AppendLine("<td style=\"text-align: left\">")
                .AppendLine("" + FormatWinNumber(dr["WinLotteryNumber"].ToString(), Convert.ToInt32(dr["LotteryID"])) + "")
                .AppendLine("</td>")
                .AppendLine("<td>" + dr["TotalMoney"] + "</td>")
                .AppendLine("<td>" + openDay + "</td>")
                .AppendLine("<td><a href=\"../TrendCharts/Default.aspx\">走势</a></td>")
                .AppendLine("<td><a href=\"../JoinUs/JoinAllBuy.aspx\">合买</a></td>")
                .AppendLine("<td><a href=\"../Lottery/buy.aspx\">投注</a></td>")
               .AppendLine(" </tr>");
                num++;
            }

        }
        return sb.ToString();
    }


    //格式化开奖号码
    //1，胜负彩的格式（SFC）：31030100111301
    //2，四场进球彩（JQC）：31032202
    //3，七星彩（QXC）：1234567
    //5，双色球（SSQ）：01 02 03 04 05 06 + 01 02 03 04
    //6，福彩3D（FC3D）：123
    //9，22选5（TC22X5）：01 02 03 04 05
    //13，七乐彩（QLC）：01 02 03 04 05 06 07 + 08
    //15，六场半全场（LCBQC）：310301001113
    //29，上海时时乐（SHSSL）：123
    //39，超级大乐透（TCCJDLT）：01 02 03 04 05 + 01 02
    //58，东方6+1（DF6J1）：123456+鼠
    //59，华东15选5（HD15X5）：01 02 03 04 05
    //61，江西时时彩（JXSSC）：12345
    //62，十一运夺金（SYYDJ）：01 02 03 04 05
    //63，数字排列3（SZPL3）：123
    //64，数字排列5（SZPL5）：12345
    //65，体彩31选7（TC31X7）：01 02 03 04 05 06 07 08 09 + 10
    private static string FormatWinNumber(string WinNumber, int LotteryID)
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
}
