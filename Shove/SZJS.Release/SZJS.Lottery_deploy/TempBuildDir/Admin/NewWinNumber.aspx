<%@ page language="C#" autoeventwireup="true" inherits="Admin_NewWinNumber, App_Web__1orsh4m" enableEventValidation="false" %>

<%@ Register Assembly="Shove.Web.UI.4 For.NET 3.5" Namespace="Shove.Web.UI" TagPrefix="ShoveWebUI" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
    <link href="style/style01.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="title" style="text-align: center">
        最新开奖号码列表
    </div>
    <table cellspacing="1" cellpadding="0" width="100%" border="0" class="baseTab">
        <tr class="title">
            <td>
                选择彩票类型
                <asp:DropDownList ID="ddlLottery" runat="server" Width="120px" AutoPostBack="true"
                    OnSelectedIndexChanged="ddlLottery_SelectedIndexChanged">
                </asp:DropDownList>
                &nbsp;
                <asp:DropDownList ID="ddlYear" runat="server" Width="88px">
                </asp:DropDownList>
                &nbsp;
                <asp:DropDownList ID="ddlMonth" runat="server" Width="80px">
                    <asp:ListItem Value="1">1 月</asp:ListItem>
                    <asp:ListItem Value="2">2 月</asp:ListItem>
                    <asp:ListItem Value="3">3 月</asp:ListItem>
                    <asp:ListItem Value="4">4 月</asp:ListItem>
                    <asp:ListItem Value="5">5 月</asp:ListItem>
                    <asp:ListItem Value="6">6 月</asp:ListItem>
                    <asp:ListItem Value="7">7 月</asp:ListItem>
                    <asp:ListItem Value="8">8 月</asp:ListItem>
                    <asp:ListItem Value="9">9 月</asp:ListItem>
                    <asp:ListItem Value="10">10月</asp:ListItem>
                    <asp:ListItem Value="11">11月</asp:ListItem>
                    <asp:ListItem Value="12">12月</asp:ListItem>
                </asp:DropDownList>
                &nbsp;
                <ShoveWebUI:ShoveConfirmButton ID="btnRead" runat="server" Text="读取数据" Width="78px"
                    OnClick="btnRead_Click" />
            </td>
        </tr>
        <tr>
            <td align="center">
                <asp:DataGrid ID="g" runat="server" Width="100%" AutoGenerateColumns="False" CellPadding="1"
                    BackColor="White" BorderWidth="2px" BorderStyle="None" BorderColor="#E0E0E0"
                    Font-Names="宋体" PageSize="20" AllowPaging="True" OnItemDataBound="g_ItemDataBound">
                    <FooterStyle ForeColor="#330099" BackColor="#FFFFCC"></FooterStyle>
                    <SelectedItemStyle Font-Bold="True" ForeColor="#663399"></SelectedItemStyle>
                    <HeaderStyle HorizontalAlign="Center" ForeColor="RoyalBlue" VerticalAlign="Middle"
                        BackColor="LightGray"></HeaderStyle>
                    <Columns>
                        <asp:BoundColumn DataField="LotteryID" HeaderText="彩种名称">
                            <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                            <ItemStyle HorizontalAlign="Center"></ItemStyle>
                        </asp:BoundColumn>
                        <asp:BoundColumn DataField="Name" HeaderText="期号">
                            <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                            <ItemStyle HorizontalAlign="Center"></ItemStyle>
                        </asp:BoundColumn>
                        <asp:BoundColumn DataField="WinLotteryNumber" HeaderText="开奖号码">
                            <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                        </asp:BoundColumn>
                        <asp:BoundColumn DataField="StartTime" HeaderText="起始时间">
                            <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                            <ItemStyle HorizontalAlign="Center"></ItemStyle>
                        </asp:BoundColumn>
                        <asp:BoundColumn DataField="EndTime" HeaderText="截止时间">
                            <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                            <ItemStyle HorizontalAlign="Center"></ItemStyle>
                        </asp:BoundColumn>
                        <asp:BoundColumn DataField="IsOpened" HeaderText="是否开奖">
                            <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                            <ItemStyle HorizontalAlign="Center"></ItemStyle>
                        </asp:BoundColumn>
                    </Columns>
                    <PagerStyle Visible="False" HorizontalAlign="Center" ForeColor="#330099" BackColor="#FFFFCC">
                    </PagerStyle>
                </asp:DataGrid>
                <ShoveWebUI:ShoveGridPager ID="gPager" runat="server" Width="100%" ShowSelectColumn="False"
                    DataGrid="g" AllowShorting="False" AlternatingRowColor="Linen" GridColor="#E0E0E0"
                    HotColor="MistyRose" Visible="False" OnPageWillChange="gPager_PageWillChange" />
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
