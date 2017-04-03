using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Xml.Linq;
using System.Collections.Generic;
using System.Xml;
using System.Text.RegularExpressions;

namespace SZJS.ElectronTicketbase.Task
{

    public class ElectronTicketBase
    {

        public ElectronTicketBase()
        {

            //
            //TODO: 在此处添加构造函数逻辑
            //
        }

        public class ElectronTicketOne
        {
            #region 获取大赢家彩种ID
            /// <summary>
            /// 获取大赢家彩种ID
            /// </summary>
            /// <param name="lottreyID"></param>
            /// <returns></returns>
            public string GetLotteryID(string lottreyID)
            {
                string type = "";
                switch (lottreyID)
                {
                    case "29":
                        type = "10202";//上海时时乐
                        break;
                    case "28":
                        type = "10401";//重庆时时彩
                        break;
                    case "61":
                        type = "13001";//江西时时彩
                        break;
                    case "70":
                        type = "23009";//江西11选5
                        break;
                    case "5":
                        type = "51";//双色球
                        break;
                    case "6":
                        type = "52";//福彩3D
                        break;
                    case "63":
                        type = "33";//排三
                        break;
                    case "64":
                        type = "35";//排五
                        break;
                    case "2":
                        type = "18";//四场进球彩
                        break;
                    case "15":
                        type = "16";//足彩半全场
                        break;
                    case "45":
                        type = "41";//北京单场足彩
                        break;
                    case "72":
                        type = "42";//竞彩足球
                        break;
                    case "39":
                        type = "23529";//超级大乐透
                        break;
                    case "13":
                        type = "23528";//七乐彩
                        break;
                    case "3":
                        type = "10022";//七星彩
                        break;
                    case "9":
                        type = "23525";//体彩22选5
                        break;
                    case "65":
                        type = "23526";//体彩31选7
                        break;
                    case "46":
                        type = "20303";//天津15选5
                        break;
                    case "74":
                        type = "11";//足彩胜负彩
                        break;
                    case "75":
                        type = "19";//足彩任九场
                        break;

                }
                return type;
            }
            #endregion

            #region 转换期号格式


            /// <summary>
            /// 期号格式转换
            /// </summary>
            /// <param name="lotteryID">彩种ID</param>
            /// <param name="isuseName">期号ID</param>
            /// <returns>期号格式</returns>
            public string GetIsuse(int lotteryID, string isuseName)
            {
                string year = System.DateTime.Now.Year.ToString();

                if (lotteryID == 61)//江西时时彩
                {
                    isuseName = year.Substring(2, 2) + isuseName;
                }

                if (lotteryID == 70 || lotteryID == 62)//11选5,十一夺金（多乐彩）
                {
                    isuseName = year.Substring(0, 2) + isuseName;
                }

                if (lotteryID == 28)//重庆时时彩
                {
                    isuseName = isuseName.Remove(0, 2);
                    isuseName = isuseName.Replace("-", "");
                }

                return isuseName;
            }
            #endregion

            #region 转换投注结果格式
            /// <summary>
            /// 转换投注结果格式
            /// </summary>
            /// <param name="playType">玩法类型ID</param>
            /// <param name="number">投注结果</param>
            /// <returns>转换后的投注结果格式</returns>
            public string GetLottreyNumber(int playType, string number)
            {
                string lottreyNumber = "";
                number = number.TrimEnd();
                number = number.TrimStart();
                number = number.Replace("\r\n", "~");
                string[] nums = number.ToString().Split('~');
                string xingss = GetXing(playType, nums[0]);
                string[] split = xingss.ToString().Split('|');
                string x = xingss.Substring(0, xingss.IndexOf("|") + 1);

                if (split.Length > 1 && split[1].ToString() == "1" || playType == 2904 || playType == 2905 || playType == 3901 || playType == 3902 || playType == 3903 || playType == 3904 || playType == 3905 || playType == 3906 || playType == 501 || playType == 502 || playType == 503 || playType == 1301 || playType == 1302 || playType == 6104 || playType == 2804)
                {
                    for (int k = 0; k < nums.Length; k++)
                    {
                        lottreyNumber += x;
                        nums[k] = nums[k].Replace(",", "$");
                        nums[k] = nums[k].Replace("+", "-");
                        nums[k] = nums[k].Replace("|", ",");
                        nums[k] = nums[k].Replace("大", "2");
                        nums[k] = nums[k].Replace("小", "1");
                        nums[k] = nums[k].Replace("单", "5");
                        nums[k] = nums[k].Replace("双", "4");
                        lottreyNumber += nums[k] + ";";
                    }
                    lottreyNumber = lottreyNumber.Substring(0, lottreyNumber.LastIndexOf(";"));
                    return lottreyNumber;
                }

                //时时彩 福彩3D，排列3（包点，和值）
                else if (split.Length > 1 && split[1].ToString() == "2")
                {
                    lottreyNumber += x + number.Replace("~", ",") + ";";
                }

                #region 时时乐  前一后一
                //时时乐  前一 后一
                else if (split.Length > 1 && split[1].ToString() == "3")
                {
                    for (int k = 0; k < nums.Length; k++)
                    {
                        if (playType == 2912 || playType == 2913)// 前一单复
                        {
                            lottreyNumber += x + nums[k] + ",-,-;";
                        }
                        else// 后一单复
                        {
                            lottreyNumber += x + "-,-," + nums[k] + ";";
                        }
                    }
                }
                #endregion

                //22选5,31选7,七乐彩
                else if (playType == 901 || playType == 902 || playType == 6501 || playType == 6502 || playType == 1301 || playType == 1302 || playType == 3905 || playType == 3906)
                {
                    for (int k = 0; k < nums.Length; k++)
                    {
                        lottreyNumber += x + nums[k] + ";";
                    }
                }

                #region Else
                else
                {
                    string result = "";
                    for (int k = 0; k < nums.Length; k++)//注数
                    {
                        if (playType == 6113 || playType == 6115)//时时彩三星组选（3,6）单式
                        {
                            nums[k] = nums[k].Replace("-", "");
                        }

                        lottreyNumber += xingss;
                        char[] num = nums[k].ToCharArray();
                        int flag = -1;
                        for (int i = 0; i < num.Length; i++)
                        {
                            flag = flag + 1;
                            if (num[i].ToString().Equals("("))
                            {
                                flag = i + 1;
                            }
                            if (num[i].ToString().Equals(")"))
                            {
                                flag = i - 1;
                            }

                            if (flag > i || i == num.Length)
                            {
                                lottreyNumber = lottreyNumber + num[i].ToString();
                            }
                            else
                            {
                                lottreyNumber = lottreyNumber + num[i].ToString() + ",";
                            }
                        }
                        lottreyNumber = lottreyNumber.Replace('(', ' ');
                        lottreyNumber = lottreyNumber.Replace(')', ' ');
                        lottreyNumber = lottreyNumber.Substring(0, lottreyNumber.Trim().ToString().Length);
                        lottreyNumber = lottreyNumber.Substring(0, lottreyNumber.LastIndexOf(","));
                        lottreyNumber = lottreyNumber.Replace(" ", "");

                        if (playType == 2909 || playType == 2908)//时时乐 前二单复
                        {
                            lottreyNumber = lottreyNumber + ",-";
                        }

                        #region 时时彩任选一二
                        //时时彩  任选一
                        if (playType == 6117)
                        {
                            lottreyNumber = lottreyNumber.Remove(0, 3);
                            string[] SZ = lottreyNumber.Split(',');
                            for (int j = 0; j < SZ.Length; j++)
                            {
                                for (int zz = 0; zz < SZ[j].ToString().Length; zz++)
                                {
                                    if (SZ[j][zz].ToString() != "-")
                                    {
                                        int q = j;
                                        int h = 4 - j;
                                        result += xingss;
                                        for (int xx = 0; xx < q; xx++)
                                        {
                                            result += "-,";
                                        }
                                        result += SZ[j][zz].ToString();
                                        for (int yy = 0; yy < h; yy++)
                                        {
                                            result += ",-";
                                        }
                                        result += "; ";
                                    }
                                }
                            }
                            return result;
                        }
                        //时时彩  任选二  
                        if (playType == 6118)
                        {
                            lottreyNumber = lottreyNumber.Remove(0, 3);
                            string[] SZ = lottreyNumber.Split(',');
                            string str = "";

                            for (int i = 0; i < SZ.Length; i++)
                            {
                                if (SZ[i] != "-")
                                {
                                    char[] NowNumsSZ = SZ[i].ToCharArray();
                                    for (int j = 0; j < NowNumsSZ.Length; j++)
                                    {

                                        for (int jj = i + 1; jj < SZ.Length; jj++)
                                        {
                                            char[] nowSz = SZ[jj].ToString().ToCharArray();
                                            for (int kkk = 0; kkk < nowSz.Length; kkk++)
                                            {
                                                if (nowSz[kkk].ToString() != "-")
                                                {
                                                    string strs = "";
                                                    for (int kk = 0; kk < 5; kk++)
                                                    {
                                                        if (kk == i)
                                                        {
                                                            strs = strs + NowNumsSZ[j].ToString() + ",";
                                                        }
                                                        else if (kk == jj)
                                                        {
                                                            strs = strs + nowSz[kkk].ToString() + ",";
                                                        }
                                                        else
                                                        {
                                                            strs = strs + "-,";
                                                        }
                                                    }
                                                    result += xingss;
                                                    result += strs;
                                                    result = result.Substring(0, result.Length - 1) + ";";
                                                }
                                            }
                                        }
                                    }
                                }
                                else
                                {
                                    str = str + "-,";
                                }
                            }
                            return result;
                        }
                        #endregion

                        lottreyNumber += ";";
                    }

                    string[] SSL = lottreyNumber.Split(';');
                    if (playType == 2910 || playType == 2911)//时时乐 后二单复
                    {
                        for (int i = 0; i < SSL.Length - 1; i++)
                        {
                            result += SSL[i].ToString().Substring(0, 3) + "-," + SSL[i].ToString().Substring(3, SSL[i].ToString().Length - 3) + ";";
                        }
                        return result;
                    }

                    if (playType == 7501 || playType == 7502)//任九场
                    {
                        lottreyNumber = lottreyNumber.Replace("-", "#");
                    }
                }
                #endregion

                lottreyNumber = lottreyNumber.Substring(0, lottreyNumber.LastIndexOf(";"));
                return lottreyNumber;
            }

            #region 根据玩法ID获取投注结果的编号值
            /// <summary>
            /// 根据玩法ID获取编号值
            /// </summary>
            /// <param name="playType">玩法类型ID</param>
            /// <param name="number">投注结果</param>
            /// <returns>编号值</returns>
            public string GetXing(int playType, string number)
            {
                string xingss = "";
                string[] xing = number.ToString().Split('-');
                int xings = int.Parse(xing.Length.ToString());
                xings = 6 - xings;

                switch (playType)
                {

                    //-------上海时时乐
                    case 2901://直选单式
                        xingss = "1|";
                        break;
                    case 2902://直选复式
                        xingss = "1|";
                        break;
                    case 2903://组选单式
                        xingss = "6|";
                        break;
                    case 2904://组选6复式
                        xingss = "F6|";
                        break;
                    case 2905://组选3复式
                        xingss = "F3|";
                        break;
                    case 2906://直选和值
                        xingss = "S1|2";
                        break;
                    case 2907://组选和值
                        xingss = "S3|2";//(S3/S6)
                        break;
                    case 2908://前2单式
                        xingss = "2D|";
                        break;
                    case 2909://前2复式
                        xingss = "2D|";
                        break;
                    case 2910://后2单式
                        xingss = "2D|";
                        break;
                    case 2911://后2复式
                        xingss = "2D|";
                        break;
                    case 2912://前1单式
                        xingss = "1D|3";
                        break;
                    case 2913://前1复式
                        xingss = "1D|3";
                        break;
                    case 2914://后1单式
                        xingss = "1D|3";
                        break;
                    case 2915://后1复式
                        xingss = "1D|3";
                        break;

                    //-------福彩3D
                    case 601://直选单式
                        xingss = "1|";
                        break;
                    case 602://直选复式
                        xingss = "1|";
                        break;
                    case 603://组选单式
                        xingss = "6|";
                        break;
                    case 604://组选6复式
                        xingss = "6|";
                        break;
                    case 605://组选3复式
                        xingss = "6|";
                        break;

                    case 606://直选包点
                        xingss = "F3|2";
                        break;
                    case 607://组选包点
                        xingss = "F6|2";
                        break;

                    //-------排列3
                    case 6301://直选单式
                        xingss = "1|";
                        break;
                    case 6302://直选复式
                        xingss = "1|";
                        break;
                    case 6303://组选单式
                        xingss = "6|";
                        break;
                    case 6304://组选6复式
                        xingss = "6|";
                        break;
                    case 6305://组选3复式
                        xingss = "6|";
                        break;
                    case 6306://直选和值
                        xingss = "S1|2";
                        break;
                    case 6307://组选和值
                        xingss = "S9|2";
                        break;

                    //-------11选5
                    case 7001://任选1
                        xingss = "R1|1";
                        break;
                    case 7002://任选2
                        xingss = "R2|1";
                        break;
                    case 7003://任选3
                        xingss = "R3|1";
                        break;
                    case 7004://任选4
                        xingss = "R4|1";
                        break;
                    case 7005://任选5
                        xingss = "R5|1";
                        break;
                    case 7006://任选6
                        xingss = "R6|1";
                        break;
                    case 7007://任选7
                        xingss = "R7|1";
                        break;
                    case 7008://任选8
                        xingss = "R8|1";
                        break;

                    case 7009://直选2
                        xingss = "Q2|1";
                        break;
                    case 7010://直选3
                        xingss = "Q3|1";
                        break;

                    case 7011://组选2   
                        xingss = "Z2|1";
                        break;
                    case 7012://组选3
                        xingss = "Z3|1";
                        break;

                    //-------11运夺金
                    case 6201://任选1
                        xingss = "R1|1";
                        break;
                    case 6202://任选2
                        xingss = "R2|1";
                        break;
                    case 6203://任选3
                        xingss = "R3|1";
                        break;
                    case 6204://任选4
                        xingss = "R4|1";
                        break;
                    case 6205://任选5
                        xingss = "R5|1";
                        break;
                    case 6206://任选6
                        xingss = "R6|1";
                        break;
                    case 6207://任选7
                        xingss = "R7|1";
                        break;
                    case 6208://任选8
                        xingss = "R8|1";
                        break;

                    case 6209://直选2
                        xingss = "Q2|1";
                        break;
                    case 6210://直选3
                        xingss = "Q3|1";
                        break;

                    case 6211://组选2   
                        xingss = "Z2|1";
                        break;
                    case 6212://组选3
                        xingss = "Z3|1";
                        break;
                    //--------重庆时时彩

                    case 2801://所有单选,
                        xingss = xings + "D|";
                        break;
                    case 2802://所有复式（选）
                        xingss = xings + "F|";
                        break;
                    case 2803://组合玩法
                        xingss = xings + "D|";
                        break;
                    case 2804://猜大小
                        xingss = "DD|";
                        break;
                    case 2805://五星通选单式
                        xingss = "5T|";
                        break;
                    case 2806://五星通选复式
                        xingss = "5T|";
                        break;
                    case 2807://二星组选单式
                        xingss = xings + "D|";
                        break;
                    case 2808://二星组选复式
                        xingss = "F2|1";
                        break;
                    case 2809://二星组选分位
                        xingss = "Z2|";
                        break;
                    case 2810://二星组选包点
                        xingss = "S2|2";
                        break;
                    case 2811://二星组选包胆--------------
                        xingss = xings + "D|";
                        break;
                    case 2812: //三星复选
                        xingss = "3F|";
                        break;


                    //--------时时彩
                    case 6101://所有单选,
                        xingss = xings + "D|";
                        break;
                    case 6102://所有复式（选）
                        xingss = xings + "F|";
                        break;
                    case 6103://组选
                        xingss = xings + "D|";
                        break;
                    case 6104://大小
                        xingss = "DD|";
                        break;
                    case 6105://五星通选单式
                        xingss = "5T|";
                        break;
                    case 6106://五星通选复式
                        xingss = "5T|";
                        break;

                    case 6108: //二星组选复式
                        xingss = "F2|1";
                        break;
                    case 6109://二星组选分位
                        xingss = "Z2|";
                        break;
                    case 6110://二星组选包点
                        xingss = "S2|2";
                        break;

                    case 6113://三星组选三单式------------三星组选单式Z3
                        xingss = "Z3|";
                        break;
                    case 6114://三星组选三复式
                        xingss = "F3|1";
                        break;
                    case 6115://三星组选六单式----------三星组选单式Z3
                        xingss = "Z3|";
                        break;
                    case 6116://三星组选六复式
                        xingss = "F6|1";
                        break;
                    case 6117://任选一
                        xingss = "R1|";
                        break;
                    case 6118://任选二
                        xingss = "R2|";
                        break;
                    default:
                        xingss = "";
                        break;
                }

                return xingss;
            }
            #endregion

            #endregion

        }

        public class ElectronTicketTwo
        {

            #region 转换期号格式


            /// <summary>
            /// 期号格式转换
            /// </summary>
            /// <param name="lotteryID">彩种ID</param>
            /// <param name="isuseName">期号ID</param>
            /// <returns>期号格式</returns>
            public string GetToPalyIsuse(int lotteryID, string isuseName)
            {
                string year = System.DateTime.Now.Year.ToString();
                //四场进球彩，七星彩，22选5，六场半全场，超级大乐透，排列三/五，胜负彩，任九场
                if (lotteryID == 2 || lotteryID == 3 || lotteryID == 9 || lotteryID == 15 || lotteryID == 39 || lotteryID == 63 || lotteryID == 64 || lotteryID == 74 || lotteryID == 75)
                {
                    isuseName = isuseName.Remove(0, 2);
                }

                if (lotteryID == 61)//江西时时彩
                {

                    isuseName = year.Substring(0, 4) + System.DateTime.Now.Month + System.DateTime.Now.Day + "-" + isuseName.Substring(4, 3);
                }
                return isuseName;
            }
            #endregion

            #region 转投注内容格式--中卓彩

            /// <summary>
            /// 转投注内容格式--中卓彩
            /// </summary>
            /// <param name="playtype">玩法</param>
            /// <param name="number">投注内容</param>
            /// <returns></returns>
            public List<string> ToResault(int playtype, string number)
            {
                decimal moneys = 0;
                string lottreyNumber = "";
                number = number.TrimEnd();
                number = number.TrimStart();
                number = number.Replace("\r\n", "~");
                string[] nums = number.ToString().Split('~');
                bool Ds = false;
                List<string> result = new List<string>();
                string type = ToPlaytypes(playtype, number);
                if (playtype == 3902 || playtype == 3904 || playtype == 3906)//大乐透 
                {
                    for (int k = 0; k < nums.Length; k++)
                    {
                        nums[k] = nums[k].Replace(" ", "");
                        nums[k] = "-" + nums[k];
                        nums[k] = nums[k].Replace("+", "--");

                        lottreyNumber += nums[k] + ";";
                    }
                }
                else if (playtype == 7402 || playtype == 7502 || playtype == 1502 || playtype == 202 || playtype == 6302 || playtype == 6402 || playtype == 302 || playtype == 602 || playtype == 6117 || playtype == 6118 || playtype == 6103 || playtype == 6106)//足彩|排列3复6302|排列5复6402|七星彩复302|福彩3D直选复602|时时彩任1，任2，组合(待完)
                {
                    string LoNumber = "";
                    for (int k = 0; k < nums.Length; k++)
                    {

                        if (playtype == 7502)
                        {
                            nums[k] = nums[k].Replace("-", "#");
                        }
                        int d = nums[k].Length;
                        char[] num = nums[k].ToCharArray();
                        int flag = -1;
                        for (int i = 0; i < num.Length; i++)
                        {
                            flag = flag + 1;
                            if (num[i].ToString().Equals("("))
                            {
                                flag = i + 1;
                            }
                            if (num[i].ToString().Equals(")"))
                            {
                                flag = i - 1;
                            }

                            if (flag > i || i == num.Length)
                            {
                                lottreyNumber = lottreyNumber + num[i].ToString();
                            }
                            else
                            {
                                if (playtype == 6118 || playtype == 6117 || playtype == 6103 || playtype == 6106)//时时彩任一，二组合
                                {
                                    lottreyNumber = lottreyNumber + num[i].ToString() + ",";
                                }
                                else
                                {
                                    lottreyNumber = lottreyNumber + num[i].ToString() + "-";

                                }
                            }
                        }
                        lottreyNumber = lottreyNumber.Replace("(", "");
                        lottreyNumber = lottreyNumber.Replace(")", "");
                        if (lottreyNumber[lottreyNumber.Length - 1] == '-')
                        {
                            lottreyNumber = lottreyNumber.Remove(lottreyNumber.Length - 1, 1);
                        }
                        lottreyNumber = lottreyNumber.Replace(" ", "");
                        lottreyNumber = lottreyNumber.Replace("#", "X");

                        if (playtype == 6103 || playtype == 6106)//时时彩组合
                        {
                            lottreyNumber = lottreyNumber.Replace("-,", "X-");
                            lottreyNumber = lottreyNumber.Replace(",", "-");
                            lottreyNumber = lottreyNumber.Substring(0, lottreyNumber.LastIndexOf("-")) + "-X-";

                        }
                        #region 任一，二
                        //时时彩  任选一
                        if (playtype == 6117)
                        {
                            Ds = true;
                            string[] SZ = lottreyNumber.Split(',');
                            lottreyNumber = "";
                            for (int j = 0; j < SZ.Length; j++)
                            {
                                for (int zz = 0; zz < SZ[j].ToString().Length; zz++)
                                {
                                    if (SZ[j][zz].ToString() != "-")
                                    {
                                        int q = j;
                                        int h = 4 - j;
                                        for (int xx = 0; xx < q; xx++)
                                        {
                                            LoNumber += "-,";
                                        }
                                        LoNumber += SZ[j][zz].ToString();
                                        for (int yy = 0; yy < h; yy++)
                                        {
                                            LoNumber += ",-";
                                        }
                                        LoNumber += ";";
                                    }
                                }
                            }
                            LoNumber = LoNumber.Substring(0, LoNumber.LastIndexOf(";"));
                            LoNumber = LoNumber.Replace(",", "");
                        }
                        if (playtype == 6118)//时时彩任2
                        {
                            Ds = true;
                            string[] SZ = lottreyNumber.Split(',');
                            string str = "";
                            lottreyNumber = "";

                            for (int i = 0; i < SZ.Length; i++)
                            {
                                if (SZ[i] != "-")
                                {
                                    char[] NowNumsSZ = SZ[i].ToCharArray();
                                    for (int j = 0; j < NowNumsSZ.Length; j++)
                                    {

                                        for (int jj = i + 1; jj < SZ.Length; jj++)
                                        {
                                            char[] nowSz = SZ[jj].ToString().ToCharArray();
                                            for (int kkk = 0; kkk < nowSz.Length; kkk++)
                                            {
                                                if (nowSz[kkk].ToString() != "-")
                                                {
                                                    string strs = "";
                                                    for (int kk = 0; kk < 5; kk++)
                                                    {
                                                        if (kk == i)
                                                        {
                                                            strs = strs + NowNumsSZ[j].ToString() + ",";
                                                        }
                                                        else if (kk == jj)
                                                        {
                                                            strs = strs + nowSz[kkk].ToString() + ",";
                                                        }
                                                        else if (kk > jj)
                                                        {
                                                            strs = strs + "X,";
                                                        }
                                                        else
                                                        {
                                                            strs = strs + "-,";
                                                        }
                                                    }
                                                    LoNumber += strs;
                                                    LoNumber = LoNumber.Substring(0, LoNumber.Length - 1) + ";";
                                                }
                                            }
                                        }
                                    }
                                }
                                else
                                {
                                    str = str + "-,";
                                }
                            }
                            LoNumber = LoNumber.Substring(0, LoNumber.LastIndexOf(";"));
                            LoNumber = LoNumber.Replace(",", "");
                        }
                        #endregion

                        lottreyNumber += ";";
                        if (playtype == 6118 || playtype == 6117)//时时彩任1，2
                        {
                            lottreyNumber = lottreyNumber.Substring(0, lottreyNumber.LastIndexOf(";"));
                            LoNumber += ";";
                        }
                    }
                    if (playtype == 6118 || playtype == 6117)//时时彩任1，2
                    {
                        lottreyNumber = LoNumber;
                    }
                }
                else if (playtype == 6108 || playtype == 6114 || playtype == 6116 || playtype == 6113 || playtype == 6115)//时时彩三星组选三单式,三星组选六单式
                {
                    for (int k = 0; k < nums.Length; k++)
                    {
                        if (playtype == 6113 || playtype == 6115)
                        {
                            Ds = true;
                            nums[k] = nums[k].Replace("-", "");

                        }
                        nums[k] = nums[k].TrimEnd();
                        nums[k] = nums[k] + "-";
                        lottreyNumber += nums[k] + ";";
                    }
                }
                else if (playtype == 502 || playtype == 503 || playtype == 6304 || playtype == 6305 || playtype == 6306 || playtype == 6307 || playtype == 604 || playtype == 605 || playtype == 1302 || playtype == 902 || playtype == 6110 || playtype == 6112 || playtype == 606 || playtype == 607)//双色球复 |排列3和值，组三复，组六复|3D组选6复,组选3复|七乐彩复|22选5复||江西时时彩 二星组选包点,二星组选复式,三星组选三复式,三星组选六复式   
                {
                    for (int k = 0; k < nums.Length; k++)
                    {
                        if (playtype == 502 || playtype == 503)
                        {
                            nums[k] = nums[k].Replace("+", "-");
                            nums[k] = nums[k].Replace(",", "-");
                            nums[k] = nums[k].Replace(" ", "");
                        }
                        if (playtype == 1302 || playtype == 902)
                        {
                            nums[k] = nums[k].Replace(" ", "");
                            nums[k] = nums[k].Replace("+", "");
                        }
                        if (nums[k].Length < 2 && (playtype != 6110 && playtype != 6112))
                        {
                            nums[k] = "0" + nums[k];
                        }
                        lottreyNumber += nums[k] + ";";
                    }
                }
                else  //所有单式（时时彩）
                {
                    Ds = true;
                    for (int k = 0; k < nums.Length; k++)
                    {
                        string[] types = ToPlaytypes(playtype, nums[k]).Split('_');
                        if (types[0].ToString() == "")
                        {
                            return result;
                        }
                        nums[k] = nums[k].Replace("-", "#");
                        nums[k] = nums[k].Replace(" ", "");
                        nums[k] = nums[k].Replace("+", "");
                        //时时彩：大小单双
                        nums[k] = nums[k].Replace("大", "2");
                        nums[k] = nums[k].Replace("小", "1");
                        nums[k] = nums[k].Replace("单", "3");
                        nums[k] = nums[k].Replace("双", "4");

                        if (playtype == 6101 && (types[1].ToString() == "D1" || types[1].ToString() == "D2" || types[1].ToString() == "D5"))
                        {
                            nums[k] = nums[k].Replace("#", "");
                        }
                        if (playtype == 6101 && (types[1].ToString() == "D3" || types[1].ToString() == "D4"))
                        {
                            nums[k] = nums[k].Replace("#", "");
                            nums[k] = nums[k] + "-";
                        }
                        lottreyNumber += nums[k] + ";";
                    }
                }

                #region 判断是否为单式  -- 拆票
                int Kcount = 0;
                lottreyNumber = lottreyNumber.Replace(";", ";&");
                string[] spliNum = lottreyNumber.Split('&');
                string numbers = "";
                if (Ds == true)
                {
                    for (int ii = 0; ii < spliNum.Length; ii++)
                    {
                        if (spliNum[ii].ToString() != "" && spliNum[ii].ToString() != null)
                        {
                            numbers += spliNum[ii].ToString();
                            Kcount++;
                            if (Kcount == 5)
                            {
                                if (playtype == 3903)//大乐透追加单式*3
                                {
                                    moneys = 15;
                                }
                                else
                                {
                                    moneys = 10;
                                }
                                numbers = numbers.Substring(0, numbers.LastIndexOf(";"));
                                result.Add(type + "|" + numbers + "|" + moneys);
                                Kcount = 0;
                                numbers = "";
                            }
                        }
                    }
                    if (Kcount < 6 && numbers.Contains(';'))
                    {
                        numbers = numbers.Substring(0, numbers.LastIndexOf(";"));
                        if (playtype == 3903)//大乐透追加单式*3
                        {
                            moneys = Kcount * 3;
                        }
                        else
                        {
                            moneys = Kcount * 2;
                        }
                        result.Add(type + "|" + numbers + "|" + moneys);
                    }
                }
                else
                {
                    for (int ii = 0; ii < spliNum.Length - 1; ii++)
                    {
                        numbers += spliNum[ii].ToString();
                        numbers = numbers.Substring(0, numbers.LastIndexOf(";"));
                        if (playtype == 3902 || playtype == 3904 || playtype == 502 || playtype == 1302 || playtype == 902 || playtype == 503 || playtype == 3906 || playtype == 606 || playtype == 6306 || playtype == 607 || playtype == 6307 || playtype == 6110 || playtype == 6108 || playtype == 6116)
                        {
                            moneys = GetMoney(playtype, number, ii);
                        }
                        else
                        {
                            moneys = GetMoney(playtype, numbers, 0);
                        }
                        result.Add(type + "|" + numbers + "|" + moneys);

                        //如果是排列3复式 则调用 numbers
                        numbers = "";
                    }
                }
                #endregion

                return result;
            }
            #endregion

            #region 计算每张票的金额

            /// <summary>
            /// 计算每张票的金额
            /// </summary>
            /// <param name="playtype">玩法</param>
            /// <param name="numbers">投注内容</param>
            /// <param name="Num">要计算的票</param>
            /// <returns></returns>
            public decimal GetMoney(int playtype, string numbers, int Num)
            {
                numbers = numbers.TrimEnd();
                numbers = numbers.TrimStart();
                numbers = numbers.Replace("\r\n", "~");
                string[] nums = numbers.ToString().Split('~');
                decimal money = 0;
                int RedCount = 0;
                int BlueCount = 0;
                string RedBall = "";
                string BlueBall = "";
                string[] RedBallList = null;
                string[] BlueBallList = null;
                decimal RedInvestNum = 1;
                decimal BlueInvestNum = 1;
                try
                {
                    #region 大乐透
                    if (playtype == 3902 || playtype == 3904 || playtype == 502)//大乐透复式|双色球复式
                    {
                        RedBall = nums[Num].Substring(0, nums[Num].LastIndexOf("+")).TrimEnd();
                        BlueBall = nums[Num].Remove(0, RedBall.Length + 2).TrimStart();

                        RedBallList = RedBall.Split(' ');
                        BlueBallList = BlueBall.Split(' ');

                        RedCount = RedBallList.Length;
                        BlueCount = BlueBallList.Length;
                        if (playtype == 3902)
                        {
                            for (var i = 6; i <= RedCount; i++)
                                RedInvestNum *= i;
                            for (var i = 2; i <= (RedCount - 5); i++)
                                RedInvestNum = Math.Round(RedInvestNum / i);
                            for (var i = 3; i <= BlueCount; i++)
                                BlueInvestNum *= i;
                            for (var i = 2; i <= (BlueCount - 2); i++)
                                BlueInvestNum = Math.Round(BlueInvestNum / i);
                            money = (RedInvestNum * BlueInvestNum) * 2;
                        }
                        else if (playtype == 502)
                        {
                            for (var i = 7; i <= RedCount; i++)
                                RedInvestNum *= i;
                            for (var i = 2; i <= (RedCount - 6); i++)
                                RedInvestNum = Math.Round(RedInvestNum / i);
                            RedInvestNum *= BlueCount;
                            money = RedInvestNum * 2;
                        }
                        else
                        {
                            for (var i = 6; i <= RedCount; i++)
                                RedInvestNum *= i;
                            for (var i = 2; i <= (RedCount - 5); i++)
                                RedInvestNum = Math.Round(RedInvestNum / i);
                            for (var i = 3; i <= BlueCount; i++)
                                BlueInvestNum *= i;
                            for (var i = 2; i <= (BlueCount - 2); i++)
                                BlueInvestNum = Math.Round(BlueInvestNum / i);
                            money = (RedInvestNum * BlueInvestNum) * 3;
                        }
                    }
                    else if (playtype == 3906)
                    {
                        RedBallList = nums[Num].TrimEnd().Split(' ');
                        int Count = RedBallList.Length;

                        for (var i = 3; i <= Count; i++)
                            RedInvestNum *= i;
                        for (var i = 2; i <= (Count - 2); i++)
                            RedInvestNum = Math.Round(RedInvestNum / i);

                        money = RedInvestNum * 2;
                    }
                    #endregion

                    #region 时时彩
                    else if (playtype == 6108)//二星组选复式  转后的数据 
                    {
                        int Count = nums[Num].Length;
                        for (var i = Count - 1; i <= Count; i++)
                        {
                            RedInvestNum *= i;
                        }
                        RedInvestNum = RedInvestNum / 2 + Count;
                        money = RedInvestNum * 2;
                    }
                    else if (playtype == 6114)//3星组3复式6114  
                    {
                        int Count = nums[Num].Length;

                        for (var i = 3; i <= Count; i++)
                            RedInvestNum *= i;
                        for (var i = 2; i <= (Count - 2); i++)
                            RedInvestNum = Math.Round(RedInvestNum / i);
                        money = RedInvestNum * 2;
                    }
                    else if (playtype == 6116)//3星组6复式6116
                    {
                        int Count = nums[Num].Length;
                        for (var i = 4; i <= Count; i++)
                            RedInvestNum *= i;
                        for (var i = 2; i <= (Count - 3); i++)
                            RedInvestNum = Math.Round(RedInvestNum / i);
                        money = RedInvestNum * 2;
                    }
                    #endregion

                    #region 排列5,七星彩,胜负彩,任九场,场半全场,进球彩 (综合)
                    else if (playtype == 6402 || playtype == 302 || playtype == 7402 || playtype == 7502 || playtype == 1502 || playtype == 202 || playtype == 602 || playtype == 6302 || playtype == 6103 || playtype == 6106)//排列5复式  （转后的数据）//numbers = "1-2-37-23-45\r\n12-37-45-12-12";  
                    {
                        int iCount = 0;
                        switch (playtype)
                        {
                            case 6402://排列5
                                iCount = 5;
                                break;
                            case 302://七星彩
                                iCount = 7;
                                break;
                            case 7402://胜负彩
                                iCount = 14;
                                break;
                            case 7502://任九场
                                iCount = 14;
                                break;
                            case 1502://半全场
                                iCount = 12;
                                break;
                            case 202://场进球彩
                                iCount = 8;
                                break;
                            case 602://福彩3D直选复式
                                iCount = 3;
                                break;
                            case 6302://排列3直选复式
                                iCount = 3;
                                break;
                            case 6103://时时彩组合
                                iCount = 5;
                                break;
                            case 6106://时时彩5星通选复式
                                iCount = 5;
                                break;
                        }
                        RedBall = nums[Num] + "-";
                        RedBallList = RedBall.Split('-');
                        for (var i = 0; i < iCount; i++)
                        {
                            if (playtype == 6103 || playtype == 7502)
                            {
                                if (RedBallList[i] != "X")
                                {
                                    RedInvestNum *= RedBallList[i].Length;
                                }
                            }
                            else
                            {
                                RedInvestNum *= RedBallList[i].Length;
                            }
                        }
                        money = RedInvestNum * 2;
                    }
                    #endregion

                    #region 福彩3D
                    else if (playtype == 604 || playtype == 6304)//组选6复式
                    {
                        int Count = nums[Num].Length;

                        for (var i = 4; i <= Count; i++)
                            RedInvestNum *= i;
                        for (var i = 2; i <= (Count - 3); i++)
                            RedInvestNum = Math.Round(RedInvestNum / i);

                        money = RedInvestNum * 2;
                    }
                    else if (playtype == 605 || playtype == 6305)//组选3复式 
                    {
                        int Count = nums[Num].Length;

                        for (var i = 3; i <= Count; i++)
                            RedInvestNum *= i;
                        for (var i = 2; i <= (Count - 2); i++)
                            RedInvestNum = Math.Round(RedInvestNum / i);

                        money = RedInvestNum * 4;
                    }
                    #region 包点
                    else if (playtype == 606 || playtype == 6306 || playtype == 607 || playtype == 6307 || playtype == 6110)//排列2,3D直选包点 
                    {
                        int count = 0;
                        RedBall = nums[Num];
                        if (playtype == 606 || playtype == 6306)
                        {
                            if (RedBall == "0") count = 1;
                            if (RedBall == "1") count = 3;
                            if (RedBall == "2") count = 6;
                            if (RedBall == "3") count = 10;
                            if (RedBall == "4") count = 15;
                            if (RedBall == "5") count = 21;
                            if (RedBall == "6") count = 28;
                            if (RedBall == "7") count = 36;
                            if (RedBall == "8") count = 45;
                            if (RedBall == "9") count = 55;
                            if (RedBall == "10") count = 63;
                            if (RedBall == "11") count = 69;
                            if (RedBall == "12") count = 73;
                            if (RedBall == "13") count = 75;
                            if (RedBall == "14") count = 75;
                            if (RedBall == "15") count = 73;
                            if (RedBall == "16") count = 69;
                            if (RedBall == "17") count = 63;
                            if (RedBall == "18") count = 55;
                            if (RedBall == "19") count = 45;
                            if (RedBall == "20") count = 36;
                            if (RedBall == "21") count = 28;
                            if (RedBall == "22") count = 21;
                            if (RedBall == "23") count = 15;
                            if (RedBall == "24") count = 10;
                            if (RedBall == "25") count = 6;
                            if (RedBall == "26") count = 3;
                            if (RedBall == "27") count = 1;
                        }
                        else if (playtype == 607 || playtype == 6307)
                        {
                            if (RedBall == "1") count = 1;
                            if (RedBall == "2") count = 2;
                            if (RedBall == "3") count = 2;
                            if (RedBall == "4") count = 4;
                            if (RedBall == "5") count = 5;
                            if (RedBall == "6") count = 6;
                            if (RedBall == "7") count = 8;
                            if (RedBall == "8") count = 10;
                            if (RedBall == "9") count = 11;
                            if (RedBall == "10") count = 13;
                            if (RedBall == "11") count = 14;
                            if (RedBall == "12") count = 14;
                            if (RedBall == "13") count = 15;
                            if (RedBall == "14") count = 15;
                            if (RedBall == "15") count = 14;
                            if (RedBall == "16") count = 14;
                            if (RedBall == "17") count = 13;
                            if (RedBall == "18") count = 11;
                            if (RedBall == "19") count = 10;
                            if (RedBall == "20") count = 8;
                            if (RedBall == "21") count = 6;
                            if (RedBall == "22") count = 5;
                            if (RedBall == "23") count = 4;
                            if (RedBall == "24") count = 2;
                            if (RedBall == "25") count = 2;
                            if (RedBall == "26") count = 1;
                        }
                        else if (playtype == 6110)
                        {
                            if (RedBall == "0") count = 1;
                            if (RedBall == "1") count = 1;
                            if (RedBall == "2") count = 2;
                            if (RedBall == "3") count = 2;
                            if (RedBall == "4") count = 3;
                            if (RedBall == "5") count = 3;
                            if (RedBall == "6") count = 4;
                            if (RedBall == "7") count = 4;
                            if (RedBall == "8") count = 5;
                            if (RedBall == "9") count = 5;
                            if (RedBall == "10") count = 5;
                            if (RedBall == "11") count = 4;
                            if (RedBall == "12") count = 4;
                            if (RedBall == "13") count = 3;
                            if (RedBall == "14") count = 3;
                            if (RedBall == "15") count = 2;
                            if (RedBall == "16") count = 2;
                            if (RedBall == "17") count = 1;
                            if (RedBall == "18") count = 1;
                        }
                        money = count * 2;
                    }
                    #endregion

                    #endregion

                    #region 双色球
                    else if (playtype == 503)//双色球胆拖  
                    {
                        int tempNum = 1;
                        string dan = nums[Num].Substring(0, nums[Num].LastIndexOf(",")).TrimEnd();
                        string tuo = nums[Num].Remove(0, dan.Length + 2).TrimStart();
                        tuo = tuo.Substring(0, tuo.LastIndexOf("+")).TrimEnd();
                        BlueBall = nums[Num].Remove(0, tuo.Length + dan.Length + 5).TrimStart();

                        RedBallList = dan.Split(' ');
                        string[] tuoList = tuo.Split(' ');
                        BlueBallList = BlueBall.Split(' ');

                        int tempDan = RedBallList.Length;
                        int tempTuo = tuoList.Length;
                        int tempLan = BlueBallList.Length;

                        for (var i = 0; i < (6 - tempDan); i++)
                        {
                            RedInvestNum *= (tempTuo - i);
                        }
                        for (var i = 1; i < (7 - tempDan); i++)
                        {
                            tempNum *= i;
                        }
                        RedInvestNum = (RedInvestNum / tempNum);
                        money = RedInvestNum * tempLan * 2;
                    }
                    #endregion

                    #region 22选5
                    else if (playtype == 902)//22选5复式 
                    {
                        RedBall = nums[Num].Replace(" ", "");
                        int Count = RedBall.Length / 2;

                        for (var i = 6; i <= Count; i++)
                            RedInvestNum *= i;
                        for (var i = 2; i <= (Count - 5); i++)
                            RedInvestNum = Math.Round(RedInvestNum / i);

                        money = RedInvestNum * 2;
                    }
                    #endregion

                    #region 七乐彩
                    else if (playtype == 1302)//七乐彩复式
                    {
                        RedBallList = nums[Num].TrimEnd().Split(' ');
                        int Count = RedBallList.Length;
                        for (var i = 8; i <= Count; i++)
                            RedInvestNum *= i;
                        for (var i = 2; i <= (Count - 7); i++)
                            RedInvestNum = Math.Round(RedInvestNum / i);

                        money = RedInvestNum * 2;
                    }
                    #endregion
                    else
                    {
                        money = 0;
                    }
                }
                catch
                {
                    money = 0;
                }
                return money;
            }
            #endregion


            #region 转彩种玩法--中卓彩
            /// <summary>
            /// 转彩种玩法--中卓彩
            /// </summary>
            /// <param name="playtype">彩种玩法</param>
            /// <returns></returns>
            public string ToPlaytypes(int playtype, string number)
            {
                string[] xingst = null;
                int xings;
                if (number.Contains("\r\n"))
                {
                    xingst = number.Replace("\r\n", "~").Split('~');
                    string[] xing = xingst[0].ToString().Split('-');
                    xings = int.Parse(xing.Length.ToString());
                    xings = 6 - xings;
                }
                else
                {
                    string[] xing = number.ToString().Split('-');
                    xings = int.Parse(xing.Length.ToString());
                    xings = 6 - xings;
                }


                string type = "";
                switch (playtype)
                {
                    //大乐透
                    case 3901://单式
                        type = "30_LT_1";
                        break;
                    case 3902://复式
                        type = "30_LT_2";
                        break;
                    case 3903://追加单式
                        type = "30_ZJ_1";
                        break;
                    case 3904://追加复式
                        type = "30_ZJ_2";
                        break;
                    case 3905://12选2单式
                        type = "30_SX_1";
                        break;
                    case 3906://12选2复式
                        type = "30_SX_2";
                        break;


                    //排列3
                    case 6301://直选单式
                        type = "15_ZX_1";
                        break;
                    case 6302://直选复式
                        type = "15_ZX_2";
                        break;
                    case 6303://组选单式
                        type = "16_GX_1";
                        break;
                    case 6304://组选6复式
                        type = "17_G6_2";
                        break;
                    case 6305://组选3复式
                        type = "16_G3_2";
                        break;
                    case 6306://直选和值
                        type = "18_GH_1";
                        break;
                    case 6307://组选和值
                        type = "19_GH_1";
                        break;

                    //排列5
                    case 6401://单式
                        type = "21_P5_1";
                        break;
                    case 6402://复式
                        type = "21_P5_2";
                        break;

                    //七星彩
                    case 301://单式
                        type = "14_BZ_1";
                        break;
                    case 302://复式
                        type = "14_BZ_2";
                        break;

                    //22选5
                    case 901://单式
                        type = "70_BZ_1";
                        break;
                    case 902://复式
                        type = "70_BZ_2";
                        break;

                    //胜负彩
                    case 7401://单式
                        type = "10_BZ_1";
                        break;
                    case 7402://复式
                        type = "10_BZ_2";
                        break;

                    //任9场
                    case 7501://单式
                        type = "11_BZ_1";
                        break;
                    case 7502://复式
                        type = "11_BZ_2";
                        break;

                    //6场半全场
                    case 1501://单式
                        type = "12_BZ_1";
                        break;
                    case 1502://复式
                        type = "12_BZ_2";
                        break;

                    //4场进球彩
                    case 201://单式
                        type = "13_BZ_1";
                        break;
                    case 202://复式
                        type = "13_BZ_2";
                        break;

                    //时时彩
                    case 6101://所有单选,
                        type = "SS_D" + xings + "_1";
                        break;
                    //case 6102://所有复式（选）
                    //    type = "SS_" + xings + "_2";
                    //    break;
                    case 6103://组选
                        type = "SS_W" + xings + "_2";
                        break;
                    case 6104://大小单双
                        type = "SS_DX_1";
                        break;
                    case 6105://五星通选单式
                        type = "SS_T5_1";
                        break;
                    case 6106://五星通选复式
                        type = "SS_W5_2";
                        break;

                    case 6108: //二星组选复式
                        type = "SS_Z2_2";
                        break;
                    //case 6109://二星组选分位
                    //    type = "SS_W2_2";
                    //    break;
                    case 6110://二星组选包点
                        type = "SS_B2_1";
                        break;

                    //case 6111://二星组选包胆
                    //    type = "";
                    //    break;

                    case 6112://二星直选包点
                        type = "SS_B2_2";
                        break;

                    case 6113://三星组选三单式
                        type = "SS_D3_2";
                        break;
                    case 6114://三星组选三复式
                        type = "SS_Z3_2";
                        break;
                    case 6115://三星组选六单式
                        type = "SS_D3_2";
                        break;
                    case 6116://三星组选六复式
                        type = "SS_Z6_2";
                        break;
                    case 6117://任选一
                        type = "SS_R1_1";
                        break;
                    case 6118://任选二
                        type = "SS_R2_1";
                        break;

                    //双色球
                    case 501://单式
                        type = "50_SS_1";
                        break;
                    case 502://复式
                        type = "50_SS_2";
                        break;
                    case 503://胆拖
                        type = "50_SS_3";
                        break;


                    //福彩3D
                    case 601://直选单式
                        type = "40_ZX_1";
                        break;
                    case 602://直选复式
                        type = "40_ZX_2";
                        break;
                    case 603://组选单式
                        type = "41_GX_1";
                        break;
                    case 604://组选6复式
                        type = "42_G6_2";
                        break;
                    case 605://组选3复式
                        type = "41_G3_2";
                        break;
                    case 606://直选包点
                        type = "42_GH_3";
                        break;
                    case 607://组选包点
                        type = "42_GH_4";
                        break;

                    //七乐彩
                    case 1301://单式
                        type = "52_QL_1";
                        break;
                    case 1302://复式
                        type = "52_QL_2";
                        break;


                    #region 竞  彩
                    //================================
                    //竞彩足球
                    case 7201://胜平负单关
                        type = "01_ZC_1";
                        break;
                    case 7202://胜平负过关
                        type = "01_ZC_2";
                        break;
                    case 7203://比分单关
                        type = "02_ZC_1";
                        break;
                    case 7204://比分过关
                        type = "02_ZC_2";
                        break;
                    case 7205://总进球数单关
                        type = "03_ZC_1";
                        break;
                    case 7206://总进球数过关
                        type = "03_ZC_2";
                        break;
                    case 7207://胜负半全单关
                        type = "04_ZC_1";
                        break;
                    case 7208://胜负半全过关
                        type = "04_ZC_2";
                        break;

                    //北京单场足彩
                    case 4501://胜平负
                        type = "SPF";
                        break;
                    case 4502://进球数
                        type = "JQS";
                        break;
                    case 4503://上下单双
                        type = "SXDS";
                        break;
                    case 4504://比分
                        type = "BF";
                        break;
                    case 4505://半全场
                        type = "BQC";
                        break;

                    #endregion

                    default:
                        type = "";
                        break;

                }
                return type;
            }
            #endregion

            public string GetLotteryID(string lottreyID)
            {
                string type = "";
                switch (lottreyID)
                {
                    //case "29":
                    //    type = "10202";//上海时时乐
                    //    break;
                    //case "28":
                    //    type = "10401";//重庆时时彩
                    //    break;
                    case "61":
                        type = "SSC";//江西时时彩
                        break;
                    //case "70":
                    //    type = "23009";//江西11选5
                    //    break;
                    case "5":
                        type = "SSQ";//双色球
                        break;
                    case "6":
                        type = "3D";//福彩3D
                        break;
                    case "63":
                        type = "PL3";//排三
                        break;
                    case "64":
                        type = "PL5";//排五
                        break;
                    case "2":
                        type = "JQC";//四场进球彩
                        break;
                    case "15":
                        type = "BQC";//足彩半全场
                        break;
                    //case "45":
                    //    type = "41";//北京单场足彩
                    //    break;
                    case "72":
                        type = "JCZQ";//竞彩足球
                        break;
                    case "39":
                        type = "DLT";//超级大乐透
                        break;
                    case "13":
                        type = "QLC";//七乐彩
                        break;
                    case "3":
                        type = "QXC";//七星彩
                        break;
                    case "9":
                        type = "22X5";//体彩22选5
                        break;
                    case "65":
                        type = "23526";//体彩31选7
                        break;
                    //case "46":
                    //    type = "20303";//天津15选5
                    //    break;
                    case "74":
                        type = "SPF";//足彩胜负彩
                        break;
                    case "75":
                        type = "R9";//足彩任九场
                        break;

                }
                return type;
            }

            #region 获取XML节点的属性值
            /// <summary>
            /// 获取XML节点的属性值
            /// </summary>
            /// <param name="xml">XML</param>
            /// <param name="str">节点名称</param>
            /// <param name="str2">属性名称</param>
            /// <returns></returns>
            public string GetXMLValue(string xml, string str, string str2)
            {
                string strZ = "<" + str + "[^>]*?>";
                Regex r = new Regex(strZ);
                Match m = r.Match(xml);
                string varZi = m.Value;

                string strZi = "" + str2 + "=(\')(.)*?(\')";
                Regex rr = new Regex(strZi);
                Match mm = rr.Match(varZi);

                string returnValue = mm.Value;
                returnValue = returnValue.Replace("" + str2 + "=", "");
                returnValue = returnValue.Replace("'", "");

                return returnValue;
            }
            #endregion
        }
    }
}
