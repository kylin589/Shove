<%@ page language="C#" autoeventwireup="true" inherits="Admin_Experts, App_Web_mq7qcqnw" enableEventValidation="false" %>

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
        <table width="100%" border="0" cellpadding="0" cellspacing="1" class="baseTab">
            <tr>
                <td height="32" bgcolor="#B0D5EC">
                    <div class="title">
                        专家信息管理列表
                    </div>
                </td>
            </tr>
            <tr align="left" style="height: 28px" class="title">
                <td>
                    &nbsp;彩种：<asp:DropDownList ID="ddlLottery" runat="server" Width="120px" AutoPostBack="True"
                        OnSelectedIndexChanged="ddlLottery_SelectedIndexChanged">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:DataGrid ID="g" runat="server" CellPadding="0" BackColor="White" BorderWidth="2px"
                        BorderStyle="None" BorderColor="#E0E0E0" Font-Names="宋体" PageSize="20" AllowSorting="True"
                        AutoGenerateColumns="False" AllowPaging="True" OnItemDataBound="g_ItemDataBound"
                        Width="100%" OnItemCommand="g_ItemCommand">
                        <FooterStyle ForeColor="#330099" BackColor="#FFFFCC"></FooterStyle>
                        <SelectedItemStyle Font-Bold="True" ForeColor="#663399"></SelectedItemStyle>
                        <HeaderStyle HorizontalAlign="Center" ForeColor="RoyalBlue" VerticalAlign="Middle"
                            BackColor="LightGray"></HeaderStyle>
                        <Columns>
                            <asp:BoundColumn DataField="LotteryName" SortExpression="LotteryName" HeaderText="彩种">
                                <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                            </asp:BoundColumn>
                            <asp:HyperLinkColumn DataNavigateUrlField="id" DataTextField="UserName" HeaderText="用户名"
                                DataNavigateUrlFormatString="FollowSchemeList.aspx?id={0}" SortExpression="UserName">
                            </asp:HyperLinkColumn>
                            <asp:HyperLinkColumn DataNavigateUrlField="id" DataTextField="DateTime" HeaderText="开通时间"
                                DataNavigateUrlFormatString="ExpertsAccountDetail.aspx?id={0}" SortExpression="DateTime">
                            </asp:HyperLinkColumn>
                            <asp:BoundColumn DataField="Level" SortExpression="Level" HeaderText="星级">
                                <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                            </asp:BoundColumn>
                            <asp:TemplateColumn HeaderText="描述">
                                <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                                <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                <ItemTemplate>
                                    <asp:TextBox ID="tbDescription" runat="server" Width="306px"></asp:TextBox>
                                </ItemTemplate>
                            </asp:TemplateColumn>
                            <asp:TemplateColumn HeaderText="最大单价">
                                <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                                <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                <ItemTemplate>
                                    <asp:TextBox ID="tbMaxPrice" runat="server" Width="60px"></asp:TextBox>
                                </ItemTemplate>
                            </asp:TemplateColumn>
                            <asp:TemplateColumn HeaderText="所得佣金比例">
                                <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                                <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                <ItemTemplate>
                                    <asp:TextBox ID="tbBonusScale" runat="server" Width="60px"></asp:TextBox>
                                </ItemTemplate>
                            </asp:TemplateColumn>
                            <asp:TemplateColumn HeaderText="人气">
                                <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                                <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                <ItemTemplate>
                                    <asp:TextBox ID="tbReadCount" runat="server" Width="30px"></asp:TextBox>
                                </ItemTemplate>
                            </asp:TemplateColumn>
                            <asp:TemplateColumn HeaderText="有效状态">
                                <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                                <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                <ItemTemplate>
                                    <asp:CheckBox ID="cbON" runat="server"></asp:CheckBox>
                                </ItemTemplate>
                            </asp:TemplateColumn>
                            <asp:TemplateColumn HeaderText="是否推荐">
                                <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                                <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                <ItemTemplate>
                                    <asp:CheckBox ID="cbisCommend" runat="server"></asp:CheckBox>
                                </ItemTemplate>
                            </asp:TemplateColumn>
                            <asp:TemplateColumn HeaderText="操作">
                                <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                                <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                <ItemTemplate>
                                    <asp:LinkButton ID="btnEdit" runat="server" CommandName="Edit" OnClientClick="return confirm('您确信输入无误，并立即保存吗？');">保存</asp:LinkButton>&nbsp;
                                    <asp:LinkButton ID="btnDel" runat="server" CommandName="Del" OnClientClick="return confirm('您确信要删除此专家吗？');">删除</asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateColumn>
                            <asp:BoundColumn Visible="False" DataField="SiteID"></asp:BoundColumn>
                            <asp:BoundColumn Visible="False" DataField="ID"></asp:BoundColumn>
                            <asp:BoundColumn Visible="False" DataField="Description"></asp:BoundColumn>
                            <asp:BoundColumn Visible="False" DataField="MaxPrice"></asp:BoundColumn>
                            <asp:BoundColumn Visible="False" DataField="BonusScale"></asp:BoundColumn>
                            <asp:BoundColumn Visible="False" DataField="ON"></asp:BoundColumn>
                            <asp:BoundColumn Visible="False" DataField="isCommend"></asp:BoundColumn>
                            <asp:BoundColumn Visible="False" DataField="ReadCount"></asp:BoundColumn>
                        </Columns>
                        <PagerStyle Visible="False" HorizontalAlign="Center" ForeColor="#330099" BackColor="#FFFFCC">
                        </PagerStyle>
                    </asp:DataGrid>
                    <ShoveWebUI:ShoveGridPager ID="gPager" runat="server" Width="100%" ShowSelectColumn="False"
                        DataGrid="g" AlternatingRowColor="Linen" GridColor="#E0E0E0" HotColor="MistyRose"
                        Visible="False" OnPageWillChange="gPager_PageWillChange" OnSortBefore="gPager_SortBefore">
                    </ShoveWebUI:ShoveGridPager>
                </td>
            </tr>
        </table>
        <br />
    </div>
    </form>
</body>
</html>
