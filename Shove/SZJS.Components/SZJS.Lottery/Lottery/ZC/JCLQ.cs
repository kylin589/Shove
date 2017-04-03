using System;
using System.Collections;
using System.Text;
using System.Text.RegularExpressions;
using System.IO;
using System.Data;

namespace SZJS
{
    public partial class Lottery
    {
        /// <summary>
        /// 四场进球彩
        /// </summary>
        public partial class JCLQ : LotteryBase
        {
            #region 静态变量
            public const int PlayType_SF = 7301;
            public const int PlayType_RFSF = 7302;
            public const int PlayType_SFC = 7303;
            public const int PlayType_DXF = 7304;

            public const int ID = 73;
            public const string sID = "73";
            public const string Name = "竞彩篮球";
            public const string Code = "JCLQ";
            public const double MaxMoney = 300000000;
            #endregion

            public JCLQ()
            {
                id = 73;
                name = "竞彩篮球";
                code = "JCLQ";
            }

            public override bool CheckPlayType(int play_type)
            {
                return ((play_type >= 7301) && (play_type <= 7304));
            }

            public override PlayType[] GetPlayTypeList()
            {
                PlayType[] Result = new PlayType[4];

                Result[0] = new PlayType(PlayType_SF, "胜负");
                Result[1] = new PlayType(PlayType_RFSF, "让分胜负");
                Result[2] = new PlayType(PlayType_SFC, "胜分差");
                Result[3] = new PlayType(PlayType_DXF, "大小分");

                return Result;
            }

            public override string BuildNumber(int Num)	//id = 73
            {
                return "";
            }

            public override string[] ToSingle(string Number, ref string CanonicalNumber, int PlayType)	//复式取单式, 后面 ref 参数是将彩票规范化，如：103(00)... 变成1030...
            {
                //此方法的CompetitionCount表示本期的比赛的总场数

                //string Scheme = Number;  //方案字符串
                CanonicalNumber = "";
                int SchemeLength = Number.Split(';').Length;
                if (SchemeLength != 3)
                {
                    CanonicalNumber = "";
                    return null;
                }

                string strPlayType = Number.Trim().Split(';')[0].ToString();
                string BuyNumber = Number.Trim().Split(';')[1].ToString();
                string Numbers = BuyNumber.Substring(1, BuyNumber.Length - 1).Substring(0, BuyNumber.Length - 2).ToString().Trim();
                if (Numbers == "")
                {
                    CanonicalNumber = "";
                    return null;
                }

                string BuyWays = Number.Trim().Split(';')[2].ToString().Substring(1, Number.Trim().Split(';')[2].ToString().Length - 1).Substring(0, Number.Trim().Split(';')[2].ToString().Length - 2).ToString().Trim();
                if (BuyWays == "")
                {
                    CanonicalNumber = "";
                    return null;
                }

                int GamesNumber = Numbers.Split('|').Length;
                int WaysNumber = BuyWays.Split(',').Length;
                string[] Locate = new string[GamesNumber];
                string[] LocateWays = new string[WaysNumber];

                string ConfirmationString = "";
                string BuyResult = "";

                string WaysResult = "";
                string BuyWaysResult = "";
                int TempWaysMultiples = 0;

                if (strPlayType == "7301")    //胜负
                {
                    for (int i = 0; i < GamesNumber; i++)
                    {
                        ConfirmationString += @"(?<L" + i.ToString() + @">[\d]{1,9}[(][21]([,][21]){0,1}[)])[|]"; //方案格式：4501;[1(3)|5(3,1)|7(0)];[A2,B1]
                    }
                    ConfirmationString = ConfirmationString.Substring(0, ConfirmationString.Length - 3);
                }
                else if (strPlayType == "7302")   //让分胜负
                {
                    for (int i = 0; i < GamesNumber; i++)
                    {
                        ConfirmationString += @"(?<L" + i.ToString() + @">[\d]{1,9}[(][21]([,][21]){0,1}[)])[|]";
                    }
                    ConfirmationString = ConfirmationString.Substring(0, ConfirmationString.Length - 3);
                }
                else if (strPlayType == "7303")   //胜分差
                {
                    for (int i = 0; i < GamesNumber; i++)
                    {
                        ConfirmationString += @"(?<L" + i.ToString() + @">[\d]{1,9}[(][\d]{1,2}([,][\d]{1,2}){0,11}[)])[|]";
                    }
                    ConfirmationString = ConfirmationString.Substring(0, ConfirmationString.Length - 3);
                }
                else if (strPlayType == "7304")   //大小分
                {
                    for (int i = 0; i < GamesNumber; i++)
                    {
                        ConfirmationString += @"(?<L" + i.ToString() + @">[\d]{1,9}[(][21]([,][21]){0,1}[)])[|]";
                    }
                    ConfirmationString = ConfirmationString.Substring(0, ConfirmationString.Length - 3);
                }

                Regex regex = new Regex(ConfirmationString, RegexOptions.IgnoreCase | RegexOptions.Compiled);
                Match m = regex.Match(Numbers);

                for (int i = 0; i < GamesNumber; i++)
                {
                    Locate[i] = m.Groups["L" + i.ToString()].ToString().Trim();
                    if (Locate[i] == "")
                    {
                        CanonicalNumber = "";
                        return null;
                    }

                    BuyResult = Locate[i].Substring(Locate[i].IndexOf('(') + 1, (Locate[i].IndexOf(')') - Locate[i].IndexOf('(') - 1));

                    if (BuyResult.Length > 0)
                    {
                        BuyResult = FilterRepeated(BuyResult, strPlayType);

                        if (BuyResult == "")
                        {
                            CanonicalNumber = "";
                            return null;
                        }
                    }

                    if (BuyResult.Length > 0)
                    {
                        CanonicalNumber += Locate[i].Substring(0, (Locate[i].IndexOf('('))) + "(" + BuyResult + ")|";
                    }
                }

                if (CanonicalNumber.EndsWith("|"))
                {
                    CanonicalNumber = CanonicalNumber.Substring(0, CanonicalNumber.Length - 1);
                }

                if (CanonicalNumber.Length < 4)  //方案中至少买有一场比赛 例如：1(3)
                {
                    CanonicalNumber = "";
                    return null;
                }

                GamesNumber = 0;    //将原来的场数清0

                BuyResult = "";
                ConfirmationString = "";
                for (int j = 0; j < WaysNumber; j++)
                {
                    ConfirmationString += @"(?<L" + j.ToString() + @">[123456789ABCDEFGHIJKLMNOPQRSTUVW]{1,1000}[\d]{1,5})[,]"; //方案格式：4501;[1(3)|5(3,1)|7(0)];[A2,B1]
                }
                ConfirmationString = ConfirmationString.Substring(0, ConfirmationString.Length - 3);

                Regex regexWays = new Regex(ConfirmationString, RegexOptions.IgnoreCase | RegexOptions.Compiled);
                Match mWays = regexWays.Match(BuyWays);
                for (int k = 0; k < WaysNumber; k++)
                {
                    LocateWays[k] = mWays.Groups["L" + k.ToString()].ToString().Trim();
                    if (LocateWays[k] == "")
                    {
                        CanonicalNumber = "";
                        return null;
                    }

                    BuyResult = LocateWays[k].Substring(2, (LocateWays[k].Length - 2));

                    if (BuyResult.Length > 0)
                    {
                        try
                        {
                            TempWaysMultiples = Convert.ToInt32(BuyResult);
                        }
                        catch
                        {
                            TempWaysMultiples = 0;
                        }

                        if (TempWaysMultiples > 0)
                        {
                            BuyWaysResult = BuyResult;
                        }
                        else
                        {
                            BuyWaysResult = "";
                        }
                    }
                    if (BuyWaysResult.Length > 0)
                    {
                        WaysResult += LocateWays[k].Substring(0, 2).ToUpper() + BuyWaysResult.ToString() + ",";
                    }
                }

                if (WaysResult.EndsWith(","))
                {
                    WaysResult = WaysResult.Substring(0, WaysResult.Length - 1);
                }

                if (WaysResult.Length < 2)   //至少有一种过关方式 例如：11：表示单关，1倍
                {
                    CanonicalNumber = "";
                    return null;
                }

                WaysNumber = 0; //将原来的购买方式倍数清0

                //复式变单式，并取得购买注数和相应的倍数
                ArrayList all = new ArrayList();
                GamesNumber = CanonicalNumber.Split('|').Length;    //重新获取分析过后的比赛场次
                WaysNumber = WaysResult.Split(',').Length;  //重新获取分析过后的购买方式及倍数

                string[] LocateBuyResult = new string[GamesNumber];
                string[] Screenings = new string[GamesNumber];

                for (int i = 0; i < GamesNumber; i++)
                {
                    Locate[i] = CanonicalNumber.Split('|')[i].ToString();

                    LocateBuyResult[i] = Locate[i].Substring(Locate[i].IndexOf('(') + 1, (Locate[i].IndexOf(')') - Locate[i].IndexOf('(') - 1));

                    Screenings[i] = Locate[i].Substring(0, Locate[i].IndexOf('('));
                }

                if ((strPlayType == "7301" || strPlayType == "7302" || strPlayType == "7304") && (GamesNumber > 8))
                {
                    CanonicalNumber = "";
                    return null;
                }

                if ((strPlayType == "7303") && (GamesNumber > 3))
                {
                    CanonicalNumber = "";
                    return null;
                }

                string[] LocateWaysAndMultiples = new string[WaysNumber];   //购买方式及倍数
                string[] LocateWaysType = new string[WaysNumber];   //购买方式
                string[] WaysMultiples = new string[WaysNumber];    //购买倍数

                for (int i = 0; i < WaysNumber; i++)
                {
                    LocateWaysAndMultiples[i] = WaysResult.Split(',')[i].ToString();
                    LocateWaysType[i] = LocateWaysAndMultiples[i].Substring(0, 2);
                    WaysMultiples[i] = LocateWaysAndMultiples[i].Substring(2, (LocateWaysAndMultiples[i].Length - 2));

                    #region     获取方案某一个购买方式的购买注数和倍数
                    switch (LocateWaysType[i])
                    {
                        case "A0":   //单式买注数和对应倍数
                            string[] sgA_1c1 = getAll1G(GamesNumber, Locate, LocateBuyResult, Screenings, int.Parse(WaysMultiples[i].ToString()));
                            for (int j = 0; j < sgA_1c1.Length; j++)
                            {
                                all.Add(sgA_1c1[j].ToString());
                            }
                            break;
                        case "AA":   //2串1购买注数和对应倍数
                            string[] sgA_2c1 = getAll2G(GamesNumber, Locate, LocateBuyResult, Screenings, int.Parse(WaysMultiples[i].ToString()));
                            for (int j = 0; j < sgA_2c1.Length; j++)
                            {
                                all.Add(sgA_2c1[j].ToString());
                            }
                            break;
                        case "AB":   //3串1购买注数和对应倍数
                            string[] sgB_3c1 = getAll3G(GamesNumber, Locate, LocateBuyResult, Screenings, int.Parse(WaysMultiples[i].ToString()));
                            for (int j = 0; j < sgB_3c1.Length; j++)
                            {
                                all.Add(sgB_3c1[j].ToString());
                            }
                            break;
                        case "AC":   //3串3购买注数和对应倍数
                            string[] sgC_2c1 = getAll2G(GamesNumber, Locate, LocateBuyResult, Screenings, int.Parse(WaysMultiples[i].ToString()));
                            for (int j = 0; j < sgC_2c1.Length; j++)
                            {
                                all.Add(sgC_2c1[j].ToString());
                            }
                            break;
                        case "AD":   //3串4购买注数和对应倍数
                            string[] sgD_2c1 = getAll2G(GamesNumber, Locate, LocateBuyResult, Screenings, int.Parse(WaysMultiples[i].ToString()));
                            for (int j = 0; j < sgD_2c1.Length; j++)
                            {
                                all.Add(sgD_2c1[j].ToString());
                            }

                            string[] sgD_3c1 = getAll3G(GamesNumber, Locate, LocateBuyResult, Screenings, int.Parse(WaysMultiples[i].ToString()));
                            for (int j = 0; j < sgD_3c1.Length; j++)
                            {
                                all.Add(sgD_3c1[j].ToString());
                            }
                            break;
                        case "AE":    //4串1购买注数和对应倍数
                            string[] sgE_4c1 = getAll4G(GamesNumber, Locate, LocateBuyResult, Screenings, int.Parse(WaysMultiples[i].ToString()));
                            for (int j = 0; j < sgE_4c1.Length; j++)
                            {
                                all.Add(sgE_4c1[j].ToString());
                            }
                            break;
                        case "AF":   //4串4购买注数和对应倍数
                            string[] sgF_3c1 = getAll3G(GamesNumber, Locate, LocateBuyResult, Screenings, int.Parse(WaysMultiples[i].ToString()));
                            for (int j = 0; j < sgF_3c1.Length; j++)
                            {
                                all.Add(sgF_3c1[j].ToString());
                            }
                            break;
                        case "AG":   //4串5购买注数和对应倍数
                            string[] sgG_3c1 = getAll3G(GamesNumber, Locate, LocateBuyResult, Screenings, int.Parse(WaysMultiples[i].ToString()));
                            for (int j = 0; j < sgG_3c1.Length; j++)
                            {
                                all.Add(sgG_3c1[j].ToString());
                            }

                            string[] sgG_4c1 = getAll4G(GamesNumber, Locate, LocateBuyResult, Screenings, int.Parse(WaysMultiples[i].ToString()));
                            for (int j = 0; j < sgG_4c1.Length; j++)
                            {
                                all.Add(sgG_4c1[j].ToString());
                            }
                            break;
                        case "AH":   //4串6购买注数和对应倍数
                            string[] sgH_2c1 = getAll2G(GamesNumber, Locate, LocateBuyResult, Screenings, int.Parse(WaysMultiples[i].ToString()));
                            for (int j = 0; j < sgH_2c1.Length; j++)
                            {
                                all.Add(sgH_2c1[j].ToString());
                            }
                            break;
                        case "AI":   //4串11购买注数和对应倍数
                            string[] sgI_2c1 = getAll2G(GamesNumber, Locate, LocateBuyResult, Screenings, int.Parse(WaysMultiples[i].ToString()));
                            for (int j = 0; j < sgI_2c1.Length; j++)
                            {
                                all.Add(sgI_2c1[j].ToString());
                            }
                            string[] sgi_3c1 = getAll3G(GamesNumber, Locate, LocateBuyResult, Screenings, int.Parse(WaysMultiples[i].ToString()));
                            for (int j = 0; j < sgi_3c1.Length; j++)
                            {
                                all.Add(sgi_3c1[j].ToString());
                            }

                            string[] sgI_4c1 = getAll4G(GamesNumber, Locate, LocateBuyResult, Screenings, int.Parse(WaysMultiples[i].ToString()));
                            for (int j = 0; j < sgI_4c1.Length; j++)
                            {
                                all.Add(sgI_4c1[j].ToString());
                            }
                            break;
                        case "AJ":   //5串1购买注数和对应倍数
                            string[] sgJ_5c1 = getAll5G(GamesNumber, Locate, LocateBuyResult, Screenings, int.Parse(WaysMultiples[i].ToString()));
                            for (int j = 0; j < sgJ_5c1.Length; j++)
                            {
                                all.Add(sgJ_5c1[j].ToString());
                            }
                            break;
                        case "AK":   //5串5购买注数和对应倍数
                            string[] sgk_4c1 = getAll4G(GamesNumber, Locate, LocateBuyResult, Screenings, int.Parse(WaysMultiples[i].ToString()));
                            for (int j = 0; j < sgk_4c1.Length; j++)
                            {
                                all.Add(sgk_4c1[j].ToString());
                            }
                            break;
                        case "AL":   //5串6购买注数和对应倍数
                            string[] sgL_4c1 = getAll4G(GamesNumber, Locate, LocateBuyResult, Screenings, int.Parse(WaysMultiples[i].ToString()));
                            for (int j = 0; j < sgL_4c1.Length; j++)
                            {
                                all.Add(sgL_4c1[j].ToString());
                            }

                            string[] sg5_5c1 = getAll5G(GamesNumber, Locate, LocateBuyResult, Screenings, int.Parse(WaysMultiples[i].ToString()));
                            for (int j = 0; j < sg5_5c1.Length; j++)
                            {
                                all.Add(sg5_5c1[j].ToString());
                            }
                            break;
                        case "AM":   //5串10购买注数和对应倍数
                            string[] sgM_2c1 = getAll2G(GamesNumber, Locate, LocateBuyResult, Screenings, int.Parse(WaysMultiples[i].ToString()));
                            for (int j = 0; j < sgM_2c1.Length; j++)
                            {
                                all.Add(sgM_2c1[j].ToString());
                            }
                            break;
                        case "AN":   //5串16购买注数和对应倍数
                            string[] sgN_3c1 = getAll3G(GamesNumber, Locate, LocateBuyResult, Screenings, int.Parse(WaysMultiples[i].ToString()));
                            for (int j = 0; j < sgN_3c1.Length; j++)
                            {
                                all.Add(sgN_3c1[j].ToString());
                            }

                            string[] sgN_4c1 = getAll4G(GamesNumber, Locate, LocateBuyResult, Screenings, int.Parse(WaysMultiples[i].ToString()));
                            for (int j = 0; j < sgN_4c1.Length; j++)
                            {
                                all.Add(sgN_4c1[j].ToString());
                            }

                            string[] sgN_5c1 = getAll5G(GamesNumber, Locate, LocateBuyResult, Screenings, int.Parse(WaysMultiples[i].ToString()));
                            for (int j = 0; j < sgN_5c1.Length; j++)
                            {
                                all.Add(sgN_5c1[j].ToString());
                            }
                            break;
                        case "AO":   //5串20购买注数和对应倍数
                            string[] sgO_2c1 = getAll2G(GamesNumber, Locate, LocateBuyResult, Screenings, int.Parse(WaysMultiples[i].ToString()));
                            for (int j = 0; j < sgO_2c1.Length; j++)
                            {
                                all.Add(sgO_2c1[j].ToString());
                            }

                            string[] sgO_3c1 = getAll3G(GamesNumber, Locate, LocateBuyResult, Screenings, int.Parse(WaysMultiples[i].ToString()));
                            for (int j = 0; j < sgO_3c1.Length; j++)
                            {
                                all.Add(sgO_3c1[j].ToString());
                            }
                            break;
                        case "AP":   //5串26购买注数和对应倍数
                            string[] sgP_2c1 = getAll2G(GamesNumber, Locate, LocateBuyResult, Screenings, int.Parse(WaysMultiples[i].ToString()));
                            for (int j = 0; j < sgP_2c1.Length; j++)
                            {
                                all.Add(sgP_2c1[j].ToString());
                            }

                            string[] sgP_3c1 = getAll3G(GamesNumber, Locate, LocateBuyResult, Screenings, int.Parse(WaysMultiples[i].ToString()));
                            for (int j = 0; j < sgP_3c1.Length; j++)
                            {
                                all.Add(sgP_3c1[j].ToString());
                            }

                            string[] sgP_4c1 = getAll4G(GamesNumber, Locate, LocateBuyResult, Screenings, int.Parse(WaysMultiples[i].ToString()));
                            for (int j = 0; j < sgP_4c1.Length; j++)
                            {
                                all.Add(sgP_4c1[j].ToString());
                            }

                            string[] sgP_5c1 = getAll5G(GamesNumber, Locate, LocateBuyResult, Screenings, int.Parse(WaysMultiples[i].ToString()));
                            for (int j = 0; j < sgP_5c1.Length; j++)
                            {
                                all.Add(sgP_5c1[j].ToString());
                            }
                            break;
                        case "AQ":   //6串1购买注数和对应倍数
                            string[] sgQ_6c1 = getAll6G(GamesNumber, Locate, LocateBuyResult, Screenings, int.Parse(WaysMultiples[i].ToString()));
                            for (int j = 0; j < sgQ_6c1.Length; j++)
                            {
                                all.Add(sgQ_6c1[j].ToString());
                            }
                            break;
                        case "AR":   //6串6购买注数和对应倍数
                            string[] sgR_5c1 = getAll5G(GamesNumber, Locate, LocateBuyResult, Screenings, int.Parse(WaysMultiples[i].ToString()));
                            for (int j = 0; j < sgR_5c1.Length; j++)
                            {
                                all.Add(sgR_5c1[j].ToString());
                            }
                            break;
                        case "AS":   //6串7购买注数和对应倍数
                            string[] sgS_5c1 = getAll5G(GamesNumber, Locate, LocateBuyResult, Screenings, int.Parse(WaysMultiples[i].ToString()));
                            for (int j = 0; j < sgS_5c1.Length; j++)
                            {
                                all.Add(sgS_5c1[j].ToString());
                            }

                            string[] sgS_6c1 = getAll6G(GamesNumber, Locate, LocateBuyResult, Screenings, int.Parse(WaysMultiples[i].ToString()));
                            for (int j = 0; j < sgS_6c1.Length; j++)
                            {
                                all.Add(sgS_6c1[j].ToString());
                            }
                            break;
                        case "AT":   //6串15购买注数和对应倍数
                            string[] sgT_2c1 = getAll2G(GamesNumber, Locate, LocateBuyResult, Screenings, int.Parse(WaysMultiples[i].ToString()));
                            for (int j = 0; j < sgT_2c1.Length; j++)
                            {
                                all.Add(sgT_2c1[j].ToString());
                            }
                            break;
                        case "AU":   //6串20购买注数和对应倍数
                            string[] sgU_3c1 = getAll3G(GamesNumber, Locate, LocateBuyResult, Screenings, int.Parse(WaysMultiples[i].ToString()));
                            for (int j = 0; j < sgU_3c1.Length; j++)
                            {
                                all.Add(sgU_3c1[j].ToString());
                            }
                            break;
                        case "AV":   //6串22购买注数和对应倍数
                            string[] sgV_4c1 = getAll4G(GamesNumber, Locate, LocateBuyResult, Screenings, int.Parse(WaysMultiples[i].ToString()));
                            for (int j = 0; j < sgV_4c1.Length; j++)
                            {
                                all.Add(sgV_4c1[j].ToString());
                            }

                            string[] sgV_5c1 = getAll5G(GamesNumber, Locate, LocateBuyResult, Screenings, int.Parse(WaysMultiples[i].ToString()));
                            for (int j = 0; j < sgV_5c1.Length; j++)
                            {
                                all.Add(sgV_5c1[j].ToString());
                            }

                            string[] sgV_6c1 = getAll6G(GamesNumber, Locate, LocateBuyResult, Screenings, int.Parse(WaysMultiples[i].ToString()));
                            for (int j = 0; j < sgV_6c1.Length; j++)
                            {
                                all.Add(sgV_6c1[j].ToString());
                            }
                            break;
                        case "AW":   //6串35购买注数和对应倍数
                            string[] sgW_2c1 = getAll2G(GamesNumber, Locate, LocateBuyResult, Screenings, int.Parse(WaysMultiples[i].ToString()));
                            for (int j = 0; j < sgW_2c1.Length; j++)
                            {
                                all.Add(sgW_2c1[j].ToString());
                            }

                            string[] sgW_3c1 = getAll3G(GamesNumber, Locate, LocateBuyResult, Screenings, int.Parse(WaysMultiples[i].ToString()));
                            for (int j = 0; j < sgW_3c1.Length; j++)
                            {
                                all.Add(sgW_3c1[j].ToString());
                            }
                            break;
                        case "AX":   //6串42购买注数和对应倍数
                            string[] sgX_3c1 = getAll3G(GamesNumber, Locate, LocateBuyResult, Screenings, int.Parse(WaysMultiples[i].ToString()));
                            for (int j = 0; j < sgX_3c1.Length; j++)
                            {
                                all.Add(sgX_3c1[j].ToString());
                            }

                            string[] sgX_4c1 = getAll4G(GamesNumber, Locate, LocateBuyResult, Screenings, int.Parse(WaysMultiples[i].ToString()));
                            for (int j = 0; j < sgX_4c1.Length; j++)
                            {
                                all.Add(sgX_4c1[j].ToString());
                            }

                            string[] sgX_5c1 = getAll5G(GamesNumber, Locate, LocateBuyResult, Screenings, int.Parse(WaysMultiples[i].ToString()));
                            for (int j = 0; j < sgX_5c1.Length; j++)
                            {
                                all.Add(sgX_5c1[j].ToString());
                            }

                            string[] sgX_6c1 = getAll6G(GamesNumber, Locate, LocateBuyResult, Screenings, int.Parse(WaysMultiples[i].ToString()));
                            for (int j = 0; j < sgX_6c1.Length; j++)
                            {
                                all.Add(sgX_6c1[j].ToString());
                            }
                            break;
                        case "AY":   //6串50购买注数和对应倍数
                            string[] sgY_2c1 = getAll2G(GamesNumber, Locate, LocateBuyResult, Screenings, int.Parse(WaysMultiples[i].ToString()));
                            for (int j = 0; j < sgY_2c1.Length; j++)
                            {
                                all.Add(sgY_2c1[j].ToString());
                            }

                            string[] sgY_3c1 = getAll3G(GamesNumber, Locate, LocateBuyResult, Screenings, int.Parse(WaysMultiples[i].ToString()));
                            for (int j = 0; j < sgY_3c1.Length; j++)
                            {
                                all.Add(sgY_3c1[j].ToString());
                            }

                            string[] sgY_4c1 = getAll4G(GamesNumber, Locate, LocateBuyResult, Screenings, int.Parse(WaysMultiples[i].ToString()));
                            for (int j = 0; j < sgY_4c1.Length; j++)
                            {
                                all.Add(sgY_4c1[j].ToString());
                            }
                            break;
                        case "AZ":   //6串57购买注数和对应倍数
                            string[] sgZ_2c1 = getAll2G(GamesNumber, Locate, LocateBuyResult, Screenings, int.Parse(WaysMultiples[i].ToString()));
                            for (int j = 0; j < sgZ_2c1.Length; j++)
                            {
                                all.Add(sgZ_2c1[j].ToString());
                            }

                            string[] sgZ_3c1 = getAll3G(GamesNumber, Locate, LocateBuyResult, Screenings, int.Parse(WaysMultiples[i].ToString()));
                            for (int j = 0; j < sgZ_3c1.Length; j++)
                            {
                                all.Add(sgZ_3c1[j].ToString());
                            }

                            string[] sgZ_4c1 = getAll4G(GamesNumber, Locate, LocateBuyResult, Screenings, int.Parse(WaysMultiples[i].ToString()));
                            for (int j = 0; j < sgZ_4c1.Length; j++)
                            {
                                all.Add(sgZ_4c1[j].ToString());
                            }

                            string[] sgZ_5c1 = getAll5G(GamesNumber, Locate, LocateBuyResult, Screenings, int.Parse(WaysMultiples[i].ToString()));
                            for (int j = 0; j < sgZ_5c1.Length; j++)
                            {
                                all.Add(sgZ_5c1[j].ToString());
                            }

                            string[] sgZ_6c1 = getAll6G(GamesNumber, Locate, LocateBuyResult, Screenings, int.Parse(WaysMultiples[i].ToString()));
                            for (int j = 0; j < sgZ_6c1.Length; j++)
                            {
                                all.Add(sgZ_6c1[j].ToString());
                            }
                            break;
                        case "BA":   //7串1购买注数和对应倍数
                            string[] sgBA_7c1 = getAll7G(GamesNumber, Locate, LocateBuyResult, Screenings, int.Parse(WaysMultiples[i].ToString()));
                            for (int j = 0; j < sgBA_7c1.Length; j++)
                            {
                                all.Add(sgBA_7c1[j].ToString());
                            }
                            break;
                        case "BB":   //7串7购买注数和对应倍数
                            string[] sgBB_6c1 = getAll6G(GamesNumber, Locate, LocateBuyResult, Screenings, int.Parse(WaysMultiples[i].ToString()));
                            for (int j = 0; j < sgBB_6c1.Length; j++)
                            {
                                all.Add(sgBB_6c1[j].ToString());
                            }
                            break;
                        case "BC":   //7串8购买注数和对应倍数
                            string[] sgBC_6c1 = getAll6G(GamesNumber, Locate, LocateBuyResult, Screenings, int.Parse(WaysMultiples[i].ToString()));
                            for (int j = 0; j < sgBC_6c1.Length; j++)
                            {
                                all.Add(sgBC_6c1[j].ToString());
                            }
                            string[] sgBC_7c1 = getAll7G(GamesNumber, Locate, LocateBuyResult, Screenings, int.Parse(WaysMultiples[i].ToString()));
                            for (int j = 0; j < sgBC_7c1.Length; j++)
                            {
                                all.Add(sgBC_7c1[j].ToString());
                            }
                            break;
                        case "BD":   //7串21购买注数和对应倍数
                            string[] sgBD_5c1 = getAll5G(GamesNumber, Locate, LocateBuyResult, Screenings, int.Parse(WaysMultiples[i].ToString()));
                            for (int j = 0; j < sgBD_5c1.Length; j++)
                            {
                                all.Add(sgBD_5c1[j].ToString());
                            }
                            break;
                        case "BE":   //7串35购买注数和对应倍数
                            string[] sgBE_4c1 = getAll4G(GamesNumber, Locate, LocateBuyResult, Screenings, int.Parse(WaysMultiples[i].ToString()));
                            for (int j = 0; j < sgBE_4c1.Length; j++)
                            {
                                all.Add(sgBE_4c1[j].ToString());
                            }
                            break;
                        case "BF":   //7串120购买注数和对应倍数
                            string[] sgBF_2c1 = getAll2G(GamesNumber, Locate, LocateBuyResult, Screenings, int.Parse(WaysMultiples[i].ToString()));
                            for (int j = 0; j < sgBF_2c1.Length; j++)
                            {
                                all.Add(sgBF_2c1[j].ToString());
                            }

                            string[] sgBF_3c1 = getAll3G(GamesNumber, Locate, LocateBuyResult, Screenings, int.Parse(WaysMultiples[i].ToString()));
                            for (int j = 0; j < sgBF_3c1.Length; j++)
                            {
                                all.Add(sgBF_3c1[j].ToString());
                            }

                            string[] sgBF_4c1 = getAll4G(GamesNumber, Locate, LocateBuyResult, Screenings, int.Parse(WaysMultiples[i].ToString()));
                            for (int j = 0; j < sgBF_4c1.Length; j++)
                            {
                                all.Add(sgBF_4c1[j].ToString());
                            }

                            string[] sgBF_5c1 = getAll5G(GamesNumber, Locate, LocateBuyResult, Screenings, int.Parse(WaysMultiples[i].ToString()));
                            for (int j = 0; j < sgBF_5c1.Length; j++)
                            {
                                all.Add(sgBF_5c1[j].ToString());
                            }

                            string[] sgBF_6c1 = getAll6G(GamesNumber, Locate, LocateBuyResult, Screenings, int.Parse(WaysMultiples[i].ToString()));
                            for (int j = 0; j < sgBF_6c1.Length; j++)
                            {
                                all.Add(sgBF_6c1[j].ToString());
                            }

                            string[] sgBF_7c1 = getAll7G(GamesNumber, Locate, LocateBuyResult, Screenings, int.Parse(WaysMultiples[i].ToString()));
                            for (int j = 0; j < sgBF_7c1.Length; j++)
                            {
                                all.Add(sgBF_7c1[j].ToString());
                            }
                            break;
                        case "BG":   //8串1购买注数和对应倍数
                            string[] sgBG_8c1 = getAll8G(GamesNumber, Locate, LocateBuyResult, Screenings, int.Parse(WaysMultiples[i].ToString()));
                            for (int j = 0; j < sgBG_8c1.Length; j++)
                            {
                                all.Add(sgBG_8c1[j].ToString());
                            }
                            break;
                        case "BH":   //8串8购买注数和对应倍数
                            string[] sgBH_7c1 = getAll7G(GamesNumber, Locate, LocateBuyResult, Screenings, int.Parse(WaysMultiples[i].ToString()));
                            for (int j = 0; j < sgBH_7c1.Length; j++)
                            {
                                all.Add(sgBH_7c1[j].ToString());
                            }
                            break;
                        case "BI":   //8串9购买注数和对应倍数
                            string[] sgBI_7c1 = getAll7G(GamesNumber, Locate, LocateBuyResult, Screenings, int.Parse(WaysMultiples[i].ToString()));
                            for (int j = 0; j < sgBI_7c1.Length; j++)
                            {
                                all.Add(sgBI_7c1[j].ToString());
                            }
                            string[] sgBI_8c1 = getAll8G(GamesNumber, Locate, LocateBuyResult, Screenings, int.Parse(WaysMultiples[i].ToString()));
                            for (int j = 0; j < sgBI_8c1.Length; j++)
                            {
                                all.Add(sgBI_8c1[j].ToString());
                            }
                            break;
                        case "BJ":   //8串28购买注数和对应倍数
                            string[] sgBJ_6c1 = getAll6G(GamesNumber, Locate, LocateBuyResult, Screenings, int.Parse(WaysMultiples[i].ToString()));
                            for (int j = 0; j < sgBJ_6c1.Length; j++)
                            {
                                all.Add(sgBJ_6c1[j].ToString());
                            }
                            break;
                        case "BK":   //8串56购买注数和对应倍数
                            string[] sgBK_5c1 = getAll5G(GamesNumber, Locate, LocateBuyResult, Screenings, int.Parse(WaysMultiples[i].ToString()));
                            for (int j = 0; j < sgBK_5c1.Length; j++)
                            {
                                all.Add(sgBK_5c1[j].ToString());
                            }
                            break;
                        case "BL":   //8串70购买注数和对应倍数
                            string[] sgBL_4c1 = getAll4G(GamesNumber, Locate, LocateBuyResult, Screenings, int.Parse(WaysMultiples[i].ToString()));
                            for (int j = 0; j < sgBL_4c1.Length; j++)
                            {
                                all.Add(sgBL_4c1[j].ToString());
                            }
                            break;
                        case "BM":   //8串247购买注数和对应倍数
                            string[] sgBM_2c1 = getAll2G(GamesNumber, Locate, LocateBuyResult, Screenings, int.Parse(WaysMultiples[i].ToString()));
                            for (int j = 0; j < sgBM_2c1.Length; j++)
                            {
                                all.Add(sgBM_2c1[j].ToString());
                            }

                            string[] sgBM_3c1 = getAll3G(GamesNumber, Locate, LocateBuyResult, Screenings, int.Parse(WaysMultiples[i].ToString()));
                            for (int j = 0; j < sgBM_3c1.Length; j++)
                            {
                                all.Add(sgBM_3c1[j].ToString());
                            }

                            string[] sgBM_4c1 = getAll4G(GamesNumber, Locate, LocateBuyResult, Screenings, int.Parse(WaysMultiples[i].ToString()));
                            for (int j = 0; j < sgBM_4c1.Length; j++)
                            {
                                all.Add(sgBM_4c1[j].ToString());
                            }

                            string[] sgBM_5c1 = getAll5G(GamesNumber, Locate, LocateBuyResult, Screenings, int.Parse(WaysMultiples[i].ToString()));
                            for (int j = 0; j < sgBM_5c1.Length; j++)
                            {
                                all.Add(sgBM_5c1[j].ToString());
                            }

                            string[] sgBM_6c1 = getAll6G(GamesNumber, Locate, LocateBuyResult, Screenings, int.Parse(WaysMultiples[i].ToString()));
                            for (int j = 0; j < sgBM_6c1.Length; j++)
                            {
                                all.Add(sgBM_6c1[j].ToString());
                            }

                            string[] sgBM_7c1 = getAll7G(GamesNumber, Locate, LocateBuyResult, Screenings, int.Parse(WaysMultiples[i].ToString()));
                            for (int j = 0; j < sgBM_7c1.Length; j++)
                            {
                                all.Add(sgBM_7c1[j].ToString());
                            }
                            string[] sgBM_8c1 = getAll8G(GamesNumber, Locate, LocateBuyResult, Screenings, int.Parse(WaysMultiples[i].ToString()));
                            for (int j = 0; j < sgBM_8c1.Length; j++)
                            {
                                all.Add(sgBM_8c1[j].ToString());
                            }
                            break;
                    }
                    #endregion
                }

                string[] Result = new string[all.Count];
                for (int i = 0; i < all.Count; i++)
                {
                    Result[i] = all[i].ToString();
                }
                return Result;
            }

            #region 取单关,二关...六关，M串1

            private string[] getAll1G(int GamesNumber, string[] Locate, string[] LocateBuyResult, string[] Screenings, int TempWaysMultiples)
            {
                ArrayList al = new ArrayList(); //取所有的双关，先存入ArrayList对象
                for (int i = 0; i < GamesNumber; i++)
                {
                    for (int i_0 = 0; i_0 < LocateBuyResult[i].Split(',').Length; i_0++)
                    {
                        al.Add(Screenings[i] + "(" + LocateBuyResult[i].Split(',')[i_0].ToString() + ");" + TempWaysMultiples);
                    }
                }

                string[] Result = new string[al.Count];
                for (int i = 0; i < al.Count; i++)
                {
                    Result[i] = al[i].ToString();
                }

                return Result;
            }

            private string[] getAll2G(int GamesNumber, string[] Locate, string[] LocateBuyResult, string[] Screenings, int TempWaysMultiples)
            {
                ArrayList al = new ArrayList(); //取所有的双关，先存入ArrayList对象
                for (int i = 0; i < GamesNumber; i++)
                {
                    for (int i_0 = 0; i_0 < LocateBuyResult[i].Split(',').Length; i_0++)
                    {
                        for (int j = i + 1; j < GamesNumber; j++)
                        {
                            for (int j_0 = 0; j_0 < LocateBuyResult[j].Split(',').Length; j_0++)
                            {
                                al.Add(Screenings[i] + "(" + LocateBuyResult[i].Split(',')[i_0].ToString() + ")|" + Screenings[j] + "(" + LocateBuyResult[j].Split(',')[j_0].ToString() + ");" + TempWaysMultiples);
                            }
                        }
                    }
                }

                string[] Result = new string[al.Count];
                for (int i = 0; i < al.Count; i++)
                {
                    Result[i] = al[i].ToString();
                }

                return Result;
            }

            private string[] getAll3G(int GamesNumber, string[] Locate, string[] LocateBuyResult, string[] Screenings, int TempWaysMultiples)
            {
                ArrayList al = new ArrayList(); //取所有的三关，先存入ArrayList对象
                for (int i = 0; i < GamesNumber; i++)
                {
                    for (int i_0 = 0; i_0 < LocateBuyResult[i].Split(',').Length; i_0++)
                    {
                        for (int j = i + 1; j < GamesNumber; j++)
                        {
                            for (int j_0 = 0; j_0 < LocateBuyResult[j].Split(',').Length; j_0++)
                            {
                                for (int k = j + 1; k < GamesNumber; k++)
                                {
                                    for (int k_0 = 0; k_0 < LocateBuyResult[k].Split(',').Length; k_0++)
                                    {
                                        al.Add(Screenings[i] + "(" + LocateBuyResult[i].Split(',')[i_0].ToString() + ")|" + Screenings[j] + "(" + LocateBuyResult[j].Split(',')[j_0].ToString() + ")|" + Screenings[k] + "(" + LocateBuyResult[k].Split(',')[k_0].ToString() + ");" + TempWaysMultiples);
                                    }
                                }
                            }
                        }
                    }
                }

                string[] Result = new string[al.Count];
                for (int i = 0; i < al.Count; i++)
                {
                    Result[i] = al[i].ToString();
                }

                return Result;
            }

            private string[] getAll4G(int GamesNumber, string[] Locate, string[] LocateBuyResult, string[] Screenings, int TempWaysMultiples)
            {
                ArrayList al = new ArrayList(); //取所有的四关，先存入ArrayList对象
                for (int i = 0; i < GamesNumber; i++)
                {
                    for (int i_0 = 0; i_0 < LocateBuyResult[i].Split(',').Length; i_0++)
                    {
                        for (int j = i + 1; j < GamesNumber; j++)
                        {
                            for (int j_0 = 0; j_0 < LocateBuyResult[j].Split(',').Length; j_0++)
                            {
                                for (int k = j + 1; k < GamesNumber; k++)
                                {
                                    for (int k_0 = 0; k_0 < LocateBuyResult[k].Split(',').Length; k_0++)
                                    {
                                        for (int x = k + 1; x < GamesNumber; x++)
                                        {
                                            for (int x_0 = 0; x_0 < LocateBuyResult[x].Split(',').Length; x_0++)
                                            {
                                                al.Add(Screenings[i] + "(" + LocateBuyResult[i].Split(',')[i_0].ToString() + ")|" + Screenings[j] + "(" + LocateBuyResult[j].Split(',')[j_0].ToString() + ")|" + Screenings[k] + "(" + LocateBuyResult[k].Split(',')[k_0].ToString() + ")|" + Screenings[x] + "(" + LocateBuyResult[x].Split(',')[x_0].ToString() + ");" + TempWaysMultiples);
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }


                string[] Result = new string[al.Count];
                for (int i = 0; i < al.Count; i++)
                {
                    Result[i] = al[i].ToString();
                }

                return Result;
            }

            private string[] getAll5G(int GamesNumber, string[] Locate, string[] LocateBuyResult, string[] Screenings, int TempWaysMultiples)
            {
                ArrayList al = new ArrayList(); //取所有的五关，先存入ArrayList对象
                for (int i = 0; i < GamesNumber; i++)
                {
                    for (int i_0 = 0; i_0 < LocateBuyResult[i].Split(',').Length; i_0++)
                    {
                        for (int j = i + 1; j < GamesNumber; j++)
                        {
                            for (int j_0 = 0; j_0 < LocateBuyResult[j].Split(',').Length; j_0++)
                            {
                                for (int k = j + 1; k < GamesNumber; k++)
                                {
                                    for (int k_0 = 0; k_0 < LocateBuyResult[k].Split(',').Length; k_0++)
                                    {
                                        for (int x = k + 1; x < GamesNumber; x++)
                                        {
                                            for (int x_0 = 0; x_0 < LocateBuyResult[x].Split(',').Length; x_0++)
                                            {
                                                for (int y = x + 1; y < GamesNumber; y++)
                                                {
                                                    for (int y_0 = 0; y_0 < LocateBuyResult[y].Split(',').Length; y_0++)
                                                    {
                                                        al.Add(Screenings[i] + "(" + LocateBuyResult[i].Split(',')[i_0].ToString() + ")|" + Screenings[j] + "(" + LocateBuyResult[j].Split(',')[j_0].ToString() + ")|" + Screenings[k] + "(" + LocateBuyResult[k].Split(',')[k_0].ToString() + ")|" + Screenings[x] + "(" + LocateBuyResult[x].Split(',')[x_0].ToString() + ")|" + Screenings[y] + "(" + LocateBuyResult[y].Split(',')[y_0].ToString() + ");" + TempWaysMultiples);
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }

                string[] Result = new string[al.Count];
                for (int i = 0; i < al.Count; i++)
                {
                    Result[i] = al[i].ToString();
                }

                return Result;
            }

            private string[] getAll6G(int GamesNumber, string[] Locate, string[] LocateBuyResult, string[] Screenings, int TempWaysMultiples)
            {
                ArrayList al = new ArrayList(); //取所有的六关，先存入ArrayList对象
                for (int i = 0; i < GamesNumber; i++)
                {
                    for (int i_0 = 0; i_0 < LocateBuyResult[i].Split(',').Length; i_0++)
                    {
                        for (int j = i + 1; j < GamesNumber; j++)
                        {
                            for (int j_0 = 0; j_0 < LocateBuyResult[j].Split(',').Length; j_0++)
                            {
                                for (int k = j + 1; k < GamesNumber; k++)
                                {
                                    for (int k_0 = 0; k_0 < LocateBuyResult[k].Split(',').Length; k_0++)
                                    {
                                        for (int x = k + 1; x < GamesNumber; x++)
                                        {
                                            for (int x_0 = 0; x_0 < LocateBuyResult[x].Split(',').Length; x_0++)
                                            {
                                                for (int y = x + 1; y < GamesNumber; y++)
                                                {
                                                    for (int y_0 = 0; y_0 < LocateBuyResult[y].Split(',').Length; y_0++)
                                                    {
                                                        for (int z = y + 1; z < GamesNumber; z++)
                                                        {
                                                            for (int z_0 = 0; z_0 < LocateBuyResult[z].Split(',').Length; z_0++)
                                                            {
                                                                al.Add(Screenings[i] + "(" + LocateBuyResult[i].Split(',')[i_0].ToString() + ")|" + Screenings[j] + "(" + LocateBuyResult[j].Split(',')[j_0].ToString() + ")|" + Screenings[k] + "(" + LocateBuyResult[k].Split(',')[k_0].ToString() + ")|" + Screenings[x] + "(" + LocateBuyResult[x].Split(',')[x_0].ToString() + ")|" + Screenings[y] + "(" + LocateBuyResult[y].Split(',')[y_0].ToString() + ")|" + Screenings[z] + "(" + LocateBuyResult[z].Split(',')[z_0].ToString() + ");" + TempWaysMultiples);
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }

                string[] Result = new string[al.Count];
                for (int i = 0; i < al.Count; i++)
                {
                    Result[i] = al[i].ToString();
                }

                return Result;
            }

            private string[] getAll7G(int GamesNumber, string[] Locate, string[] LocateBuyResult, string[] Screenings, int TempWaysMultiples)
            {
                ArrayList al = new ArrayList(); //取所有的七关，先存入ArrayList对象
                for (int i = 0; i < GamesNumber; i++)
                {
                    for (int i_0 = 0; i_0 < LocateBuyResult[i].Split(',').Length; i_0++)
                    {
                        for (int j = i + 1; j < GamesNumber; j++)
                        {
                            for (int j_0 = 0; j_0 < LocateBuyResult[j].Split(',').Length; j_0++)
                            {
                                for (int k = j + 1; k < GamesNumber; k++)
                                {
                                    for (int k_0 = 0; k_0 < LocateBuyResult[k].Split(',').Length; k_0++)
                                    {
                                        for (int x = k + 1; x < GamesNumber; x++)
                                        {
                                            for (int x_0 = 0; x_0 < LocateBuyResult[x].Split(',').Length; x_0++)
                                            {
                                                for (int y = x + 1; y < GamesNumber; y++)
                                                {
                                                    for (int y_0 = 0; y_0 < LocateBuyResult[y].Split(',').Length; y_0++)
                                                    {
                                                        for (int z = y + 1; z < GamesNumber; z++)
                                                        {
                                                            for (int z_0 = 0; z_0 < LocateBuyResult[z].Split(',').Length; z_0++)
                                                            {
                                                                for (int a = z + 1; a < GamesNumber; a++)
                                                                {
                                                                    for (int a_0 = 0; a_0 < LocateBuyResult[a].Split(',').Length; a_0++)
                                                                    {
                                                                        al.Add(Screenings[i] + "(" + LocateBuyResult[i].Split(',')[i_0].ToString() + ")|" + Screenings[j] + "(" + LocateBuyResult[j].Split(',')[j_0].ToString() + ")|" + Screenings[k] + "(" + LocateBuyResult[k].Split(',')[k_0].ToString() + ")|" + Screenings[x] + "(" + LocateBuyResult[x].Split(',')[x_0].ToString() + ")|" + Screenings[y] + "(" + LocateBuyResult[y].Split(',')[y_0].ToString() + ")|" + Screenings[z] + "(" + LocateBuyResult[z].Split(',')[z_0].ToString() + ")|" + Screenings[a] + "(" + LocateBuyResult[a].Split(',')[a_0].ToString() + ");" + TempWaysMultiples);
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }

                string[] Result = new string[al.Count];
                for (int i = 0; i < al.Count; i++)
                {
                    Result[i] = al[i].ToString();
                }

                return Result;
            }

            private string[] getAll8G(int GamesNumber, string[] Locate, string[] LocateBuyResult, string[] Screenings, int TempWaysMultiples)
            {
                ArrayList al = new ArrayList(); //取所有的六关，先存入ArrayList对象
                for (int i = 0; i < GamesNumber; i++)
                {
                    for (int i_0 = 0; i_0 < LocateBuyResult[i].Split(',').Length; i_0++)
                    {
                        for (int j = i + 1; j < GamesNumber; j++)
                        {
                            for (int j_0 = 0; j_0 < LocateBuyResult[j].Split(',').Length; j_0++)
                            {
                                for (int k = j + 1; k < GamesNumber; k++)
                                {
                                    for (int k_0 = 0; k_0 < LocateBuyResult[k].Split(',').Length; k_0++)
                                    {
                                        for (int x = k + 1; x < GamesNumber; x++)
                                        {
                                            for (int x_0 = 0; x_0 < LocateBuyResult[x].Split(',').Length; x_0++)
                                            {
                                                for (int y = x + 1; y < GamesNumber; y++)
                                                {
                                                    for (int y_0 = 0; y_0 < LocateBuyResult[y].Split(',').Length; y_0++)
                                                    {
                                                        for (int z = y + 1; z < GamesNumber; z++)
                                                        {
                                                            for (int z_0 = 0; z_0 < LocateBuyResult[z].Split(',').Length; z_0++)
                                                            {
                                                                for (int a = z + 1; a < GamesNumber; a++)
                                                                {
                                                                    for (int a_0 = 0; a_0 < LocateBuyResult[a].Split(',').Length; a_0++)
                                                                    {
                                                                        for (int b = a + 1; b < GamesNumber; b++)
                                                                        {
                                                                            for (int b_0 = 0; b_0 < LocateBuyResult[b].Split(',').Length; b_0++)
                                                                            {
                                                                                al.Add(Screenings[i] + "(" + LocateBuyResult[i].Split(',')[i_0].ToString() + ")|" + Screenings[j] + "(" + LocateBuyResult[j].Split(',')[j_0].ToString() + ")|" + Screenings[k] + "(" + LocateBuyResult[k].Split(',')[k_0].ToString() + ")|" + Screenings[x] + "(" + LocateBuyResult[x].Split(',')[x_0].ToString() + ")|" + Screenings[y] + "(" + LocateBuyResult[y].Split(',')[y_0].ToString() + ")|" + Screenings[z] + "(" + LocateBuyResult[z].Split(',')[z_0].ToString() + ")|" + Screenings[a] + "(" + LocateBuyResult[a].Split(',')[a_0].ToString() + ")|" + Screenings[b] + "(" + LocateBuyResult[b].Split(',')[b_0].ToString() + ");" + TempWaysMultiples);
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }

                string[] Result = new string[al.Count];
                for (int i = 0; i < al.Count; i++)
                {
                    Result[i] = al[i].ToString();
                }

                return Result;
            }
            #endregion

            public override double ComputeWin(string Number, string WinNumber, ref string Description, ref double WinMoneyNoWithTax, int PlayType, params double[] WinMoneyList)
            {
                return 0;
            }

            public override string AnalyseScheme(string Content, int PlayType)
            {
                int maxMultiple = 0;

                //验证并获取注数
                string CanonicalNumber = "";
                string[] strs = ToSingle(Content, ref CanonicalNumber, PlayType);

                if (strs == null || strs.Length == 0)
                    return "";

                for (int i = 0; i < strs.Length; i++)
                {
                    int temp = Shove._Convert.StrToInt(strs[i].Split(';')[1], 0);
                    maxMultiple = temp > maxMultiple ? temp : maxMultiple;
                }

                return Content + "|" + strs.Length.ToString();
            }

            public override bool AnalyseWinNumber(string Number)
            {
                return true;
            }

            private string FilterRepeated(string NumberPart, string strPlayType)
            {
                string[] NumberPartSort = NumberPart.Split(',');
                if (NumberPartSort.Length == 1)
                {
                    return NumberPart;
                }

                string TemNumberPartSort = "";
                string ReconstructionNumberPart = "";
                int intNumberPartJ = 0;
                int intNumberPartJ1 = 0;
                for (int i = 0; i < NumberPartSort.Length; i++)
                {
                    for (int j = 1; j < NumberPartSort.Length - i; j++)
                    {
                        try
                        {
                            intNumberPartJ = int.Parse(NumberPartSort[j]);
                        }
                        catch
                        {
                            intNumberPartJ = -1;
                        }

                        try
                        {
                            intNumberPartJ1 = int.Parse(NumberPartSort[j - 1]);
                        }
                        catch
                        {
                            intNumberPartJ1 = -1;
                        }

                        if (intNumberPartJ < intNumberPartJ1)
                        {
                            TemNumberPartSort = NumberPartSort[j - 1];
                            NumberPartSort[j - 1] = NumberPartSort[j];
                            NumberPartSort[j] = TemNumberPartSort;
                        }
                    }
                }

                for (int i = 0; i < NumberPartSort.Length; i++)
                {
                    if (("12".IndexOf(NumberPartSort[i]) >= 0) && (strPlayType == "7301"))
                    {
                        ReconstructionNumberPart += NumberPartSort[i] + ",";
                    }
                    else if (("12".IndexOf(NumberPartSort[i]) >= 0) && (strPlayType == "7302"))
                    {
                        ReconstructionNumberPart += NumberPartSort[i] + ",";
                    }
                    else if (strPlayType == "7303") //1-12
                    {
                        int TemNumberPart = 0;
                        try
                        {
                            TemNumberPart = int.Parse(NumberPartSort[i]);
                        }
                        catch
                        {
                            TemNumberPart = 0;
                        }
                        if ((TemNumberPart > 0) && (TemNumberPart < 13))
                        {
                            ReconstructionNumberPart += NumberPartSort[i] + ",";
                        }
                    }
                    else if (("12".IndexOf(NumberPartSort[i]) >= 0) && (strPlayType == "7304"))     //1-4
                    {
                        ReconstructionNumberPart += NumberPartSort[i] + ",";
                    }
                }

                //去重复
                string[] temp = ReconstructionNumberPart.Split(',');
                ReconstructionNumberPart = "";
                foreach (string t in temp)
                {
                    if (ReconstructionNumberPart.IndexOf(t + ",") == -1)
                    {
                        ReconstructionNumberPart += t + ",";
                    }
                }

                ReconstructionNumberPart = ReconstructionNumberPart.Substring(0, ReconstructionNumberPart.Length - 1);
                return ReconstructionNumberPart;
            }

            public override string ShowNumber(string Number)
            {
                return base.ShowNumber(Number, " ");
            }
        }
    }
}
