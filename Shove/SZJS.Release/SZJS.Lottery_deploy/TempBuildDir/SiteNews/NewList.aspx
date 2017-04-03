<%@ page language="C#" autoeventwireup="true" inherits="SiteNews_NewList, App_Web_grbnsrwt" enableEventValidation="false" %>

<%@ Register Assembly="Shove.Web.UI.4 For.NET 3.5" Namespace="Shove.Web.UI" TagPrefix="ShoveWebUI" %>
<%@ Register Src="../UserControls/Head.ascx" TagName="Head" TagPrefix="uc1" %>
<%@ Register Src="../Home/Room/UserControls/WebFoot.ascx" TagName="WebFoot" TagPrefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>
        <%=_Site.Name%>－彩票资讯|购彩资讯|彩民新闻|专家推荐|媒体预测|双色球开奖/新闻资讯-买彩票，就上<%=_Site.Name%></title>
    <meta name="description" content="<%=_Site.Name %>彩票网是一家服务于中国彩民的互联网彩票合买代购交易平台，涉及中国彩票彩种最全的网站，包含双色球、时时乐、时时彩、足彩等众多彩种的实时开奖信息、图表走势、分析预测等。" />
    <meta name="keywords" content="双色球开奖，双色球走势图，3d走势图，福彩3d，时时彩" />
    <link href="../Home/Room/Style/common.css" rel="stylesheet" type="text/css" />
    <link href="../Home/Room/Style/StyleSheet.css" rel="stylesheet" type="text/css" />
    <link href="../Home/Room/Style/index.css" rel="stylesheet" type="text/css" />
    <link rel="shortcut icon" href="../favicon.ico" />

    <script src="../JavaScript/jquery-1.4.js" type="text/javascript"></script>

    <style type="text/css">
        .col-extra
        {
            float: right;
            width: 290px;
        }
        /*<!--热点推荐end-->*/.today-result
        {
            height: 48px;
            background: url(     '../Home/Room/Images/T1AOtUXn0HXXXXXXXX-310-366.gif' ) 0 -99px no-repeat;
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
            background: url(      '../Home/Room/Images/T1AOtUXn0HXXXXXXXX-310-366.gif' ) 8px -213px no-repeat;
            text-indent: -9999px;
        }
        .hot-commend .content
        {
            height: 133px;
            overflow: hidden;
        }
        .hot-commend .content ul
        {
            padding-top: 6px;
            height: 124px;
        }
        .hot-commend .content li
        {
            background: url(     '../Home/Room/Images/T1tQJUXfRXXXXXXXXX-7-200.gif' ) 0 -43px no-repeat;
            margin-left: 13px;
            padding-left: 10px;
            line-height: 1.8;
        }
        .hot-commend .content li span
        {
            margin-right: 5px;
        }
        /*<!--热点推荐end-->*/.rmain1
        {
            border: 1px solid #CCCCCC;
            overflow: hidden;
            margin-top: 10px;
            background-color: #f9f9f9;
            padding-bottom: 10px;
        }
        .rmain1 .title
        {
            line-height: 28px;
            padding-left: 5px;
            padding-right: 5px;
            background-image: url(     '../Home/Room/Images/rmain_title_bg.gif' );
            background-repeat: repeat-x;
            height: 28px;
            border-bottom-style: solid;
            border-bottom-width: 1px;
            border-bottom-color: #CCCCCC;
        }
        .rmain1 .title h2
        {
            background-position: left center;
            float: left;
            font-size: 12px;
            font-weight: bold;
            background-image: url(     '../Home/Room/Images/rmain_bg.gif' );
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
            padding-left: 10px;
        }
        .rmain1 ul li p em
        {
            color: #bf3617;
            font-weight: bold;
            margin-left: 5px;
        }
        .rmain1 ul li p span
        {
            background-image: url(     '../Home/Room/Images/news_red_bg.jpg' );
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
            background-image: url(     '../Home/Room/Images/news_blue_bg.jpg' );
        }
        .rmain1 ul li p a
        {
            margin-left: 10px;
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
            background-image: url(      '../Home/Room/Images/news_left_bg.jpg' );
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
            line-height: 25px;
            text-align: center;
        }
        .zjia table thead tr td
        {
            font-weight: bold;
            color: red;
        }
        .zjia li
        {
            line-height: 25px;
            padding-left: 10px;
        }
        .zjia li span
        {
            margin-right: 5px;
        }
        .rmain1 .ul
        {
            margin-left: 10px;
            margin-top: 7px;
        }
        .rmain1 .ul
        {
            background-image: url(     '../Home/Room/Images/icon-num.gif' );
            background-repeat: no-repeat;
            background-position: left 2px;
            margin-left: 0px;
        }
        .rmain1 .ul li
        {
            height: 25px;
            text-indent: 25px;
        }
        .wrap .left
        {
            float: left;
            width: 685px;
            border: 1px solid #CCCCCC;
        }
        .wrap .left .title
        {
            -webkit-margin-before: 0.67em;
            -webkit-margin-after: 0.67em;
            -webkit-margin-start: 0px;
            -webkit-margin-end: 0px;
            font-size: 24px;
            line-height: 20px;
            text-decoration: none;
            text-align: center;
            padding-top: 15px;
            font-weight: bold;
            margin-top: 10px;
        }
        .wrap .left .xunxi
        {
            text-align: center;
            display: block;
            line-height: 50px;
            margin: 10px;
            color: #666666;
            border-bottom: 1px dashed #CCCCCC;
            margin-top: 0px;
        }
        .wrap .left .news
        {
            line-height: 25px;
            font-size: 14px;
            padding-left: 10px;
            padding-right: 10px;
        }
        .guanlian
        {
            margin: 15px;
            border: 1px solid #CCCCCC;
            overflow: hidden;
            display: block;
        }
        .guanlian dl
        {
            margin-top: 7px;
            margin-bottom: 10px;
        }
        .guanlian dl dt
        {
            font-weight: bold;
            line-height: 25px;
            background-color: #999999;
            text-indent: 10px;
        }
        .guanlian dl dd
        {
            line-height: 25px;
            text-indent: 10px;
            font-size: 14px;
        }
        .ckepop
        {
            margin-left: 20px;
            margin-right: 20px;
            display: block;
            overflow: hidden;
            margin-top: 10px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <uc1:Head ID="Head2" runat="server" />
    <style type="text/css">
        #RepTitle
        {
            border: 1px;
        }
        #RepTitle td
        {
            line-height: 30px;
            text-indent: 20px;
        }
    </style>
    <div class="wrap">
        <div class="left">
            <div class="toubu">
                你当前所在的位置: <a>百姓彩首页</a> > <a>百姓彩资讯</a>
            </div>
            <asp:DataGrid runat="server" ID="RepTitle" Width="100%" AllowPaging="True" AutoGenerateColumns="False"
                ShowHeader="false" PageSize="25" CellPadding="1" BackColor="White" BorderStyle="None">
                <PagerStyle HorizontalAlign="Center" />
                <Columns>
                    <asp:TemplateColumn>
                        <ItemTemplate>
                            <a href="NewDetail.aspx?id=<%#Eval("ID")%>" target="_blank">
                                <%#Shove._String.Cut(Eval("Title").ToString(),45)%></a>
                        </ItemTemplate>
                    </asp:TemplateColumn>
                </Columns>
            </asp:DataGrid>
            <ShoveWebUI:ShoveGridPager ID="gPager" runat="server" Width="100%" PageSize="25"
                Height="25" ShowSelectColumn="true" DataGrid="RepTitle" HotColor="#CCCCCC" OnPageWillChange="gPager_PageWillChange"
                OnSortBefore="gPager_SortBefore" AlternatingRowColor="#F9F9F9" 
                SelectRowColor="#CCCCCC" BackColor="#F9F9F9" />
        </div>
        <div class="col-extra">
            <!--今日开奖begin-->
            <div id="today-result" class="today-result">
                <div class="content">
                    <h2 style="text-indent: 10px; line-height: 30px; background: url('../Home/Room/Images/T1AOtUXn0HXXXXXXXX-310-366.gif') 8px -215px no-repeat;">
                        &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</h2>
                </div>
            </div>
            <!--今日开奖end->
            <!--热点推荐begin-->
            <div class="hot-commend mt10">
                <div class="content">
                    <ul class="ul">
                        <asp:Repeater ID="RepHotNews" runat="server">
                            <ItemTemplate>
                                <li><a href="NewDetail.aspx?id=<%#Eval("ID")%>" target="_blank">
                                    <%#Shove._String.Cut(Eval("Title").ToString(), 19)%></a></li>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>
                </div>
            </div>
            <!--热点推荐end-->
            <!--一周新闻排行榜begin-->
            <div class="rmain1">
                <div class="title">
                    <h2>
                        一周新闻排行榜</h2>
                </div>
                <ul class="ul">
                    <asp:Repeater ID="RepNewWeeks" runat="server">
                        <ItemTemplate>
                            <li><a href="NewDetail.aspx?id=<%#Eval("ID")%>&TypeName=<%#System.Web.HttpUtility.UrlEncode(Eval("TypeName").ToString()) %>" target="_blank">
                                <%#Shove._String.Cut(Eval("Title").ToString(), 19)%></a></li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
            </div>
            <!--一周新闻排行榜end-->
            <!--行业资讯begin-->
            <div class="rmain1">
                <div class="title">
                    <h2>
                        行业资讯</h2>
                </div>
                <ul class="ul">
                    <asp:Repeater ID="RepHangYe" runat="server">
                        <ItemTemplate>
                            <li><a href="NewDetail.aspx?id=<%#Eval("ID")%>" target="_blank">
                                <%#Shove._String.Cut(Eval("Title").ToString(), 19)%></a></li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
            </div>
            <!--行业资讯end-->
        </div>
    </div>
    <div class="clear">
    </div>
    <uc2:WebFoot ID="WebFoot1" runat="server" />
    </form>
</body>
</html>
