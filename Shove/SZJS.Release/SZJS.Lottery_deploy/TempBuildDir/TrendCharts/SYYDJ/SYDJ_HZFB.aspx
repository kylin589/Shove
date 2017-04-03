<%@ page language="C#" autoeventwireup="true" inherits="DefualtHZ, App_Web__pli6kov" enableEventValidation="false" %>

<%@ Register Src="../../Home/Room/UserControls/WebFoot.ascx" TagName="WebFoot" TagPrefix="uc1" %>
<%@ Register Src="../../UserControls/Head.ascx" TagName="Head" TagPrefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>十一运夺金和值分布图-十一运夺金走势图-彩票走势图表和数据分析－<%=_Site.Name %></title>
    <meta name="keywords" content="十一运夺金走势图-和值分布" />
    <meta name="description" content="十一运夺金走势图-和值分布、彩票走势图表和数据分析。" />
    <link href="../../Home/Room/Style/common.css" rel="stylesheet" type="text/css" />
    <link href="../../Home/Room/Style/StyleSheet.css" rel="stylesheet" type="text/css" />
    <link href="../../Home/Room/Style/zbuy.css" rel="stylesheet" type="text/css" />
    <link rel="shortcut icon" href="../../favicon.ico" />

    <script src="../../JavaScript/jquery-1.4.js" type="text/javascript"></script>

    <link href="../../Home/Room/Style/zst.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <uc2:Head ID="Head2" runat="server" />
    <div class="wrap">
        <div class="zst_top">
            <h1>
                和值分布图</h1>
            <ul>
                <li>
                    <asp:LinkButton ID="lbtnToday" runat="server" OnClick="lbtnToday_Click">今日数据</asp:LinkButton>
                    <asp:LinkButton ID="lbtnLast" runat="server" OnClick="lbtnLast_Click">昨日数据</asp:LinkButton>最近<label>
                        <asp:DropDownList ID="ddlSelect" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlSelect_SelectedIndexChanged">
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                        </asp:DropDownList>
                    </label>
                    天 </li>
                <div class="clear">
                </div>
              <%--  <li><a href="<%= _Site.Url %>" target="_blank">
                    <%=_Site.Name %>首页</a> <a href="<%= ResolveUrl("~/Lottery/Buy_SYYDJ.aspx") %>" target="_blank">
                        十一运投注/合买</a> <a href="<%= ResolveUrl("~/WinQuery/62-0-0.aspx") %>" target="_blank">十一运中奖查询</a>
                    <asp:Label ID="lbAd" runat="server"></asp:Label>
                    <asp:Label ID="lbAd1" runat="server"></asp:Label>
                    <asp:Label ID="lbAd2" runat="server"></asp:Label>
                </li>--%>
            </ul>
        </div>
    </div>
    <div class="wrap">
        <asp:GridView ID="gvtable" runat="server" class="zs_table" OnRowCreated="gvtable_RowCreated"
            ShowFooter="True" border="0" CellPadding="0" CellSpacing="1" Width="100%">
        </asp:GridView>
    </div>
    <div class="wrap">
        <p>
            <strong>参数说明：</strong><br />
            [和值] 各个中奖号码数值之和<br />
            [和尾] 和值的个位<br />
            <br />
        </p>
    </div>
    <uc1:WebFoot ID="WebFoot1" runat="server" />
    </form>

    <script language="javascript" type="text/javascript">
     function ShowImg(k, i, type) {
         i = i - 1;
         if (k.innerHTML == "&nbsp;") {
             if (type == 1) {
                 k.className = "chartBall04";
                 k.innerHTML = i.toString();
             }
             if (type == 2) {
                 k.className = "cbg4";
                 k.innerHTML = i.toString();
             }
             if (type == 3) {
                 k.className = "cbg5";
                 k.innerHTML = i.toString();
             }
              
         }
         else {
             k.className = "";
             k.innerHTML ="&nbsp;";
         }
     }
    </script>

</body>
</html>
