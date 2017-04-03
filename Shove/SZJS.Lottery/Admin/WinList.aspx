<%@ Page Language="C#" AutoEventWireup="true" CodeFile="WinList.aspx.cs" Inherits="Admin_WinList" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ Register Assembly="Shove.Web.UI.4 For.NET 3.5" Namespace="Shove.Web.UI" TagPrefix="ShoveWebUI" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
    <link href="style/style01.css" rel="stylesheet" type="text/css" />
</head>
<body class="center">
    <form id="form1" runat="server">
    <div>
        <div class="title">
            中奖信息查询中心
        </div>
        <table cellspacing="1" cellpadding="0" width="100%" border="0" class="baseTab">
            <tr class="title">
                <td style="height: 28px" align="left">
                    &nbsp;彩种：
                    <asp:DropDownList ID="ddlLottery" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlLottery_SelectedIndexChanged"
                        Width="140px">
                    </asp:DropDownList>
                    &nbsp;
                    <asp:DropDownList ID="ddlIsuse" runat="server" Width="120px">
                    </asp:DropDownList>
                    &nbsp;
                    <asp:Button ID="btnGo" runat="server" OnClick="btnGo_Click" Style="cursor: hand"
                        Text="查询" />
                </td>
            </tr>
            <tr>
                <td align="center">
                    <asp:DataGrid ID="g" runat="server" Width="100%" AutoGenerateColumns="False" CellPadding="1"
                        BackColor="White" BorderWidth="2px" BorderStyle="None" BorderColor="#E0E0E0"
                        Font-Names="宋体" PageSize="30" AllowPaging="True" OnItemDataBound="g_ItemDataBound">
                        <FooterStyle ForeColor="#330099" BackColor="#FFFFCC"></FooterStyle>
                        <SelectedItemStyle Font-Bold="True" ForeColor="#663399"></SelectedItemStyle>
                        <HeaderStyle HorizontalAlign="Center" ForeColor="RoyalBlue" VerticalAlign="Middle"
                            BackColor="LightGray"></HeaderStyle>
                        <Columns>
                            <asp:BoundColumn DataField="InitiateName" HeaderText="发起人">
                                <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                                <ItemStyle HorizontalAlign="Center"></ItemStyle>
                            </asp:BoundColumn>
                            <asp:HyperLinkColumn DataNavigateUrlField="id" DataNavigateUrlFormatString="../Home/Room/Scheme.aspx?id={0}"
                                DataTextField="SchemeNumber" HeaderText="方案号">
                                <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                                <ItemStyle HorizontalAlign="Center"></ItemStyle>
                            </asp:HyperLinkColumn>
                            <asp:BoundColumn DataField="Money" HeaderText="方案金额">
                                <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                                <ItemStyle HorizontalAlign="Right" Font-Bold="False" Font-Italic="False" Font-Overline="False"
                                    Font-Strikeout="False" Font-Underline="False"></ItemStyle>
                            </asp:BoundColumn>
                            <asp:BoundColumn HeaderText="中奖情况" DataField="WinDescription">
                                <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                                <ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
                                    Font-Underline="False"></ItemStyle>
                            </asp:BoundColumn>
                            <asp:BoundColumn DataField="WinMoney" HeaderText="中奖金额">
                                <ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
                                    Font-Underline="False" HorizontalAlign="Right" />
                                <HeaderStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
                                    Font-Underline="False" HorizontalAlign="Center" />
                            </asp:BoundColumn>
                            <asp:BoundColumn DataField="WinMoneyNoWithTax" HeaderText="税后奖金">
                                <ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
                                    Font-Underline="False" HorizontalAlign="Right" />
                                <HeaderStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
                                    Font-Underline="False" HorizontalAlign="Center" />
                            </asp:BoundColumn>
                            <asp:BoundColumn DataField="Multiple" HeaderText="倍数">
                                <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                                <ItemStyle HorizontalAlign="Center" Font-Bold="False" Font-Italic="False" Font-Overline="False"
                                    Font-Strikeout="False" Font-Underline="False"></ItemStyle>
                            </asp:BoundColumn>
                        </Columns>
                        <PagerStyle Visible="False" HorizontalAlign="Center" ForeColor="#330099" BackColor="#FFFFCC">
                        </PagerStyle>
                    </asp:DataGrid>
                    <ShoveWebUI:ShoveGridPager ID="gPager" runat="server" Width="100%" PageSize="30"
                        ShowSelectColumn="False" DataGrid="g" AllowShorting="False" AlternatingRowColor="Linen"
                        GridColor="#E0E0E0" HotColor="MistyRose" Visible="False" OnPageWillChange="gPager_PageWillChange" />
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
