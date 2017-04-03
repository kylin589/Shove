<%@ page language="C#" autoeventwireup="true" inherits="Admin_ChaseList, App_Web__1orsh4m" enableEventValidation="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ Register Assembly="Shove.Web.UI.4 For.NET 3.5" Namespace="Shove.Web.UI" TagPrefix="ShoveWebUI" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
    <link href="style/style01.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div class="title" style="text-align: center">
            追号信息查询中心
        </div>
        <table cellspacing="1" cellpadding="0" width="100%" border="0" class="baseTab">
            <tr class="title" style="height: 28px;">
                <td width="150px">
                    <asp:DropDownList ID="ddlType" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlType_SelectedIndexChanged">
                        <asp:ListItem Value="1">按用户名查询</asp:ListItem>
                        <asp:ListItem Value="2">按期号查询</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td runat="server" id="tdUserName" width="250px">
                    用户名：<asp:TextBox ID="tbUserName" runat="server"></asp:TextBox>
                </td>
                <td runat="server" id="tdIsuses" visible="false" width="300px">
                    彩种：<asp:DropDownList ID="ddlLottery" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlLottery_SelectedIndexChanged">
                    </asp:DropDownList>
                    期号：<asp:DropDownList ID="ddlIsuses" runat="server">
                    </asp:DropDownList>
                </td>
                <td>
                    <ShoveWebUI:ShoveConfirmButton ID="btnRead" runat="server" Text="查询数据" Width="78px"
                        OnClick="btnRead_Click" />
                    <asp:TextBox ID="tbID" runat="server" Width="100px" Visible="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center" colspan="4">
                    <asp:DataGrid ID="g" runat="server" Width="100%" AutoGenerateColumns="False" CellPadding="1"
                        BackColor="White" BorderWidth="2px" BorderStyle="None" BorderColor="#CC9966"
                        Font-Names="宋体" PageSize="30" AllowPaging="True" OnItemDataBound="g_ItemDataBound">
                        <FooterStyle ForeColor="#330099" BackColor="#FFFFCC"></FooterStyle>
                        <SelectedItemStyle Font-Bold="True" ForeColor="#663399"></SelectedItemStyle>
                        <HeaderStyle HorizontalAlign="Center" ForeColor="RoyalBlue" VerticalAlign="Middle"
                            BackColor="Silver"></HeaderStyle>
                        <Columns>
                            <asp:BoundColumn DataField="Name" HeaderText="用户名">
                                <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                                <ItemStyle HorizontalAlign="Center"></ItemStyle>
                            </asp:BoundColumn>
                            <asp:BoundColumn DataField="Type" HeaderText="类型">
                                <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                                <ItemStyle HorizontalAlign="Center"></ItemStyle>
                            </asp:BoundColumn>
                            <asp:BoundColumn DataField="DateTime" HeaderText="发起时间">
                                <HeaderStyle HorizontalAlign="Center" Width="19%"></HeaderStyle>
                                <ItemStyle HorizontalAlign="Center"></ItemStyle>
                            </asp:BoundColumn>
                            <asp:BoundColumn DataField="LotteryName" HeaderText="彩种">
                                <HeaderStyle HorizontalAlign="Center" Width="10%"></HeaderStyle>
                                <ItemStyle HorizontalAlign="Center"></ItemStyle>
                            </asp:BoundColumn>
                            <asp:BoundColumn DataField="Title" HeaderText="标题">
                                <HeaderStyle HorizontalAlign="Center" Width="14%"></HeaderStyle>
                                <ItemStyle HorizontalAlign="Left"></ItemStyle>
                            </asp:BoundColumn>
                            <asp:BoundColumn DataField="SumMoney" HeaderText="总金额">
                                <HeaderStyle HorizontalAlign="Center" Width="8%"></HeaderStyle>
                                <ItemStyle HorizontalAlign="Right"></ItemStyle>
                            </asp:BoundColumn>
                            <asp:BoundColumn DataField="SumIsuseNum" HeaderText="总期数">
                                <HeaderStyle HorizontalAlign="Center" Width="8%"></HeaderStyle>
                                <ItemStyle HorizontalAlign="Center"></ItemStyle>
                            </asp:BoundColumn>
                            <asp:BoundColumn DataField="BuyedIsuseNum" HeaderText="完成期数">
                                <HeaderStyle HorizontalAlign="Center" Width="9%"></HeaderStyle>
                                <ItemStyle HorizontalAlign="Center"></ItemStyle>
                            </asp:BoundColumn>
                            <asp:BoundColumn DataField="StopWhenWinMoney" HeaderText="终止条件">
                                <HeaderStyle HorizontalAlign="Center" Width="9%"></HeaderStyle>
                                <ItemStyle HorizontalAlign="Center"></ItemStyle>
                            </asp:BoundColumn>
                            <asp:BoundColumn HeaderText="状态">
                                <HeaderStyle HorizontalAlign="Center" Width="7%"></HeaderStyle>
                                <ItemStyle HorizontalAlign="Center"></ItemStyle>
                            </asp:BoundColumn>
                            <asp:BoundColumn Visible="False" DataField="id" HeaderText="id"></asp:BoundColumn>
                            <asp:BoundColumn Visible="False" DataField="QuashStatus"></asp:BoundColumn>
                            <asp:BoundColumn Visible="False" DataField="StopType"></asp:BoundColumn>
                            <asp:BoundColumn Visible="False" DataField="QuashedIsuseNum"></asp:BoundColumn>
                        </Columns>
                        <PagerStyle Visible="False" HorizontalAlign="Center" ForeColor="#330099" BackColor="#FFFFCC">
                        </PagerStyle>
                    </asp:DataGrid>
                    <ShoveWebUI:ShoveGridPager ID="gPager" runat="server" Width="100%" ShowSelectColumn="False"
                        DataGrid="g" AlternatingRowColor="Linen" GridColor="#E0E0E0" HotColor="MistyRose"
                        PageSize="30" Visible="False" OnPageWillChange="gPager_PageWillChange" OnSortBefore="gPager_SortBefore" />
                </td>
            </tr>
        </table>
        <br />
    </div>
    </form>
</body>
</html>
