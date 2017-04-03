<%@ WebHandler Language="C#" Class="Buy_Dg_Handler" %>

using System;
using System.Web;
using System.Text;
using Microsoft.JScript;
using System.Text.RegularExpressions;
using System.Web.SessionState;

using Shove.Database;

/// <summary>
/// 单场的投注处理程序
/// </summary>
public class Buy_Dg_Handler : IHttpHandler, IReadOnlySessionState
{

    public void ProcessRequest(HttpContext context)
    {
        context.Response.ContentType = "text/plain";
        Buy(context);
    }

    public bool IsReusable
    {
        get
        {
            return false;
        }
    }

    /// <summary>
    /// 购买彩票
    /// </summary>
    private void Buy(HttpContext context)
    {
        Users _User = Users.GetCurrentUser(1);
        if (_User == null)
        {
            context.Response.Write("您的登录信息丢失，请重新登录。");
            context.Response.End();
        }

        #region 获取表单数据

        string lotId = Shove._Web.Utility.GetRequest(context, "lotid");                         //彩票编号
        string playid = Shove._Web.Utility.GetRequest(context, "playid");                     //玩法
        string ggtypeid = Shove._Web.Utility.GetRequest(context, "ggtypeid");                   //过关方式（M串N）

        string codes = Shove._Web.Utility.GetRequest(context, "codes");                         //投注内容
        string zhushu = Shove._Web.Utility.GetRequest(context, "zhushu");                       //基本注数
        string multiple = Shove._Web.Utility.GetRequest(context, "beishu");                   //投注倍数
        string totalMoney = Shove._Web.Utility.GetRequest(context, "totalmoney");               //投注总金额

        #endregion


        #region 数据验证区

        //************局部变量

        //彩种信息
        int LotteryID = 0;              //彩种
        int PlayTypeID = 0;             //玩法
        double Price = 2.00;                  //彩票单价

        //方案信息
        int BaseCount = 0;              //投注基本注数
        int Multiple = 0;               //投注倍数，       
        int SumNum = 0;                 //总的注数（基本注数*倍数）
        double SumMoney = 0;            //方案总金额
        short SecrecyLevel = 0;         //彩票单价

        //验证数据格式是否正确
        try
        {
            LotteryID = int.Parse(lotId);
            PlayTypeID = int.Parse(playid);

            BaseCount = int.Parse(zhushu);
            Multiple = int.Parse(multiple);
            SumNum = BaseCount;
            SumMoney = double.Parse(totalMoney);
        }
        catch
        {
            context.Response.Write("输入有错误，请仔细检查。01");
            context.Response.End();
        }


        //验证彩种和玩法
        if (LotteryID != 72 || (PlayTypeID != 7201 && PlayTypeID != 7202 && PlayTypeID != 7203 && PlayTypeID != 7204))
        {
            context.Response.Write("输入有错误，请仔细检查。03");
            context.Response.End();
        }

        DateTime EndTime = DateTime.Now;

        if (EndTime.Hour < 9)
        {
            context.Response.Write("销售暂停，请您在销售时间内进行购买，谢谢!");
            context.Response.End();
        }

        if ("日六".IndexOf(new System.Globalization.CultureInfo("zh-CN").DateTimeFormat.GetAbbreviatedDayName(DateTime.Now.DayOfWeek)) >= 0)
        {
            EndTime = Shove._Convert.StrToDateTime(DateTime.Now.AddDays(1).ToShortDateString() + " 00:30:00", DateTime.Now.ToString());
        }
        else
        {
            EndTime = Shove._Convert.StrToDateTime(DateTime.Now.ToShortDateString() + " 22:30:00", DateTime.Now.ToString());
        }

        DAL.Tables.T_PlayTypes play = new DAL.Tables.T_PlayTypes();

        System.Data.DataTable table = play.Open("SystemEndAheadMinute", "id=" + PlayTypeID, "");

        if (table == null)
        {
            context.Response.Write("数据读取错误,请稍后再访问1111!");
            context.Response.End();
        }

        if (table.Rows.Count > 0)
        {
            double time = 0;

            time = double.Parse(table.Rows[0]["SystemEndAheadMinute"].ToString());

            EndTime = EndTime.AddMinutes(-time);
        }

        if (DateTime.Now.CompareTo(EndTime) >= 0)
        {
            context.Response.Write("销售暂停，请您在销售时间内进行购买，谢谢!");
            context.Response.End();
        }

        string BuyNumber = codes.Trim().Split(';')[1].ToString();

        string FireTeam = BuyNumber.Substring(1, BuyNumber.IndexOf('(') - 1).Trim();

        System.Data.DataTable dt = Shove.Database.MSSQL.Select( "SELECT StopSellTime from T_singleRate where MatchID=" + FireTeam);

        if ((dt == null) || (dt.Rows.Count == 0))
        {
            context.Response.Write("数据读取错误,请稍后再访问1111!");
            context.Response.End();
        }

        if (Shove._Convert.StrToDateTime(dt.Rows[0]["StopSellTime"].ToString(), DateTime.Now.AddDays(-1).ToString()).CompareTo(DateTime.Now) < 0)
        {
            context.Response.Write("您所选择的场次里面包含了已截止场次, 请重新选择!");
            context.Response.End();
        }

        //验证方案基本信息
        if (BaseCount < 1 || Multiple < 1 || SumMoney < 2 || SumNum < 1)
        {
            context.Response.Write("输入有错误，请仔细检查。05");
            context.Response.End();
        }

        if (SumMoney != BaseCount * Multiple * Price)
        {
            context.Response.Write("输入有错误，请仔细检查。06");
            context.Response.End();
        }

        //余额判断
        if (SumMoney > _User.Balance)
        {
            //SaveDataForAliBuy();
            context.Response.Write("您的余额不足，请充值后再投注！");
            context.Response.End();
        }

        if (SumMoney > PF.SchemeMaxBettingMoney)
        {
            context.Response.Write("投注金额不能大于" + PF.SchemeMaxBettingMoney.ToString() + "，谢谢！");
            context.Response.End();
        }

        #endregion

        #region 对彩票号码进行分析，判断注数

        SZJS.Lottery slsLottery = new SZJS.Lottery();
        string[] t_lotterys = SplitLotteryNumber(codes);

        if ((t_lotterys == null) || (t_lotterys.Length < 1))
        {
            context.Response.Write("选号发生异常，请重新选择号码投注，谢谢。(-694)");
            context.Response.End();
        }

        int ValidNum = 0;

        foreach (string str in t_lotterys)
        {
            string Number = slsLottery[72].AnalyseScheme(str, PlayTypeID);

            if (string.IsNullOrEmpty(Number))
            {
                continue;
            }

            string[] str_s = Number.Split('|');

            if (str_s == null || str_s.Length < 1)
            {
                continue;
            }

            ValidNum += Shove._Convert.StrToInt(str_s[str_s.Length - 1], 0);
        }

        if (ValidNum != SumNum)
        {
            context.Response.Write("选号发生异常，请重新选择号码投注，谢谢11。");
            context.Response.End();
        }

        #endregion

        if (PlayTypeID == 7201)
        {
            int SNumberCount = 0;
            int PNumberCount = 0;
            int FNumberCount = 0;
            string t_str = "";
            long MatchID = 0;
            
            string[] t_Number = codes.Trim().Split(';')[1].ToString().Split('|');

            StringBuilder sb = new StringBuilder();

            foreach (string str in t_Number)
            {
                SNumberCount = 0;
                PNumberCount = 0;
                FNumberCount = 0;

                if (str.IndexOf("[") >= 0)
                {
                    MatchID = Shove._Convert.StrToLong(str.Substring(str.IndexOf("[") + 1).Split('(')[0], 0);
                }
                else
                {
                    MatchID = Shove._Convert.StrToLong(str.Split('(')[0], 0);
                }

                t_str = str.Split('(')[1];

                if (t_str.IndexOf("1") >= 0)
                {
                    SNumberCount += 1;
                }

                if (t_str.IndexOf("2") >= 0)
                {
                    PNumberCount += 1;
                }

                if (t_str.IndexOf("3") >= 0)
                {
                    FNumberCount += 1;
                }

                sb.AppendLine("Update T_PassRate set SNumberCount = isnull(SNumberCount, 0) + " + SNumberCount.ToString() + ", PNumberCount = isnull(PNumberCount, 0) +" + PNumberCount.ToString() + ", FNumberCount = isnull(FNumberCount, 0) +" + FNumberCount.ToString() + " where MatchID = " + MatchID.ToString() + ";");
            }

            Shove.Database.MSSQL.ExecuteSQLScript(sb.ToString());
        }

        #region 投注区域

        long IsuseID = 0;

        dt = new DAL.Tables.T_Isuses().Open("ID", "LotteryID= 72", "EndTime desc");

        if (dt == null)
        {
           context.Response.Write("数据读取错误,请稍后再访问444!");
           context.Response.End();
        }

        IsuseID = Shove._Convert.StrToLong(dt.Rows[0]["ID"].ToString(), 0);

        //第二步：保存到数据库

        string ReturnDescription = "";
        long SchemeID = _User.InitiateScheme(IsuseID, PlayTypeID, "(无标题)", "", codes, "", Multiple, SumMoney, 0, 1, 1, "", SecrecyLevel, 0.04, ref ReturnDescription);
        if (SchemeID < 0)
        {
            context.Response.Write("方案提交失败。错误描述：" + ReturnDescription);
            context.Response.End();
        }

        context.Response.Write("true");

        #endregion
    }

    private string[] SplitLotteryNumber(string Number)
    {
        string[] s = Number.Split('\n');
        if (s.Length == 0)
            return null;
        for (int i = 0; i < s.Length; i++)
            s[i] = s[i].Trim();
        return s;
    }

}