<%@ page language="C#" autoeventwireup="true" inherits="WinQuery_OpenInfoList, App_Web_tblihjbj" enableEventValidation="false" %>

<%@ Register Src="../Home/Room/UserControls/WebFoot.ascx" TagName="WebFoot" TagPrefix="uc2" %>
<%@ Register Src="../UserControls/Head.ascx" TagName="Head" TagPrefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>彩票|开奖公告|开奖结果|开奖查询|福彩|体彩|足彩|快开彩|一起买彩票、彩票合买代购交易平台－<%=_Site.Name %>－买彩票，就上<%=_Site.Name %></title>
    <meta name="keywords" content="买彩票,彩票合买" />
    <meta name="description" content="<%=_Site.Name %>为广大彩民提供互联网彩票合买代购交易平台。" />
    <link href="../Home/Room/Style/common.css" rel="stylesheet" type="text/css" />
    <link href="../Home/Room/Style/StyleSheet.css" rel="stylesheet" type="text/css" />
    <link href="../Home/Room/Style/Win.css" rel="stylesheet" type="text/css" />

    <script src="../JavaScript/jquery-1.4.js" type="text/javascript"></script>

</head>
<body>
    <form id="form1" runat="server">
    <asp:HiddenField ID="HidLotteryID" runat="server" />
    <asp:HiddenField ID="HidIsuseID" runat="server" />
    <asp:HiddenField ID="HidPlayType" runat="server" />
    <uc1:Head ID="Head1" runat="server" />
    <div class="wrap">
        <div class="lefts">
            <ul>
                <li>
                    <h1>
                        福彩开奖查询</h1>
                </li>
                <li><a id="span5" href="OpenInfoList.aspx?LotteryID=5">双色球</a></li>
                <li><a id="span6" href="OpenInfoList.aspx?LotteryID=6">福彩3D</a></li>
                <li><a id="span29" href="OpenInfoList.aspx?LotteryID=29">时时乐(高频)</a></li>
                <li><a id="span61" href="OpenInfoList.aspx?LotteryID=61">江西时时彩(高频)</a></li>
                <li><a id="span28" href="OpenInfoList.aspx?LotteryID=28">重庆时时彩(高频)</a></li>
                <li><a id="span13" href="OpenInfoList.aspx?LotteryID=13">七乐彩</a></li>
                <li style="display:none"><a id="span59" href="OpenInfoList.aspx?LotteryID=59">15选5</a></li>
                <li style="display:none"><a id="span58" href="OpenInfoList.aspx?LotteryID=58">东方6+1</a></li>
                <li>
                    <h1>
                        足彩开奖查询</h1>
                </li>
                <li><a id="span74" href="OpenInfoList.aspx?LotteryID=74">胜负彩(任九)</a></li>
                <li><a id="span2" href="OpenInfoList.aspx?LotteryID=2">四场进球</a></li>
                <li><a id="span15" href="OpenInfoList.aspx?LotteryID=15">六场半全场</a></li>
                <li>
                    <h1>
                        体彩开奖查询</h1>
                </li>
                <li><a id="span70" href="OpenInfoList.aspx?LotteryID=70">11选5(高频)</a></li>
                <li><a id="span62" href="OpenInfoList.aspx?LotteryID=62">十一运夺金(高频)</a></li>
                <li><a id="span39" href="OpenInfoList.aspx?LotteryID=39">超级大乐透</a></li>
                <li><a id="span63" href="OpenInfoList.aspx?LotteryID=63">排列3</a></li>
                <li><a id="span64" href="OpenInfoList.aspx?LotteryID=64">排列5</a></li>
                <li><a id="span3" href="OpenInfoList.aspx?LotteryID=3">七星彩</a></li>
                <li><a id="span9" href="OpenInfoList.aspx?LotteryID=9">22选5</a></li>
                <li><a id="span65" href="OpenInfoList.aspx?LotteryID=65">31选7</a></li>
            </ul>
            <div class="lefts" id="lefts">
            </div>
        </div>
        <div class="right">
            <div class="l">
                <div class="l">
                    <img id="imgLogo" runat="server" src="../Home/Room/Images/logo_ssq.gif" />
                    <ul>
                        <li><span>
                            <%=LotteryName%>开奖结果</span><span class="whd"></span>开奖：<em>
                                <asp:Label ID="lbWinDay" runat="server"></asp:Label>
                            </em></li>
                        <li>第&nbsp;<span class="red suzi"><asp:Label ID="lbIsuse" runat="server"></asp:Label></span>&nbsp;期<span
                            class="whd"> </span>日期 <span class="red suzi">
                                <asp:Label ID="lbOpenDate" runat="server"></asp:Label></span></li>
                    </ul>
                </div>
                <p>
                    <em class="open">开奖号码: </em>
                    <%=tbWinNumber%></p>
                <p class="pp" id="LatestOpenInfo" runat="server">
                </p>
                <p class="pp">
                    <a class="a" href="<%= BuyUrl %>">立刻购买</a></p>
                <br />
                <a href="<%=TrendUrl %>" style="text-decoration: none;" target="_blank">查看走势图</a>
            </div>
            <div class="r">
                <p>
                    选择期号：
                    <asp:DropDownList ID="ddlIsuses" runat="server" AutoPostBack="true" Width="80px"  OnSelectedIndexChanged="ddlIsuses_SelectedIndexChanged">
                    </asp:DropDownList>
                    &nbsp;&nbsp;玩法：
                    <asp:DropDownList ID="ddlPlayTypes" runat="server" AutoPostBack="true" Width="80px" OnSelectedIndexChanged="ddlPlayTypes_SelectedIndexChanged">
                    </asp:DropDownList>
                </p>
                <%=lbWinInfo %>
            </div>
            <div class="clear">
            </div>
        </div>
    </div>
    <uc2:WebFoot ID="WebFoot1" runat="server" />
    </form>
</body>
</html>
