<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Index" %>
<%@ Register Assembly="Shove.Web.UI.4 For.NET 3.5" Namespace="Shove.Web.UI" TagPrefix="ShoveWebUI" %>
<%@ Register Src="Home/Room/UserControls/WebHead.ascx" TagName="WebHead" TagPrefix="uc1" %>
<%@ Register Src="Home/Room/UserControls/WebFoot.ascx" TagName="WebFoot" TagPrefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>
        <%=_Site.Name %>
        －彩票在线投注|福彩|体彩|足彩|高频彩|双色球开奖|双色球走势图查询-买彩票，就上
        <%=_Site.Name %>
    </title>
    <meta name="description" content="
        <%=_Site.Name %>是一家服务于中国彩民的互联网彩票合买代购交易平台，
        涉及中国彩票彩种最全的网站，包含双色球、时时乐、时时彩、
        足彩等众多彩种的实时开奖信息、图表走势、分析预测等。" />
    <meta name="keywords" content="双色球开奖，双色球走势图，3d走势图，
        福彩3d，时时彩 体育彩票，福利彩票，足球彩票，合买彩票，购买彩票" />
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
    <link rel="shortcut icon" href="favicon.ico" />
    <link href="Home/Room/Style/common.css" rel="stylesheet" type="text/css" />
    <link href="Home/Room/Style/StyleSheet.css" rel="stylesheet" type="text/css" />
    <link href="Home/Room/Style/index.css" rel="stylesheet" type="text/css" />
    <script src="JavaScript/index.js" type="text/javascript"></script>
     <script src="JavaScript/js.js" type="text/javascript"></script>
    <script src="JavaScript/jquery-1.6.2.min.js" type="text/javascript"></script>
</head>
<body>
    <form id="form1" runat="server">
    <asp:HiddenField ID="HidIsuseID" runat="server" />
    <asp:HiddenField ID="HidIsuseEndTime" runat="server" />
    <asp:HiddenField ID="tb_LotteryNumber" runat="server" />
    <uc1:WebHead ID="WebHead1" runat="server" />
    <div class="i_main">
    
        <div class="left">

         <div style=" height:265px;"></div>
            <div id="draw_box" class="right_box lottery_margin">
               <div class="right_top">

               <div class="nTab left-nTab">
		<div class="TabTitle left-TabTitle">
		<ul id="myTab2">
		<li class="active" onclick="nTabs(this,0);">ASP</li>
		<li class="normal" onclick="nTabs(this,1);">PHP</li> 			      
		</ul>
		</div>
	    <div class="TabContent">
	<div id="myTab2_Content0">简洁TAB，滑动门，选项卡</div>
	<div id="myTab2_Content1" class="none">兼容性好</div>		
	    </div>	
</div>





                     <!--开奖公告-->
                   <!-- <ul class="kj_tab" id="Listli">
                        <li id="liaa" class="on" onclick="WinNumberLotteryList('divRepWinFuCai','divRepWinTiCai','divRepWinZuCai','liaa')">
                            福彩</li>
                        <li id="libb" onclick="WinNumberLotteryList('divRepWinTiCai','divRepWinFuCai','divRepWinZuCai','libb')">
                            体彩</li>
                        <li id="licc" onclick="WinNumberLotteryList('divRepWinZuCai','divRepWinTiCai','divRepWinFuCai','licc')">
                            足彩</li>
                    </ul>-->
                </div>


                <div class="right_main">
                    <div id="divRepWinFuCai" class="draw_contents" style="display: block;">
                       <ul class="kj_list">
                            <asp:Repeater ID="RepWinFuCai" runat="server">
                                <ItemTemplate>
                                    <li>
                                        <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                            <tr>
                                                <td style="padding-left: 5px">
                                                    <%#Eval("LotteryName")%>
                                                </td>
                                                <td style="padding-left: 8px">
                                                    <span style="color: Red">
                                                        <%#Eval("Name") %></span> 期
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="2" style="padding-left: 5px; font-weight: bold; color: Red; height: 30px;">
                                                    <%#Eval("WinLotteryNumber")%>
                                                </td>
                                            </tr>
                                        </table>
                                    </li>
                                </ItemTemplate>
                            </asp:Repeater>
                        </ul>
                    </div>
                    <div id="divRepWinTiCai" class="draw_contents" style="display: none;">
                        <ul class="kj_list">
                            <asp:Repeater ID="RepWinTiCai" runat="server">
                                <ItemTemplate>
                                    <li>
                                        <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                            <tr>
                                                <td style="padding-left: 5px">
                                                    <%#Eval("LotteryName")%>
                                                </td>
                                                <td style="padding-left: 8px">
                                                    <span style="color: Red">
                                                        <%#Eval("Name") %></span> 期
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="2" style="padding-left: 5px; font-weight: bold; color: Red; height: 30px;">
                                                    <%#Eval("WinLotteryNumber")%>
                                                </td>
                                            </tr>
                                        </table>
                                    </li>
                                </ItemTemplate>
                            </asp:Repeater>
                        </ul>
                    </div>
                    <div id="divRepWinZuCai" class="draw_contents" style="display: none;">
                        <ul class="kj_list">
                            <asp:Repeater ID="RepWinZuCai" runat="server">
                                <ItemTemplate>
                                    <li>
                                        <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                            <tr>
                                                <td style="padding-left: 5px">
                                                    <%#Eval("LotteryName") %>
                                                </td>
                                                <td style="padding-left: 8px">
                                                    <span style="color: Red">
                                                        <%#Eval("Name") %></span> 期
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="2" style="padding-left: 5px; font-weight: bold; color: Red; height: 30px;">
                                                    <%#Eval("WinLotteryNumber")%>
                                                </td>
                                            </tr>
                                        </table>
                                    </li>
                                </ItemTemplate>
                            </asp:Repeater>
                        </ul>
                    </div>
                </div>
            </div>


            <!--<div class="right_box">
                <div class="right_top">
                    <h1>
                        中奖排行</h1>
                </div>
                <div class="right_main">
                    <table cellpadding="0" cellspacing="0" border="0" class="phb_tab">
                        <tr>
                            <td style="color: #DC0000; font-weight: bold" align="center">
                                No
                            </td>
                            <td style="color: #DC0000; font-weight: bold" align="center">
                                用户名
                            </td>
                            <td style="color: #DC0000; font-weight: bold" align="center">
                                中奖金
                            </td>
                        </tr>
                        <asp:Repeater ID="dTWinList" runat="server">
                            <ItemTemplate>
                                <tr>
                                    <td>
                                        <strong class="top3">
                                            <%# Container.ItemIndex+1%></strong>
                                    </td>
                                    <td class="align_left">
                                        <%#Eval("InitiateName")%>
                                    </td>
                                    <td align="center">
                                        ￥<%#Convert.ToDecimal(Eval("Win")).ToString("F2")%>
                                    </td>
                                </tr>
                            </ItemTemplate>
                        </asp:Repeater>
                    </table>
                </div>
            </div>-->
            <div id="lottery_terminated_box" class="right_box">
               <!-- <div class="right_top">
                    <h1 class="czjz_tit">
                        彩种截止</h1>
                </div>-->
                <!--<div class="right_main">
                    <table cellpadding="0" cellspacing="0" class="cztab" width="100%">
                        <tr class="tit">
                            <td>
                                彩种
                            </td>
                            <td>
                                期数
                            </td>
                            <td>
                                截止时间
                            </td>
                        </tr>
                        <asp:Repeater ID="dTEndIsuses" runat="server">
                            <ItemTemplate>
                                <tr>
                                    <td>
                                        <%#Eval("LotteryName")%>
                                    </td>
                                    <td>
                                        <%#Eval("Name")%>
                                    </td>
                                    <td>
                                        <%#Convert.ToDateTime(Eval("EndTime")).ToString("HH:mm:ss")%>
                                    </td>
                                </tr>
                            </ItemTemplate>
                        </asp:Repeater>
                    </table>
                </div>-->
            </div>
          <!--  <div class="right_box">
                <div class="right_top">
                    <h1 class="czjz_tit">
                        专家栏目</h1>
                </div>
                <div class="right_main">
                    <table cellpadding="0" cellspacing="0" class="cztab" width="100%">
                        <tr class="tit">
                            <td>
                                用户名
                            </td>
                            <td>
                                彩种
                            </td>
                            <td>
                                跟单
                            </td>
                        </tr>
                        <asp:Repeater ID="dTFCExpert" runat="server">
                            <ItemTemplate>
                                <tr>
                                    <td>
                                        <%#Eval("UserName")%>
                                    </td>
                                    <td>
                                        <%#Eval("LotteryName")%>
                                    </td>
                                    <td>
                                        <a href="Home/Room/FollowSchemeHistory.aspx">定制 </a>
                                    </td>
                                </tr>
                            </ItemTemplate>
                        </asp:Repeater>
                    </table>
                </div>
            </div>-->
        </div>
        <div class="right">
            <div class="top">
                <div class="top_left">
                    <div class="slide">
                        <div id="slides">
                            <div class="slides_container">
                                <ShoveWebUI:ShoveImagePlayer ID="ImagePlayer" runat="server" SupportDir="ShoveWebUI_client"
                                    imgHeight="200" imgWidth="510" TimeOut="1" />
                            </div>
                        </div>
                    </div>
                    </div>
                    
               
                <div id="index_login" class="login hidden">

                   <div class="btn">
                        <a href="UserReg.aspx"><button type="button" class="btn-login pull-left">登录</button></a><a href="Help/faq.aspx" class="regbtn">免费注册</a>
                        <div class="clear"></div>
                    </div>

                    <table cellpadding="0" cellspacing="0" border="0" width="100%" id="tbLogin1" runat="server">
                                        
                        <tr>
                            <td class="t">
                                用户名：
                            </td>
                            <td>
                                <input type="text" class="text" id="txtUersName" runat="server" />
                            </td>
                        </tr>
                        <tr>
                            <td class="t">
                                密 &nbsp;&nbsp;码：
                            </td>
                            <td>
                                <input type="password" class="text" id="textUersPwd" runat="server" />
                            </td>
                        </tr>
                        <tr id="textCheckCodeHidden" runat="server">
                            <td class="t">
                                验证码：
                            </td>
                            <td>
                                <input type="text" class="text imgcode" name="verify" id="textCheckCode" runat="server" />
                                <img id="ImageCheckAdmin" runat="server" src="~/Drawing/Codeimgs.aspx" style="cursor: hand"
                                    width="77" height="24" onclick="javascript:ChangeCodeImg('ImageCheckAdmin');"
                                    title="点击更换验证码图片!" />
                            </td>
                        </tr>
                        
                    </table>
                   
                    
                    <!-- 代码 开始 -->
                    <table>
                    <tr>
                    <td valign="top">
<div id="tab">
  <div class="tabList">
	<ul>
		<li class="cur">网站公告</li>
		<li>常见问题</li>
		<li>购彩帮助</li>
		
	</ul>
  </div>
  <div class="tabCon">
	<div class="cur">
    <p><span class="pull-left"><a href="#">.十大弃奖:161...</a></span><span class="pull-right">8/17</span></p>
    <p><span class="pull-left"><a href="#">.兰州彩民中633万 甘肃今...</a></span><span class="pull-right">8/17</span></p>
    <p><span class="pull-left"><a href="#">.站主:5.14亿彩王花200元...</a></span><span class="pull-right">8/17</span></p>
    <p><span class="pull-left"><a href="#">.站主:5.14亿彩王花200元...</a></span><span class="pull-right">8/17</span></p>
    <p><span class="pull-left"><a href="#">.站主:5.14亿彩王花200元...</a></span><span class="pull-right">8/17</span></p>
    </div>
	<div>红尘客栈、牛仔很忙、给我一首歌的时间、听妈妈的话</div>
	<div>被风吹过的夏天、江南、一千年以后</div>
	
  </div>
</div>
</td>
</tr>
</table>
<!-- 代码 结束 -->

                    <table cellpadding="0" cellspacing="0" border="0" width="100%" id="tbLogin2" runat="server">
                        <tr align="center">
                            <td colspan="2"> 
                                <asp:Label ID="lbUserName" runat="server"></asp:Label>
                                <asp:Label ID="lbUserType" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 50%" align="right">
                                <a href="Home/Room/OnlinePay/Default.aspx" target="_blank">用户充值</a>&nbsp;&nbsp;&nbsp;
                            </td>
                            <td style="width: 50%">
                                &nbsp;&nbsp;&nbsp;<a href="Home/Room/UserEdit.aspx" target="_blank">用户中心</a>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 50%" align="right">
                                <a href="Home/Room/AccountDetail.aspx" target="_blank">交易明细</a>&nbsp;&nbsp;&nbsp;
                            </td>
                            <td style="width: 50%">
                                &nbsp;&nbsp;&nbsp;<a href="Lottery/buy.aspx" target="_blank">购彩大厅</a>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 50%" align="right">
                                <a href="Help/faq2.aspx" target="_blank">如何购买</a>&nbsp;&nbsp;&nbsp;
                            </td>
                            <td style="width: 50%">
                                &nbsp;&nbsp;&nbsp;<a href="Help/hemai.aspx" target="_blank">如何合买</a>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" align="center">
                                <ShoveWebUI:ShoveConfirmButton ID="imgbtnLogout" Style="cursor: hand; color: #000000;"
                                    BackgroupImage="Images/exit.gif" runat="server" Height="34px" Width="160px" CausesValidation="False"
                                    BorderStyle="None" OnClick="imgbtnLogout_Click" />
                            </td>
                        </tr>
                    </table>
                    
                   
                </div>
                <div class="clear">
                </div>

                <div class="broadcast">
                        <h1>
                            开奖提醒：</h1>
                        <iframe id="iframeTotalWinNotice" style="float: left; display: none; width: 432px;
                            height: 26px; overflow: hidden;" name="iframeTotalWinNotice" width="100%" height="26"
                            frameborder="0" scrolling="no" src="<%=ResolveUrl("~/Home/Room/WinNotice.aspx") %>">
                        </iframe>
                        <div style="float:left; width:515px; height:30px;">
                        <marquee><span class="run-tit">双色球</span><span style=" margin-right:15px;">第2015095期</span><span class="list-sz-hq">08</span><span class="list-sz-hq">08</span><span class="list-sz-hq">08
                        </span><span class="list-sz-hq">08</span><span class="list-sz-hq">08</span><span class="list-sz-hq">08
                        </span><span class="list-sz-lq">09</span><span class="date">08-16(周日)21：15 <a href="#">详情</a>|<a href="#">走势</a></span>
                        </marquee>
                        </div>
                        <div class="join "><span class="jion-in"><a href="#">立即购买</a></span><span class="jion-in"><a href="#">参与购买</a></span></div>
                        <div class="clear">
                        </div>
                    </div>

<!--新闻-->
                <div class="top" style="margin-top:10px;">
                    <div class="top_left pull-left">
                        <div class="news">
                          <div class="title">当前赛事</div>
                            <div class="title" id="title">
                                <h1>
                                    <%=FocusNews%>
                                </h1>
                                
                                <div class="clear"></div>
                            </div>
                             <div class="date">巴西杯 08.20 周四 09:00</div>
                             <div class="clear"></div>
                             <div class="team-vs">
                             <div class="team-vs-l pull-left">
                              <div class="team-vs-content">
                              <img class=" pull-right" src="Home/Room/Images/index/s01.jpg"  alt=""/>
                               <p class="pull-right">球队队名<br />
                               <span class="percent">88%</span><br />
                               支持胜
                               </p>
                              </div>
                              

                             </div>
                             <div class="team-vs-m pull-left"><img src="Home/Room/Images/index/vs.jpg"  alt=""/></div>
                             <div class="team-vs-r pull-right">
                             <div class="team-vs-content">
                              <img class=" pull-left" src="Home/Room/Images/index/s02.jpg" alt="" />
                               <p class="pull-left">球队队名<br />
                               <span class="percent">88%</span><br />
                               支持胜
                               </p>
                              </div>
                             </div>
                             </div>
                             <div class="bonus">
                                <form>
                                 <input id="sub" type="button" value="-" />
                                 <input id="text" ="text" type="text" value="9999" />
                                 <input id="add" type="button" value="+" />
                                 </form>
                             
                             
                             </div>


                             <!--隐藏的内容-->
                            <ul class="news_list"  id="news_list">
                                <asp:Repeater ID="RepFocusNews" runat="server" >
                                    <ItemTemplate>
                                        <li><a href="<%#Eval("Url") %>" target="_blank">
                                            <%#Shove._String.Cut(Eval("Title").ToString(),18)%></a></li>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </ul>
                            <div class="clear">
                            </div>
                        </div>
                    </div>
                    <div id="div_cjwt" class="faqbox">
                        <div class="faq_title">
                        </div>
                        <div class="content">
                            <ul>
                                <li><a href="Help/faq16.aspx" target="_blank">在网上投注有什么优势？</a></li>
                                <li><a href="Help/faq6.aspx" target="_blank">购彩的流程是什么样的？</a><img src="Images/hot.gif"  alt=""/></li>
                                <li><a href="Help/faq11.aspx" target="_blank">请问发起的合买如何撤销？</a></li>
                            </ul>
                        </div>
                        <div class="clear">
                        </div>
                    </div>
                      <!--隐藏的内容-->



                     <div class="weix pull-right"><img src="Home/Room/Images/index/weix.jpg" alt="" /></div>



                      <!--注释掉-->
                    <div id="div_wzgg" class="faqbox last">
                        <div class="notice_title">
                        </div>
                        <div class="content">
                            <ul>
                                <asp:Repeater ID="RepSiteAffiches" runat="server">
                                    <ItemTemplate>
                                        <li><a href="SiteNews/NewDetail.aspx?SiteId=<%#Eval("ID")%>" target="_blank" title="<%#Eval("Title")%>">
                                            <span>
                                                <%#Shove._String.Cut(Eval("Title").ToString(),15)%></span></a></li>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </ul>
                        </div>
                        <div class="clear">
                        </div>
                    </div>
                    <div class="clear">
                    </div>
                     <!--注释掉的内容-->


                </div>
               <!--新闻结束-->


               <!--双色球-->
                <div class="left_box">
                    <img src="Images/gg.jpg"  alt=""/>
                </div>
                <div class="left_box">
                    <div class="left_top">
                        <h1>
                            双色球</h1>
                             <ul class="zc_tab_ul">
                            <%-- <li class="zc_tab zc_curtab" id="zc_tab_sfr9" name="sfr9" onclick='clickPlayType("2")'>
                                时时彩</li>--%>
                            <li class="zc_tab new-li"><a href="#">大乐透</a></li>
                            <li class="zc_tab new-li"><a href="#">福彩3D</a></li>
                        </ul>
                    </div>
                    <div class="left_main">
                        
                            <div class="icon_ssq pull-left">
                            <img src="Home/Room/Images/index/ssq.jpg" alt="" />
                            <p class="anyway-cai">
                           <span>01天07小时52分22秒</span><br />
                           <span class="jz_time">后截止</span>
                               <!--<a href="Lottery/BuySSQ.aspx" target="_blank">进入专区&gt;&gt;</a>-->
                           
                        </p>
                            </div>
                          
                                <div class="depict pull-left">
                                <p><span class="title">双色球</span><span>第 2015096 期 </span><span>
                                <img src="Home/Room/Images/index/hot.jpg" /></span><br />奖池：772,938,425元</p>
                                <div class="zs"><span><img src="Home/Room/Images/index/zs.jpg" alt="" /><a href="#">
                                走势</span><span><img src="Home/Room/Images/index/mark.jpg"  alt=""/><a href="#">玩法说明</a></span></div>  
                        </div>
                       
                       
                       
                        <div class="quick_right">
                           <div id="tdLuckNumber" runat="server"></div>
                            <div class="you">
                                <ul>
                                   
                                   
                                    <li><a href="Lottery/BuySSQ.aspx">[ 发起合买 ]</a><a href="JoinUs/JoinAllBuy.aspx">[ 参与合买
                                        ]</a></li>
                                         <li>每注2元，最高奖 1000 万</li>
                                </ul>
                            </div>
                            <div class="buy_button">
                                <ShoveWebUI:ShoveConfirmButton ID="btn_OK" runat="server" CausesValidation="False"
                                    Text="" OnClientClick="return CreateLogin('btn_OKClick();');" OnClick="btn_OK_Click"
                                    CssClass="btn_send" />
                                <button type="button"  name="Input" class="sel-input" onclick="return GetLuckNumber(<%=LotteryID %>)" >机选一注</button>
                                <button type="button"  name="Input" class="clear-input" onclick="clear_all_ball();" >清空</button>
                            </div>
                        </div>
                        <div class="clear">
                        </div>
                        
                    </div>
                </div>


                 <!--时时彩-->
                <div class="left_box">
                    <div class="left_top_zc">
                        <h1>
                            时时彩</h1>
                        <ul class="zc_tab_ul">
                            <%-- <li class="zc_tab zc_curtab" id="zc_tab_sfr9" name="sfr9" onclick='clickPlayType("2")'>
                                时时彩</li>--%>
                            <li class="zc_tab " id="zc_tab_bqc" name="bqc" onclick='clickPlayType("3")'>时时乐</li>
                            <li class="zc_tab " id="zc_tab_sfc" name="sfc" onclick='clickPlayType("1")'>11选5</li>
                        </ul>
                    </div>
                    <div id="and5">
                        <div id="i_zc_sfc" class="i_zc_container">
                            <div class="left_main">
                                <iframe id="iframe_playtypes" name="iframe_playtypes" frameborder="0" scrolling="no"
                                    src="Lottery/Index/BuySSL.aspx" onload="document.getElementById('iframe_playtypes').style.height=iframe_playtypes.document.body.scrollHeight;">
                                </iframe>
                            </div>
                        </div>
                    </div>
                </div>


                <div class="left_box">
                    <div class="left_top">
                    <h1 class="pull-left">彩票资讯</h1><span class="pull-right"><a href="#">更多资讯》</a></span>
                    </div>
                  
                    <div class="left_main">
                     <ul class="news pull-left">
                      <li><a href="#">·康康福彩3D第2011254期：关注奇偶形态</a></li>
                      <li><a href="#">·詹天佑福彩3D2011254期：和值范围7-23</a></li>
                      <li><a href="#">·小荷福彩3D11255期推荐：关注边码0 8</a></li>
                      <li><a href="#">·中国福利彩票计划"十二五"期间 销售目标6000亿</a></li>
                      <li><a href="#">·好彩1第11255期预测：留意0路尾区</a></li>
                      <div class="clear"></div>
                     </ul>
                    
                    <ul class="news border-no pull-right">
                      <li><a href="#">·20万元大奖得主坦言：体彩帮我戒掉恶习 奖金供孩子...</a></li>
                      <li><a href="#">·许昌幸运网点又中“麻辣6”10万大奖</a></li>
                      <li><a href="#">·[信阳]投资体彩“新竞彩”的最佳解决方案：足彩“..</a></li>
                      <li><a href="#">·排列三第07218期分析 重点考虑胆码9</a></li>
                      <li><a href="#">·许昌幸运网点又中“麻辣6”10万大奖</a></li>
                     </ul>
                      <div class="clear"></div>
                    </div>
                    </div>







<div class="nTab">
         <div class="abs">合买推荐</div>
         <div class="abs2"><a href="#">更多合买》</a></div>
		<div class="TabTitle">
		<ul id="myTab1" class="myTab1">
		<li class="active" onclick="nTabs(this,0);">热买合买</li>
		<li class="normal" onclick="nTabs(this,1);">大热合买</li>
        <li class="normal" onclick="nTabs(this,2);">足彩合买</li>  			      
		</ul>
		</div>
	    <div class="TabContent">
	<div id="myTab1_Content0">
      <table cellpadding="0" cellspacing="0" border="0">
     <tr style="background:#f5f5f5;">
     <td>彩种</td>
     <td>发起人</td>
     <td>战绩</td>
     <td>方案标题</td>
     <td>总金额（元）</td>
     <td>进度 + 剩余（%）</td>
     <td>每月金额（元）</td>
     <td>输入份数</td>
     <td class="border-r">购买</td>
     </tr>
     <tr>
     <td>双色球</td>
     <td>创场</td>
     <td>5颗星</td>
     <td>必中</td>
     <td>1000.00</td>
     <td>进度 + 剩余（%）</td>
     <td>1000.00</td>
     <td>2.00</td>
     <td class="border-r"><a href="#"><input type="button" value="购买" class="btn-buy" /></a></td>
     </tr>
     <tr>
     <td>双色球</td>
     <td>创场</td>
     <td>5颗星</td>
     <td>必中</td>
     <td>1000.00</td>
     <td>进度 + 剩余（%）</td>
     <td>1000.00</td>
     <td>2.00</td>
     <td class="border-r"><a href="#"><input type="button" value="购买" class="btn-buy" /></a></td>
     </tr>
     </table>
    
   
	
    
    
    </div>
	<div id="myTab1_Content1" class="none">
      <table cellpadding="0" cellspacing="0" border="0">
     <tr style="background:#f5f5f5;">
     <td>彩种</td>
     <td>发起人</td>
     <td>战绩</td>
     <td>方案标题</td>
     <td>总金额（元）</td>
     <td>进度 + 剩余（%）</td>
     <td>每月金额（元）</td>
     <td>输入份数</td>
     <td class="border-r">购买</td>
     </tr>
     <tr>
     <td>双色球</td>
     <td>创场</td>
     <td>5颗星</td>
     <td>必中</td>
     <td>1000.00</td>
     <td>进度 + 剩余（%）</td>
     <td>1000.00</td>
     <td>2.00</td>
     <td class="border-r"><a href="#"><input type="button" value="购买" class="btn-buy" /></a></td>
     </tr>
     <tr>
     <td>双色球</td>
     <td>创场</td>
     <td>5颗星</td>
     <td>必中</td>
     <td>1000.00</td>
     <td>进度 + 剩余（%）</td>
     <td>1000.00</td>
     <td>2.00</td>
     <td class="border-r">
      <input type="button" value="购买" class="btn-buy" />
     
     </td>
     </tr>
     </table>
    
    
    </div>	
    <div id="myTab1_Content2" class="none">
     <table cellpadding="0" cellspacing="0" border="0">
     <tr style="background:#f5f5f5;">
     <td>彩种</td>
     <td>发起人</td>
     <td>战绩</td>
     <td>方案标题</td>
     <td>总金额（元）</td>
     <td>进度 + 剩余（%）</td>
     <td>每月金额（元）</td>
     <td>输入份数</td>
     <td class="border-r">购买</td>
     </tr>
     <tr>
     <td>双色球</td>
     <td>创场</td>
     <td>5颗星</td>
     <td>必中</td>
     <td>1000.00</td>
     <td>进度 + 剩余（%）</td>
     <td>1000.00</td>
     <td>2.00</td>
     <td class="border-r"><a href="#"><input type="button" value="购买" class="btn-buy" /></a></td>
     </tr>
     <tr>
     <td>双色球</td>
     <td>创场</td>
     <td>5颗星</td>
     <td>必中</td>
     <td>1000.00</td>
     <td>进度 + 剩余（%）</td>
     <td>1000.00</td>
     <td>2.00</td>
     <td class="border-r"><a href="#"><input type="button" value="购买" class="btn-buy" /></a></td>
     </tr>
     </table>
    
    </div>		
	    </div>	
</div>




<!--<div class="nTab">
		<div class="TabTitle">
		<ul id="myTab2">
		<li class="active" onclick="nTabs(this,0);">ASP</li>
		<li class="normal" onclick="nTabs(this,1);">PHP</li> 			      
		</ul>
		</div>
	    <div class="TabContent">
	<div id="myTab2_Content0">简洁TAB，滑动门，选项卡</div>
	<div id="myTab2_Content1" class="none">兼容性好</div>		
	    </div>	
</div>-->

<!--
                <div class="left_box">
                    <div class="left_top" style="position: relative; z-index: 1;">
                        <h1>
                            合买推荐</h1>
                        <div class="syn_menu">
                            <ul id="Listli2">
                                <li id="syndicate_tab_hot" name="hot" class="on" onclick="JoinBuyList('inner_syndicate_table_hot','inner_syndicate_table_large','inner_syndicate_table_sports','syndicate_tab_hot')">
                                    热门合买</li>
                                <li id="syndicate_tab_large" name="large" class="" onclick="JoinBuyList('inner_syndicate_table_large','inner_syndicate_table_hot','inner_syndicate_table_sports','syndicate_tab_large')">
                                    大额合买</li>
                                <li id="syndicate_tab_sports" name="sports" class="" onclick="JoinBuyList('inner_syndicate_table_sports','inner_syndicate_table_large','inner_syndicate_table_hot','syndicate_tab_sports')">
                                    足彩合买</li>
                            </ul>
                        </div>
                        <div class="more">
                            <a href="JoinUs/JoinAllBuy.aspx">更多合买&gt;&gt;</a>
                        </div>
                        <div class="clear">
                        </div>
                    </div>
                    <div class="left_main">
                        <table class="hmlist" cellpadding="0" cellspacing="0" border="0" id="inner_syndicate_table_hot">
                            <tbody>
                                <tr class="title">
                                    <td width="115">
                                        彩种
                                    </td>
                                    <td width="135">
                                        发起人
                                    </td>
                                    <td width="60">
                                        战绩
                                    </td>
                                    <td width="90">
                                        方案标题
                                    </td>
                                    <td width="75">
                                        总金额
                                    </td>
                                    <td width="95">
                                        进度+剩余
                                    </td>
                                    <td width="70">
                                        每份金额
                                    </td>
                                    <td width="69">
                                        输入份数
                                    </td>
                                    <td width="45">
                                        购买
                                    </td>
                                </tr>
                                <asp:Repeater ID="RepJoinBuy" runat="server" OnItemCommand="RepJoinBuy_ItemCommand">
                                    <ItemTemplate>
                                        <tr class="">
                                            <td>
                                                <%#Eval("LotteryName")%>
                                            </td>
                                            <td>
                                                <%#Eval("InitiateName")%><img src="Images/icon/luck_3.gif">
                                            </td>
                                            <td>
                                                <%#Eval("Level")%>
                                            </td>
                                            <td class="detail">
                                                <%#Shove._String.Cut(Eval("Title").ToString(),5)%>
                                            </td>
                                            <td>
                                                ￥<%#Eval("Money")%></td>
                                            <td class="process">
                                                <%#Eval("Schedule")%>+<%#Eval("ResShare")%>（份）
                                            </td>
                                            <td>
                                                <asp:Label ID="ShareMoney" runat="server" Text='<%#Eval("ShareMoney")%>'></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="tbShare" runat="server" onkeypress="return InputMask_Number();"
                                                    class="text" oncontextmenu="return false" Text="1"></asp:TextBox>
                                                <asp:HiddenField ID="ResShare" runat="server" Value='<%#Eval("ResShare")%>' />
                                                <asp:HiddenField ID="SchememId" runat="server" Value='<%#Eval("ID")%>' />
                                                <asp:HiddenField ID="EndTime" runat="server" Value='<%#Eval("EndTime")%>' />
                                                <asp:HiddenField ID="IsuseID" runat="server" Value='<%#Eval("IsuseID")%>' />
                                            </td>
                                            <td>
                                                <asp:LinkButton ID="btnBuy" class="buy" runat="server" Text="购买" CommandName="Buy"
                                                    OnClientClick="return CreateLogin();"></asp:LinkButton>
                                            </td>
                                        </tr>
                                    </ItemTemplate>
                                    <AlternatingItemTemplate>
                                        <tr class="bgcolor">
                                            <td>
                                                <%#Eval("LotteryName")%>
                                            </td>
                                            <td>
                                                <%#Eval("InitiateName")%><img src="Images/icon/luck_3.gif">
                                            </td>
                                            <td>
                                                <%#Eval("Level")%>
                                            </td>
                                            <td class="detail">
                                                <%#Shove._String.Cut(Eval("Title").ToString(),5)%>
                                            </td>
                                            <td>
                                                ￥<%#Eval("Money")%></td>
                                            <td class="process">
                                                <%#Eval("Schedule")%>+<%#Eval("ResShare")%>（份）
                                            </td>
                                            <td>
                                                <asp:Label ID="ShareMoney" runat="server" Text='<%#Eval("ShareMoney")%>'></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="tbShare" runat="server" onkeypress="return InputMask_Number();"
                                                    class="text" oncontextmenu="return false" Text="1"></asp:TextBox>
                                                <asp:HiddenField ID="ResShare" runat="server" Value='<%#Eval("ResShare")%>' />
                                                <asp:HiddenField ID="SchememId" runat="server" Value='<%#Eval("ID")%>' />
                                                <asp:HiddenField ID="EndTime" runat="server" Value='<%#Eval("EndTime")%>' />
                                                <asp:HiddenField ID="IsuseID" runat="server" Value='<%#Eval("IsuseID")%>' />
                                            </td>
                                            <td>
                                                <asp:LinkButton ID="btnBuy" class="buy" runat="server" Text="购买" CommandName="Buy"
                                                    OnClientClick="return CreateLogin();"></asp:LinkButton>
                                            </td>
                                        </tr>
                                    </AlternatingItemTemplate>
                                </asp:Repeater>
                            </tbody>
                        </table>
                        <table class="hmlist" cellpadding="0" cellspacing="0" border="0" id="inner_syndicate_table_large"
                            style="display: none;">
                            <tbody>
                                <tr class="title">
                                    <td width="115">
                                        彩种
                                    </td>
                                    <td width="135">
                                        发起人
                                    </td>
                                    <td width="60">
                                        战绩
                                    </td>
                                    <td width="90">
                                        方案标题
                                    </td>
                                    <td width="75">
                                        总金额
                                    </td>
                                    <td width="95">
                                        进度+剩余
                                    </td>
                                    <td width="70">
                                        每份金额
                                    </td>
                                    <td width="69">
                                        输入份数
                                    </td>
                                    <td width="45">
                                        购买
                                    </td>
                                </tr>
                                <asp:Repeater ID="RepBigJoinBuy" runat="server" OnItemCommand="RepBigJoinBuy_ItemCommand">
                                    <ItemTemplate>
                                        <tr class="">
                                            <td>
                                                <%#Eval("LotteryName")%>
                                            </td>
                                            <td>
                                                <%#Eval("InitiateName")%><img src="Images/icon/luck_3.gif">
                                            </td>
                                            <td>
                                                <%#Eval("Level")%>
                                            </td>
                                            <td class="detail">
                                                <%#Shove._String.Cut(Eval("Title").ToString(),5)%>
                                            </td>
                                            <td>
                                                ￥<%#Eval("Money")%></td>
                                            <td class="process">
                                                <%#Eval("Schedule")%>+<%#Eval("ResShare")%>（份）
                                            </td>
                                            <td>
                                                <asp:Label ID="ShareMoney" runat="server" Text='<%#Eval("ShareMoney")%>'></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="tbShare" runat="server" onkeypress="return InputMask_Number();"
                                                    class="text" oncontextmenu="return false" Text="1"></asp:TextBox>
                                                <asp:HiddenField ID="ResShare" runat="server" Value='<%#Eval("ResShare")%>' />
                                                <asp:HiddenField ID="SchememId" runat="server" Value='<%#Eval("ID")%>' />
                                                <asp:HiddenField ID="EndTime" runat="server" Value='<%#Eval("EndTime")%>' />
                                                <asp:HiddenField ID="IsuseID" runat="server" Value='<%#Eval("IsuseID")%>' />
                                            </td>
                                            <td>
                                                <asp:LinkButton ID="btnBuy" class="buy" runat="server" Text="购买" CommandName="Buy"
                                                    OnClientClick="return CreateLogin();"></asp:LinkButton>
                                            </td>
                                        </tr>
                                    </ItemTemplate>
                                    <AlternatingItemTemplate>
                                        <tr class="bgcolor">
                                            <td>
                                                <%#Eval("LotteryName")%>
                                            </td>
                                            <td>
                                                <%#Eval("InitiateName")%><img src="Images/icon/luck_3.gif">
                                            </td>
                                            <td>
                                                <%#Eval("Level")%>
                                            </td>
                                            <td class="detail">
                                                <%#Shove._String.Cut(Eval("Title").ToString(),5)%>
                                            </td>
                                            <td>
                                                ￥<%#Eval("Money")%></td>
                                            <td class="process">
                                                <%#Eval("Schedule")%>+<%#Eval("ResShare")%>（份）
                                            </td>
                                            <td>
                                                <asp:Label ID="ShareMoney" runat="server" Text='<%#Eval("ShareMoney")%>'></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="tbShare" runat="server" onkeypress="return InputMask_Number();"
                                                    class="text" oncontextmenu="return false" Text="1"></asp:TextBox>
                                                <asp:HiddenField ID="ResShare" runat="server" Value='<%#Eval("ResShare")%>' />
                                                <asp:HiddenField ID="SchememId" runat="server" Value='<%#Eval("ID")%>' />
                                                <asp:HiddenField ID="EndTime" runat="server" Value='<%#Eval("EndTime")%>' />
                                                <asp:HiddenField ID="IsuseID" runat="server" Value='<%#Eval("IsuseID")%>' />
                                            </td>
                                            <td>
                                                <asp:LinkButton ID="btnBuy" class="buy" runat="server" Text="购买" CommandName="Buy"
                                                    OnClientClick="return CreateLogin();"></asp:LinkButton>
                                            </td>
                                        </tr>
                                    </AlternatingItemTemplate>
                                </asp:Repeater>
                            </tbody>
                        </table>
                        <table class="hmlist" cellpadding="0" cellspacing="0" border="0" id="inner_syndicate_table_sports"
                            style="display: none;">
                            <tbody>
                                <tr class="title">
                                    <td width="115">
                                        彩种
                                    </td>
                                    <td width="135">
                                        发起人
                                    </td>
                                    <td width="60">
                                        战绩
                                    </td>
                                    <td width="90">
                                        方案标题
                                    </td>
                                    <td width="75">
                                        总金额
                                    </td>
                                    <td width="95">
                                        进度+剩余
                                    </td>
                                    <td width="70">
                                        每份金额
                                    </td>
                                    <td width="69">
                                        输入份数
                                    </td>
                                    <td width="45">
                                        购买
                                    </td>
                                </tr>
                                <asp:Repeater ID="RepFootBallJoinBuy" runat="server" OnItemCommand="RepFootBallJoinBuy_ItemCommand">
                                    <ItemTemplate>
                                        <tr class="">
                                            <td>
                                                <%#Eval("LotteryName")%>
                                            </td>
                                            <td>
                                                <%#Eval("InitiateName")%><img src="Images/icon/luck_3.gif">
                                            </td>
                                            <td>
                                                <%#Eval("Level")%>
                                            </td>
                                            <td class="detail">
                                                <%#Shove._String.Cut(Eval("Title").ToString(),5)%>
                                            </td>
                                            <td>
                                                ￥<%#Eval("Money")%></td>
                                            <td class="process">
                                                <%#Eval("Schedule")%>+<%#Eval("ResShare")%>（份）
                                            </td>
                                            <td>
                                                <asp:Label ID="ShareMoney" runat="server" Text='<%#Eval("ShareMoney")%>'></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="tbShare" runat="server" onkeypress="return InputMask_Number();"
                                                    class="text" oncontextmenu="return false" Text="1"></asp:TextBox>
                                                <asp:HiddenField ID="ResShare" runat="server" Value='<%#Eval("ResShare")%>' />
                                                <asp:HiddenField ID="SchememId" runat="server" Value='<%#Eval("ID")%>' />
                                                <asp:HiddenField ID="EndTime" runat="server" Value='<%#Eval("EndTime")%>' />
                                                <asp:HiddenField ID="IsuseID" runat="server" Value='<%#Eval("IsuseID")%>' />
                                            </td>
                                            <td>
                                                <asp:LinkButton ID="btnBuy" class="buy" runat="server" Text="购买" CommandName="Buy"
                                                    OnClientClick="return CreateLogin();"></asp:LinkButton>
                                            </td>
                                        </tr>
                                    </ItemTemplate>
                                    <AlternatingItemTemplate>
                                        <tr class="bgcolor">
                                            <td>
                                                <%#Eval("LotteryName")%>
                                            </td>
                                            <td>
                                                <%#Eval("InitiateName")%><img src="Images/icon/luck_3.gif">
                                            </td>
                                            <td>
                                                <%#Eval("Level")%>
                                            </td>
                                            <td class="detail">
                                                <%#Shove._String.Cut(Eval("Title").ToString(),5)%>
                                            </td>
                                            <td>
                                                ￥<%#Eval("Money")%></td>
                                            <td class="process">
                                                <%#Eval("Schedule")%>+<%#Eval("ResShare")%>（份）
                                            </td>
                                            <td>
                                                <asp:Label ID="ShareMoney" runat="server" Text='<%#Eval("ShareMoney")%>'></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="tbShare" runat="server" onkeypress="return InputMask_Number();"
                                                    class="text" oncontextmenu="return false" Text="1"></asp:TextBox>
                                                <asp:HiddenField ID="ResShare" runat="server" Value='<%#Eval("ResShare")%>' />
                                                <asp:HiddenField ID="SchememId" runat="server" Value='<%#Eval("ID")%>' />
                                                <asp:HiddenField ID="EndTime" runat="server" Value='<%#Eval("EndTime")%>' />
                                                <asp:HiddenField ID="IsuseID" runat="server" Value='<%#Eval("IsuseID")%>' />
                                            </td>
                                            <td>
                                                <asp:LinkButton ID="btnBuy" class="buy" runat="server" Text="购买" CommandName="Buy"
                                                    OnClientClick="return CreateLogin();"></asp:LinkButton>
                                            </td>
                                        </tr>
                                    </AlternatingItemTemplate>
                                </asp:Repeater>
                            </tbody>
                        </table>
                    </div>
                </div>
                -->
                <!--
                <div class="left_box">
                    <div class="left_top">
                        <h1>
                            彩票资讯</h1>
                        <span class="more"><a href="SiteNews/News.aspx">更多资讯&gt;&gt;</a></span></div>
                    <div class="left_main">
                        <div class="news_box news_line">
                            <div class="news_acl">
                                <ul class="acl_list">
                                    <asp:Repeater ID="RepFuCai" runat="server">
                                        <ItemTemplate>
                                            <li><a href="SiteNews/NewDetail.aspx?id=<%#Eval("ID")%>" title="<%#Eval("Title") %>">
                                                <%#Shove._String.Cut(Eval("Title").ToString(),23)%></a></li>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </ul>
                            </div>
                        </div>
                        <div class="news_box">
                            <div class="news_acl">
                                <ul class="acl_list">
                                    <asp:Repeater ID="RepTiCai" runat="server">
                                        <ItemTemplate>
                                            <li><a href="SiteNews/NewDetail.aspx?id=<%#Eval("ID")%>" title="<%#Eval("Title") %>">
                                                <%#Shove._String.Cut(Eval("Title").ToString(),23)%></a></li>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </ul>
                            </div>
                        </div>
                        <div class="clear">
                        </div>
                    </div>
                </div>-->
            </div>
            <div class="clear">
            </div>
        </div>
        <div class="clear nospace">
        </div>
        <uc2:WebFoot ID="WebFoot1" runat="server" />

        <br />

        <script type="text/javascript">
         setTimeout("Page_load(<%= LotteryID %>);",500);
         GetLuckNumber(<%=LotteryID %>);
        </script>
    </form>
    </div>
</body>
</html>

<!-- 浏览使用提示 -->
<script type="text/javascript">
   var notIE = -[1,];
         if(-[1,]){ 
             alert('尊敬的用户您好，由于您当前使用浏览器不支持网银操作，为了更好地体验购彩服务，' +
                    '请使用以IE为核心的浏览器(例如:IE7.0以上浏览器、' +
                    '360浏览器、傲游浏览器、TT浏览器，TheWorld、Avant Browser 、GreenBrowser.)');
       }
       $(function () {
           $("#tbLogin1,#div_cjwt,#div_wzgg,#news_list,#title,#tbLogin2").hide();
       });
</script>



