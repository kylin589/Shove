using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Xml;
using System.Text.RegularExpressions;
/// <summary>
///ElectronTicket 的摘要说明
/// </summary>
public class ElectronTicket
{
    /// <summary>
    /// 电子票业务逻辑类
    /// </summary>
    public ElectronTicket()
    {
        //
        //TODO: 在此处添加构造函数逻辑
        //
    }

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
        else if (playType == 901 || playType == 902 || playType == 6501 || playType == 6502 || playType == 1301 || playType == 1302||playType==3905||playType==3906)
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
                if (playType != 7502 && playType != 7501)
                {
                    lottreyNumber = lottreyNumber.Substring(0, lottreyNumber.LastIndexOf(","));
                }
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
                            if (SZ[j][zz].ToString()!="-")
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
                if (playType == 7501 || playType == 7502)//任九场
                {
                    lottreyNumber = lottreyNumber.Replace("-", "#");
                    
                    if (lottreyNumber[lottreyNumber.Length - 1].ToString()==",")
                    {
                        lottreyNumber = lottreyNumber.Substring(0, lottreyNumber.LastIndexOf(","));
                    }
                }
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
                xingss = "F6|";
                break;
            case 605://组选3复式
                xingss = "F3|";
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
            case 6304://组选6复式  ---组6包号
                xingss = "F6|";
                break;
            case 6305://组选3复式 ---组3包号
                xingss = "F3|";
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
                xingss ="R1|";
                break;
            case 6118://任选二
                xingss ="R2|";
                break;
            default:
                xingss = "";
                break;
        }

        return xingss;
    }
    #endregion 

    #endregion

    #region 获取XML参数值
    /// <summary>
    /// 获取XML参数值
    /// </summary>
    /// <param name="xml">XML字符串</param>
    /// <param name="str">XML参数</param>
    /// <returns>XML参数值</returns>
    public string GetXMLCode(string xml, string str)
    {
        string returnValue = "";
        string[] xmls = xml.Replace("</", "|").Split('|');
        for (int i = 0; i < xmls.Length; i++)
        {
            if (xmls[i].ToString().Contains("<" + str + ">"))
            {
                string[] jieguo = xmls[i].ToString().Split('>');
                returnValue = jieguo[jieguo.Length - 1].ToString();
            }
        }
        return returnValue;
    }
    #endregion

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
        returnValue = returnValue.Replace(""+str2+"=", "");
        returnValue = returnValue.Replace("'", "");

        return returnValue;
    }
    #endregion


}
