<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SYDJ_FBZS.aspx.cs" Inherits="DefaultFB" %>

<%@ Register Src="../../Home/Room/UserControls/WebFoot.ascx" TagName="WebFoot" TagPrefix="uc1" %>
<%@ Register Src="../../UserControls/Head.ascx" TagName="Head" TagPrefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>十一运夺金分布走势图-十一运夺金走势图-彩票走势图表和数据分析－<%=_Site.Name %></title>
    <meta name="keywords" content="十一运夺金走势图-分布走势" />
    <meta name="description" content="十一运夺金走势图-分布走势、彩票走势图表和数据分析。" />
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
                分布走势图</h1>
            <ul>
                <li>
                    <asp:LinkButton ID="lbtn1" runat="server" CssClass="zst_btn">第一位</asp:LinkButton>
                    <asp:LinkButton ID="lbtn2" runat="server" CssClass="zst_btn">第二位</asp:LinkButton>
                    <asp:LinkButton ID="lbtn3" runat="server" CssClass="zst_btn">第三位</asp:LinkButton>
                    <asp:LinkButton ID="lbtn4" runat="server" CssClass="zst_btn">第四位</asp:LinkButton>
                    <asp:LinkButton ID="lbtn5" runat="server" CssClass="zst_btn">第五位</asp:LinkButton>
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
            ShowFooter="True" border="0" CellPadding="0" CellSpacing="1" Width="100%">
        </asp:GridView>
    </div>
    <div class="wrap">
        <p>
            <strong>参数说明：</strong><br />
            <span class="cfont4">[奇数] 01 03 05 07 09 11<br />
                [偶数] 02 04 06 08 10<br />
                [大数] 06 07 08 09 10 11<br />
                [小数] 01 02 03 04 05<br />
                [质数] 01 02 03 05 07 11<br />
                [合数] 04 06 08 09 10 </span>
        </p>
    </div>
    <uc1:WebFoot ID="WebFoot1" runat="server" />

    <script language="javascript" type="text/javascript">
        function ShowImg(k, i, type) {
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
                k.innerHTML = "&nbsp;";
            }
        }
    </script>

    </form>
</body>
</html>
