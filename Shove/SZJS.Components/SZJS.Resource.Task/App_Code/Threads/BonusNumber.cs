using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using Shove.Database;

namespace SZJS.Resource.Task
{

    /// <summary>
    /// 奖期类
    /// </summary>
    class BonusNumber
    {
        private static Shove._IO.IniFile ini = new Shove._IO.IniFile(System.AppDomain.CurrentDomain.BaseDirectory + "Config.ini");


        #region 十一运夺金

        //十一运夺金每期的开奖时间间隔为15+7＝22分钟
        private static int intervalMin_SYYDJ = 22;

        //上一期的结束时间       
        private static DateTime lastIssueEndTime_SYYDJ = DateTime.MinValue;

        //获取上期的开奖号码
        public static void GetLastWinNumber_SYYDJ(string ConnectionString, string LotteryID)
        {
            //先获取间隔时间
            intervalMin_SYYDJ = Shove._Convert.StrToInt(ini.Read("Options", "IntervalMin"), 18);

            //如果上期的开了奖的结期时间加上22分钟，小于当前时间，那么就去数据库读取新的一期开奖号
            if (lastIssueEndTime_SYYDJ.AddMinutes(intervalMin_SYYDJ) < DateTime.Now)
            {
                new Log("System").Write("十一运夺金：" + lastIssueEndTime_SYYDJ.ToString());
                new Log("System").Write("十一运夺金：" + DateTime.Now.ToString() + "执行");

                StringBuilder sb = new StringBuilder();


                DataTable dt = MSSQL.Select(ConnectionString, "SELECT TOP 100 Name,WinLotteryNumber,EndTime FROM dbo.T_Isuses WHERE LotteryId=62 and GETDATE()>EndTime AND ISNULL(WinLotteryNumber, '')<>'' ORDER BY EndTime DESC");

                if (dt != null && dt.Rows.Count > 0)
                {
                    int i = 1;

                    foreach (DataRow dr in dt.Rows)
                    {
                        if (i == 1)
                        {
                            //最新开奖期号和奖号
                            sb.Append("var bonusNumber = \"<table cellspacing='5' cellpadding='0' style='text-align: center;'><tr><td  height='25' class='hui12' style='font-weight: bold;'>")
                           .Append(dr["Name"].ToString())
                           .Append("&nbsp;WORD_ONE:")
                           .Append(FormatWinNumber(LotteryID, dr["WinLotteryNumber"].ToString()))
                           .Append("<td class='hui12' style='padding-left:10px'>")
                           .Append(DataBindIsuseCount(ConnectionString, Shove._Convert.StrToInt(LotteryID, 0)))
                           .Append("</td></td>")
                           .Append("</tr></table>")
                           .AppendLine("\";");

                            //更新上期开了奖的结期时间
                            lastIssueEndTime_SYYDJ = DateTime.Now;

                            //获取开奖列表
                            sb.Append("var bonusNumbers = \"");

                        }

                        sb.Append("<tr>")
                        .Append("<td height=\\\"22\\\" align=\\\"center\\\" bgcolor=\\\"#FFFFFF\\\" class=\\\"blue12\\\">")
                        .Append(dr["Name"].ToString())
                        .Append("</td>")
                        .Append("<td align=\\\"center\\\" bgcolor=\\\"#FFFFFF\\\" class=\\\"hui12\\\">")
                        .Append(Shove._Convert.StrToDateTime(dr["EndTime"].ToString(), DateTime.Now.ToString()).ToString("HH:mm"))
                        .Append("</td>")
                        .Append("<td align=\\\"center\\\" bgcolor=\\\"#FFFFFF\\\" class=\\\"red2\\\">")
                        .Append(dr["WinLotteryNumber"].ToString())
                        .Append("</td>")
                        .Append("</tr>");

                        if (i % 10 == 0 && i != dt.Rows.Count)
                        {
                            sb.Append("|");
                        }

                        i++;

                    }

                    sb.AppendLine("\";");

                    new JsFile(@ini.Read("Options", "JsFilePath"), "BonusNumber_SYYDJ.js").Write(sb.ToString());
                }

            }
        }

        #endregion

        #region 江西时时彩

        //江西时时彩每期的开奖时间间隔为10分钟
        private static int intervalMin_JXSSC = 10;

        //上一期的结束时间       
        private static DateTime lastIssueEndTime_JXSSC = DateTime.MinValue;

        //获取上期的开奖号码
        public static void GetLastWinNumber_JXSSC(string ConnectionString, string LotteryID)
        {

            //如果上期的开了奖的结期时间加上10分钟，小于当前时间，那么就去数据库读取新的一期开奖号
            if (lastIssueEndTime_JXSSC.AddMinutes(intervalMin_JXSSC) < DateTime.Now)
            {
                new Log("System").Write("江西时时彩：" + lastIssueEndTime_JXSSC.ToString());
                new Log("System").Write("江西时时彩：" + DateTime.Now.ToString() + "执行");

                StringBuilder sb = new StringBuilder();

                DataTable dt = MSSQL.Select(ConnectionString, "SELECT TOP 100 ID,Name,WinLotteryNumber,StartTime,EndTime,IsOpened FROM dbo.T_Isuses WHERE LotteryId=61 and GETDATE()>EndTime AND ISNULL(WinLotteryNumber, '')<>'' ORDER BY EndTime DESC");
                if (dt != null && dt.Rows.Count > 0)
                {
                    int i = 1;
                    foreach (DataRow dr in dt.Rows)
                    {
                        if (i == 1)
                        {
                            //最新开奖期号和奖号
                            sb.Append("var bonusNumber = \"<table cellspacing='5' cellpadding='0' style='text-align: center;'><tr><td  height='25' class='hui12' style='font-weight: bold;'>")
                            .Append(dr["Name"].ToString())
                            .Append("&nbsp;WORD_ONE:")
                            .Append(FormatWinNumber(LotteryID, dr["WinLotteryNumber"].ToString()))
                            .Append("<td class='hui12' style='padding-left:10px'>")
                            .Append(DataBindIsuseCount(ConnectionString, Shove._Convert.StrToInt(LotteryID, 0)))
                            .Append("</td></td>")
                            .Append("</tr></table>")
                            .AppendLine("\";");

                            //更新上期开了奖的结期时间
                            lastIssueEndTime_JXSSC = DateTime.Now;

                            sb.Append("var bonusNumbers = \"");
                        }

                        sb.Append("<tr>")
                        .Append("<td height=\\\"22\\\" align=\\\"center\\\" bgcolor=\\\"#FFFFFF\\\" class=\\\"blue12\\\">")
                        .Append(dr["Name"].ToString())
                        .Append("</td>")
                        .Append("<td align=\\\"center\\\" bgcolor=\\\"#FFFFFF\\\" class=\\\"hui12\\\">")
                        .Append(Shove._Convert.StrToDateTime(dr["EndTime"].ToString(), DateTime.Now.ToString()).ToString("HH:mm"))
                        .Append("</td>")
                        .Append("<td align=\\\"center\\\" bgcolor=\\\"#FFFFFF\\\" class=\\\"red2\\\">")
                        .Append(dr["WinLotteryNumber"].ToString())
                        .Append("</td>")
                        .Append("</tr>");

                        if (i % 10 == 0 && i != dt.Rows.Count)
                        {
                            sb.Append("|");
                        }

                        i++;

                    }

                    sb.AppendLine("\";");

                    new JsFile(@ini.Read("Options", "JsFilePath"), "BonusNumber_JXSSC.js").Write(sb.ToString());
                }
            }

        }


        #endregion

        #region 11选5

        //十一运夺金每期的开奖时间间隔为15+7＝22分钟
        private static int intervalMin_11X5 = 22;

        //上一期的结束时间       
        private static DateTime lastIssueEndTime_11X5 = DateTime.MinValue;

        //获取上期的开奖号码
        public static void GetLastWinNumber_11X5(string ConnectionString, string LotteryID)
        {
            //先获取间隔时间
            intervalMin_11X5 = Shove._Convert.StrToInt(ini.Read("Options", "IntervalMin"), 18);

            //如果上期的开了奖的结期时间加上22分钟，小于当前时间，那么就去数据库读取新的一期开奖号
            if (lastIssueEndTime_11X5.AddMinutes(intervalMin_11X5) < DateTime.Now)
            {
                new Log("System").Write("11选5：" + lastIssueEndTime_11X5.ToString());
                new Log("System").Write("11选5：" + DateTime.Now.ToString() + "执行");

                StringBuilder sb = new StringBuilder();


                DataTable dt = MSSQL.Select(ConnectionString, "SELECT TOP 100 Name,WinLotteryNumber,EndTime FROM dbo.T_Isuses WHERE LotteryId=70 and GETDATE()>EndTime AND ISNULL(WinLotteryNumber, '')<>'' ORDER BY EndTime DESC");

                if (dt != null && dt.Rows.Count > 0)
                {
                    int i = 1;

                    foreach (DataRow dr in dt.Rows)
                    {
                        if (i == 1)
                        {
                            //最新开奖期号和奖号
                            sb.Append("var bonusNumber = \"<table cellspacing='5' cellpadding='0' style='text-align: center;'><tr><td  height='25' class='hui12' style='font-weight: bold;'>")
                           .Append(dr["Name"].ToString())
                           .Append("&nbsp;WORD_ONE:")
                           .Append(FormatWinNumber(LotteryID, dr["WinLotteryNumber"].ToString()))
                           .Append("<td class='hui12' style='padding-left:10px'>")
                           .Append(DataBindIsuseCount(ConnectionString, Shove._Convert.StrToInt(LotteryID, 0)))
                           .Append("</td></td>")
                           .Append("</tr></table>")
                           .AppendLine("\";");

                            //更新上期开了奖的结期时间
                            lastIssueEndTime_11X5 = DateTime.Now;

                            //获取开奖列表
                            sb.Append("var bonusNumbers = \"");

                        }

                        sb.Append("<tr>")
                        .Append("<td height=\\\"22\\\" align=\\\"center\\\" bgcolor=\\\"#FFFFFF\\\" class=\\\"blue12\\\">")
                        .Append(dr["Name"].ToString())
                        .Append("</td>")
                        .Append("<td align=\\\"center\\\" bgcolor=\\\"#FFFFFF\\\" class=\\\"hui12\\\">")
                        .Append(Shove._Convert.StrToDateTime(dr["EndTime"].ToString(), DateTime.Now.ToString()).ToString("HH:mm"))
                        .Append("</td>")
                        .Append("<td align=\\\"center\\\" bgcolor=\\\"#FFFFFF\\\" class=\\\"red2\\\">")
                        .Append(dr["WinLotteryNumber"].ToString())
                        .Append("</td>")
                        .Append("</tr>");

                        if (i % 10 == 0 && i != dt.Rows.Count)
                        {
                            sb.Append("|");
                        }

                        i++;

                    }

                    sb.AppendLine("\";");

                    new JsFile(@ini.Read("Options", "JsFilePath"), "BonusNumber_JX11X5.js").Write(sb.ToString());
                }

            }
        }

        #endregion

        #region 重庆时时彩

        //江西时时彩每期的开奖时间间隔为10分钟
        private static int intervalMin_CQSSC = 5;

        //上一期的结束时间       
        private static DateTime lastIssueEndTime_CQSSC = DateTime.MinValue;

        //获取上期的开奖号码
        public static void GetLastWinNumber_CQSSC(string ConnectionString, string LotteryID)
        {

            //如果上期的开了奖的结期时间加上10分钟，小于当前时间，那么就去数据库读取新的一期开奖号
            if (lastIssueEndTime_CQSSC.AddMinutes(intervalMin_CQSSC) < DateTime.Now)
            {
                new Log("System").Write("重庆时时彩：" + lastIssueEndTime_CQSSC.ToString());
                new Log("System").Write("重庆时时彩：" + DateTime.Now.ToString() + "执行");

                StringBuilder sb = new StringBuilder();

                DataTable dt = MSSQL.Select(ConnectionString, "SELECT TOP 100 ID,Name,WinLotteryNumber,StartTime,EndTime,IsOpened FROM dbo.T_Isuses WHERE LotteryId=28 and GETDATE()>EndTime AND ISNULL(WinLotteryNumber, '')<>'' ORDER BY EndTime DESC");
                if (dt != null && dt.Rows.Count > 0)
                {
                    int i = 1;
                    foreach (DataRow dr in dt.Rows)
                    {
                        if (i == 1)
                        {
                            //最新开奖期号和奖号
                            sb.Append("var bonusNumber = \"<table cellspacing='5' cellpadding='0' style='text-align: center;'><tr><td  height='25' class='hui12' style='font-weight: bold;'>")
                            .Append(dr["Name"].ToString())
                            .Append("&nbsp;WORD_ONE:")
                            .Append(FormatWinNumber(LotteryID, dr["WinLotteryNumber"].ToString()))
                            .Append("<td class='hui12' style='padding-left:10px'>")
                            .Append(DataBindIsuseCount(ConnectionString, Shove._Convert.StrToInt(LotteryID, 0)))
                            .Append("</td></td>")
                            .Append("</tr></table>")
                            .AppendLine("\";");

                            //更新上期开了奖的结期时间
                            lastIssueEndTime_CQSSC = DateTime.Now;

                            sb.Append("var bonusNumbers = \"");
                        }

                        sb.Append("<tr>")
                        .Append("<td height=\\\"22\\\" align=\\\"center\\\" bgcolor=\\\"#FFFFFF\\\" class=\\\"blue12\\\">")
                        .Append(dr["Name"].ToString())
                        .Append("</td>")
                        .Append("<td align=\\\"center\\\" bgcolor=\\\"#FFFFFF\\\" class=\\\"hui12\\\">")
                        .Append(Shove._Convert.StrToDateTime(dr["EndTime"].ToString(), DateTime.Now.ToString()).ToString("HH:mm"))
                        .Append("</td>")
                        .Append("<td align=\\\"center\\\" bgcolor=\\\"#FFFFFF\\\" class=\\\"red2\\\">")
                        .Append(dr["WinLotteryNumber"].ToString())
                        .Append("</td>")
                        .Append("</tr>");

                        if (i % 10 == 0 && i != dt.Rows.Count)
                        {
                            sb.Append("|");
                        }

                        i++;

                    }

                    sb.AppendLine("\";");

                    new JsFile(@ini.Read("Options", "JsFilePath"), "BonusNumber_CQSSC.js").Write(sb.ToString());
                }
            }

        }


        #endregion

        #region 公共函数

        /// <summary>
        /// 格式化开奖号码
        /// </summary>
        /// <param name="LotteryID"></param>
        /// <param name="winNumber"></param>
        /// <returns></returns>
        private static string FormatWinNumber(string LotteryID, string winNumber)
        {
            StringBuilder sb = new StringBuilder();

            switch (LotteryID)
            {
                case "28":

                    if (winNumber.Length > 0)
                    {
                        for (int i = 0; i < winNumber.Length; i++)
                        {
                            sb.Append("</td><td align='center' class='white14' style='width:25px;background-image: url(/Home/Room/Images/zfb_redball.gif)'>").Append(winNumber.Substring(i, 1));
                        }
                    }

                    break;

                case "61":

                    if (winNumber.Length > 0)
                    {
                        for (int i = 0; i < winNumber.Length; i++)
                        {
                            sb.Append("</td><td align='center' class='white14' style='width:25px;background-image: url(/Home/Room/Images/zfb_redball.gif)'>").Append(winNumber.Substring(i, 1));
                        }
                    }

                    break;

                case "62":
                    if (winNumber.Length > 0)
                    {
                        string[] number = winNumber.Split(' ');

                        for (int i = 0; i < number.Length && i < 5; i++)
                        {
                            sb.Append("</td><td align='center' class='white14' style='width:25px;background-image: url(/Home/Room/Images/zfb_redball.gif)'>").Append(number[i]);
                        }
                    }

                    break;

                case "70":
                    if (winNumber.Length > 0)
                    {
                        string[] number = winNumber.Split(' ');

                        for (int i = 0; i < number.Length && i < 5; i++)
                        {
                            sb.Append("</td><td align='center' class='white14' style='width:25px;background-image: url(/Home/Room/Images/zfb_redball.gif)'>").Append(number[i]);
                        }
                    }

                    break;

            }

            return sb.ToString();

        }
        /// <summary>
        /// 获取已开奖期数
        /// </summary>
        /// <param name="ConnectionString"></param>
        /// <param name="lotteryID"></param>
        /// <returns></returns>
        private static string DataBindIsuseCount(string ConnectionString, int lotteryID)
        {

            string[] temp = DAL.Functions.F_GetIsuseCount(ConnectionString, lotteryID).Split(',');

            if (temp == null || temp.Length < 2)
            {
                return "";
            }

            return "WORD_TWO&nbsp;<span class='red12'>" + temp[0] + "</span>&nbsp;WORD_THREE&nbsp;<span class='red12'>" + temp[1] + "</span>&nbsp;WORD_FOUR";
        }


        #endregion

    }
}
