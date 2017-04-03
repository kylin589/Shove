<%@ Page Language="C#" AutoEventWireup="true" CodeFile="News.aspx.cs" Inherits="SiteNews_News" %>

<%@ Register Src="../UserControls/Head.ascx" TagName="Head" TagPrefix="uc1" %>
<%@ Register Src="../Home/Room/UserControls/WebFoot.ascx" TagName="WebFoot" TagPrefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>
        <%=_Site.Name %>－彩票资讯|购彩资讯|彩民新闻|专家推荐|媒体预测|双色球开奖/新闻资讯-买彩票，就上<%=_Site.Name %></title>
    <meta name="description" content="<%=_Site.Name %>彩票网是一家服务于中国彩民的互联网彩票合买代购交易平台，涉及中国彩票彩种最全的网站，包含双色球、时时乐、时时彩、足彩等众多彩种的实时开奖信息、图表走势、分析预测等。" />
    <meta name="keywords" content="双色球开奖，双色球走势图，3d走势图，福彩3d，时时彩" />
    <link href="../Home/Room/Style/common.css" rel="stylesheet" type="text/css" />
    <link href="../Home/Room/Style/StyleSheet.css" rel="stylesheet" type="text/css" />
    <link href="../Home/Room/Style/index.css" rel="stylesheet" type="text/css" />
    <link rel="shortcut icon" href="../favicon.ico" />

    <script src="../JavaScript/jquery-1.4.js" type="text/javascript"></script>

    <script src="../JavaScript/Public.js" type="text/javascript"></script>
<style type="text/css">
  .col-extra
        {
            float: right;
        }
        .col-main{ width:423px; float:right;margin-right:15px;}
        .module1 .col-sub
        { float:left;

            width: 240px;
        }
        .module1 .col-extra
        { 
            width: 290px;
        }
        .sm-rb
        {
            background: url('../Home/Room/Images/T1AOtUXn0HXXXXXXXX-310-366.gif') -14px -66px no-repeat;
            width: 20px;
            height: 20px;
            color: white;
            font-weight: bold;
            font-family: arial;
            text-align: center;
            line-height: 20px;
        }
        .sm-bb
        {
            background: url('../Home/Room/Images/T1AOtUXn0HXXXXXXXX-310-366.gif') -38px -66px no-repeat;
            width: 20px;
            height: 20px;
            color: white;
            font-weight: bold;
            font-family: arial;
            text-align: center;
            line-height: 20px;
        }
        .sm-bq
        {
            background: url('../Home/Room/Images/T1AOtUXn0HXXXXXXXX-310-366.gif') -62px -65px no-repeat;
            width: 13px;
            height: 24px;
            font-family: arial;
            text-align: center;
            color: white;
            line-height: 21px;
            font-weight: bold;
        }
        .quick-buy
        {
            height: 161px;
            overflow: hidden;
        }
        .topnew
        {
            height: 41px;
            overflow: hidden;
        }
            /*<!--今日开奖begin-->*/
        .topnew dl dt
        {
            font-size: 18px;
            font-weight: bold;
            text-align: center;
            padding: 8px 0;
            font-family: "\5fae\8f6f\96c5\9ed1";
        }
        .topnew dl dt span
        {
            margin-right: 4px;
        }
        .topnew dl dt a
        {
            color: #e72200;
        }
        .topnew dl dt a:hover
        {
            color: #e72200;
            text-decoration: underline;
        }
        /*<!--今日开奖begin-->*/    
        .topnew dl dd
        {
            float: left;
            background: url('../Home/Room/Images/T1tQJUXfRXXXXXXXXX-7-200.gif') 0 -44px no-repeat;
            padding-left: 9px;
            display: inline;
            margin-left: 14px;
        }
        .sorts-new
        {
            border-top: 1px dashed #c2c2c2;
            padding-bottom: 12px;
            overflow: hidden; padding-left:10px;
            font-size: 14px;
        }
        .sorts-new dl
        {
            font-weight: 700;
            padding-left: 9px;
            line-height: 2.5;
            padding-top: 9px;
        }
        .sorts-new dl dt
        {
            color: #d11307;
            display: inline;
        }
        .sorts-new dl dd span
        {
            margin-right: 6px;
        }
        .sorts-new dl dd
        {
            margin-left: 9px;
            display: inline;
        }
        .sorts-new dl dd a
        {
            color: #323232;
        }
        .sorts-new dl dd a:hover
        {
            color: #e72200;
        }
        .sorts-new .content li
        {
            width: 100%;
            overflow: hidden;
            vertical-align: middle;
            line-height: 1.7;
        }
        .sorts-new .content li h3
        {
            font-weight: normal;
            color: #5b5b5b;
            display: inline;
            margin-left: 10px;
            margin-right: 4px;
        }
        .sorts-new .content li .txt
        {
            width: 373px;
        }
        .sorts-new .content li .txt em
        {
            margin-right: 4px;
             
        }
        .sorts-new .content li .txt em a
        {font-size:14px;
        	}
        
        /*<!--热点推荐end-->*/
        .today-result
        {
            height: 48px;
            background: url('../Home/Room/Images/T1AOtUXn0HXXXXXXXX-310-366.gif') 0 -99px no-repeat;
        }
        .today-result .content
        {
            padding: 7px 0 0 96px;
            line-height: 16px;
        }
        .today-result .content a
        {
            color: #dd0800;
            display: inline-block;
            margin: 0 5px;
        }
        .today-result .content a:hover
        {
            color: #dd0800;
        }
        .hot-commend
        {
            background: #fafafa;
            border: 1px solid #d5d5d5;
            border-bottom: 1 none;
        }
        .hot-commend h2
        {
            height: 30px;
            background: url('../Home/Room/Images/T1AOtUXn0HXXXXXXXX-310-366.gif') 8px -213px no-repeat;
            text-indent: -9999px;
        }
        .hot-commend .content
        {
            height: 180px;
            overflow: hidden;
        }
        .hot-commend .content ul
        {
            padding-top: 6px;
        }
        .hot-commend .content li
        {
            background: url('../Home/Room/Images/T1tQJUXfRXXXXXXXXX-7-200.gif') 0 -43px no-repeat;
            margin-left: 13px;
            padding-left: 10px;
            line-height: 1.8;
        }
        .hot-commend .content li span
        {
            margin-right: 5px;
        }
        /*<!--热点推荐end-->*/
        .clearfix dt{ display:block; width:412px; line-height:30px;}
        
        
        .m-ad1
        {
            border: 1px solid #d5d5d5;
            padding: 17px 0 17px 20px;
        }
        .m-ad1 img
        {
            vertical-align: middle;
        }
        .tnl-commend
        {
            border: 1px solid #d9d9d9;
        }
        .tnl-commend .hd
        {
            height: 28px;
            background: url('../Home/Room/Images/T1qjJUXg4kXXXXXXXX-2-654.gif') 0 -48px repeat-x;
        }
        .tnl-commend .hd h2
        {
            float: left;
            height: 28px;
            background: url('../Home/Room/Images/T1qjJUXg4kXXXXXXXX-2-654.gif') 0 -77px repeat-x;
            border-right: 1px solid #d9d9d9;
            color: #cd0100;
            font-size: 14px;
            line-height: 28px;
            padding: 0 11px;
        }
        .buy-strategy
        {
            background: url('../Home/Room/Images/T1qjJUXg4kXXXXXXXX-2-654.gif') 0 -109px repeat-x;
            border: 1px solid #d9d9d9;
            padding: 11px 0;
        }
        .buy-strategy .hd
        {
            height: 21px;
            line-height: 21px;
        }
        .buy-strategy .hd h2
        {
            float: left;
            border-left: 3px solid #980000;
            background: #d30000;
            font-size: 14px;
            color: #fcf2b4;
            padding: 0 10px 0 6px;
        }
        .buy-strategy .bd .maincon
        {
            width: 231px;
            float: left;
            display: inline;
            margin-left: 11px;
            margin-top: 12px;
        }
        .buy-strategy .bd .maincon .details
        {
            height: 114px;
            border-bottom: 1px dashed #cacaca;
        }
        .buy-strategy .bd .maincon .details .pic
        {
            width: 101px;
            float: left;
        }
        .buy-strategy .bd .maincon .details .pic img
        {
            margin-left: 6px;
        }
        .buy-strategy .bd .maincon .details .txt
        {
            float: right;
            width: 129px;
        }
        .buy-strategy .bd .maincon .details .txt h4
        {
            color: #000;
            margin-bottom: 8px;
        }
        .buy-strategy .bd .maincon .details .txt li
        {
            line-height: 1.5;
        }
        .buy-strategy .bd .maincon dl
        {
            margin-top: 6px;
        }
        .buy-strategy .bd .maincon dl dt
        {
            color: #000;
            font-weight: 700;
        }
        .buy-strategy .bd .maincon dl dd
        {
            display: inline-block;
            _display: inline;
            _zoom: 1;
            margin: 3px 10px 0 0;
        }
        .buy-strategy .bd .race
        {
            float: left;
            width: 230px;
            display: inline;
            margin: 12px 0 0 16px;
        }
        .buy-strategy .bd .race li
        {
            float: left;
            border: 1px solid #d9d9d9;
            margin: 0 4px 4px 0;
            text-align: center;
        }
        .buy-strategy .bd .race li a img
        {
            vertical-align: middle;
        }
        .buy-strategy .bd .race li a em
        {
            display: block;
            background: #767676;
            line-height: 19px;
            color: #fff;
            font-weight: 700;
        }
        .knownledge-list .hd
        {
            height: 20px;
            line-height: 20px;
            background: #dbdbdb;
        }
        .knownledge-list .hd h2
        {
            float: left;
            border-left: 4px solid #980000;
            padding: 0 10px 0 6px;
            background: #d10101;
            font-size: 14px;
            color: #fcf2b4;
        }
        .knownledge-list .bd
        {
            border-left: 1px solid #d5d5d5;
            border-right: 1px solid #d5d5d5;
            background: #fafafa;
            height: 133px;
            overflow: hidden;
        }
        .knownledge-list .bd ul
        {
            padding-top: 8px;
            zoom: 1;
        }
        .knownledge-list .bd li
        {
            width: 256px;
            line-height: 1.8;
            background: url('../Home/Room/Images/T1tQJUXfRXXXXXXXXX-7-200.gif') 0 -43px no-repeat;
            margin-left: 14px;
            padding-left: 14px;
        }
        .knownledge-list .bd li span
        {
            margin-right: 5px;
        }
        .hasborder
        {
            border-bottom: 1px solid #d5d5d5;
        }
        .hasborder .bd
        {
            height: 135px;
        }
        .newslist .temp
        {
            float: left;
            width: 343px;
            border-bottom: 1px dashed #c2c2c2;
            padding-bottom: 15px;
            margin-bottom: 10px;
        }
        .newslist .temp h2
        {
            height: 31px;
            color: #d11208;
            font-size: 14px;
            line-height: 31px;
            overflow: hidden;
        }
        .newslist .temp h2 img
        {
            vertical-align: top;
            margin-right: 3px;
            vertical-align: middle;
        }
        .newslist .temp li
        {
            background: url('../Home/Room/Images/T1tQJUXfRXXXXXXXXX-7-200.gif') 11px -43px no-repeat;
            width: 100%;
            height: 20px;
            overflow: hidden;
            vertical-align: middle;
            line-height: 1.6;
        }
        .newslist .temp li .txt
        {
            float: left;
            width: 254px;
            margin-left: 22px;
        }
        .newslist .temp li .date
        {
            float: right;
            margin-right: 18px;
            color: #ababab;
            width: 33px;
            overflow: hidden;
        }
        .newslist .temp .act
        {
            float: right;
            margin: 4px 15px 0 0;
        }
        .newslist .nonemar
        {
            margin-bottom: 0;
            border-bottom: 0 none;
        }
        .friendlink
        {
            border: 1px solid #d5d5d5;
        }
        .friendlink h2
        {
            font-size: 14px;
            color: #000;
            padding-left: 11px;
            line-height: 36px;
        }
        .friendlink ul
        {
            padding-left: 14px;
        }
        .friendlink li
        {
            float: left;
            margin: 0 17px 0 0;
            padding-bottom: 10px;
            display: inline;
        }
        .friendlink li a img
        {
            border: 1px solid #d5d5d5;
            vertical-align: middle;
            _vertical-align: baseline;
            width: 120px;
            height: 50px;
        }
        .partner
        {
            background: #f3f3f3;
            border: 1px solid #d5d5d5;
            padding: 8px 0 10px;
        }
        .partner .p-main
        {
            width: 628px;
            float: left;
        }
        .partner .p-main h2
        {
            float: left;
            padding-left: 10px;
        }
        .partner .p-main .list
        {
            float: left;
            width: 543px;
        }
        .partner .p-main .list a
        {
            margin: 0 11px;
            display: inline-block;
        }
        .partner dl
        {
            float: right;
            border-left: 1px solid #d5d5d5;
            width: 303px;
        }
        .partner dl dt
        {
            font-weight: 700;
            float: left;
            padding-left: 10px;
        }
        
        .partner dl dd
        {
            margin-left: 90px;
        }
        
        
        .rmain1
        {
            border: 1px solid #CCCCCC;
            overflow: hidden;
            margin-top: 10px;
            background-color: #f9f9f9;
            padding-bottom:-10px;

        }
        .rmain1 .title
        {
            line-height: 28px;
            padding-left: 5px;
            padding-right: 5px;
            background-image: url('../Home/Room/Images/rmain_title_bg.gif');
            background-repeat: repeat-x;
            height: 28px;
            border-bottom-style: solid;
            border-bottom-width: 1px;
            border-bottom-color: #CCCCCC;
        }
        .rmain1 ul{ margin-left:-10px; margin-top:10px; overflow:hidden}
        .rmain1 .title h2
        {
            background-position: left center;
            float: left;
            font-size: 12px;
            font-weight: bold;
            background-image: url('../Home/Room/Images/rmain_bg.gif');
            background-repeat: no-repeat;
            padding-left: 20px;
        }
        .rmain1 .title a
        {
            float: right;
            color: Black;
        }
        .rmain1 ul li p
        {
            line-height: 25px;
            padding-top: 5px;
            padding-left: 5px;
        }
        .rmain1 ul li p em
        {
            color: #bf3617;
            font-weight: bold;
            margin-left: 5px;
        }
        .rmain1 ul li p span
        {
            background-image: url('../Home/Room/Images/news_red_bg.jpg');
            display: inline-block;
            height: 20px;
            width: 20px;
            margin-left: 5px;
            text-align: center;
            line-height: 20px;
            color: White;
            font-weight: bold;
            font-family: arial;
        }
        .rmain1 ul li p .lan
        {
            background-image: url('../Home/Room/Images/news_blue_bg.jpg');
        }
        .rmain1 ul li p a
        {
            margin-left: 5px;
            color: #bf3617;
        }
        .rmain1 ul li .xian
        {
            height: 0px;
            font-size: 0px;
            border-bottom: 1px dashed #c5c5c5;
            width: 230px;
            margin: 0 auto;
            margin-bottom: 10px;
        }

        
        .zjia
        {
            margin-top: 10px;
            border: 1px solid #CCCCCC;
            border-top: none;
        }
        .zjia .title
        {
            background-image: url('../Home/Room/Images/news_left_bg.jpg');
            height: 28px;
            line-height: 28px;
            font-weight: bold;
            color: White;
            padding-left: 7px;
        }
        .zjia table
        {
            width: 100%;
        }
        .zjia table tr td
        {
            line-height: 24px;
            text-align: center;
        }
        .zjia table thead tr td
        {
            font-weight: bold;
            color: red;
        }
        .zjia li{ line-height:24px; padding-left:10px;}
        .zjia li span{ margin-right:5px;}
        
        .wrap{ overflow:hidden;}
       .wrap .right{ width:290px; float:right;} 
        .ul{  background-image: url('../Home/Room/Images/icon-num.gif'); background-repeat:no-repeat;  background-position:left 2px;  margin-top:10px; text-indent:-5px;}
        .ul li{ height:25px; text-indent:25px;}
       .wrap .right .rmain1 dl img { float:left; width:110px; padding-top:10px;}
       .wrap .right .rmain1 dl h2,.wrap .right .rmain1 dl p{ float:right; display:block; width:170px; margin-top:10px; line-height:20px;}

 
 
 
         .wrap .left{ float:left; display:block; width:685px; border:1px solid #cccccc; margin-top:10px; overflow:hidden;}
         .wrap .left div{ display:block; overflow:hidden; }
         .wrap .left div dl{ float:left; width:340px; padding-left:2px; }
         .wrap .left div dl dt{ font-size:12px; font-weight:bold; line-height:35px; text-indent:20px; display:block; margin-bottom:10px;background-image: url('../Home/Room/Images/news_title_bg.jpg');  color:White;  height:35px;}
          .wrap .left div dl dt span{ float:left; width:100px;}
          .wrap .left div dl dt a{ float:right;width:60px; font-weight:normal;}
         .wrap .left div dl dd{ height:25px;  text-indent:10px; font-size:12px; list-style-type: disc; list-style-position: inside;}
         .wrap .left div dl dd a{ color:Black;}
    </style>
</head>
<body>
    <form runat="server" id="form1">
    <uc1:Head ID="Head2" runat="server" />
    <div class="wrap">
        <div class="module">
            <div class="module1 clearfix layout">
                
                <div class="col-sub">
                    <div id="msg-slide">
                        <div class="tab-content">
                            <div class="tab-pannel" style="opacity: 1;">
                                 <img src="../Home/Room/Images/T1M8elXkJwXXXXXXXX-240-249.png" width="240" height="249" border="0" />
                             </div>
                        </div>
                    </div>
                    <div class="zjia" style="height:270px;">
                        <div class="title">
                            博彩秘笈</div>
                        <ul>
                         <asp:Repeater ID="RepEpisode" runat="server">
                            <ItemTemplate>
                                <li><a  href="NewDetail.aspx?id=<%#Eval("ID")%>" target="_blank">
                                    <%#Shove._String.Cut(Eval("Title").ToString(),17)%></a></li>
                            </ItemTemplate>
                        </asp:Repeater>
                           
                        </ul>
                    </div>
                </div>
                <div class="col-extra">
                    <div id="today-result" class="today-result">
                        <div class="content">
                        <h2 style=" text-indent:10px; line-height:30px;  background: url('../Home/Room/Images/T1AOtUXn0HXXXXXXXX-310-366.gif') 8px -215px no-repeat; ">    
                            &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</h2>
                          </div>
                    </div>
                    <div class="hot-commend mt10">
                        <div class="content">
                            <ul>
                               <asp:Repeater ID="RepHotNews" runat="server">
                                    <ItemTemplate>
                                        <li><span class="txt"><em><a href="NewDetail.aspx?id=<%#Eval("ID")%>" target="_blank">
                                            <%#Shove._String.Cut(Eval("Title").ToString(),19)%></a></em>
                                        </span></li>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </ul>
                        </div>
                    </div>
                    
                    <div class="rmain1">
     <div class="title">
          <h2>一周新闻排行榜</h2>
     </div>
          <ul class="ul">
                    <asp:Repeater ID="RepNewWeeks" runat="server">
              <ItemTemplate>
           <li><a  href="NewDetail.aspx?id=<%#Eval("ID")%>&TypeName=<%#Format(Eval("TypeName").ToString())%>"  target="_blank">
               <%#Shove._String.Cut(Eval("Title").ToString(),19)%></a></li>
              </ItemTemplate>
           </asp:Repeater>
         </ul>           
      </div>
                </div>
                <div class="col-main">
                    <div class="main-wrap">
                        <div class="topnew">
                            <dl class="clearfix">
                                <dt>  
                                <%=FocusNews%>
                                </dt>
                            </dl>
                        </div>
                        <div class="sorts-new">
                            <div class="content">
                                <ul>
                                <asp:Repeater ID="RepFocusNews" runat="server">
                                    <ItemTemplate>
                                        <li><span class="txt"><em><a href="<%#Eval("Url") %>" target="_blank">
                                            <%#Shove._String.Cut(Eval("Title").ToString(),23)%></a></em>
                                        </span></li>
                                    </ItemTemplate>
                                </asp:Repeater>
                                </ul>
                            </div>
                        </div>
                         <div class="topnew">
                            <dl class="clearfix">
                                <dt>  
                                 <%=SiteAffiches%>
                                </dt>
                            </dl>
                        </div>
                         <div class="sorts-new">
                            <div class="content">
                                <ul>
                                    <asp:Repeater ID="RepSiteAffiches" runat="server">
                                    <ItemTemplate>
                                 <li style="line-height:22px;"><span class="txt"><em><a href="NewDetail.aspx?SiteId=<%#Eval("ID")%>" target="_blank" title="<%#Eval("Title")%>"> <%#Shove._String.Cut(Eval("Title").ToString(),23)%></a></em> </span></li>
                                    </ItemTemplate>
                                    </asp:Repeater>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div  style=" margin:10px auto 0px auto; width:986px;  overflow:hidden;"><img src="../Home/Room/Images/guanggao.jpg" style="border:0px;" / ></a></div>
    <div class="clear"></div>
    <div class="wrap">
    <div class="left">
    <div>
<dl>
<dt><span>福利彩票</span>
   <a href="NewList.aspx?TypeId=101019,101002">更多</a>
</dt>
 <asp:Repeater ID="RepFuCai" runat="server">
     <ItemTemplate>  
<dd><a href="NewDetail.aspx?id=<%#Eval("ID")%>" target="_blank"><%#Shove._String.Cut(Eval("Title").ToString(),21)%></a></dd>
      </ItemTemplate>
  </asp:Repeater>
</dl>
<dl>
<dt><span>体育彩票</span>
    <a href="NewList.aspx?TypeId=101020,101003">更多</a>
 </dt>
 <asp:Repeater ID="RepTiCai" runat="server">
     <ItemTemplate>  
<dd><a href="NewDetail.aspx?id=<%#Eval("ID")%>" target="_blank"><%#Shove._String.Cut(Eval("Title").ToString(),21)%></a></dd>
      </ItemTemplate>
  </asp:Repeater>
</dl>
    </div>
    <div>
<dl>
<dt><span>高频彩票</span>
   <a href="NewList.aspx?TypeId=101013,101017,101007">更多</a>
</dt>
 <asp:Repeater ID="RepGaoPing" runat="server">
     <ItemTemplate>  
<dd><a href="NewDetail.aspx?id=<%#Eval("ID")%>&TypeName=<%#System.Web.HttpUtility.UrlEncode(Eval("TypeName").ToString()) %>" target="_blank"><%#Shove._String.Cut(Eval("Title").ToString(),21)%></a></dd>
      </ItemTemplate>
  </asp:Repeater>

</dl>
<dl>
<dt><span>足球彩票</span>
   <a href="NewList.aspx?TypeId=101021,101004">更多</a>
</dt>
 <asp:Repeater ID="RepZuCai" runat="server">
     <ItemTemplate>  
<dd><a href="NewDetail.aspx?id=<%#Eval("ID")%>" target="_blank"><%#Shove._String.Cut(Eval("Title").ToString(),21)%></a></dd>
      </ItemTemplate>
  </asp:Repeater>
</dl>
    </div>
    </div>
    <div class="right">
    <div class="rmain1">
     <div class="title">
          <h2>行业资讯</h2>
     </div>
          <ul class="ul">
          <asp:Repeater ID="RepHangYe" runat="server">
           <ItemTemplate>  
            <li><a  href="NewDetail.aspx?id=<%#Eval("ID")%>" target="_blank">
              <%#Shove._String.Cut(Eval("Title").ToString(),19)%></a></li>
         </ItemTemplate>
         </asp:Repeater>

         </ul>           
      </div>     
    </div>
    </div>
    <uc2:WebFoot ID="WebFoot1" runat="server" />
    </form>
</body>
</html>
<script type="text/javascript"> 
$(function(){
	$(".tab-pannel img").fadeImg({
		imgs:['../Home/Room/Images/T1M8elXkJwXXXXXXXX-240-249.png' ,'../Home/Room/Images/T1Mv1gXdpiXXXXXXXX-240-249.png' ,'../Home/Room/Images/T1Sy9lXmpmXXXXXXXX-240-249.jpg','../Home/Room/Images/T1vR89Xd4EXXXXXXXX-240-249.png','../Home/Room/Images/T1zPWlXjpXXXXXXXXX-240-249.jpg' ],
		speed:5000
	});
});
</script>
