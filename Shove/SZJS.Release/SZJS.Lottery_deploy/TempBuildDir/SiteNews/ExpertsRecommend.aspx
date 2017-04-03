<%@ page language="C#" autoeventwireup="true" inherits="SiteNews_ExpertsRecommend, App_Web_grbnsrwt" enableEventValidation="false" %>

<%@ Register Assembly="Shove.Web.UI.4 For.NET 3.5" Namespace="Shove.Web.UI" TagPrefix="ShoveWebUI" %>
<%@ Register Src="../UserControls/Head.ascx" TagName="Head" TagPrefix="uc1" %>
<%@ Register Src="../Home/Room/UserControls/WebFoot.ascx" TagName="WebFoot" TagPrefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>
        <%=_Site.Name %>－彩票资讯|购彩资讯|彩民新闻|专家推荐|媒体预测|专家推荐/双色球开奖-买彩票，就上<%=_Site.Name %></title>
    <meta name="description" content="<%=_Site.Name %>彩票网是一家服务于中国彩民的互联网彩票合买代购交易平台，涉及中国彩票彩种最全的网站，包含双色球、时时乐、时时彩、足彩等众多彩种的实时开奖信息、图表走势、分析预测等。" />
    <meta name="keywords" content="双色球开奖，双色球走势图，3d走势图，福彩3d，时时彩" />
    <link href="../Home/Room/Style/common.css" rel="stylesheet" type="text/css" />
    <link href="../Home/Room/Style/StyleSheet.css" rel="stylesheet" type="text/css" />
    <link href="../Home/Room/Style/index.css" rel="stylesheet" type="text/css" />
    <link rel="shortcut icon" href="../favicon.ico" />

    <script src="../JavaScript/jquery-1.4.js" type="text/javascript"></script>

    <script src="../JavaScript/Public.js" type="text/javascript"></script>

    <style type="text/css">
        .right
        {
            float: right;
            width: 290px;
        }
        .rmain1
        {
            border: 1px solid #CCCCCC;
            overflow: hidden;
            margin-bottom: 10px;
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
        .rmain1 .ul
        {
            margin-left: 10px;
            margin-top: 7px;
            overflow: hidden;
            padding: 0px;
        }
        .rmain1 .ul
        {
            background-image: url(     '../Home/Room/Images/icon-num.gif' );
            background-repeat: no-repeat;
            background-position: left 2px;
        }
        .rmain1 .ul li
        {
            height: 25px;
            text-indent: 5px;
        }
        .wrap .left
        {
            float: left;
            width: 688px;
        }
        .wrap .left .cen
        {
            overflow: hidden;
            margin-bottom: 8px;
            width: 687px;
        }
        .wrap .left .cen .l
        {
            float: left;
            width: 340px;
            height: 251px;
            overflow: hidden;
        }
        .wrap .left .cen .l table
        {
            width: 100%;
            text-align: center;
            line-height: 31px;
            border: solid 1px #cccccc;
            background-image: url(     '../Home/Room/Images/zhuangjia_bg.jpg' );
            color: #941d0f;
        }
        .wrap .left .cen .l table thead
        {
            border-bottom: solid 1px #cccccc;
        }
        .wrap .left .cen .l table thead tr td
        {
            line-height: 31px;
            font-weight: bold;
            text-align: left;
            padding-left: 10px;
        }
        .wrap .left .cen .l table tbody tr td span
        {
            display: block;
            background-color: #ffa79f;
            border: solid 2px #ee9087;
            width: 16px;
            height: 16px;
            line-height: 31px;
            margin: 0;
        }
        .wrap .left .cen .r
        {
            float: right;
            height: 251px;
        }
        .wrap .left .cen img
        {
            height: 251px;
            width: 339px;
            display: block;
            border: 0px;
            background-color: Red;
            margin-bottom: 10px;
        }
        .wrap .left .cen ul
        {
            border: solid 1px #ccc;
            height: 100px;
            width: 385px;
            height: 102px;
        }
        .wrap .left .cen ul li
        {
            width: 385px;
            line-height: 25px;
            text-indent: 10px;
        }
        .wrap .left .cen dl
        {
            float: left;
            width: 337px;
            border: solid 1px #d5d4d4;
            margin-bottom: 8px;
            line-height: 25px;
            text-indent: 10px;
        }
        .wrap .left .cen dl dt
        {
            line-height: 26px;
            font-weight: bold;
            border-bottom: solid 1px #e8e3e3;
            background-image: url(     '../Home/Room/Images/hemai_head_bg.jpg' );
            background-position: left -5px;
            display: block;
            height: 26px;
        }
        .wrap .left .cen dl dt span
        {
            float: left;
            background-image: url(     '../Home/Room/Images/zhuangjia_bg9.jpg' );
            background-repeat: no-repeat;
            background-position: left center;
            width: 100px;
            margin-left: 5px;
            text-indent: 15px;
            color: #4d4d4d;
            height: 26px;
            line-height: 26px;
        }
        .wrap .left .cen dl dt a
        {
            float: right;
            padding-right: 5px;
            width: 50px;
        }
        .zuanja
        {
            width: 100%;
            text-align: center;
            border-bottom-width: 0px;
            background-image: url(     '../Home/Room/Images/zhuangjia_bg2.jpg' );
            background-repeat: no-repeat;
        }
        .zuanja tbody tr td
        {
            border-bottom: solid 1px #d5d4d4;
            overflow: hidden;
        }
        .zuanja thead
        {
            line-height: 30px;
            font-weight: bold;
            text-indent: 20px;
            text-align: left;
        }
        .zuanja tbody
        {
        }
        #DataList1
        {
            width: 687px;
        }
        #DataList1 tr td
        {
            border: solid 1px #cccccc;
        }
        #DataList1 td
        {
            line-height: 30px;
            text-indent: 20px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <uc1:Head ID="Head2" runat="server" />
    <div class="wrap">
        <div class="left">
            <div class="cen">
                <div class="l">
                    <table>
                        <thead>
                            <tr>
                                <td colspan="4">
                                    人气关注
                                </td>
                            </tr>
                        </thead>
                        <tbody>
                            <tr style="line-height: 31px">
                                <td>
                                    排名
                                </td>
                                <td>
                                    用户名
                                </td>
                                <td>
                                    采种
                                </td>
                                <td>
                                    跟单
                                </td>
                            </tr>
                            <asp:Repeater ID="dTFCExpert" runat="server">
                                <ItemTemplate>
                                    <tr>
                                        <td>
                                            <%#Eval("ID") %>
                                        </td>
                                        <td>
                                            <%#Eval("UserName")%>
                                        </td>
                                        <td>
                                            <%#Eval("LotteryName")%>
                                        </td>
                                        <td>
                                            <a href="../Home/Room/FollowSchemeHistory.aspx">定制 </a>
                                        </td>
                                    </tr>
                                </ItemTemplate>
                            </asp:Repeater>
                        </tbody>
                    </table>
                </div>
                <div class="r">
                    <img src="../Home/Room/Images/zhuangjia_guanggao1.jpg" height="251" width="339" />
                </div>
            </div>
            <div class="clear">
            </div>
            <div class="cen">
                <dl style="margin-right: 9px;">
                    <dt><span>3D预测</span> <a href="NewList.aspx?TypeId=102001" style="font-weight: normal;">
                        更多</a></dt>
                    <asp:Repeater ID="RepForecast" runat="server">
                        <ItemTemplate>
                            <dd>
                                <a href="NewDetail.aspx?id=<%#Eval("ID")%>" target="_blank">
                                    <%#Shove._String.Cut(Eval("Title").ToString(),22)%></a></dd>
                        </ItemTemplate>
                    </asp:Repeater>
                </dl>
                <dl>
                    <dt><span>购彩技巧</span> <a href="NewList.aspx?TypeId=108005" style="font-weight: normal;">
                        更多</a></dt>
                    <asp:Repeater ID="RepSkills" runat="server">
                        <ItemTemplate>
                            <dd>
                                <a href="NewDetail.aspx?id=<%#Eval("ID")%>" target="_blank">
                                    <%#Shove._String.Cut(Eval("Title").ToString(),22)%></a></dd>
                        </ItemTemplate>
                    </asp:Repeater>
                </dl>
                <div class="clear">
                </div>
                <dl style="margin-right: 9px;">
                    <dt><span>研究中心</span> <a href="NewList.aspx?TypeId=108007" style="font-weight: normal;">
                        更多</a></dt>
                    <asp:Repeater ID="RepResearchCenter" runat="server">
                        <ItemTemplate>
                            <dd>
                                <a href="NewDetail.aspx?id=<%#Eval("ID")%>" target="_blank">
                                    <%#Shove._String.Cut(Eval("Title").ToString(),22)%></a></dd>
                        </ItemTemplate>
                    </asp:Repeater>
                </dl>
                <dl>
                    <dt><span>推荐分析</span> <a href="NewList.aspx?TypeId=108004" style="font-weight: normal;">
                        更多</a></dt>
                    <asp:Repeater ID="RepRecommendAnalysis" runat="server">
                        <ItemTemplate>
                            <dd>
                                <a href="NewDetail.aspx?id=<%#Eval("ID")%>" target="_blank">
                                    <%#Shove._String.Cut(Eval("Title").ToString(),22)%></a></dd>
                        </ItemTemplate>
                    </asp:Repeater>
                </dl>
            </div>
        </div>
        <div class="right">
            <div class="rmain1">
                <div class="title">
                    <h2>
                        博彩秘笈</h2>
                    <a href="NewList.aspx?TypeId=108002" style="color: Blue">更多</a></div>
                <ul class="ul">
                    <asp:Repeater ID="RepEpisode" runat="server">
                        <ItemTemplate>
                            <li><a href="NewDetail.aspx?id=<%#Eval("ID")%>" target="_blank">
                                <%#Shove._String.Cut(Eval("Title").ToString(),19)%></a></li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
            </div>
            <div class="rmain1">
                <div class="title">
                    <h2>
                        专家须知</h2>
                    <a href="NewList.aspx?TypeId=108003" style="color: Blue">更多</a></div>
                <ul class="ul">
                    <asp:Repeater ID="RepExperts" runat="server">
                        <ItemTemplate>
                            <li><a href="NewDetail.aspx?id=<%#Eval("ID")%>" target="_blank">
                                <%#Shove._String.Cut(Eval("Title").ToString(),19)%></a></li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
            </div>
        </div>
    </div>
    <div class="wrap" style="margin-top: -0px; margin-bottom: 8px;">
        <img src="../Home/Room/Images/zhuangjiang_guanggao2.jpg" />
    </div>
    <div class="wrap">
        <div class="left">
            <table class="zuanja">
                <thead>
                    <tr>
                        <td>
                            专家推荐列表
                        </td>
                    </tr>
                </thead>
                <asp:DataList ID="DataList1" Width="100%" runat="server">
                    <HeaderTemplate>
                        序列 </td>
                        <td>
                            用户名称
                        </td>
                        <td>
                            期号
                        </td>
                        <td>
                            采种类型
                        </td>
                        <td>
                            标题内容
                        </td>
                        <td>
                            人气
                        </td>
                        <td>
                            价格
                        </td>
                        <td>
                        推荐号
                    </HeaderTemplate>
                    <ItemTemplate>
                        <%#Eval("SequenceID")%>
                        </td>
                        <td>
                            <%#Eval("UserName")%>
                        </td>
                        <td>
                            <%#Eval("Name")%>
                        </td>
                        <td>
                            <%#Eval("LotteryName")%>
                        </td>
                        <td title=" <%#Eval("Title")%>">
                            <%#Eval("Title")%>
                        </td>
                        <td>
                            <%#Eval("ReadCount")%>
                        </td>
                        <td>
                            <%# Convert.ToDecimal(Eval("Price")).ToString("F2")%>
                        </td>
                        <td>
                            <a onclick='return confirm("注意：查看此信息除非自己本人或管理员免费，其他用户查看需要扣除账户金额"+<%# Convert.ToDecimal(Eval("Price")).ToString("F2")%>+"元，您确定查看吗？");'
                                href="../Home/Room/ShowExpertsCommend.aspx?ID=<%#Eval("ID")%>">查看 </a>
                    </ItemTemplate>
                </asp:DataList>
                <tr>
                    <td colspan="8">
                        <div id="PageString" runat="server" style="margin-top: 5px; text-align: center">
                        </div>
                    </td>
                </tr>
            </table>
        </div>
        <div class="right">
            <div class="rmain1">
                <div class="title">
                    <h2>
                        彩票术语</h2>
                    <a href="NewList.aspx?TypeId=108006" style="color: Blue">更多</a></div>
                <ul class="ul">
                    <asp:Repeater ID="RepLotteryTerm" runat="server">
                        <HeaderTemplate>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <li><a href="NewDetail.aspx?id=<%#Eval("ID")%>" target="_blank">
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
    $(function() {
        $(".r img").fadeImg({
            imgs: ['../Home/Room/Images/zhuangjia_guanggao.jpg', '../Home/Room/Images/zhuangjia_guanggao1.jpg', '../Home/Room/Images/zhuangjia_guanggao2.jpg'],
            speed: 5000
        });
    });
</script>

