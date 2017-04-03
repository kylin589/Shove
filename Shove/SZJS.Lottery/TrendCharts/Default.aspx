<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="TrendCharts_Default" %>

<%@ Register Src="../Home/Room/UserControls/WebFoot.ascx" TagName="WebFoot" TagPrefix="uc2" %>
<%@ Register Src="../UserControls/Head.ascx" TagName="Head" TagPrefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
    <title>彩票走势图-彩票走势图表和数据分析|福彩|体彩|高频彩|走势图表|图表分析[双色球，福彩3D，时时乐、时时彩、十一运夺金]－<%=_Site.Name %></title>
    <meta name="description" content="<%=_Site.Name %>,为广大彩民提供双色球，福彩3D，时时乐、时时彩、十一运夺金等彩票开奖号码预测分析。" />
    <meta name="keywords" content="彩票走势图,彩票走势图表,数据分析" />
    <link rel="shortcut icon" href="../favicon.ico" />
    <link href="../Home/Room/Style/common.css" rel="stylesheet" type="text/css" />
    <link href="../Home/Room/Style/StyleSheet.css" rel="stylesheet" type="text/css" />
    <link href="../Home/Room/Style/zbuy.css" rel="stylesheet" type="text/css" />

    <script src="../JavaScript/jquery-1.4.js" type="text/javascript"></script>

</head>
<body>
    <form id="form1" runat="server">
    <uc1:Head ID="Head1" runat="server" />
    <div class="wrap">
        <div class="bj2 cut-line top-line-height">
           <ul class="nav-number">
             <li style=" width:40px;"><img src="../Home/Room/Images/runmap/numbers.jpg" alt="" /></li>
             <li class="number-tit">数字彩</li>
             <li><a href="../Lottery/BuySSQ.aspx">双色球</a></li>
             <li><a href="../Lottery/BuyCJDLT.aspx">大乐透</a></li>
             <li><a href="../Lottery/Buy3D.aspx">3D</a></li>
             <li><a href="../Lottery/BuyPL3.aspx">排列3</a></li>
             <li><a href="../Lottery/BuyPL5.aspx">排列5</a></li>
             <li><a href="../Lottery/BuyQXC.aspx">七星彩</a></li>
             <li><a href="../Lottery/BuyQLC.aspx">七乐彩</a></li>
             <li><a href="../Lottery/Buy31x7.aspx">31选7</a></li>
             <li><a href="../Lottery/Buy22x5.aspx">22选5</a></li>
           </ul>

           <!-- <ul class="fc_list">
                <li id="ssq"><a href="../Lottery/BuySSQ.aspx">双色球 </a></li>
                <li id="fc3d"><a href="../Lottery/Buy3D.aspx">福彩3D</a></li>
                <li id="qlc"><a href="../Lottery/BuyQLC.aspx">七乐彩</a></li>
                <li id="f15x5"><a href="#">15选5</a></li>
                <li id="df6j1"><a href="#">东方6+1</a></li>
                <li id="ssl"><a href="../Lottery/BuySSL.aspx">时时乐</a></li>
                <li id="jxssc"><a href="../Lottery/BuySSC.aspx">江西时时彩</a></li>
                <li id="Li1"><a href="../Lottery/BuyCQSSC.aspx">重庆时时彩</a></li>
            </ul>
            <ul class="tc_list">
                <li id="dlt"><a href="../Lottery/BuyCJDLT.aspx">大乐透</a></li>
                <li id="pai3"><a href="../Lottery/BuyPL3.aspx">排列3</a></li>
                <li id="pai5"><a href="../Lottery/BuyPL5.aspx">排列5</a></li>
                <li id="qxc"><a href="../Lottery/BuyQXC.aspx">七星彩</a></li>
                <li id="t11x5"><a href="../Lottery/BuySYYDJ.aspx">十一运夺金</a></li>
                <li id="o11x5"><a href="../Lottery/BuyJX11x5.aspx">11选5</a></li>
                <li id="gd11x5"><a href="../Lottery/Buy31x7.aspx">31选7</a></li>
                <li id="tc22x5"><a href="../Lottery/Buy22x5.aspx">22选5</a></li>
            </ul>-->
            <div class="clear"></div>
        </div>
        <div class="bj1">
    <ul class="nav-number">
         
             <li style=" width:40px;"><img src="../Home/Room/Images/runmap/gp.jpg" alt="" /></li>
             <li class="number-tit">高频彩</li>
             <li><a href="#">11选5</a></li>
             <li><a href="#">老11选5</a></li>
             <li><a href="#">粤11选5</a></li>
             <li><a href="#">好运11选5</a></li>
             <li><a href="#">易乐11选5</a></li>
             <li><a href="#">快3</a></li>
             <li><a href="#">江苏快3</a></li>
             <li><a href="#">新快3</a></li>
             <li><a href="#">8选3</a></li>
           
           </ul>
<div class="clear"></div>
  </div>
  <div class="bj2">
            <ul class="nav-number">
             <li style=" width:40px;"></li>
             <li class="number-tit"></li>
             <li><a href="#">易快3</a></li>
             <li><a href="#">好运快3</a></li>
             <li><a href="#">快乐扑克</a></li>
             <li><a href="#">重庆时时彩</a></li>
             <li><a href="#">新时时彩</a></li>
             <li><a href="#">江西时时彩</a></li>
             <li><a href="#">时时彩</a></li>
             <li><a href="#">快8</a></li>
             <li><a href="#">8选3</a></li>
           </ul>
    
    <div class="clear"></div>
    </div>
   
    <div class="bj1">
    <ul class="nav-number">
         
             <li style=" width:40px;"></li>
             <li class="number-tit"></li>
             <li><a href="#">粤快乐十分</a></li>
             <li><a href="#">天津快乐十分</a></li>
             <li><a href="#">广西快乐十分</a></li>
             <li><a href="#">湖南快乐十分</a></li>
             <li><a href="#">重庆快乐十分</a></li>
             <li><a href="#">湖南幸运赛车</a></li>
             <li><a href="#">北京赛车PK10</a></li>
             <li><a href="#">十一运夺金</a></li>
             <li><a href="#">时时乐</a></li>
           
           </ul>
<div class="clear"></div>
  </div>

   
            
        <div class="trend-box">
            
                <div class="trend-lot"><!--双色球-->
                  
                        <div class="lottery-logo">
                            <a href="../Lottery/BuySSQ.aspx" target="_blank"><img src="../Home/Room/Images/runmap/zs01.jpg" alt="" /></a>
                        </div>
                        <div class="right-content">
                                <div class="trend-content">                  
                               <p><span class="run-title">号码走势：</span><span><a class="initialize" href="#">基本走势图</a></span><span class="hot">热</span>
                                <span><a href="#">红球三分区走势图</a></span><span><a href="#">红球四分区走势图</a></span><span><a href="#">红球七分区走势图</a></span><span><a href="#">红球连号走势图</a></span>
                                <span><a href="#">和值走势图</a></span></p>
                                <p><span class="run-title">形态分布：</span><span><a class="initialize" href="#">红球大小号码走势图</a></span>
                                <span><a href="#">红球奇偶号码走势图</a></span><span><a href="#">红球质合号码走势图</a></span>
                                <span><a href="#">红球012路号码走势图</a></span></p>
                                 <p><span class="run-title">蓝球走势：</span><span><a  class="initialize" href="#">蓝球综合走势图</a></span><span class="hot">热</span></p>
                                 <p class="initialize"><span class="run-title">统计分析：</span><span><a  class="initialize" href="#">重邻孤分析表</a></span><span class="hot">热</span><span><a href="#">历史同期查询</a></span></p>
                                <!--<span><a href="SSQ/SSQ_ZHFB.aspx" target="_blank">综合走势</a></span> <span><a href="SSQ/SSQ_CGXMB.aspx"
                                        target="_blank">常规项目</a></span> <span><a href="SSQ/SSQ_DX.aspx" target="_blank">大小走势</a></span>
                                    <span><a href="SSQ/SSQ_JO.aspx" target="_blank">奇偶走势<s></s></a></span> <span><a href="SSQ/SSQ_ZH.aspx"
                                        target="_blank">质合走势</a></span> <span><a href="SSQ/SSQ_HL.aspx" target="_blank">红蓝球走势</a></span>
                                    <span><a href="SSQ/SSQ_BQZST.aspx" target="_blank">蓝球走势</a></span> <span><a href="SSQ/SSQ_3FQ.aspx"
                                        target="_blank">红球三分区走势</a></span>-->
                               
                                <div class="clear"></div>
                            </div>
                        </div>
                      </div>


                 <div class="trend-lot">  
                        <div class="lottery-logo"><!--大乐透-->                                          <a href="../Lottery/BuyCJDLT.aspx" target="_blank"><img src="../Home/Room/Images/runmap/zs02.jpg" alt=""/></a></div>
                         <div class="right-content">
                           
                              <p><span class="run-title">号码走势：</span><span><a class="initialize" href="#">基本走势图</a></span><span class="hot">热</span>
                              <span><a href="#">前区三分区走势图</a></span>
                              <span><a href="#">前区四分区走势图</a></span><span><a href="#">前区五分区走势图</a></span><span><a href="#">前区七分区走势图</a></span><br />
                              <span class="run-title-no"><a class="initialize" href="#">前区和值走势图</a></span><span><a href="#">前区跨度走势图</a></span><span>
                              <a href="#">012路号码分布图</a></span><span><a href="#">连号走势图</a></span></p>
                              <p><span class="run-title">形态走势：</span><span><a class="initialize" href="#">大小形态走势图</a></span>
                              <span><a href="#">奇偶形态走势图</a></span><span><a href="#">质合形态走势图</a></span></p>
                              <p><span class="run-title">后区走势：</span><span><a class="initialize" href="#">后区分布图</a></span></p>
                              <p><span class="run-title">统计分析：</span><span><a class="initialize" href="#">前区重邻孤分析表</a></span><span><a href="#">历史同期查询</a></span></p>

                                     <!-- 号码走势：福彩3D 链接的路径<span><a href="FC3D/FC3D_ZHXT.aspx" target="_blank">综合走势</a></span> <span><a href="FC3D/FC3D_DX_JO.aspx"
                                        target="_blank">大小走势</a></span> <span><a href="FC3D/FC3D_JO_DX.aspx" target="_blank">
                                            奇偶走势</a></span> <span><a href="FC3D/FC3D_ZHZST.aspx" target="_blank">质合走势<s></s></a></span>
                                    <span><a href="FC3D/FC3D_DZXZST.aspx" target="_blank">大中小走势</a></span> <span><a href="FC3D/FC3D_KDZST.aspx"
                                        target="_blank">跨度走势</a></span> <span><a href="FC3D/FC3D_XTZST.aspx" target="_blank">
                                            形态走势</a></span> <span><a href="FC3D/FC3D_HZZST.aspx" target="_blank">和值走势</a></span>
                                    <span><a href="FC3D/FC3D_2CHW.aspx" target="_blank">二次和尾差尾</a></span> <span><a href="FC3D/FC3D_C3YS.aspx"
                                        target="_blank">除3余数走势</a></span> <span><a href="FC3D/FC3D_C3YS_HTML.aspx" target="_blank">
                                            除3余数分区</a></span> <span><a href="FC3D/FC3D_DSHM.aspx" target="_blank">单双点分区</a></span>
                                    <span><a href="FC3D/FC3D_DTHM.aspx" target="_blank">胆托分区</a></span> <span><a href="FC3D/FC3D_HSWH.aspx"
                                        target="_blank">和数尾分区</a></span> <span><a href="FC3D/FC3D_HSZ.aspx" target="_blank">
                                            和数值分区</a></span> <span><a href="FC3D/FC3D_KDZH.aspx" target="_blank">首尾边距组合</a></span>
                                    <span><a href="FC3D/FC3D_LHZH.aspx" target="_blank">连号组合分区</a></span> <span><a href="FC3D/FC3D_ZS.aspx"
                                        target="_blank">质数分区号码组合</a></span>-->
                                
                                <div class="clear"></div>
                            </div>
                         </div>


                       <div class="trend-lot"><!--3D-->
                        <div class="lottery-logo">
                            <a href="../Lottery/Buy3D.aspx" target="_blank">
                                <img src="../Home/Room/Images/runmap/zs03.jpg" alt=""/></a>
                           
                        </div>
                        <div class="right-content">                               
                                
                                <p><span class="run-title">号码走势：</span><span><a class="initialize" href="#">基本走势图</a>
                                </span><span class="hot">热</span><span><a href="#">和值走势图</a></span>
                              <span><a href="#">跨度走势图</a></span></p>
                              <p><span class="run-title">形态分布：</span><span><a class="initialize" href="#">大小号码走势图</a></span><span>
                              <a href="#">奇偶号码走势图</a></span><span><a href="#">质合号码走势图</a></span><span><a href="#">012路号码走势图</a></span></p>
                              <p><span class="run-title">形态走势：</span><span><a class="initialize" href="#">大小形态走势图</a></span>
                              <span><a href="#">奇偶形态走势图</a></span><span><a href="#">质合形态走势图</a></span></p>
                            
                                    <!--七乐彩 ../Lottery/BuyQLC.aspx<span><a href="QLC/7LC_ZHFB.aspx" target="_blank">综合走势</a></span> <span><a href="QLC/7LC_CGXMB.aspx"
                                        target="_blank">常规项目</a></span>-->
                                <div class="clear"></div>
                            </div>
                        </div>
                       
                   
                  <%--  <li>
                        <div class="lottery-logo">
                            <a href="../Lottery/Buy15x5.aspx" target="_blank">
                                <img src="../Home/Room/Images/logo_59.gif" alt="" class="imgs"/></a>
                            <div class="lottery-title">
                                <img src="../Home/Room/Images/15x5_title.gif" alt="" /></div>
                        </div>
                        <div class="right-content">
                            <div class="row-content">
                                <h2>
                                    号码走势：</h2>
                                <div class="trend-content">
                                    <span><a href="HD15X5/C15X5_ZHZST.aspx" target="_blank">综合走势</a></span> <span><a
                                        href="HD15X5/C15X5_CGXMB.aspx" target="_blank">常规项目</a></span>
                                </div>
                                <div class="clear">
                                </div>
                            </div>
                        </div>
                        <div class="clear">
                        </div>
                    </li>
                    <li>
                        <div class="lottery-logo">
                            <a href="../Lottery/BuyDF6J1.aspx" target="_blank">
                                <img src="../Home/Room/Images/logo_58.gif" alt="" class="imgs"/></a>
                            <div class="lottery-title">
                                <img src="../Home/Room/Images/df6j1_title.gif" alt="" /></div>
                        </div>
                        <div class="right-content">
                            <div class="row-content">
                                <h2>
                                    号码走势：</h2>
                                <div class="trend-content">
                                    <span><a href="DF6J1/DF61_ZHFB.aspx" target="_blank">综合走势</a></span>
                                </div>
                                <div class="clear">
                                </div>
                            </div>
                        </div>
                        <div class="clear">
                        </div>
                    </li>--%>
                     
                      <div class="trend-lot"><!--排列3-->
                        <div class="lottery-logo">
                            <a href="../Lottery/BuyPL3.aspx" target="_blank">
                                <img src="../Home/Room/Images/runmap/zs04.jpg" alt="" /></a></div>
                        <div class="right-content">                  

                           <p><span class="run-title">号码走势：</span><span><a class="initialize" href="#">基本走势图</a>
                           </span><span class="hot">热</span><span><a href="#">和值走势图</a></span>
                              <span><a href="#">跨度走势图</a></span></p>
                              <p><span class="run-title">形态分布：</span><span><a class="initialize" href="#">大小号码分布图</a></span><span>
                              <a href="#">奇偶号码分布图</a></span><span><a href="#">质合号码分布图</a></span><span><a href="#">除三余数分布图</a></span></p>
                              <p><span class="run-title">形态走势：</span><span><a class="initialize" href="#">大小形态走势图</a></span>
                              <span><a href="#">奇偶形态走势图</a></span><span><a href="#">质合形态走势图</a></span></p>
                               
                                   <!--时时乐../Lottery/BuySSL.aspx <span><a href="SHSSL/SHSSL_ZHFB.aspx" target="_blank">综合走势</a></span> <span><a href="SHSSL/SHSSL_DX.aspx"
                                        target="_blank">大小走势</a></span> <span><a href="SHSSL/SHSSL_JO.aspx" target="_blank">
                                            奇偶走势</a></span> <span><a href="SHSSL/SHSSL_ZH.aspx" target="_blank">质合走势</a></span>
                                    <span><a href="SHSSL/SHSSL_HZ.aspx" target="_blank">和值走势</a></span> <span><a href="SHSSL/SHSSL_012.aspx"
                                        target="_blank">012路走势</a></span>-->
                            
                                <div class="clear">
                                </div>
                            </div>
                        </div>
                       
                
                     <div class="trend-lot">
                        <div class="lottery-logo">
                            <a href="../Lottery/BuyPL5.aspx" target="_blank">
                                <img src="../Home/Room/Images/runmap/zs05.jpg" alt="" /></a>
                           
                        </div>
                        <div class="right-content"><!--排列5-->
                              <p><span class="run-title">号码走势：</span><span><a class="initialize" href="#">基本走势图</a>
                              </span><span class="hot">热</span><span><a href="#">和值走势图</a></span>
                              <span><a href="#">跨度走势图</a></span></p>
                              <p><span class="run-title">形态分布：</span><span><a class="initialize" href="#">大小号码走势图</a></span><span>
                              <a href="#">奇偶号码走势图</a></span><span><a href="#">质合号码走势图</a></span></p>
                             
                                
                                   <!--时时彩../Lottery/BuySSC.aspx <span><a href="JXSSC/SSC_2X_ZHFBZST.aspx" target="_blank">二星综合</a></span> <span><a
                                        href="JXSSC/SSC_2X_DXDSZST.aspx" target="_blank">二星大小单双</a></span> <span><a href="JXSSC/SSC_2X_HZWZST.aspx"
                                            target="_blank">二星和值尾</a></span> <span><a href="JXSSC/SSC_2X_HZZST.aspx" target="_blank">
                                                二星和值</a></span> <span><a href="JXSSC/SSC_2X_KDZST.aspx" target="_blank">二星跨度</a></span>
                                    <span><a href="JXSSC/SSC_2X_MaxZST.aspx" target="_blank">二星最大值</a></span> <span><a
                                        href="JXSSC/SSC_2X_MinZST.aspx" target="_blank">二星最小值</a></span> <span><a href="JXSSC/SSC_2XPJZZST.aspx"
                                            target="_blank">二星均值</a></span> <span><a href="JXSSC/SSC_2X_012ZST.aspx" target="_blank">
                                                二星012路</a></span> <span><a href="JXSSC/SSC_3X_ZHZST.aspx" target="_blank">三星综合</a></span>
                                    <span><a href="JXSSC/SSC_3X_ZST.aspx" target="_blank">三星走势</a></span> <span><a href="JXSSC/SSC_3X_DXZST.aspx"
                                        target="_blank">三星大小</a></span> <span><a href="JXSSC/SSC_3X_HZWZST.aspx" target="_blank">
                                            三星和值尾</a></span> <span><a href="JXSSC/SSC_3X_HZZST.aspx" target="_blank">三星和值</a></span>
                                    <span><a href="JXSSC/SSC_3X_JOZST.aspx" target="_blank">三星奇偶</a></span> <span><a
                                        href="JXSSC/SSC_3X_KDZST.aspx" target="_blank">三星跨度</a></span> <span><a href="JXSSC/SSC_3X_DX_012_ZST.aspx"
                                            target="_blank">三星单选012路</a></span> <span><a href="JXSSC/SSC_3X_ZX_012_ZST.aspx"
                                                target="_blank">三星组选012路</a></span> <span><a href="JXSSC/SSC_4X_ZHFB.aspx" target="_blank">
                                                    四星综合</a></span> <span><a href="JXSSC/SSC_4X_ZST.aspx" target="_blank">四星走势</a></span>
                                    <span><a href="JXSSC/SSC_4X_DXZST.aspx" target="_blank">四星大小</a></span> <span><a
                                        href="JXSSC/SSC_4X_HZZST.aspx" target="_blank">四星和值</a></span> <span><a href="JXSSC/SSC_4X_JOZST.aspx"
                                            target="_blank">四星奇偶</a></span> <span><a href="JXSSC/SSC_4X_KDZST.aspx" target="_blank">
                                                四星跨度</a></span> <span><a href="JXSSC/SSC_4X_PJZZST.aspx" target="_blank">四星均值</a></span>
                                    <span><a href="JXSSC/SSC_4X_ZHZST.aspx" target="_blank">四星质合</a></span> <span><a
                                        href="JXSSC/SSC_5X_ZHFB.aspx" target="_blank">五星综合</a></span> <span><a href="JXSSC/SSC_5X_ZST.aspx"
                                            target="_blank">五星走势</a></span> <span><a href="JXSSC/SSC_5X_DXZST.aspx" target="_blank">
                                                五星大小</a></span> <span><a href="JXSSC/SSC_5X_HZZST.aspx" target="_blank">五星和值</a></span>
                                    <span><a href="JXSSC/SSC_5X_JOZST.aspx" target="_blank">五星奇偶</a></span> <span><a
                                        href="JXSSC/SSC_5X_KDZST.aspx" target="_blank">五星跨度</a></span> <span><a href="JXSSC/SSC_5X_PJZZST.aspx"
                                            target="_blank">五星均值</a></span> <span><a href="JXSSC/SSC_5X_ZHZST.aspx" target="_blank">
                                                五星质合</a></span>-->
                            
                                <div class="clear"></div>
                              </div>
                            </div>
       
      
                <div class="trend-lot">
                        <div class="lottery-logo"><!--七星彩-->
                            <a href="#" target="_blank">
                                <img src="../Home/Room/Images/runmap/zs06.jpg" alt="" /></a>
                            
                        </div>                                          
                        <div class="right-content ">
                                <p><span class="run-title">号码走势：</span><span><a class="initialize" href="#">基本走势图</a>
                                </span><span class="hot">热</span><span><a href="#">和值走势图</a></span>
                              <span><a href="#">跨度走势图</a></span></p>
                              <p><span class="run-title">形态走势：</span><span><a class="initialize" href="#">大小号码走势图</a></span><span>
                              <a href="#">奇偶号码走势图</a></span><span><a href="#">质合号码走势图</a></span></p>
                              <p><span class="run-title">定位走势：</span><span><a class="initialize" href="#">第一位走势图</a></span><span>
                              <a href="#">第二位走势图</a></span><span><a href="#">第三位走势图</a></span><span><a href="#">第四位走势图</a></span><span><a href="#">第五位走势图</a></span><br />
                             <span class="run-title-no"><a  class="initialize" href="#">第六位走势图</a></span><span><a href="#">第七位走势图</a></span></p>
                           
                                   <!--大乐透 <span><a href="CJDLT/CJDLT_HMFB.aspx" target="_blank">综合走势</a></span> <span><a href="CJDLT/CJDLT_JO.aspx"
                                        target="_blank">奇偶走势</a></span> <span><a href="CJDLT/CJDLT_LH.aspx" target="_blank">
                                            连号走势</a></span> <span><a href="CJDLT/CJDLT_YS.aspx" target="_blank">余数走势</a></span>
                                    <span><a href="CJDLT/CJDLT_HZHeng.aspx" target="_blank">和值横向走势</a></span> <span><a
                                        href="CJDLT/CJDLT_HZZong.aspx" target="_blank">和值纵向走势</a></span> <span><a href="CJDLT/CJDLT_jima.aspx"
                                            target="_blank">前区号码走势</a></span> <span><a href="CJDLT/CJDLT_JimaLengRe.aspx" target="_blank">
                                                前区号码冷热</a></span> <span><a href="CJDLT/CJDLT_JiMaWeihao.aspx" target="_blank">前区尾号走势</a></span>
                                    <span><a href="CJDLT/CJDLT_TeMa.aspx" target="_blank">后区号码走势</a></span> <span><a
                                        href="CJDLT/CJDLT_TemaLengRe.aspx" target="_blank">后区号码冷热</a></span>-->
                               
                                <div class="clear">
                                </div>
                          
                        </div>
                      </div>

                     <div class="trend-lot"><!--七乐彩-->
                        <div class="lottery-logo">                          
                            <a href="#" target="_blank">
                                <img src="../Home/Room/Images/runmap/zs07.jpg" alt="" /></a>
                            
                        </div>                  
                        <div class="right-content">
                           
                               <p><span class="run-title">号码走势：</span><span><a class="initialize" href="#">基本走势图</a>
                               </span><span class="hot">热</span><span><a href="#">三分区走势图</a></span>
                              <span><a href="#">五分区走势图</a></span><span><a href="#">连号走势图</a></span><span><a href="#">和值走势图</a></span></p>
                              <p><span class="run-title">形态分布：</span><span><a class="initialize" href="#">大小号码走势图</a></span><span>
                              <a href="#">奇偶号码走势图</a></span><span><a href="#">质合号码分布图</a></span><span><a href="#">012路号码走势图</a></span></p>
                              <p><span class="run-title">统计分析：</span><span><a class="initialize" href="#">历史同期查询</a></span>
                              
                             </p>
                                    <!--排列3<span><a href="PL3/PL3_HMFB.aspx" target="_blank">综合走势</a></span> <span><a href="PL3/PL3_DX.aspx"
                                        target="_blank">大小走势</a></span> <span><a href="PL3/PL3_JO.aspx" target="_blank">奇偶走势</a></span>
                                    <span><a href="PL3/PL3_ZH.aspx" target="_blank">质合走势</a></span> <span><a href="PL3/PL3_CF.aspx"
                                        target="_blank">重复走势</a></span> <span><a href="PL3/PL3_012.aspx" target="_blank">012路走势</a></span>
                                    <span><a href="PL3/PL3_DZX.aspx" target="_blank">大中小走势</a></span> <span><a href="PL3/PL3_ZX.aspx"
                                        target="_blank">组选分布</a></span><span><a href="PL3/PL3_WH.aspx" target="_blank">位和走势</a></span>
                                    <span><a href="PL3/PL3_LH.aspx" target="_blank">连号走势</a></span> <span><a href="PL3/PL3_YS.aspx"
                                        target="_blank">余数走势</a></span> <span><a href="PL3/PL3_KD.aspx" target="_blank">跨度走势</a></span>
                                    <span><a href="PL3/PL3_HZ.aspx" target="_blank">和值走势</a></span><span><a href="PL3/PL3_GD.aspx"
                                        target="_blank">和值号码分布</a></span>-->
                               
                                <div class="clear">
                                </div>
                            </div>
                        </div>
                       
                  
                    <div class="trend-lot"><!--31选7-->
                        <div class="lottery-logo">
                            <a href="" target="_blank">
                                <img src="../Home/Room/Images/runmap/zs08.jpg" alt="" /></a>
                           
                        </div>
                        <div class="right-content">
                              <p><span class="run-title">号码走势：</span><span><a class="initialize" href="#">基本走势图</a>
                              </span><span class="hot">热</span><span><a href="#">和值走势图</a></span>
                              <span><a href="#">跨度走势图</a></span></p>
                              <p><span class="run-title">形态走势：</span><span><a class="initialize" href="#">大小号码走势图</a></span><span>
                              <a href="#">奇偶号码走势图</a></span><span><a href="#">质合号码走势图</a></span></p>
                              <p><span class="run-title">定位走势：</span><span><a class="initialize" href="#">第一位走势图</a></span><span>
                              <a href="#">第二位走势图</a></span><span><a href="#">第三位走势图</a></span><span><a href="#">第四位走势图</a></span><span><a href="#">第五位走势图</a></span><br />
                             <span class="run-title-no"><a  class="initialize" href="#">第六位走势图</a></span><span><a href="#">第七位走势图</a></span></p>
                            
                                    <!--排列5<span><a href="PL5/PL5_KJFB.aspx" target="_blank">综合走势</a></span> <span><a href="PL5/PL5_DX.aspx"
                                        target="_blank">大小走势</a></span> <span><a href="PL5/PL5_JO.aspx" target="_blank">奇偶走势</a></span>
                                    <span><a href="PL5/PL5_ZH.aspx" target="_blank">质合走势</a></span> <span><a href="PL5/PL5_CF.aspx"
                                        target="_blank">重复走势</a></span> <span><a href="PL5/PL5_012.aspx" target="_blank">012路走势</a></span>
                                    <span><a href="PL5/PL5_DZX.aspx" target="_blank">大中小走势</a></span> <span><a href="PL5/PL5_LH.aspx"
                                        target="_blank">连号走势</a></span> <span><a href="PL5/PL5_YS.aspx" target="_blank">余数走势</a></span>
                                    <span><a href="PL5/PL5_HZ.aspx" target="_blank">和值走势</a></span>-->
                              
                                <div class="clear">
                                </div>
                         
                        </div>
                        </div>
                 

                   <div class="trend-lot"><!--22选5-->
                        <div class="lottery-logo">
                            <a href="../Lottery/Buy22x5.aspx" target="_blank">
                                <img src="../Home/Room/Images/runmap/zs09.jpg" alt=""/></a>
                           
                        </div>
                        <div class="right-content">
                             <p><span class="run-title">号码走势：</span><span><a class="initialize" href="#">基本走势图</a>
                             </span><span class="hot">热</span><span><a href="#">和值走势图</a></span>
                              <span><a href="#">跨度走势图</a></span></p>
                              <p><span class="run-title">形态走势：</span><span><a class="initialize" href="#">大小号码走势图</a></span><span>
                              <a href="#">奇偶号码走势图</a></span><span><a href="#">质合号码走势图</a></span></p>
                              <p><span class="run-title">定位走势：</span><span><a class="initialize" href="#">第一位走势图</a></span><span>
                              <a href="#">第二位走势图</a></span><span><a href="#">第三位走势图</a></span><span><a href="#">第四位走势图</a></span><span><a href="#">第五位走势图</a></span><br />
                             <span class="run-title-no"><a  class="initialize" href="#">第六位走势图</a></span><span><a href="#">第七位走势图</a></span></p>
                         
                                    <!--七星彩 ../Lottery/BuyQXC.aspx<span><a href="7Xing/7X_HMFB.aspx" target="_blank">综合走势</a></span> <span><a href="7Xing/7X_DX.aspx"
                                        target="_blank">大小走势<s></s></a></span> <span><a href="7Xing/7X_JO.aspx" target="_blank">
                                            奇偶走势</a></span> <span><a href="7Xing/7X_ZH.aspx" target="_blank">质合走势</a></span>
                                    <span><a href="7Xing/7X_CF.aspx" target="_blank">重复走势</a></span> <span><a href="7Xing/X7_012.aspx"
                                        target="_blank">012路走势</a></span> <span><a href="7Xing/X7_DZX.aspx" target="_blank">
                                            大中小走势</a></span> <span><a href="7Xing/7X_LH.aspx" target="_blank">连号走势</a></span>
                                    <span><a href="7Xing/7X_YS.aspx" target="_blank">余数走势</a></span> <span><a href="7Xing/7X_HZheng.aspx"
                                        target="_blank">和值横向走势</a></span> <span><a href="7Xing/7X_ZHZhong.aspx" target="_blank">
                                            和值纵向走势</a></span>-->
                           
                                <div class="clear">
                                </div>
                            </div>
                        </div>
       
                      <div class="trend-lot"><!--11选5-->
                        <div class="lottery-logo">
                            <a href="#" target="_blank">
                                <img src="../Home/Room/Images/runmap/zs10.jpg" alt="" /></a>
                         
                        </div>                                
                        <div class="right-content">                    
                                      
                           <p><span class="run-title">号码走势：</span><span><a class="initialize" href="#">任选基本走势图</a>
                           </span><span class="hot">热</span><span><a href="#">前三直选走势图</a></span><span class="hot">热</span>
                              <span><a href="#">前三组选走势图</a></span><span><a href="#">任选二走势图</a></span><span><a href="#">前二直选走势图</a>
                              </span><span><a href="#">前二组选走势图</a></span></p>
                              <p><span class="run-title">和值走势：</span><span><a class="initialize" href="#">任选和值走势图</a></span><span>
                              <a href="#">前二和值走势图</a></span><span><a href="#">前三和值走势图</a></span></p>
                              <p><span class="run-title">定位走势：</span><span><a class="initialize" href="#">第一位(前一)走势图</a></span><span>
                              <a href="#">第二位走势图</a></span><span><a href="#">第三位走势图</a></span><span><a href="#">第四位走势图</a>
                              </span><span><a href="#">第五位走势图</a></span></p>
                             <p><span class="run-title">跨度走势：</span><span><a  class="initialize" href="#">任选跨度走势图</a>
                             </span><span class="hot">热</span><span><a href="#">前二跨度走势图</a></span><span><a href="#">前三跨度走势图</a></span></p>
                             <p><span class="run-title">形态走势：</span><span><a  class="initialize" href="#">任选大小走势图</a>
                             </span><span><a href="#">任选奇偶走势图</a></span><span><a href="#">任选质合走势图</a></span></p>
                                    <!--十一云夺金 ../Lottery/BuySYYDJ.aspx <span><a href="SYYDJ/SYDJ_FBZS.aspx" target="_blank">分布走势</a></span> <span><a href="SYYDJ/SYDJ_DWZS.aspx"
                                        target="_blank">定位走势</a></span> <span><a href="SYYDJ/SYDJ_HZFB.aspx" target="_blank">
                                            和值分布走势</a></span> <span><a href="SYYDJ/SYDJ_Q2FBT.aspx" target="_blank">前二分布走势</a></span>
                                    <span><a href="SYYDJ/SYDJ_Q2HZ.aspx" target="_blank">前二和值走势</a></span> <span><a href="SYYDJ/SYDJ_Q2ZXDYB.aspx"
                                        target="_blank">前二组选走势</a></span> <span><a href="SYYDJ/SYDJ_Q3FBT.aspx" target="_blank">
                                            前三分布走势</a></span> <span><a href="SYYDJ/SYDJ_Q3FWT.aspx" target="_blank">前三分位走势</a></span>
                                    <span><a href="SYYDJ/SYDJ_Q3HZT.aspx" target="_blank">前三和值走势</a></span>-->
                            
                                <div class="clear">
                                </div>
                            </div>
                        </div>
                      

                        <div class="trend-lot"><!--老11选5-->
                        <div class="lottery-logo">
                            <a href="#" target="_blank">
                                <img src="../Home/Room/Images/runmap/zs11.jpg" alt="" /></a>
                           
                        </div>
                        <div class="right-content">
                           
                             <p><span class="run-title">号码走势：</span><span><a class="initialize" href="#">任选基本走势图</a>
                             </span><span class="hot">热</span><span><a href="#">前三直选走势图</a></span><span class="hot">热</span>
                              <span><a href="#">前三组选走势图</a></span><span><a href="#">任选二走势图</a></span><span><a href="#">前二直选走势图</a>
                              </span><span><a href="#">前二组选走势图</a></span></p>
                              <p><span class="run-title">和值走势：</span><span><a class="initialize" href="#">任选和值走势图</a></span><span>
                              <a href="#">前二和值走势图</a></span><span><a href="#">前三和值走势图</a></span></p>
                              <p><span class="run-title">定位走势：</span><span><a class="initialize" href="#">第一位(前一)走势图</a></span><span>
                              <a href="#">第二位走势图</a></span><span><a href="#">第三位走势图</a></span><span><a href="#">第四位走势图</a>
                              </span><span><a href="#">第五位走势图</a></span></p>
                             <p><span class="run-title">跨度走势：</span><span><a  class="initialize" href="#">任选跨度走势图</a>
                             </span><span class="hot">热</span><span><a href="#">前二跨度走势图</a></span><span><a href="#">前三跨度走势图</a></span></p>
                             <p><span class="run-title">形态走势：</span><span><a  class="initialize" href="#">任选大小走势图</a>
                             </span><span><a href="#">任选奇偶走势图</a></span><span><a href="#">任选质合走势图</a></span></p>
                                    <!-- 22选5<span><a href="TC22X5/22X5_HMFB.aspx" target="_blank">综合走势</a></span> <span><a href="TC22X5/22X5_JO.aspx"
                                        target="_blank">奇偶走势</a></span> <span><a href="TC22X5/22X5_WeiHao.aspx" target="_blank">
                                            尾号走势</a></span> <span><a href="TC22X5/22X5_WeiHaoCF.aspx" target="_blank">重复走势</a></span>
                                    <span><a href="TC22X5/22X5_LH.aspx" target="_blank">连号走势</a></span> <span><a href="TC22X5/22X5_YS.aspx"
                                        target="_blank">余数走势</a></span> <span><a href="TC22X5/22X5_HMLR.aspx" target="_blank">
                                            冷热分布</a></span> <span><a href="TC22X5/22X5_HZ_Heng.aspx" target="_blank">和值横向走势</a></span>
                                    <span><a href="TC22X5/22X5_HZ_Zong.aspx" target="_blank">和值纵向走势</a></span>-->
                          
                                <div class="clear"></div>
                            </div>
                        </div>



              <div class="trend-lot"><!--粤11选5-->
                        <div class="lottery-logo">
                            <a href="#" target="_blank">
                                <img src="../Home/Room/Images/runmap/zs12.jpg" alt="" /></a>
                           
                        </div>
                        <div class="right-content">
                           
                             <p><span class="run-title">号码走势：</span><span><a class="initialize" href="#">任选基本走势图</a>
                             </span><span class="hot">热</span><span><a href="#">前三直选走势图</a></span><span class="hot">热</span>
                              <span><a href="#">前三组选走势图</a></span><span><a href="#">任选二走势图</a></span><span><a href="#">前二直选走势图</a>
                              </span><span><a href="#">前二组选走势图</a></span></p>
                              <p><span class="run-title">和值走势：</span><span><a class="initialize" href="#">任选和值走势图</a></span><span>
                              <a href="#">前二和值走势图</a></span><span><a href="#">前三和值走势图</a></span></p>
                              <p><span class="run-title">定位走势：</span><span><a class="initialize" href="#">第一位(前一)走势图</a></span><span>
                              <a href="#">第二位走势图</a></span><span><a href="#">第三位走势图</a></span><span><a href="#">第四位走势图</a>
                              </span><span><a href="#">第五位走势图</a></span></p>
                             <p><span class="run-title">跨度走势：</span><span><a  class="initialize" href="#">任选跨度走势图</a>
                             </span><span class="hot">热</span><span><a href="#">前二跨度走势图</a></span><span><a href="#">前三跨度走势图</a></span></p>
                             <p><span class="run-title">形态走势：</span><span><a  class="initialize" href="#">任选大小走势图</a>
                             </span><span><a href="#">任选奇偶走势图</a></span><span><a href="#">任选质合走势图</a></span></p>
                               <div class="clear"></div>
                            </div>
                         </div>


                          <div class="trend-lot"><!--好运11选5-->
                        <div class="lottery-logo">
                            <a href="#" target="_blank">
                                <img src="../Home/Room/Images/runmap/zs13.jpg" alt="" /></a>
                           
                        </div>
                        <div class="right-content">
                           
                             <p><span class="run-title">号码走势：</span><span><a class="initialize" href="#">任选基本走势图</a>
                             </span><span class="hot">热</span><span><a href="#">前三直选走势图</a></span><span class="hot">热</span>
                              <span><a href="#">前三组选走势图</a></span><span><a href="#">任选二走势图</a></span><span><a href="#">前二直选走势图</a>
                              </span><span><a href="#">前二组选走势图</a></span></p>
                              <p><span class="run-title">和值走势：</span><span><a class="initialize" href="#">任选和值走势图</a></span><span>
                              <a href="#">前二和值走势图</a></span><span><a href="#">前三和值走势图</a></span></p>
                              <p><span class="run-title">定位走势：</span><span><a class="initialize" href="#">第一位(前一)走势图</a></span><span>
                              <a href="#">第二位走势图</a></span><span><a href="#">第三位走势图</a></span><span><a href="#">第四位走势图</a>
                              </span><span><a href="#">第五位走势图</a></span></p>
                             <p><span class="run-title">跨度走势：</span><span><a  class="initialize" href="#">任选跨度走势图</a>
                             </span><span class="hot">热</span><span><a href="#">前二跨度走势图</a></span><span><a href="#">前三跨度走势图</a></span></p>
                             <p><span class="run-title">形态走势：</span><span><a  class="initialize" href="#">任选大小走势图</a>
                             </span><span><a href="#">任选奇偶走势图</a></span><span><a href="#">任选质合走势图</a></span></p>
                               <div class="clear"></div>
                            </div>
                         </div>
                       
              <div class="trend-lot"><!--易乐11选5-->
                        <div class="lottery-logo">
                            <a href="#" target="_blank">
                                <img src="../Home/Room/Images/runmap/zs14.jpg" alt="" /></a>
                           
                        </div>
                        <div class="right-content">
                           
                             <p><span class="run-title">号码走势：</span><span><a class="initialize" href="#">任选基本走势图</a>
                             </span><span class="hot">热</span><span><a href="#">前三直选走势图</a></span><span class="hot">热</span>
                              <span><a href="#">前三组选走势图</a></span><span><a href="#">任选二走势图</a></span><span><a href="#">前二直选走势图</a>
                              </span><span><a href="#">前二组选走势图</a></span></p>
                              <p><span class="run-title">和值走势：</span><span><a class="initialize" href="#">任选和值走势图</a></span><span>
                              <a href="#">前二和值走势图</a></span><span><a href="#">前三和值走势图</a></span></p>
                              <p><span class="run-title">定位走势：</span><span><a class="initialize" href="#">第一位(前一)走势图</a></span><span>
                              <a href="#">第二位走势图</a></span><span><a href="#">第三位走势图</a></span><span><a href="#">第四位走势图</a>
                              </span><span><a href="#">第五位走势图</a></span></p>
                             <p><span class="run-title">跨度走势：</span><span><a  class="initialize" href="#">任选跨度走势图</a>
                             </span><span class="hot">热</span><span><a href="#">前二跨度走势图</a></span><span><a href="#">前三跨度走势图</a></span></p>
                             <p><span class="run-title">形态走势：</span><span><a  class="initialize" href="#">任选大小走势图</a>
                             </span><span><a href="#">任选奇偶走势图</a></span><span><a href="#">任选质合走势图</a></span></p>
                               <div class="clear"></div>
                            </div>
                         </div>


           <div class="trend-lot"><!--快3-->
                        <div class="lottery-logo">
                            <a href="#" target="_blank">
                                <img src="../Home/Room/Images/runmap/zs15.jpg" alt="" /></a>
                           
                        </div>
                        <div class="right-content">                                                             
                           
                             <p><span class="run-title">号码走势：</span><span><a class="initialize" href="#">基本走势图</a>
                             </span><span class="hot">热</span><span><a href="#">组合走势图</a>
                             </span><span class="hot">热</span><span><a href="#">三不同号走势图</a></span></p>
                              <p><span class="run-title">和值走势：</span><span><a class="initialize" href="#">和值走势图</a></span><span class="new">新</span></p>
                              <p><span class="run-title">形态走势：</span><span><a class="initialize" href="#">形态走势图</a></span><span class="new">新</span><span>
                              <a href="#">跨度走势图</a></span><span class="new">新</span><span><a href="#">012走势图</a></span><span><a href="#">奇偶走势图</a>
                              </span><span><a href="#">质和走势图</a></span></p>
                               <div class="clear"></div>
                            </div>
                         </div>


                          <div class="trend-lot"><!--新快3-->
                        <div class="lottery-logo">
                            <a href="#" target="_blank">
                                <img src="../Home/Room/Images/runmap/zs16.jpg" alt="" /></a>
                           
                        </div>
                        <div class="right-content">                                                             
                           
                             <p><span class="run-title">号码走势：</span><span><a class="initialize" href="#">基本走势图</a>
                             </span><span class="hot">热</span><span><a href="#">组合走势图</a>
                             </span><span><a href="#">三不同号走势图</a></span><span class="hot">热</span></p>
                              <p><span class="run-title">和值走势：</span><span><a class="initialize" href="#">和值走势图</a></span><span class="new">新</span></p>
                              <p><span class="run-title">形态走势：</span><span><a class="initialize" href="#">形态走势图</a></span><span class="new">新</span><span>
                              <a href="#">跨度走势图</a></span><span class="new">新</span><span><a href="#">012走势图</a></span><span><a href="#">奇偶走势图</a>
                              </span><span><a href="#">质和走势图</a></span></p>
                               <div class="clear"></div>
                            </div>
                         </div>


                          <div class="trend-lot"><!--江苏快3-->
                        <div class="lottery-logo">
                            <a href="#" target="_blank">
                                <img src="../Home/Room/Images/runmap/zs17.jpg" alt="" /></a>
                           
                        </div>
                        <div class="right-content">                                                             
                           
                             <p><span class="run-title">号码走势：</span><span><a class="initialize" href="#">基本走势图</a>
                             </span><span class="hot">热</span><span><a href="#">组合走势图</a>
                             </span><span><a href="#">三不同号走势图</a></span><span class="hot">热</span></p>
                              <p><span class="run-title">和值走势：</span><span><a class="initialize" href="#">和值走势图</a></span><span class="new">新</span></p>
                              <p><span class="run-title">形态走势：</span><span><a class="initialize" href="#">形态走势图</a></span><span class="new">新</span><span>
                              <a href="#">跨度走势图</a></span><span class="new">新</span><span><a href="#">012走势图</a></span><span><a href="#">奇偶走势图</a>
                              </span><span><a href="#">质和走势图</a></span></p>
                               <div class="clear"></div>
                            </div>
                         </div>

              
               <div class="trend-lot"><!--湖北快3-->
                        <div class="lottery-logo">
                            <a href="#" target="_blank">
                                <img src="../Home/Room/Images/runmap/zs18.jpg" alt="" /></a>
                           
                        </div>
                        <div class="right-content">                                                             
                           
                             <p><span class="run-title">号码走势：</span><span><a class="initialize" href="#">基本走势图</a>
                             </span><span class="hot">热</span><span><a href="#">组合走势图</a>
                             </span><span><a href="#">三不同号走势图</a></span><span class="hot">热</span></p>
                              <p><span class="run-title">和值走势：</span><span><a class="initialize" href="#">和值走势图</a></span><span class="new">新</span></p>
                              <p><span class="run-title">形态走势：</span><span><a class="initialize" href="#">形态走势图</a></span><span class="new">新</span><span>
                              <a href="#">跨度走势图</a></span><span class="new">新</span><span><a href="#">012走势图</a></span><span><a href="#">奇偶走势图</a>
                              </span><span><a href="#">质和走势图</a></span></p>
                               <div class="clear"></div>
                            </div>
                         </div>


                  <div class="trend-lot"><!--易快3-->
                        <div class="lottery-logo">
                            <a href="#" target="_blank">
                                <img src="../Home/Room/Images/runmap/zs19.jpg" alt="" /></a>
                           
                        </div>
                        <div class="right-content">                                                             
                           
                             <p><span class="run-title">号码走势：</span><span><a class="initialize" href="#">基本走势图</a></span>
                             <span class="hot">热</span><span><a href="#">组合走势图</a>
                             </span><span><a href="#">三不同号走势图</a></span><span class="hot">热</span></p>
                              <p><span class="run-title">和值走势：</span><span><a class="initialize" href="#">和值走势图</a></span><span class="new">新</span></p>
                              <p><span class="run-title">形态走势：</span><span><a class="initialize" href="#">形态走势图</a></span><span class="new">新</span><span>
                              <a href="#">跨度走势图</a></span><span class="new">新</span><span><a href="#">012走势图</a></span><span><a href="#">奇偶走势图</a>
                              </span><span><a href="#">质和走势图</a></span></p>
                               <div class="clear"></div>
                            </div>
                         </div>

                     <div class="trend-lot"><!--好运快3-->
                        <div class="lottery-logo">
                            <a href="#" target="_blank">
                                <img src="../Home/Room/Images/runmap/zs20.jpg" alt="" /></a>
                           
                        </div>
                        <div class="right-content">                                                             
                           
                             <p><span class="run-title">号码走势：</span><span><a class="initialize" href="#">基本走势图</a>
                             </span><span class="hot">热</span><span><a href="#">组合走势图</a>
                             </span><span><a href="#">三不同号走势图</a></span><span class="hot">热</span></p>
                              <p><span class="run-title">和值走势：</span><span><a class="initialize" href="#">和值走势图</a></span><span class="new">新</span></p>
                              <p><span class="run-title">形态走势：</span><span><a class="initialize" href="#">形态走势图</a></span><span class="new">新</span><span>
                              <a href="#">跨度走势图</a></span><span class="new">新</span><span><a href="#">012走势图</a></span><span><a href="#">奇偶走势图</a>
                              </span><span><a href="#">质和走势图</a></span></p>
                               <div class="clear"></div>
                            </div>
                         </div>

                    
                     <div class="trend-lot"><!--快乐扑克-->
                        <div class="lottery-logo">
                            <a href="#" target="_blank">
                                <img src="../Home/Room/Images/runmap/zs21.jpg" alt="" /></a>
                           
                        </div>
                        <div class="right-content">                                                                                
                           
                             <p><span class="run-title">号码走势：</span><span><a class="initialize" href="#">基本走势图</a>
                             </span><span class="hot">热</span><span><a href="#">花色走势图</a></span><span class="new">新</span></p>
                           
                              <p><span class="run-title">和值走势：</span><span><a class="initialize" href="#">012路走势图</a></span><span><a href="#">跨度走势图</a>
                              </span><span><a href="#">对子走势图</a></span><span class="new">新</span></p>
                              
                              
                              
                               <div class="clear"></div>
                            </div>
                         </div>


                          <div class="trend-lot"><!--重庆时时彩-->                                        
                        <div class="lottery-logo">
                            <a href="#" target="_blank">
                                <img src="../Home/Room/Images/runmap/zs22.jpg" alt="" /></a>
                           
                        </div>
                        <div class="right-content">                                                                                
                                                                                       
                             <p><span class="run-title">号码走势：</span><span><a class="initialize" href="#">五星基本走势图</a>
                             </span><span><a href="#">四星基本走势图</a></span><span><a href="#">三星基本走势图</a>
                             </span><span class="hot">热</span><span><a href="#">二星基本走势图</a>
                             </span><span><a href="#">大小单双走势图</a></span><span class="hot">热</span><br />
                              <span  class="run-title-no"><a  class="initialize" href="#">二星直选走势图1</a>
                              </span><span class="new">新</span><span><a href="#">二星直选走势图2</a></span><span><a href="#">三星组选走势图</a></span>
                              <span><a href="#">二星组选走势图</a></span><span class="new">新</span></p>
                              <p><span class="run-title">形态分布：</span><span><a class="initialize" href="#">三星大小号码分布图</a>
                              </span><span><a href="#">三星质合号码分布图</a></span><span><a href="#">三星跨度走势图</a></span><span><a href="#">二星跨度走势图</a></span><span>
                              <a href="#">对子走势图</a></span></p>
                               <p><span class="run-title">和值走势：</span><span><a class="initialize" href="#">五星和值走势图</a>
                              </span><span><a href="#">三星和值走势图</a></span><span><a href="#">二星和值走势图</a></span>
                              </p>
                              <p><span class="run-title">定位走势：</span><span><a class="initialize" href="#">个位(一星)走势</a>
                              </span><span class="new">新</span><span><a href="#">十位走势图</a></span><span><a href="#">百位走势图</a></span><span><a href="#">千位走势图</a></span>
                              <span><a href="#">万位走势图</a></span>
                              </p>
                               <div class="clear"></div>
                            </div>
                         </div>

              <div class="trend-lot"><!--新时时彩-->                                                <div class="lottery-logo">
                            <a href="#" target="_blank">
                                <img src="../Home/Room/Images/runmap/zs23.jpg" alt="" /></a>
                         </div>
                        <div class="right-content">                                                                                
                             <p><span class="run-title">号码走势：</span><span><a class="initialize" href="#">五星基本走势图</a>
                             </span><span><a href="#">四星基本走势图</a></span><span><a href="#">三星基本走势图</a></span><span class="热">新</span>
                             <span><a href="#">二星基本走势图</a>
                             </span><span><a href="#">大小单双走势图</a></span><span class="hot">热</span><br />
                              <span  class="run-title-no"><a  class="initialize" href="#">二星直选走势图1</a></span><span class="new">新</span>
                              <span><a href="#">二星直选走势图2</a></span><span><a href="#">三星组选走势图</a></span>
                              <span><a href="#">二星组选走势图</a></span><span class="new">新</span></p>
                              <p><span class="run-title">形态分布：</span><span><a class="initialize" href="#">三星大小号码分布图</a>
                              </span><span><a href="#">三星质合号码分布图</a></span><span><a href="#">三星跨度走势图</a></span><span><a href="#">二星跨度走势图</a></span><span>
                              <a href="#">对子走势图</a></span></p>
                               <p><span class="run-title">和值走势：</span><span><a class="initialize" href="#">五星和值走势图</a>
                              </span><span><a href="#">三星和值走势图</a></span><span><a href="#">二星和值走势图</a></span>
                              </p>
                              <p><span class="run-title">定位走势：</span><span><a class="initialize" href="#">个位(一星)走势</a>
                              </span><span class="new">新</span><span><a href="#">十位走势图</a></span><span><a href="#">百位走势图</a></span><span><a href="#">千位走势图</a></span>
                              <span><a href="#">万位走势图</a></span>
                              </p>
                               <div class="clear"></div>
                            </div>
                         </div>

                       <div class="trend-lot"><!--快8-->                                                <div class="lottery-logo">                    
                            <a href="#" target="_blank">
                                <img src="../Home/Room/Images/runmap/zs24.jpg" alt="" /></a>
                           
                        </div>
                        <div class="right-content">                                                                                                              
                                                                                       
                             <p><span class="run-title">号码走势：</span><span><a class="initialize" href="#">基本势图</a>
                             </span><span class="hot">热</span><span><a href="#">和值走势图</a></span><span><a href="#">跨度走势图</a></span></p>
                              <p><span class="run-title">形态分布：</span><span><a class="initialize" href="#">大小号码走势图</a>
                              </span><span><a href="#">奇偶号码走势图</a></span><span class="new">新</span><span><a href="#">质合号码走势图</a></span><span><a href="#">012路号码走势图</a></span></p>
                               <p><span class="run-title">形态走势：</span><span><a class="initialize" href="#">大小形态走势图</a>
                              </span><span><a href="#">奇偶形态走势图</a></span><span><a href="#">质合形态走势图</a></span>
                              </p>
                              
                               <div class="clear"></div>
                            </div>
                         </div>

                         <div class="trend-lot"><!--8选3-->                                                <div class="lottery-logo">                    
                            <a href="#" target="_blank">
                                <img src="../Home/Room/Images/runmap/zs25.jpg" alt="" /></a>
                        </div>
                        <div class="right-content">                                                                                                              
                             <p><span class="run-title">号码走势：</span><span><a class="initialize" href="#">基本势图</a>
                             </span><span class="hot">热</span><span><a href="#">和值走势图</a></span><span><a href="#">跨度走势图</a></span></p>
                              <p><span class="run-title">形态分布：</span><span><a class="initialize" href="#">大小号码走势图</a>
                              </span><span><a href="#">奇偶号码走势图</a></span><span class="new">新</span><span><a href="#">质合号码走势图</a></span><span><a href="#">012路号码走势图</a></span></p>
                               <p><span class="run-title">形态走势：</span><span><a class="initialize" href="#">大小形态走势图</a>
                              </span><span><a href="#">奇偶形态走势图</a></span><span><a href="#">质合形态走势图</a></span>
                              </p>
                              
                               <div class="clear"></div>
                            </div>
                         </div>


                           <div class="trend-lot"><!--粤快乐十分-->                                                <div class="lottery-logo">                    
                            <a href="#" target="_blank">
                                <img src="../Home/Room/Images/runmap/zs26.jpg" alt="" /></a>
                           
                        </div>
                        <div class="right-content">                                                                                                              
                             <p><span class="run-title">号码走势：</span><span><a class="initialize" href="#">基本势图</a>
                             </span><span class="hot">热</span><span><a href="#">和值走势图</a></span><span><a href="#">跨度走势图</a></span></p>
                              <p><span class="run-title">形态分布：</span><span><a class="initialize" href="#">大小号码走势图</a>
                              </span><span><a href="#">奇偶号码走势图</a></span><span class="new">新</span><span><a href="#">质合号码走势图</a></span><span><a href="#">012路号码走势图</a></span></p>
                               <p><span class="run-title">形态走势：</span><span><a class="initialize" href="#">大小形态走势图</a>
                              </span><span><a href="#">奇偶形态走势图</a></span><span><a href="#">质合形态走势图</a></span>
                              </p>
                               <div class="clear"></div>
                            </div>
                         </div>

                         
                           <div class="trend-lot"><!--天津快乐十分-->                                                <div class="lottery-logo">                    
                            <a href="#" target="_blank">
                                <img src="../Home/Room/Images/runmap/zs27.jpg" alt="" /></a>
                           
                        </div>
                        <div class="right-content">                                                                                                              
                             <p><span class="run-title">号码走势：</span><span><a class="initialize" href="#">基本势图</a>
                             </span><span class="hot">热</span><span><a href="#">和值走势图</a></span><span><a href="#">跨度走势图</a></span></p>
                              <p><span class="run-title">形态分布：</span><span><a class="initialize" href="#">大小号码走势图</a>
                              </span><span><a href="#">奇偶号码走势图</a></span><span class="new">新</span><span><a href="#">质合号码走势图</a></span><span><a href="#">012路号码走势图</a></span></p>
                               <p><span class="run-title">形态走势：</span><span><a class="initialize" href="#">大小形态走势图</a>
                              </span><span><a href="#">奇偶形态走势图</a></span><span><a href="#">质合形态走势图</a></span>
                              </p>
                               <div class="clear"></div>
                            </div>
                         </div>




                           <div class="trend-lot"><!--广西快乐十分-->                                                <div class="lottery-logo">                    
                            <a href="#" target="_blank">
                                <img src="../Home/Room/Images/runmap/zs28.jpg" alt="" /></a>
                           
                        </div>
                        <div class="right-content">                                                                                                              
                             <p><span class="run-title">号码走势：</span><span><a class="initialize" href="#">基本势图</a>
                             </span><span class="hot">热</span><span><a href="#">和值走势图</a></span><span><a href="#">跨度走势图</a></span></p>
                              <p><span class="run-title">形态分布：</span><span><a class="initialize" href="#">大小号码走势图</a>
                              </span><span><a href="#">奇偶号码走势图</a></span><span class="new">新</span><span><a href="#">质合号码走势图</a></span><span><a href="#">012路号码走势图</a></span></p>
                               <p><span class="run-title">形态走势：</span><span><a class="initialize" href="#">大小形态走势图</a>
                              </span><span><a href="#">奇偶形态走势图</a></span><span><a href="#">质合形态走势图</a></span>
                              </p>
                               <div class="clear"></div>
                            </div>
                         </div>

                  <div class="trend-lot"><!--湖南快乐十分-->                                                <div class="lottery-logo">                    
                            <a href="#" target="_blank">
                                <img src="../Home/Room/Images/runmap/zs29.jpg" alt="" /></a>
                           
                        </div>
                        <div class="right-content">                                                                                                              
                             <p><span class="run-title">号码走势：</span><span><a class="initialize" href="#">基本势图</a>
                             </span><span class="hot">热</span><span><a href="#">和值走势图</a></span><span><a href="#">跨度走势图</a></span></p>
                              <p><span class="run-title">形态分布：</span><span><a class="initialize" href="#">大小号码走势图</a>
                              </span><span><a href="#">奇偶号码走势图</a></span><span class="new">新</span><span><a href="#">质合号码走势图</a></span><span><a href="#">012路号码走势图</a></span></p>
                               <p><span class="run-title">形态走势：</span><span><a class="initialize" href="#">大小形态走势图</a>
                              </span><span><a href="#">奇偶形态走势图</a></span><span><a href="#">质合形态走势图</a></span>
                              </p>
                               <div class="clear"></div>
                            </div>
                         </div>

                       <div class="trend-lot"><!--重庆快乐十分-->                                                <div class="lottery-logo">                    
                            <a href="#" target="_blank">
                                <img src="../Home/Room/Images/runmap/zs30.jpg" alt="" /></a>
                           
                        </div>
                        <div class="right-content">                                                                                                              
                             <p><span class="run-title">号码走势：</span><span><a class="initialize" href="#">本走势图</a>
                             </span><span class="hot">热</span><span><a href="#">和值走势图</a></span><span><a href="#">跨度走势图</a></span></p>
                              <p><span class="run-title">形态分布：</span><span><a class="initialize" href="#">大小号码走势图</a>
                              </span><span><a href="#">奇偶号码走势图</a></span><span class="new">新</span><span><a href="#">质合号码走势图</a></span><span><a href="#">012路号码走势图</a></span></p>
                               <p><span class="run-title">形态走势：</span><span><a class="initialize" href="#">大小形态走势图</a>
                              </span><span><a href="#">奇偶形态走势图</a></span><span><a href="#">质合形态走势图</a></span>
                              </p>
                               <div class="clear"></div>
                            </div>
                         </div>

                                                      <div class="trend-lot"><!--湖南幸运赛车-->                                                <div class="lottery-logo">                    
                            <a href="#" target="_blank">
                                <img src="../Home/Room/Images/runmap/zs31.jpg" alt="" /></a>
                           
                        </div>
                        <div class="right-content">                                                                                                              
                             <p><span class="run-title">号码走势：</span><span><a class="initialize" href="#">基本势图</a>
                             </span><span class="hot">热</span><span><a href="#">和值走势图</a></span><span><a href="#">跨度走势图</a></span></p>
                              <p><span class="run-title">形态分布：</span><span><a class="initialize" href="#">大小号码走势图</a>
                              </span><span><a href="#">奇偶号码走势图</a></span><span class="new">新</span><span><a href="#">质合号码走势图</a></span><span><a href="#">012路号码走势图</a></span></p>
                               <p><span class="run-title">形态走势：</span><span><a class="initialize" href="#">大小形态走势图</a>
                              </span><span><a href="#">奇偶形态走势图</a></span><span><a href="#">质合形态走势图</a></span>
                              </p>
                               <div class="clear"></div>
                            </div>
                         </div>


                          <div class="trend-lot"><!--北京赛车PK10-->                                                <div class="lottery-logo">                    
                            <a href="#" target="_blank">
                                <img src="../Home/Room/Images/runmap/zs32.jpg" alt="" /></a>
                           
                        </div>
                        <div class="right-content">                                                                                                              
                             <p><span class="run-title">号码走势：</span><span><a class="initialize" href="#">基本势图</a>
                             </span><span class="hot">热</span><span><a href="#">和值走势图</a></span><span><a href="#">跨度走势图</a></span></p>
                              <p><span class="run-title">形态分布：</span><span><a class="initialize" href="#">大小号码走势图</a>
                              </span><span><a href="#">奇偶号码走势图</a></span><span class="new">新</span><span><a href="#">质合号码走势图</a></span><span><a href="#">012路号码走势图</a></span></p>
                               <p><span class="run-title">形态走势：</span><span><a class="initialize" href="#">大小形态走势图</a>
                              </span><span><a href="#">奇偶形态走势图</a></span><span><a href="#">质合形态走势图</a></span>
                              </p>
                               <div class="clear"></div>
                            </div>
                         </div>

                    <div class="trend-lot"><!--十一运夺金-->                                                <div class="lottery-logo">                    
                            <a href="#" target="_blank">
                                <img src="../Home/Room/Images/runmap/zs33.jpg" alt="" /></a>
                           
                        </div>
                        <div class="right-content">                                                                                                              
                             <p><span class="run-title">号码走势：</span><span><a class="initialize" href="#">基本势图</a>
                             </span><span class="hot">热</span><span><a href="#">和值走势图</a></span><span><a href="#">跨度走势图</a></span></p>
                              <p><span class="run-title">形态分布：</span><span><a class="initialize" href="#">大小号码走势图</a>
                              </span><span><a href="#">奇偶号码走势图</a></span><span class="new">新</span><span><a href="#">质合号码走势图</a></span><span><a href="#">012路号码走势图</a></span></p>
                               <p><span class="run-title">形态走势：</span><span><a class="initialize" href="#">大小形态走势图</a>
                              </span><span><a href="#">奇偶形态走势图</a></span><span><a href="#">质合形态走势图</a></span>
                              </p>
                               <div class="clear"></div>
                            </div>
                         </div>


                          <div class="trend-lot trend-lot-border"><!--时时乐-->                                                <div class="lottery-logo">                    
                            <a href="#" target="_blank">
                                <img src="../Home/Room/Images/runmap/zs34.jpg" alt="" /></a>
                           
                        </div>
                        <div class="right-content">                                                                                                              
                             <p><span class="run-title">号码走势：</span><span><a class="initialize" href="#">基本势图</a>
                             </span><span class="hot">热</span><span><a href="#">和值走势图</a></span><span><a href="#">跨度走势图</a></span></p>
                              <p><span class="run-title">形态分布：</span><span><a class="initialize" href="#">大小号码走势图</a>
                              </span><span><a href="#">奇偶号码走势图</a></span><span class="new">新</span><span><a href="#">质合号码走势图</a></span><span><a href="#">012路号码走势图</a></span></p>
                               <p><span class="run-title">形态走势：</span><span><a class="initialize" href="#">大小形态走势图</a>
                              </span><span><a href="#">奇偶形态走势图</a></span><span><a href="#">质合形态走势图</a></span>
                              </p>
                               <div class="clear"></div>
                            </div>
                         </div>

          </div>
       </div>
 
    <uc2:WebFoot ID="WebFoot1" runat="server" />
    </form>
</body>
</html>
