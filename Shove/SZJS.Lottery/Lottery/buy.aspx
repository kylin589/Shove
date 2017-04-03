<%@ Page Language="C#" AutoEventWireup="true" CodeFile="buy.aspx.cs" Inherits="Lottery_buy" %>

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
        
       
       
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <uc2:Head ID="Head1" runat="server" />
    <div class="wrap">
       <div class="tittle">热销彩种推荐</div>
        <div class="clear"></div>
        <div class="hotcai">
            <div class="lcmain">
                <ul class="lot_ul">
                    <li><a href="BuySSQ.aspx">
                        <img src="../Home/Room/Images/images/ssq.jpg" alt="" /></a>
                        
                        <div class="btnbox">
                            <a href="BuySSQ.aspx" class="buybtn">立即投注</a><br>
                               
                            <a  class="pull-left" href="../WinQuery/Default.aspx">开奖公告</a><a  class="pull-right" href="../TrendCharts/SSQ/SSQ_ZHFB.aspx">走势图</a>
                        </div>
                    </li>


                    <li><a href="Buy3D.aspx">
                        <img src="../Home/Room/Images/images/dlt.jpg" alt=""/></a>
                        <div class="btnbox">
                            <a href="Buy3D.aspx" class="buybtn">立即投注</a><br>
                            <a class="pull-left" href="../WinQuery/Default.aspx">开奖公告</a><a  class="pull-right" href="../TrendCharts/FC3D/FC3D_ZHXT.aspx">走势图</a>
                        </div>
                    </li>


                    <li><a href="BuyQLC.aspx">
                        <img src="../Home/Room/Images/images/zc.jpg" alt=""/></a>

                        <div class="btnbox">
                            <a href="BuyQLC.aspx" class="buybtn">立即投注</a><br>
                              
                            <a  class="pull-left" href="../WinQuery/Default.aspx">开奖公告</a><a  class="pull-right" href="../TrendCharts/QLC/7LC_ZHFB.aspx">走势图</a>
                        </div>
                    </li>


                    <li><a href="BuySSC.aspx">
                        <img src="../Home/Room/Images/images/wxy.jpg" alt=""/></a>
                        <div class="btnbox">
                            <a href="BuySSC.aspx" class="buybtn">立即投注</a><br>
                            <a  class="pull-left" href="../WinQuery/Default.aspx">开奖公告</a><a class="pull-right" href="../TrendCharts/JXSSC/SSC_5X_ZHFB.aspx">走势图</a>
                        </div>
                    </li>

                </ul>
                <div class="clear">
                </div>
            </div>
        </div>



        <div class="allcai">福利彩票</div>
        <div class="lcbox">
            <div class="lcmain space-left">
                <ul class="lot_ul">
                    <li>
                     <div class="li-img">
                    <a href="BuySSQ.aspx">
                        <img src="../Home/Room/Images/fucai/f01.jpg" alt=""/></a></div>
                        <div class="info">
                          
                                <a href="BuySSQ.aspx">双色球</a><br />
                            <span>每周二、四、日开奖 2元赢1000万</span>
                        </div>
                        <div class="clear">
                        </div>
                        <div class="btnbox-two">
                            <a href="BuySSQ.aspx" class="buybtn-two space-right">立即投注</a><a href="../JoinUs/JoinAllBuy.aspx"
                                class="buybtn-two">参与合买</a><br/>
                            <a  class="pull-left" href="../WinQuery/Default.aspx">开奖公告</a><a  class="pull-right" href="../TrendCharts/SSQ/SSQ_ZHFB.aspx">走势图</a>
                        </div>

                    </li>
                    
                    
                    <li>
                    <div class="li-img">
                    <a href="Buy3D.aspx">
                        <img src="../Home/Room/Images/fucai/f02.jpg" alt=""/></a></div>
                        <div class="info">
                            
                                <a href="Buy3D.aspx">福彩3D</a><br />
                            <span>每天20：30开奖 猜对3个号就有奖 </span>
                        </div>
                        <div class="clear">
                        </div>
                        <div class="btnbox-two">
                            <a href="Buy3D.aspx" class="buybtn-two space-right">立即投注</a><a href="../JoinUs/JoinAllBuy.aspx" class="buybtn-two">参与合买</a><br>
                            <a class="pull-left" href="../WinQuery/Default.aspx">开奖公告</a><a  class="pull-right" href="../TrendCharts/FC3D/FC3D_ZHXT.aspx">走势图</a>
                        </div>
                       
                    </li>
                    <li>
                    <div class="li-img">
                    <a href="BuyQLC.aspx">
                        <img src="../Home/Room/Images/fucai/f03.jpg" alt="" /></a></div>
                        <div class="info">
                           
                                <a href="BuyQLC.aspx">七乐彩</a><br />
                            <span>七乐彩，其乐来
                                百万奖，期期开 </span>
                        </div>
                        <div class="clear">
                        </div>
                        <div class="btnbox-two">
                            <a href="BuyQLC.aspx" class="buybtn-two space-right">立即投注</a><a href="../JoinUs/JoinAllBuy.aspx"
                                class="buybtn-two">参与合买</a><br>
                            <a  class="pull-left" href="../WinQuery/Default.aspx">开奖公告</a><a  class="pull-right" href="../TrendCharts/QLC/7LC_ZHFB.aspx">走势图</a>
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
            <div class="allcai"> 高频彩票</div>
              
            <div class="lcmain">
                <ul class="lot_ul">
                    <li class="space-left">
                    
                    <p align="center"><a href="BuySSC.aspx">
                        <img src="../Home/Room/Images/gaopin/gp01.jpg" alt=""></a></p>
                        <div class="info">
                                <a href="BuySSC.aspx">江西时时彩</a><br>
                            <span>10分钟一期
                                最高奖金11.6万 </span>
                        </div>
                        <div class="clear">
                        </div>
                        <div class="btnbox-two">
                            <a href="BuySSC.aspx" class="buybtn-two space-right">立即投注</a><a href="#" class="buybtn-two">参与合买</a><br>
                            <a  class="pull-left" href="../WinQuery/Default.aspx">开奖公告</a><a  class="pull-right" href="../TrendCharts/JXSSC/SSC_5X_ZHFB.aspx">走势图</a>
                        </div>
                    </li>

                    <li><p align="center"><a href="BuyCQSSC.aspx">
                        <img src="../Home/Room/Images/gaopin/gp02.jpg" alt=""/></a></p>
                        <div class="info">
                                <a href="BuyCQSSC.aspx">时时彩</a><br>
                            <span>10分钟一期
                                最高奖金11.6万 </span>
                        </div>
                        <div class="clear">
                        </div>
                        <div class="btnbox-two">
                            <a href="BuyCQSSC.aspx" class="buybtn-two space-right">立即投注</a><a href="#" class="buybtn-two">参与合买</a><br>
                            <a  class="pull-left" href="../WinQuery/Default.aspx">开奖公告</a><a class="pull-right" href="#">走势图</a>
                        </div>
                    </li>


                    <li><p align="center"><a href="BuySYYDJ.aspx">
                        <img src="../Home/Room/Images/gaopin/gp03.jpg" alt=""/></a></p>
                        <div class="info">
                                <a href="BuySYYDJ.aspx">十一运夺金</a><br />
                            <span>12分钟一期，任猜1-8个号都有奖 </span>
                        </div>
                        <div class="clear">
                        </div>
                        <div class="btnbox-two">
                            <a href="BuySYYDJ.aspx" class="buybtn-two space-right">立即投注</a><a href="#" class="buybtn-two">参与合买</a><br>
                            <a class="pull-left" href="../WinQuery/Default.aspx">开奖公告</a><a  class="pull-right" href="../TrendCharts/SYYDJ/SYDJ_FBZS.aspx">走势图</a>
                        </div>
                    </li>

                    <li><p align="center"><a href="BuyJX11x5.aspx">
                        <img src="../Home/Room/Images/gaopin/gp04.jpg" alt=""/></a></p>
                        <div class="info">
                                <a href="BuyJX11x5.aspx">11选5</a><br>
                            <span>12分钟一期
                                玩法多样 </span>
                        </div>
                        <div class="clear">
                        </div>
                        <div class="btnbox-two">
                            <a href="BuyJX11x5.aspx" class="buybtn-two space-right">立即投注</a><a href="#" class="buybtn-two">参与合买</a><br>
                            <a  class="pull-left" href="../WinQuery/Default.aspx">开奖公告</a> <a  class="pull-right" href="#">走势图</a>
                        </div>
                    </li>
                    <li><p align="center"><a href="BuySSL.aspx">
                        <img src="../Home/Room/Images/gaopin/gp05.jpg" alt=""/></a></p>
                        <div class="info">
                                <a href="BuySSL.aspx">时时乐</a><br />
                            <span>30分钟一期，最高 奖金980 </span>
                        </div>
                        <div class="clear">
                        </div>
                        <div class="btnbox-two">
                            <a href="BuySSL.aspx" class="buybtn-two space-right">立即投注</a> <a href="#" class="buybtn-two ">参与合买</a><br>
                            <a class="pull-left" href="../WinQuery/Default.aspx">开奖公告</a><a class="pull-right" href="../TrendCharts/SHSSL/SHSSL_ZHFB.aspx">走势图</a>
                        </div>
                    </li>

                    <li><p align="center"><a href="#">
                        <img src="../Home/Room/Images/gaopin/gp06.jpg" alt=""/></a></p>
                        <div class="info">
                                <a href="#">天津快乐十分</a><br />
                            <span>10分钟一期，最高 奖金8000 </span>
                        </div>
                        <div class="clear">
                        </div>
                        <div class="btnbox-two">
                            <a href="#" class="buybtn-two space-right">立即投注</a> <a href="#" class="buybtn-two ">参与合买</a><br>
                            <a class="pull-left" href="#">开奖公告</a><a class="pull-right" href="#">走势图</a>
                        </div>
                    </li>

                    <li><p align="center"><a href="#">
                        <img src="../Home/Room/Images/gaopin/gp07.jpg" alt=""/></a></p>
                        <div class="info">
                                <a href="#">广西快乐十分</a><br />
                            <span>10分钟一期，最高奖金8000 </span>
                        </div>
                        <div class="clear">
                        </div>
                        <div class="btnbox-two">
                            <a href="#" class="buybtn-two space-right">立即投注</a> <a href="#" class="buybtn-two ">参与合买</a><br>
                            <a class="pull-left" href="../WinQuery/Default.aspx">开奖公告</a><a class="pull-right"href="#">走势图</a>
                        </div>
                    </li>

                    <li><p align="center"><a href="#">
                        <img src="../Home/Room/Images/gaopin/gp08.jpg" alt=""/></a></p>
                        <div class="info">
                                <a href="#">湖南快乐十分</a><br />
                            <span>10分钟一期，最高奖金8000 </span>
                        </div>
                        <div class="clear">
                        </div>
                        <div class="btnbox-two">
                            <a href="#" class="buybtn-two space-right">立即投注</a> <a href="#" class="buybtn-two ">参与合买</a><br>
                            <a class="pull-left" href="../WinQuery/Default.aspx">开奖公告</a><a class="pull-right" href="#">走势图</a>
                        </div>
                    </li>

                    <li><p align="center"><a href="#">
                        <img src="../Home/Room/Images/gaopin/gp09.jpg" alt=""/></a></p>
                        <div class="info">
                                <a href="#">重庆快乐十分</a><br />
                            <span>10分钟一期，最高奖金8000 </span>
                        </div>
                        <div class="clear">
                        </div>
                        <div class="btnbox-two">
                            <a href="#" class="buybtn-two space-right">立即投注</a> <a href="#" class="buybtn-two ">参与合买</a><br>
                            <a  class="pull-left" href="../WinQuery/Default.aspx">开奖公告</a><a class="pull-right" href="#">走势图</a>
                        </div>
                    </li>

                    <li><p align="center"><a href="#">
                        <img src="../Home/Room/Images/gaopin/gp10.jpg" alt=""/></a></p>
                        <div class="info">
                                <a href="#">幸运赛车</a><br />
                            <span>10分钟一期，最高奖金50万 </span>
                        </div>
                        <div class="clear">
                        </div>
                        <div class="btnbox-two">
                            <a href="#" class="buybtn-two space-right">立即投注</a> <a href="#" class="buybtn-two ">参与合买</a><br>
                            <a class="pull-left" href="../WinQuery/Default.aspx">开奖公告</a><a class="pull-right" href="#">走势图</a>
                        </div>
                    </li>

                    <li><p align="center"><a href="#">
                        <img src="../Home/Room/Images/gaopin/gp11.jpg" alt=""/></a></p>
                        <div class="info">
                                <a href="#">8选3</a><br />
                            <span>6分钟一期，每天170期 </span>
                        </div>
                        <div class="clear">
                        </div>
                        <div class="btnbox-two">
                            <a href="BuySSL.aspx" class="buybtn-two space-right">立即投注</a> <a href="#" class="buybtn-two ">参与合买</a><br>
                            <a class="pull-left" href="../WinQuery/Default.aspx">开奖公告</a><a class="pull-right" href="#">走势图</a>
                        </div>
                    </li>

                    <li><p align="center"><a href="#">
                        <img src="../Home/Room/Images/gaopin/gp12.jpg" alt=""/></a></p>
                        <div class="info">
                                <a href="#">PK10</a><br />
                            <span>5分钟一期，最高奖金88万 </span>
                        </div>
                        <div class="clear">
                        </div>
                        <div class="btnbox-two">
                            <a href="#" class="buybtn-two space-right">立即投注</a> <a href="#" class="buybtn-two ">参与合买</a><br>
                            <a class="pull-left" href="../WinQuery/Default.aspx">开奖公告</a><a class="pull-right" href="#">走势图</a>
                        </div>
                    </li>

                </ul>
                <div class="clear">
                </div>
            </div>
        </div>



        <div class="lcbox">
            <div class="allcai">体彩</div>
            <div class="lcmain">
                <ul class="lot_ul">
                    <li><p align="center"><a href="BuyCJDLT.aspx">
                        <img src="../Home/Room/Images/ticai/tc01.jpg" alt=""/></a></p>
                        <div class="info">
                                <a href="BuyCJDLT.aspx">超级大乐透</a><br />
                            <span>每周一、三、六开奖 3元中1600万 </span>
                        </div>
                        <div class="clear">
                        </div>
                        <div class="btnbox-two">
                            <a href="BuyCJDLT.aspx" class="buybtn-two space-right">立即投注</a><a href="../JoinUs/JoinAllBuy.aspx"
                                class="buybtn-two">参与合买</a><br>
                            <a class="pull-left" href="../WinQuery/Default.aspx">开奖公告</a><a class="pull-right" href="../TrendCharts/CJDLT/CJDLT_HMFB.aspx">走势图</a>
                        </div>
                    </li>
                    <li><p align="center"><a href="BuyQXC.aspx">
                        <img src="../Home/Room/Images/ticai/tc02.jpg" alt=""/></a></p>
                        <div class="info">
                                <a href="BuyQXC.aspx">七星彩</a><br />
                            <span>每周二、五、日开奖 2元赢取500万 </span>
                        </div>
                        <div class="clear">
                        </div>
                        <div class="btnbox-two">
                            <a href="BuyQXC.aspx" class="buybtn-two space-right">立即投注</a><a href="../JoinUs/JoinAllBuy.aspx"
                                class="buybtn-two">参与合买</a><br>
                            <a  class="pull-left" href="../WinQuery/Default.aspx">开奖公告</a><a class="pull-right" href="../TrendCharts/7Xing/7X_HMFB.aspx">走势图</a>
                        </div>
                    </li>
                    <li><p align="center"><a href="BuyPL3.aspx">
                        <img src="../Home/Room/Images/ticai/tc03.jpg" alt=""/></a></p>
                        <div class="info">
                                <a href="BuyPL3.aspx">排列3</a><br />
                            <span>天天排列三
                                不用愁吃穿 </span>
                        </div>
                        <div class="clear">
                        </div>
                        <div class="btnbox-two">
                            <a href="BuyPL3.aspx" class="buybtn-two space-right">立即投注</a><a href="../JoinUs/JoinAllBuy.aspx"
                                class="buybtn-two">参与合买</a><br>
                            <a class="pull-left" href="../WinQuery/Default.aspx">开奖公告</a><a class="pull-right" href="../TrendCharts/PL3/PL3_HMFB.aspx">走势图</a>
                        </div>
                    </li>
                    <li><p align="center"><a href="BuyPL5.aspx">
                        <img src="../Home/Room/Images/ticai/tc04.jpg" alt=""/></a></p>
                        <div class="info">
                                <a href="BuyPL5.aspx">排列5</a><br />
                            <span>数字彩，天天开
                                最高奖金10万元 </span>
                        </div>
                        <div class="clear">
                        </div>
                        <div class="btnbox-two">
                            <a href="BuyPL5.aspx" class="buybtn-two space-right">立即投注</a><a href="../JoinUs/JoinAllBuy.aspx"
                                class="buybtn-two">参与合买</a><br>
                            <a class="pull-left"href="../WinQuery/Default.aspx">开奖公告</a><a class="pull-right" href="../TrendCharts/PL5/PL5_KJFB.aspx">走势图</a>
                        </div>
                    </li>
                    <li><p align="center"><a href="Buy31x7.aspx">
                        <img src="../Home/Room/Images/ticai/tc05.jpg" alt=""/></a></p>
                        <div class="info">
                                <a href="Buy31x7.aspx">31选7</a><br />
                            <span>数字彩，天天开
                                最高奖金10万元 </span>
                        </div>
                        <div class="clear">
                        </div>
                        <div class="btnbox-two">
                            <a href="Buy31x7.aspx" class="buybtn-two space-right">立即投注</a><a href="../JoinUs/JoinAllBuy.aspx"
                                class="buybtn-two">参与合买</a><br>
                            <a class="pull-left" href="../WinQuery/Default.aspx">开奖公告</a><a class="pull-right" href="#">走势图</a>
                        </div>
                    </li>
                    <li><p align="center"><a href="Buy22x5.aspx">
                        <img src="../Home/Room/Images/ticai/tc06.jpg" alt=""/></a></p>
                        <div class="info">
                                <a href="Buy22x5.aspx">22选5</a><br />
                            <span>数字彩，天天开
                                最高奖金10万元 </span>
                        </div>
                        <div class="clear">
                        </div>
                        <div class="btnbox-two">
                            <a href="Buy22x5.aspx" class="buybtn-two space-right">立即投注</a><a href="../JoinUs/JoinAllBuy.aspx"
                                class="buybtn-two">参与合买</a><br>
                            <a class="pull-left" href="../WinQuery/Default.aspx">开奖公告</a><a class="pull-right" href="../TrendCharts/TC22X5/22X5_HMFB.aspx">走势图</a>
                        </div>
                    </li>
                </ul>
                <div class="clear">
                </div>
            </div>
        </div>
        <div class="lcbox">
            <div class="allcai">足彩</div>
            <div class="lcmain">
                <ul class="lot_ul">
                    <li><p align="center"><a href="BuyLCBQC.aspx">
                        <img src="../Home/Room/Images/zucai/zc01.jpg" alt=""/></a></p>
                        <div class="info">
                                <a href="BuyLCBQC.aspx">六场半全场</a><br>
                            <span>多种过关组合方式
                                猜对一场就有奖 </span>
                        </div>
                        <div class="clear">
                        </div>
                        <div class="btnbox-two">
                            <a href="BuyLCBQC.aspx" class="buybtn-two space-left">立即投注</a><a href="../JoinUs/JoinAllBuy.aspx"
                                class="buybtn-two">参与合买</a><br>
                            <a class="pull-left" href="../WinQuery/Default.aspx">开奖公告</a><a class="pull-right" href="#">走势图</a>
                        </div>
                    </li>
                    <li><p align="center"><a href="BuySFC.aspx">
                        <img src="../Home/Room/Images/zucai/zc02.jpg" alt=""/></a></p>
                        <div class="info">
                                <a href="BuySFC.aspx">14场胜负彩</a><br />
                            <span>竞猜14场足球比赛 奖金500万 </span>
                        </div>
                        <div class="clear">
                        </div>
                        <div class="btnbox-two">
                            <a href="BuySFC.aspx" class="buybtn-two space-right">立即投注</a><a href="../JoinUs/JoinAllBuy.aspx"
                                class="buybtn-two">参与合买</a><br>
                            <a class="pull-left" href="../WinQuery/Default.aspx">开奖公告</a><a class="pull-right" href="#">走势图</a>
                        </div>
                    </li>
                    <li><p align="center"><a href="BuySFC_9_D.aspx">
                        <img src="../Home/Room/Images/zucai/zc03.jpg" alt=""/></a></p>
                        <div class="info">
                                <a href="BuySFC_9_D.aspx">任选9场</a><br />
                            <span>中奖容易，赛事任选 最高奖金500万 </span>
                        </div>
                        <div class="clear">
                        </div>
                        <div class="btnbox-two">
                            <a href="BuySFC_9_D.aspx" class="buybtn-two space-right">立即投注</a><a href="../JoinUs/JoinAllBuy.aspx"
                                class="buybtn-two">参与合买</a><br>
                            <a class="pull-left" href="../WinQuery/Default.aspx">开奖公告</a><a class="pull-right" href="#">开奖公告</a>
                        </div>
                    </li>
                    <li><p align="center"><a href="BuyJQC.aspx">
                        <img src="../Home/Room/Images/zucai/zc04.jpg" alt=""/></a></p>
                        <div class="info">
                                <a href="BuyJQC.aspx">四场进球彩</a><br />
                            <span>中奖容易，赛事任选 最高奖金500万 </span>
                        </div>
                        <div class="clear">
                        </div>
                        <div class="btnbox-two">
                            <a href="BuyJQC.aspx" class="buybtn-two space-right">立即投注</a><a href="../JoinUs/JoinAllBuy.aspx"
                                class="buybtn-two">参与合买</a><br>
                            <a class="pull-left" href="../WinQuery/Default.aspx">开奖公告</a><a class="pull-right" href="#">走势图</a>
                        </div>
                    </li>

                    <li><p align="center"><a href="#">
                        <img src="../Home/Room/Images/zucai/zc05.jpg" alt=""/></a></p>
                        <div class="info">
                                <a href="BuyJQC.aspx">竞技足球</a><br />
                            <span>73%超高返奖率 玩法多样，足球迷首选</span>
                        </div>
                        <div class="clear">
                        </div>
                        <div class="btnbox-two">
                            <a href="BuyJQC.aspx" class="buybtn-two space-right">立即投注</a><a href="#"
                                class="buybtn-two">参与合买</a><br>
                            <a class="pull-left" href="../WinQuery/Default.aspx">开奖公告</a><a class="pull-right" href="#">走势图</a>
                        </div>
                    </li>

                    <li><p align="center"><a href="#">
                        <img src="../Home/Room/Images/zucai/zc06.jpg" alt=""/></a></p>
                        <div class="info">
                                <a href="BuyJQC.aspx">四场进球彩</a><br />
                            <span>中奖容易，赛事任选 最高奖金500万 </span>
                        </div>
                        <div class="clear">
                        </div>
                        <div class="btnbox-two">
                            <a href="BuyJQC.aspx" class="buybtn-two space-right">立即投注</a><a href="#"
                                class="buybtn-two">参与合买</a><br>
                            <a class="pull-left" href="../WinQuery/Default.aspx">开奖公告</a><a class="pull-right" href="#">走势图</a>
                        </div>
                    </li>

                    <li><p align="center"><a href="#">
                        <img src="../Home/Room/Images/zucai/zc07.jpg" alt=""/></a></p>
                        <div class="info">
                                <a href="#">足球相关</a><br />
                            <span>足球竞猜，猜中一场就有奖</span>
                        </div>
                        <div class="clear">
                        </div>
                        <div class="btnbox-two">
                            <a href="BuyJQC.aspx" class="buybtn-two space-right">立即投注</a><a href="#"
                                class="buybtn-two">参与合买</a><br>
                            <a class="pull-left" href="../WinQuery/Default.aspx">开奖公告</a><a class="pull-right" href="#">走势图</a>
                        </div>
                    </li>

                    <li><p align="center"><a href="#">
                        <img src="../Home/Room/Images/zucai/zc08.jpg" alt=""/></a></p>
                        <div class="info">
                                <a href="#">篮球单关</a><br />
                            <span>篮球竞猜，猜中一场就有奖</span>
                        </div>
                        <div class="clear">
                        </div>
                        <div class="btnbox-two">
                            <a href="#" class="buybtn-two space-right">立即投注</a><a href="../JoinUs/JoinAllBuy.aspx"
                                class="buybtn-two">参与合买</a><br>
                            <a class="pull-left" href="../WinQuery/Default.aspx">开奖公告</a><a class="pull-right" href="#">走势图</a>
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