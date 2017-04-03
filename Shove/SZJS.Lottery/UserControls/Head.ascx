<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Head.ascx.cs" Inherits="UserControls_Head" %>
<!--<link href='<%=ResolveUrl("../QQ/qq.css") %>' rel="stylesheet" type="text/css" />-->
<link  href="../Home/Room/Style/common.css" rel="stylesheet" type="text/css" />
<link href="../Home/Room/Style/StyleSheet.css" rel="stylesheet" type="text/css" />
<!--<script src='<%=ResolveUrl("../QQ/ServiceQQ.htm") %>' language="javascript" type="text/javascript"></script>-->



<asp:HiddenField ID="hUserID" runat="server" Value="-1" />

<script language="javascript" type="text/javascript">
  function show()
  {
   document.getElementById("lotterysList").style.display="";
  }
  function showout()
  {
  document.getElementById("lotterysList").style.display="none";
  }
    function setFavorite(){
        var url=location.href;
        var title=document.title;
        window.external.AddFavorite(url, title);
    }
</script>

<div class="toubu">
    <div class="center">
        <div class="left">
            <asp:Substitution ID="Substitution1" runat="server" MethodName="SetNoCache" Visible="false" />
            <span>欢迎来到中正彩，</span><span style="color:Red;">请登陆</span> <span>免费注册</span>
        </div>
        <div class="right">
            <a id="shoucan" href="#" onclick="setFavorite()">加入收藏</a> <span>|</span><a id="UserAddValue"
                visible="false" runat="server" href="../Home/Room/OnlinePay/Default.aspx" target="_blank">
                充值</a> <span id="span1" runat="server" visible="false">|</span> <a id="UserDistill"
                    visible="false" runat="server" href="../Home/Room/Distill.aspx" target="_blank">
                    提款</a><span id="span2" runat="server" visible="false">|</span> <a id="cr">在线客服</a>
            <a id="cr1" href='<%=ResolveUrl("../Help/help.aspx") %>'>帮助中心</a>
        </div>
    </div>
</div>
<div class="header" id="header">
    <div class="header_logo">
        <div class="logo">
                 <a href='<%=ResolveUrl("../Index.aspx") %>' title="回到首页"></a>
        </div>
        <div class="ph pull-right">
            <a  href="../tuan/Default.aspx" target="_blank">
                <img class="pull-left" src="~/Images/slogan.jpg" id="imgs" runat="server" alt="" /></a>
                <img id="Img1"  class="pull-right" src="~/Images/tel.jpg" alt=" kaghk" runat="server" /></div>
        
        </div>
        <div class="clear">
    </div>
    <div class="header_nav">
           <div class="nav-ab">
        <div class="lotterys" id="lotterys">
            <div class="btn btn_index" id="btnSelect" onmousemove="show()" onmouseout="showout()">
                选择彩票<span class="num">(19个)</span></div>


            <div class="lotterysList" id="lotterysList" style="display: none" onmousemove="show()"
                onmouseout="showout()">
                <ul>
                     <li>
                            <div class="lot_left"><img id="Img2" src="~/Images/images/s01.jpg" runat="server"/></div>
                              <div class="lot_right pull-left">
                                <a class="link-nime pull-left" href="#">竞彩足球</a><span class="pull-right">官方反奖率75%</span>
                            <!--<span><a id="aHref5" href="Javascript:;" runat="server" disabled="true">双色球</a><a
                                class="label" href="#">HOT</a></span> <span><a id="aHref59" href="Javascript:;" runat="server"
                                    disabled="true">15选5</a></span><br />
                            <span><a id="aHref13" href="Javascript:;" runat="server" disabled="true">七乐彩</a></span>
                            <span><a id="aHref6" href="Javascript:;" runat="server" disabled="true">福彩3D</a></span>
                            <span><a id="aHref58" href="Javascript:;" runat="server" disabled="true">东方6+1</a></span><br />-->
                        </div>
                        <div class="clear">
                        </div>
                    </li>


                    <li>
                            <div class="lot_left"><img id="Img3" src="~/Images/images/s02.jpg" runat="server"/></div>
                               
                            <div class="lot_right pull-left">
                            <a class="link-nime pull-left" href="#">双色球</a><span class="pull-right">官方反奖率75%</span>

                            <!--    <span><a id="aHref61" href="Javascript:;" runat="server" disabled="true">江西时时彩</a></span>
                                <span><a id="aHref62" href="Javascript:;" runat="server" disabled="true">11运夺金</a></span><br />
                                <span><a id="aHref29" href="Javascript:;" runat="server" disabled="true">上海时时乐</a></span>
                                <span><a id="aHref70" href="Javascript:;" runat="server" disabled="true">11选5</a> </span><br />
                                <span><a id="aHref28" href="Javascript:;" runat="server" disabled="true">时时彩</a></span>-->
                            </div>
                            <div class="clear">
                            </div>
                        </li>

                    <li>
                            <div class="lot_left"><img id="Img4" src="~/Images/images/s04.jpg"  runat="server"/></div>
                              
                            <div class="lot_right pull-left">
                            <a class="link-nime pull-left" href="#">大乐透</a><span class="pull-right">官方反奖率75%</span>
                                <!--<span><a id="aHref39" href="Javascript:;" runat="server" disabled="true">超级大乐透</a></span><span><a
                                    class="label" href="#">HOT</a></span><br />
                                <span><a id="aHref3" href="Javascript:;" runat="server" disabled="true">七星彩</a></span>
                                <span><a id="aHref64" href="Javascript:;" runat="server" disabled="true">排列5</a></span><br />
                                <span><a id="aHref65" href="Javascript:;" runat="server" disabled="true">31选7</a></span><span><a
                                    id="aHref63" href="Javascript:;" runat="server" disabled="true"> 排列3</a></span><br />
                                <span><a id="aHref9" href="Javascript:;" runat="server" disabled="true">22选5</a></span><br />-->
                            </div>
                            <div class="clear">
                            </div>
                        </li>

                        


                    <li>
                        <div class="lot_left">
                            足彩</div>
                        <div class="lot_right">
                            <span><a id="aHref1" href="Javascript:;" runat="server" disabled="true">14场胜负彩</a></span>
                            <span><a id="aHref1_9" href="Javascript:;" runat="server" disabled="true">任选9场</a></span><br />
                            <span><a id="aHref2" href="Javascript:;" runat="server" disabled="true">4场进球彩</a></span>
                            <span><a id="aHref15" href="Javascript:;" runat="server" disabled="true">6场半全场</a></span>
                        </div>
                        <div class="clear">
                        </div>
                    </li>
                </ul>
            </div>
        </div>
        <ul class="nav">
            <li><a href='<%=ResolveUrl("../Index.aspx") %>'>首页</a></li>
            <li><a <%=GetCss("0/Lottery/buy.aspx") %> href='<%=ResolveUrl("../Lottery/buy.aspx") %>'>
                购彩大厅</a></li>
            <li><a <%=GetCss("0/JoinUs/JoinAllBuy.aspx") %> href='<%=ResolveUrl("../JoinUs/JoinAllBuy.aspx") %>'>
                合买中心</a></li>
            <li><a <%=GetCss("0/WinQuery/Default.aspx") %> href='<%=ResolveUrl("../WinQuery/Default.aspx") %>'>
                开奖公告</a></li>
            <li><a <%=GetCss("0/TrendCharts/Default.aspx") %> href='<%=ResolveUrl("../TrendCharts/Default.aspx") %>'>
                走势图表</a></li>
            <li><a <%=GetCss("0/SiteNews/News.aspx") %> href='<%=ResolveUrl("../SiteNews/News.aspx") %>'>
                彩票资讯</a></li>
            <li><a <%=GetCss("0/SiteNews/ExpertsRecommend.aspx") %> href='<%=ResolveUrl("../SiteNews/ExpertsRecommend.aspx") %>'>
                专家推荐</a></li>
            <li><a href='<%=ResolveUrl("../CPS/index.aspx") %>' target="_blank">优惠活动</a></li>
            <li class="last"><a href='<%=ResolveUrl("../bbs/index.aspx") %>' target="_blank">彩票论坛</a></li>
        </ul>
        <div class="clear">
        </div>
    </div>
</div>
</div>
