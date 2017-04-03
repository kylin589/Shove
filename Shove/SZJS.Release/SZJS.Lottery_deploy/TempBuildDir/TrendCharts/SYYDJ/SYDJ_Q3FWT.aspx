<%@ page language="C#" autoeventwireup="true" inherits="Default3FW, App_Web__pli6kov" enableEventValidation="false" %>

<%@ Register Src="../../Home/Room/UserControls/WebFoot.ascx" TagName="WebFoot" TagPrefix="uc1" %>
<%@ Register Src="../../UserControls/Head.ascx" TagName="Head" TagPrefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>十一运夺金前三分位图-十一运夺金走势图-彩票走势图表和数据分析－<%=_Site.Name %></title>
    <meta name="keywords" content="十一运夺金走势图-前三分位图" />
    <meta name="description" content="十一运夺金走势图-前三分位图、彩票走势图表和数据分析。" />
    <link href="../../Home/Room/Style/common.css" rel="stylesheet" type="text/css" />
    <link href="../../Home/Room/Style/StyleSheet.css" rel="stylesheet" type="text/css" />
    <link href="../../Home/Room/Style/zbuy.css" rel="stylesheet" type="text/css" />
    <link rel="shortcut icon" href="../../favicon.ico" />
    <link href="../../Home/Room/Style/zst.css" rel="stylesheet" type="text/css" />

    <script src="../../JavaScript/jquery-1.4.js" type="text/javascript"></script>

</head>
<body>
    <form id="form1" runat="server">
    <uc2:Head ID="Head2" runat="server" />
    <div class="wrap">
        <div class="zst_top">
            <h1>
                前三分位图</h1>
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
               
            </ul>
        </div>
    </div>
    <div class="wrap">
        <asp:GridView ID="gvtable" runat="server" class="zs_table" OnRowCreated="gvtable_RowCreated"
            ShowFooter="True" border="0" CellPadding="0" CellSpacing="1" Width="100%" AutoGenerateColumns="False">
            <Columns>
                <asp:BoundField DataField="Name" />
                <asp:BoundField DataField="ball_1" ItemStyle-Width="28" />
                <asp:BoundField DataField="ball_2" ItemStyle-Width="28" />
                <asp:BoundField DataField="ball_3" ItemStyle-Width="28" />
                <asp:BoundField DataField="b1" />
                <asp:BoundField DataField="b2" />
                <asp:BoundField DataField="b3" />
                <asp:BoundField DataField="b4" />
                <asp:BoundField DataField="b5" />
                <asp:BoundField DataField="b6" />
                <asp:BoundField DataField="b7" />
                <asp:BoundField DataField="b8" />
                <asp:BoundField DataField="b9" />
                <asp:BoundField DataField="b10" />
                <asp:BoundField DataField="b11" />
                <asp:BoundField DataField="bb1" />
                <asp:BoundField DataField="bb2" />
                <asp:BoundField DataField="bb3" />
                <asp:BoundField DataField="bb4" />
                <asp:BoundField DataField="bb5" />
                <asp:BoundField DataField="bb6" />
                <asp:BoundField DataField="bb7" />
                <asp:BoundField DataField="bb8" />
                <asp:BoundField DataField="bb9" />
                <asp:BoundField DataField="bb10" />
                <asp:BoundField DataField="bb11" />
                <asp:BoundField DataField="bc1" />
                <asp:BoundField DataField="bc2" />
                <asp:BoundField DataField="bc3" />
                <asp:BoundField DataField="bc4" />
                <asp:BoundField DataField="bc5" />
                <asp:BoundField DataField="bc6" />
                <asp:BoundField DataField="bc7" />
                <asp:BoundField DataField="bc8" />
                <asp:BoundField DataField="bc9" />
                <asp:BoundField DataField="bc10" />
                <asp:BoundField DataField="bc11" />
                <asp:BoundField DataField="bd0" />
                <asp:BoundField DataField="bd1" />
                <asp:BoundField DataField="bd2" />
                <asp:BoundField DataField="bd3" />
                <asp:BoundField DataField="be0" />
                <asp:BoundField DataField="be1" />
                <asp:BoundField DataField="be2" />
                <asp:BoundField DataField="be3" />
            </Columns>
        </asp:GridView>
    </div>
    <div class="wrap">
        <p>
            <strong>参数说明：</strong><br />
            <span class="cfont4">[奇数] 01 03 05 07 09 11<br />
                [偶数] 02 04 06 08 10<br />
                [大数] 06 07 08 09 10 11<br />
                [小数] 01 02 03 04 05<br />
    </div>
    <uc1:WebFoot ID="WebFoot1" runat="server" />

    <script language="javascript" type="text/javascript">
        function ShowImg(k, i, type) {
            if (k.innerHTML == "&nbsp;") {
                if (type == 4) {
                    k.className = "chartBall04";
                    k.innerHTML = i.toString();
                }
                if (type == 2) {
                    k.className = "chartBall02";
                    k.innerHTML = i.toString();
                }
                if (type == 3) {
                    k.className = "chartBall03";
                    k.innerHTML = i.toString();
                }
                if (type == 6) {
                    k.className = "cbg8";
                    k.innerHTML = i.toString();
                }
                if (type == 5) {
                    k.className = "cbg4";
                    k.innerHTML = i.toString();
                }

            }
            else {
                k.className = "";
                k.innerHTML = "&nbsp;";
            }
        }
    </script>

    </div>
    </form>
</body>
</html>
