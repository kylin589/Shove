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
        /// 浙江体彩6+1
        /// </summary>
        public partial class ZJTC6J1 : LotteryBase
        {
            #region 静态变量
            public const int PlayType_D = 4101;
            public const int PlayType_F = 4102;

            public const int ID = 41;
            public const string sID = "41";
            public const string Name = "浙江体彩6+1";
            public const string Code = "ZJTC6J1";
            public const double MaxMoney = 20000;
            #endregion

            public ZJTC6J1()
            {
                id = 41;
                name = "浙江体彩6+1";
                code = "ZJTC6J1";
            }

            public override bool CheckPlayType(int play_type)
            {
                return ((play_type >= 4101) && (play_type <= 4102));
            }

            public override PlayType[] GetPlayTypeList()
            {
                PlayType[] Result = new PlayType[2];

                Result[0] = new PlayType(PlayType_D, "单式");
                Result[1] = new PlayType(PlayType_F, "复式");

                return Result;
            }

            public override string BuildNumber(int Num)	//id = 41
            {
                System.Random rd = new Random();
                StringBuilder sb = new StringBuilder();

                for (int i = 0; i < Num; i++)
                {
                    string LotteryNumber = "";
                    for (int j = 0; j < 6; j++)
                    {
                        LotteryNumber += rd.Next(0, 9 + 1).ToString();
                    }

                    LotteryNumber += "-" + rd.Next(0, 9 + 1).ToString();

                    sb.Append(LotteryNumber.Trim() + "\n");
                }

                string Result = sb.ToString();
                Result = Result.Substring(0, Result.Length - 1);
                return Result;
            }

            public override string[] ToSingle(string Number, ref string CanonicalNumber, int PlayType)	//复式取单式, 后面 ref 参数是将彩票规范化，如：103(00)... 变成1030...
            {
                string[] Locate = new string[7];
                CanonicalNumber = "";

                Regex regex = new Regex(@"(?<L0>(\d)|([(][\d]+?[)]))(?<L1>(\d)|([(][\d]+?[)]))(?<L2>(\d)|([(][\d]+?[)]))(?<L3>(\d)|([(][\d]+?[)]))(?<L4>(\d)|([(][\d]+?[)]))(?<L5>(\d)|([(][\d]+?[)]))[-](?<L6>(\d)|([(][\d]+?[)]))", RegexOptions.IgnoreCase | RegexOptions.Compiled);
                Match m = regex.Match(Number);
                for (int i = 0; i < 7; i++)
                {
                    Locate[i] = m.Groups["L" + i.ToString()].ToString().Trim();
                    if (Locate[i] == "")
                    {
                        CanonicalNumber = "";
                        return null;
                    }

                    if (Locate[i].Length > 1)
                    {
                        Locate[i] = Locate[i].Substring(1, Locate[i].Length - 2);
                        if (Locate[i].Length > 1)
                            Locate[i] = FilterRepeated(Locate[i]);
                        if (Locate[i] == "")
                        {
                            CanonicalNumber = "";
                            return null;
                        }
                    }

                    if (i == 6)
                    {
                        CanonicalNumber += "-";
                    }

                    if (Locate[i].Length > 1)
                        CanonicalNumber += "(" + Locate[i] + ")";
                    else
                        CanonicalNumber += Locate[i];
                }

                ArrayList al = new ArrayList();

                #region 循环取单式
                for (int i_0 = 0; i_0 < Locate[0].Length; i_0++)
                {
                    string str_0 = Locate[0][i_0].ToString();
                    for (int i_1 = 0; i_1 < Locate[1].Length; i_1++)
                    {
                        string str_1 = str_0 + Locate[1][i_1].ToString();
                        for (int i_2 = 0; i_2 < Locate[2].Length; i_2++)
                        {
                            string str_2 = str_1 + Locate[2][i_2].ToString();
                            for (int i_3 = 0; i_3 < Locate[3].Length; i_3++)
                            {
                                string str_3 = str_2 + Locate[3][i_3].ToString();
                                for (int i_4 = 0; i_4 < Locate[4].Length; i_4++)
                                {
                                    string str_4 = str_3 + Locate[4][i_4].ToString();
                                    for (int i_5 = 0; i_5 < Locate[5].Length; i_5++)
                                    {
                                        string str_5 = str_4 + Locate[5][i_5].ToString();
                                        for (int i_6 = 0; i_6 < Locate[6].Length; i_6++)
                                        {
                                            string str_6 = str_5 + "-" + Locate[6][i_6].ToString();
                                            al.Add(str_6);
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
                #endregion

                string[] Result = new string[al.Count];
                for (int i = 0; i < al.Count; i++)
                    Result[i] = al[i].ToString();
                return Result;
            }

            public override double ComputeWin(string Number, string WinNumber, ref string Description, ref double WinMoneyNoWithTax, int PlayType, params double[] WinMoneyList)
            {
                WinNumber = WinNumber.Trim();
                if (WinNumber.Length < 8)	//8: 123456-7
                    return -1;
                string[] Lotterys = SplitLotteryNumber(Number);
                if (Lotterys == null)
                    return -2;
                if (Lotterys.Length < 1)
                    return -2;
                if ((WinMoneyList == null) || (WinMoneyList.Length < 12))
                    return -3;

                int Description0 = 0, Description1 = 0, Description2 = 0, Description3 = 0, Description4 = 0, Description5 = 0;
                double WinMoney = 0;
                WinMoneyNoWithTax = 0;
                Description = "";

                for (int ii = 0; ii < Lotterys.Length; ii++)
                {
                    string t_str = "";
                    string[] Lottery = ToSingle(Lotterys[ii], ref t_str, PlayType);
                    if (Lottery == null)
                        continue;
                    if (Lottery.Length < 1)
                        continue;

                    for (int i = 0; i < Lottery.Length; i++)
                    {
                        if (Lottery[i].Length < 8)
                            continue;
                        if (Lottery[i] == WinNumber)
                        {
                            Description0++;
                            WinMoney += WinMoneyList[0];
                            WinMoneyNoWithTax += WinMoneyList[1];
                            continue;
                        }

                        if (Lottery[i].Substring(0, 6) == WinNumber.Substring(0, 6))
                        {
                            Description1++;
                            WinMoney += WinMoneyList[2];
                            WinMoneyNoWithTax += WinMoneyList[3];
                            continue;
                        }

                        int j;
                        bool End = false;

                        for (j = 0; j <= 1; j++)
                        {
                            if (Lottery[i].Substring(j, 5) == WinNumber.Substring(j, 5))
                            {
                                Description2++;
                                WinMoney += WinMoneyList[4];
                                WinMoneyNoWithTax += WinMoneyList[5];
                                End = true;
                                break;
                            }
                        }

                        if (End)
                        {
                            continue;
                        }

                        for (j = 0; j <= 2; j++)
                        {
                            if (Lottery[i].Substring(j, 4) == WinNumber.Substring(j, 4))
                            {

                                Description3++;
                                WinMoney += WinMoneyList[6];
                                WinMoneyNoWithTax += WinMoneyList[7];
                                End = true;
                                break;
                            }
                        }

                        if (End)
                        {
                            continue;
                        }

                        for (j = 0; j <= 3; j++)
                        {
                            if (Lottery[i].Substring(j, 3) == WinNumber.Substring(j, 3))
                            {
                                Description4++;
                                WinMoney += WinMoneyList[8];
                                WinMoneyNoWithTax += WinMoneyList[9];
                                End = true;
                                break;
                            }
                        }

                        if (End)
                        {
                            continue;
                        }

                        for (j = 0; j <= 4; j++)
                        {
                            if (Lottery[i].Substring(j, 2) == WinNumber.Substring(j, 2))
                            {
                                Description5++;
                                WinMoney += WinMoneyList[10];
                                WinMoneyNoWithTax += WinMoneyList[11];
                                End = true;
                                break;
                            }
                        }
                    }
                }

                if (Description0 > 0)
                {
                    if (Description != "")
                        Description += "，";
                    Description = "特等奖" + Description0.ToString() + "注";
                }
                if (Description1 > 0)
                {
                    if (Description != "")
                        Description += "，";
                    Description = "一等奖" + Description1.ToString() + "注";
                }
                if (Description2 > 0)
                {
                    if (Description != "")
                        Description += "，";
                    Description += "二等奖" + Description2.ToString() + "注";
                }
                if (Description3 > 0)
                {
                    if (Description != "")
                        Description += "，";
                    Description += "三等奖" + Description3.ToString() + "注";
                }
                if (Description4 > 0)
                {
                    if (Description != "")
                        Description += "，";
                    Description += "四等奖" + Description4.ToString() + "注";
                }
                if (Description5 > 0)
                {
                    if (Description != "")
                        Description += "，";
                    Description += "五等奖" + Description5.ToString() + "注";
                }
                if (Description != "")
                    Description += "。";

                return WinMoney;
            }

            public override string AnalyseScheme(string Content, int PlayType)
            {
                string[] strs = Content.Split('\n');
                if (strs == null)
                    return "";
                if (strs.Length == 0)
                    return "";

                string Result = "";

                string RegexString;
                if (PlayType == PlayType_D)
                    RegexString = @"(\d){6}[-][\d]";
                else
                    RegexString = @"((\d)|([(]\d{1,10}[)])){6}[-]((\d)|([(]\d{1,10}[)]))";
                Regex regex = new Regex(RegexString, RegexOptions.Compiled | RegexOptions.IgnoreCase);

                for (int i = 0; i < strs.Length; i++)
                {
                    Match m = regex.Match(strs[i]);
                    if (m.Success)
                    {
                        string CanonicalNumber = "";
                        string[] singles = ToSingle(m.Value, ref CanonicalNumber, PlayType);
                        if (singles == null)
                            continue;
                        if ((singles.Length >= ((PlayType == PlayType_D) ? 1 : 2)))
                            Result += CanonicalNumber + "|" + singles.Length.ToString() + "\n";
                    }
                }

                if (Result.EndsWith("\n"))
                    Result = Result.Substring(0, Result.Length - 1);
                return Result;
            }

            public override bool AnalyseWinNumber(string Number)
            {
                Regex regex = new Regex(@"([\d]){6}[-][\d]", RegexOptions.Compiled | RegexOptions.IgnoreCase);
                if (!regex.IsMatch(Number))
                    return false;

                string t_str = "";
                string[] WinLotteryNumber = ToSingle(Number, ref t_str, PlayType_D);

                if ((WinLotteryNumber == null) || (WinLotteryNumber.Length != 1))
                    return false;

                return true;
            }

            private string FilterRepeated(string NumberPart)
            {
                string Result = "";
                for (int i = 0; i < NumberPart.Length; i++)
                {
                    if ((Result.IndexOf(NumberPart.Substring(i, 1)) == -1) && ("0123456789".IndexOf(NumberPart.Substring(i, 1)) >= 0))
                        Result += NumberPart.Substring(i, 1);
                }
                return Sort(Result);
            }

            public override string ShowNumber(string Number)
            {
                return base.ShowNumber(Number, " ");
            }
        }
    }
}