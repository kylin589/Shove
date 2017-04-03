<%@ page language="C#" autoeventwireup="true" inherits="Lottery_buy, App_Web_mg_ktxsi" enableEventValidation="false" %>

<%@ Register Src="../Home/Room/UserControls/WebFoot.ascx" TagName="WebFoot" TagPrefix="uc1" %>
<%@ Register Src="../UserControls/Head.ascx" TagName="Head" TagPrefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>购买大厅-<%=_Site.Name %>-彩票|选号|投注|合买|福彩|体彩|足彩|快开彩|15选5：2元最高可达￥500万-15选5选号投注、合买、玩法介绍－<%=_Site.Name %></title>
    <meta name="keywords" content="15选5选号投注、15选5合买、15选5玩法介绍" />
    <meta name="description" content="<%=_Site.Name %>提供15选5选号投注、合买、玩法介绍等服务。" />
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
    <link href="../Home/Room/Style/common.css" rel="stylesheet" type="text/css" />
    <link href="../Home/Room/Style/StyleSheet.css" rel="stylesheet" type="text/css" />
    <link href="../Home/Room/Style/zbuy.css" rel="stylesheet" type="text/css" />
    <link rel="shortcut icon" href="favicon.ico" />

    <script src="../JavaScript/jquery-1.4.js" type="text/javascript"></script>

    <style type="text/css">
        .hotcai
        {
            background-image: url(           '../Home/Room/Images/hotcai_bg.jpg' );
            height: 156px;
            background-repeat: none;
            margin-bottom: 10px;
            padding-left: 72px;
            padding-top: 10px;
        }
        .hotcai .lcmain .lot_ul li
        {
            margin-left: 10px; width:198px;
            padding-left:10px;
          
        }
        .allcai
        {
            background-image: url(           '../Home/Room/Images/allcaipao.jpg' );
            height: 30px;
            line-height: 30px;
            font-size: 14px;
            font-weight: bold;
            background-repeat: no-repeat;
            margin-bottom: 10px;
            padding-left: 10px;
            color: White;
        }
        .lcbox
        {
            margin-bottom: 7px;
            padding: 1px;
            border:solid 1px #e6e6e6;
        }
        .lcbox .lctit
        {
            background-image: url(           '../Home/Room/Images/hemai_head_bg.jpg' );
            background-repeat: repeat-x;
            border-bottom: 1px solid #e6e6e6;
        }
        .lcbox .lctit .fucai
        {
            height: 31px;
            width: 200px;
            display: block;
            color: #ce2626;
            line-height: 31px;
            font-weight: bold;
            margin-left: 10px;
            font-size: 16px;
        }
        .lcbox .lcmain
        {
            padding: 3px 0 5px 0;
            
        }
        .lcmain .lot_ul li
        {
            border: 1px #E1E1E1 solid;
            width: 184px;
            background: #FFFFFF;
            padding: 5px 0;
            float: left;
            margin: 5px 5px 0;
            display: inline;
        }
        .lcmain .lot_ul li img
        {
            float: left;
            width: 65px;
            padding: 3px;
            height: 65px;
        }
        .lcmain .lot_ul li .info
        {
            float: left;
            width: 100px;
        }
        .lcmain .lot_ul li .info h1
        {
            margin: 5px 0;
        }
        .lcmain .lot_ul li .info h1 a
        {
            color: #E60012;
        }
        .lcmain .lot_ul li .info h1 a:hover
        {
            color: #EE6B13;
            text-decoration: none;
        }
        .lcmain .lot_ul li .info span
        {
            line-height: 25px;
            color: #777777;
        }
        .lcmain .lot_ul li .btnbox
        {
            padding-left: 10px;
        }
        .lcmain .lot_ul li .btnbox a
        {
            margin-left: 25px;
            line-height: 22px;
        }
        .lcmain .lot_ul li .btnbox .buybtn
        {
            background: url(../Home/Room/Images/buy_btn.gif);
            width: 57px;
            height: 18px;
            line-height: 18px;
            text-align: center;
            display: inline-block;
            color: #E75200;
            text-decoration: none;
            margin-left: 15px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <uc2:Head ID="Head1" runat="server" />
    <div class="wrap">
        <div class="hotcai">
            <div class="lcmain">
                <ul class="lot_ul">
                    <li><a href="BuySSQ.aspx">
                        <img src="../Home/Room/Images/logo_ssq.gif" alt=""></a>
                        <div class="info">
                            <h1>
                                <a href="BuySSQ.aspx">双色球</a></h1>
                            <span>每周二、四、日开奖 2元赢1000万</span>
                        </div>
                        <div class="clear">
                        </div>
                        <div class="btnbox">
                            <a href="BuySSQ.aspx" class="buybtn">立即投注</a><a href="../JoinUs/JoinAllBuy.aspx"
                                class="buybtn">参与合买</a><br>
                            <a href="../WinQuery/Default.aspx">开奖公告</a><a href="../TrendCharts/SSQ/SSQ_ZHFB.aspx">走势图</a>
                        </div>
                    </li>
                    <li><a href="Buy3D.aspx">
                        <img src="../Home/Room/Images/logo_6.gif" alt=""></a>
                        <div class="info">
                            <h1>
                                <a href="Buy3D.aspx">福彩3D</a></h1>
                            <span>每天20：30开奖 猜对3个号就有奖 </span>
                        </div>
                        <div class="clear">
                        </div>
                        <div class="btnbox">
                            <a href="Buy3D.aspx" class="buybtn">立即投注</a><a href="../JoinUs/JoinAllBuy.aspx" class="buybtn">参与合买</a><br>
                            <a href="../WinQuery/Default.aspx">开奖公告</a><a href="../TrendCharts/FC3D/FC3D_ZHXT.aspx">走势图</a>
                        </div>
                    </li>
                    <li><a href="BuyQLC.aspx">
                        <img src="../Home/Room/Images/logo_13.gif" alt=""></a>
                        <div class="info">
                            <h1>
                                <a href="BuyQLC.aspx">七乐彩</a></h1>
                            <span>七乐彩，其乐来<br>
                                百万奖，期期开 </span>
                        </div>
                        <div class="clear">
                        </div>
                        <div class="btnbox">
                            <a href="BuyQLC.aspx" class="buybtn">立即投注</a><a href="../JoinUs/JoinAllBuy.aspx"
                                class="buybtn">参与合买</a><br>
                            <a href="../WinQuery/Default.aspx">开奖公告</a><a href="../TrendCharts/QLC/7LC_ZHFB.aspx">走势图</a>
                        </div>
                    </li>
                    <li><a href="BuySSC.aspx">
                        <img src="../Home/Room/Images/cz_logo_ssc.gif" alt=""></a>
                        <div class="info">
                            <h1>
                                <a href="BuySSC.aspx">江西时时彩</a></h1>
                            <span>10分钟一期<br>
                                最高奖金11.6万 </span>
                        </div>
                        <div class="clear">
                        </div>
                        <div class="btnbox">
                            <a href="BuySSC.aspx" class="buybtn">立即投注</a><br>
                            <a href="../WinQuery/Default.aspx">开奖公告</a><a href="../TrendCharts/JXSSC/SSC_5X_ZHFB.aspx">走势图</a>
                        </div>
                    </li>
                </ul>
                <div class="clear">
                </div>
            </div>
        </div>
        <div class="allcai">
            全部彩票</div>
        <div class="lcbox">
            <div class="lctit">
                <span class="fucai">福利彩票</span></div>
            <div class="lcmain">
                <ul class="lot_ul">
                    <li><a href="BuySSQ.aspx">
                        <img src="../Home/Room/Images/logo_ssq.gif" alt=""></a>
                        <div class="info">
                            <h1>
                                <a href="BuySSQ.aspx">双色球</a></h1>
                            <span>每周二、四、日开奖 2元赢1000万</span>
                        </div>
                        <div class="clear">
                        </div>
                        <div class="btnbox">
                            <a href="BuySSQ.aspx" class="buybtn">立即投注</a><a href="../JoinUs/JoinAllBuy.aspx"
                                class="buybtn">参与合买</a><br>
                            <a href="../WinQuery/Default.aspx">开奖公告</a><a href="../TrendCharts/SSQ/SSQ_ZHFB.aspx">走势图</a>
                        </div>
                    </li>
                    <li><a href="Buy3D.aspx">
                        <img src="../Home/Room/Images/logo_6.gif" alt=""></a>
                        <div class="info">
                            <h1>
                                <a href="Buy3D.aspx">福彩3D</a></h1>
                            <span>每天20：30开奖 猜对3个号就有奖 </span>
                        </div>
                        <div class="clear">
                        </div>
                        <div class="btnbox">
                            <a href="Buy3D.aspx" class="buybtn">立即投注</a><a href="../JoinUs/JoinAllBuy.aspx" class="buybtn">参与合买</a><br>
                            <a href="../WinQuery/Default.aspx">开奖公告</a><a href="../TrendCharts/FC3D/FC3D_ZHXT.aspx">走势图</a>
                        </div>
                    </li>
                    <li><a href="BuyQLC.aspx">
                        <img src="../Home/Room/Images/logo_13.gif" alt=""></a>
                        <div class="info">
                            <h1>
                                <a href="BuyQLC.aspx">七乐彩</a></h1>
                            <span>七乐彩，其乐来<br>
                                百万奖，期期开 </span>
                        </div>
                        <div class="clear">
                        </div>
                        <div class="btnbox">
                            <a href="BuyQLC.aspx" class="buybtn">立即投注</a><a href="../JoinUs/JoinAllBuy.aspx"
                                class="buybtn">参与合买</a><br>
                            <a href="../WinQuery/Default.aspx">开奖公告</a><a href="../TrendCharts/QLC/7LC_ZHFB.aspx">走势图</a>
                        </div>
                    </li>
                    <%--   <li><a href="Buy15x5.aspx">
                        <img src="../Home/Room/Images/logo_59.gif" alt=""></a>
                        <div class="info">
                            <h1>
                                <a href="Buy15x5.aspx">15选5</a></h1>
                            <span>小乐透，易中奖<br>
                                最高奖金500万 </span>
                        </div>
                        <div class="clear">
                        </div>
                        <div class="btnbox">
                            <a href="Buy15x5.aspx" class="buybtn">立即投注</a><a href="../JoinUs/JoinAllBuy.aspx"
                                class="buybtn">参与合买</a><br>
                            <a href="../WinQuery/Default.aspx">开奖公告</a><a href="../TrendCharts/HD15X5/C15X5_ZHZST.aspx">走势图</a>
                        </div>
                    </li>
                     <li><a href="BuyDF6J1.aspx">
                        <img src="../Home/Room/Images/logo_58.gif" alt=""></a>
                        <div class="info">
                            <h1>
                                <a href="BuyDF6J1.aspx">东方6+1</a></h1>
                            <span>数字+生肖，大奖 等你拿 </span>
                        </div>
                        <div class="clear">
                        </div>
                        <div class="btnbox">
                            <a href="BuyDF6J1.aspx" class="buybtn">立即投注</a><a href="../JoinUs/JoinAllBuy.aspx"
                                class="buybtn">参与合买</a><br>
                            <a href="../WinQuery/Default.aspx">开奖公告</a><a href="../TrendCharts/DF6J1/DF61_ZHFB.aspx">走势图</a>
                        </div>
                    </li>--%>
                </ul>
                <div class="clear">
                </div>
            </div>
        </div>
        <div class="lcbox">
            <div class="lctit">
                <span class="fucai">高频彩票</span></div>
            <div class="lcmain">
                <ul class="lot_ul">
                    <li><a href="BuySSC.aspx">
                        <img src="../Home/Room/Images/cz_logo_ssc.gif" alt=""></a>
                        <div class="info">
                            <h1>
                                <a href="BuySSC.aspx">江西时时彩</a></h1>
                            <span>10分钟一期<br>
                                最高奖金11.6万 </span>
                        </div>
                        <div class="clear">
                        </div>
                        <div class="btnbox">
                            <a href="BuySSC.aspx" class="buybtn">立即投注</a><br>
                            <a href="../WinQuery/Default.aspx">开奖公告</a><a href="../TrendCharts/JXSSC/SSC_5X_ZHFB.aspx">走势图</a>
                        </div>
                    </li>
                    <li><a href="BuyCQSSC.aspx">
                        <img src="../Home/Room/Images/cq_ssc.gif" alt=""></a>
                        <div class="info">
                            <h1>
                                <a href="BuyCQSSC.aspx">时时彩</a></h1>
                            <span>10分钟一期<br>
                                最高奖金11.6万 </span>
                        </div>
                        <div class="clear">
                        </div>
                        <div class="btnbox">
                            <a href="BuyCQSSC.aspx" class="buybtn">立即投注</a><br>
                            <a href="../WinQuery/Default.aspx">开奖公告</a>
                        </div>
                    </li>
                    <li><a href="BuySYYDJ.aspx">
                        <img src="../Home/Room/Images/logo_70.gif" alt=""></a>
                        <div class="info">
                            <h1>
                                <a href="BuySYYDJ.aspx">十一运夺金</a></h1>
                            <span>12分钟一期，任猜1-8个号都有奖 </span>
                        </div>
                        <div class="clear">
                        </div>
                        <div class="btnbox">
                            <a href="BuySYYDJ.aspx" class="buybtn">立即投注</a><br>
                            <a href="../WinQuery/Default.aspx">开奖公告</a><a href="../TrendCharts/SYYDJ/SYDJ_FBZS.aspx">走势图</a>
                        </div>
                    </li>
                    <li><a href="BuyJX11x5.aspx">
                        <img src="../Home/Room/Images/11x5_logo.gif" alt=""></a>
                        <div class="info">
                            <h1>
                                <a href="BuyJX11x5.aspx">11选5</a></h1>
                            <span>12分钟一期<br>
                                玩法多样 </span>
                        </div>
                        <div class="clear">
                        </div>
                        <div class="btnbox">
                            <a href="BuyJX11x5.aspx" class="buybtn">立即投注</a><br>
                            <a href="../WinQuery/Default.aspx">开奖公告</a>
                        </div>
                    </li>
                    <li><a href="BuySSL.aspx">
                        <img src="../Home/Room/Images/logo_29.gif" alt=""></a>
                        <div class="info">
                            <h1>
                                <a href="BuySSL.aspx">时时乐</a></h1>
                            <span>30分钟一期，最高 奖金980 </span>
                        </div>
                        <div class="clear">
                        </div>
                        <div class="btnbox">
                            <a href="BuySSL.aspx" class="buybtn">立即投注</a><br>
                            <a href="../WinQuery/Default.aspx">开奖公告</a><a href="../TrendCharts/SHSSL/SHSSL_ZHFB.aspx">走势图</a>
                        </div>
                    </li>
                </ul>
                <div class="clear">
                </div>
            </div>
        </div>
        <div class="lcbox">
            <div class="lctit">
                <span class="fucai">体彩</span></div>
            <div class="lcmain">
                <ul class="lot_ul">
                    <li><a href="BuyCJDLT.aspx">
                        <img src="../Home/Room/Images/logo_39.gif" alt=""></a>
                        <div class="info">
                            <h1>
                                <a href="BuyCJDLT.aspx">超级大乐透</a></h1>
                            <span>每周一、三、六开奖 3元中1600万 </span>
                        </div>
                        <div class="clear">
                        </div>
                        <div class="btnbox">
                            <a href="BuyCJDLT.aspx" class="buybtn">立即投注</a><a href="../JoinUs/JoinAllBuy.aspx"
                                class="buybtn">参与合买</a><br>
                            <a href="../WinQuery/Default.aspx">开奖公告</a><a href="../TrendCharts/CJDLT/CJDLT_HMFB.aspx">走势图</a>
                        </div>
                    </li>
                    <li><a href="BuyQXC.aspx">
                        <img src="../Home/Room/Images/qxc_logo.gif" alt=""></a>
                        <div class="info">
                            <h1>
                                <a href="BuyQXC.aspx">七星彩</a></h1>
                            <span>每周二、五、日开奖 2元赢取500万 </span>
                        </div>
                        <div class="clear">
                        </div>
                        <div class="btnbox">
                            <a href="BuyQXC.aspx" class="buybtn">立即投注</a><a href="../JoinUs/JoinAllBuy.aspx"
                                class="buybtn">参与合买</a><br>
                            <a href="../WinQuery/Default.aspx">开奖公告</a><a href="../TrendCharts/7Xing/7X_HMFB.aspx">走势图</a>
                        </div>
                    </li>
                    <li><a href="BuyPL3.aspx">
                        <img src="../Home/Room/Images/logo_63.gif" alt=""></a>
                        <div class="info">
                            <h1>
                                <a href="BuyPL3.aspx">排列3</a></h1>
                            <span>天天排列三<br>
                                不用愁吃穿 </span>
                        </div>
                        <div class="clear">
                        </div>
                        <div class="btnbox">
                            <a href="BuyPL3.aspx" class="buybtn">立即投注</a><a href="../JoinUs/JoinAllBuy.aspx"
                                class="buybtn">参与合买</a><br>
                            <a href="../WinQuery/Default.aspx">开奖公告</a><a href="../TrendCharts/PL3/PL3_HMFB.aspx">走势图</a>
                        </div>
                    </li>
                    <li><a href="BuyPL5.aspx">
                        <img src="../Home/Room/Images/logo_64.gif" alt=""></a>
                        <div class="info">
                            <h1>
                                <a href="BuyPL5.aspx">排列5</a></h1>
                            <span>数字彩，天天开<br>
                                最高奖金10万元 </span>
                        </div>
                        <div class="clear">
                        </div>
                        <div class="btnbox">
                            <a href="BuyPL5.aspx" class="buybtn">立即投注</a><a href="../JoinUs/JoinAllBuy.aspx"
                                class="buybtn">参与合买</a><br>
                            <a href="../WinQuery/Default.aspx">开奖公告</a><a href="../TrendCharts/PL5/PL5_KJFB.aspx">走势图</a>
                        </div>
                    </li>
                    <li><a href="Buy31x7.aspx">
                        <img src="../Home/Room/Images/logo_65.gif" alt=""></a>
                        <div class="info">
                            <h1>
                                <a href="Buy31x7.aspx">31选7</a></h1>
                            <span>数字彩，天天开<br>
                                最高奖金10万元 </span>
                        </div>
                        <div class="clear">
                        </div>
                        <div class="btnbox">
                            <a href="Buy31x7.aspx" class="buybtn">立即投注</a><a href="../JoinUs/JoinAllBuy.aspx"
                                class="buybtn">参与合买</a><br>
                            <a href="../WinQuery/Default.aspx">开奖公告</a>
                        </div>
                    </li>
                    <li><a href="Buy22x5.aspx">
                        <img src="../Home/Room/Images/logo_9.gif" alt=""></a>
                        <div class="info">
                            <h1>
                                <a href="Buy22x5.aspx">22选5</a></h1>
                            <span>数字彩，天天开<br>
                                最高奖金10万元 </span>
                        </div>
                        <div class="clear">
                        </div>
                        <div class="btnbox">
                            <a href="Buy22x5.aspx" class="buybtn">立即投注</a><a href="../JoinUs/JoinAllBuy.aspx"
                                class="buybtn">参与合买</a><br>
                            <a href="../WinQuery/Default.aspx">开奖公告</a><a href="../TrendCharts/TC22X5/22X5_HMFB.aspx">走势图</a>
                        </div>
                    </li>
                </ul>
                <div class="clear">
                </div>
            </div>
        </div>
        <div class="lcbox">
            <div class="lctit">
                <span class="fucai">足彩</span></div>
            <div class="lcmain">
                <ul class="lot_ul">
                    <li><a href="BuyLCBQC.aspx">
                        <img src="../Home/Room/Images/6cbqc_logo.gif" alt=""></a>
                        <div class="info">
                            <h1>
                                <a href="BuyLCBQC.aspx">六场半全场</a></h1>
                            <span>多种过关组合方式<br>
                                猜对一场就有奖 </span>
                        </div>
                        <div class="clear">
                        </div>
                        <div class="btnbox">
                            <a href="BuyLCBQC.aspx" class="buybtn">立即投注</a><a href="../JoinUs/JoinAllBuy.aspx"
                                class="buybtn">参与合买</a><br>
                            <a href="../WinQuery/Default.aspx">开奖公告</a>
                        </div>
                    </li>
                    <li><a href="BuySFC.aspx">
                        <img src="../Home/Room/Images/logo_1.gif" alt=""></a>
                        <div class="info">
                            <h1>
                                <a href="BuySFC.aspx">14场胜负彩</a></h1>
                            <span>竞猜14场足球比赛 奖金500万 </span>
                        </div>
                        <div class="clear">
                        </div>
                        <div class="btnbox">
                            <a href="BuySFC.aspx" class="buybtn">立即投注</a><a href="../JoinUs/JoinAllBuy.aspx"
                                class="buybtn">参与合买</a><br>
                            <a href="../WinQuery/Default.aspx">开奖公告</a>
                        </div>
                    </li>
                    <li><a href="BuySFC_9_D.aspx">
                        <img src="../Home/Room/Images/rx9c_logo.gif" alt=""></a>
                        <div class="info">
                            <h1>
                                <a href="BuySFC_9_D.aspx">任选9场</a></h1>
                            <span>中奖容易，赛事任选 最高奖金500万 </span>
                        </div>
                        <div class="clear">
                        </div>
                        <div class="btnbox">
                            <a href="BuySFC_9_D.aspx" class="buybtn">立即投注</a><a href="../JoinUs/JoinAllBuy.aspx"
                                class="buybtn">参与合买</a><br>
                            <a href="../WinQuery/Default.aspx">开奖公告</a>
                        </div>
                    </li>
                    <li><a href="BuyJQC.aspx">
                        <img src="../Home/Room/Images/scjqc_logo.gif" alt=""></a>
                        <div class="info">
                            <h1>
                                <a href="BuyJQC.aspx">四场进球彩</a></h1>
                            <span>中奖容易，赛事任选 最高奖金500万 </span>
                        </div>
                        <div class="clear">
                        </div>
                        <div class="btnbox">
                            <a href="BuyJQC.aspx" class="buybtn">立即投注</a><a href="../JoinUs/JoinAllBuy.aspx"
                                class="buybtn">参与合买</a><br>
                            <a href="../WinQuery/Default.aspx">开奖公告</a>
                        </div>
                    </li>
                </ul>
                <div class="clear">
                </div>
            </div>
        </div>
    </div>
    <uc1:WebFoot ID="WebFoot1" runat="server" />
    </form>
</body>
</html>
<script type="text/javascript">
   var notIE = -[1,];
         if(-[1,]){ 
           alert('尊敬的用户您好，由于您当前使用浏览器不支持网银操作，为了更好地体验购彩服务，请使用以IE为核心的浏览器(例如:IE7.0以上浏览器、360浏览器、傲游浏览器、TT浏览器，TheWorld、Avant Browser 、GreenBrowser.)');
         }
</script>