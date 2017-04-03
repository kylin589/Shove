﻿<%@ page language="C#" autoeventwireup="true" inherits="Admin_Advertisements, App_Web__1orsh4m" enableEventValidation="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ Register Assembly="Shove.Web.UI.4 For.NET 3.5" Namespace="Shove.Web.UI" TagPrefix="ShoveWebUI" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>无标题页</title>
    <link href="style/style01.css" rel="stylesheet" type="text/css" />
</head>
<body class="center">
    <form id="form1" runat="server">
    <div>
        <div class="title">
            友情链接信息管理
        </div>
        <table cellspacing="1" cellpadding="0" width="100%" border="0" class="baseTab">
            <tr class="title" style="height: 28px;">
                <td style="text-align: left;">
                    <asp:DropDownList ID="ddlType" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlType_SelectedIndexChanged">
                        <asp:ListItem Selected="True" Value="1">广告一</asp:ListItem>
                        <asp:ListItem Value="2">广告二</asp:ListItem>
                        <asp:ListItem Value="3">广告三</asp:ListItem>
                        <asp:ListItem Value="4">广告四</asp:ListItem>
                        <asp:ListItem Value="5">广告五</asp:ListItem>
                        <asp:ListItem Value="6">广告六</asp:ListItem>
                        <asp:ListItem Value="7">广告七</asp:ListItem>
                    </asp:DropDownList>
                    <asp:DropDownList ID="ddlLotteries" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlLotteries_SelectedIndexChanged">
                    </asp:DropDownList>
                    <span style="margin-left: 50px;"></span>
                    <asp:HyperLink ID="hlAdd" runat="server">添加广告</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td valign="top">
                    <asp:DataGrid ID="g" runat="server" Width="100%" AutoGenerateColumns="False" CellPadding="1"
                        BackColor="White" BorderWidth="2px" BorderStyle="None" BorderColor="#E0E0E0"
                        Font-Names="宋体" PageSize="20" OnItemCommand="g_ItemCommand" OnItemDataBound="g_ItemDataBound">
                        <FooterStyle ForeColor="#330099" BackColor="#FFFFCC"></FooterStyle>
                        <SelectedItemStyle Font-Bold="True" ForeColor="#663399"></SelectedItemStyle>
                        <HeaderStyle HorizontalAlign="Center" ForeColor="RoyalBlue" VerticalAlign="Middle"
                            BackColor="Silver"></HeaderStyle>
                        <Columns>
                            <asp:BoundColumn DataField="Title" SortExpression="Title" HeaderText="名称">
                                <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                                <ItemStyle HorizontalAlign="Center"></ItemStyle>
                            </asp:BoundColumn>
                            <asp:BoundColumn DataField="Url" SortExpression="Url" HeaderText="链接地址">
                                <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                                <ItemStyle HorizontalAlign="Left"></ItemStyle>
                            </asp:BoundColumn>
                            <asp:BoundColumn DataField="DateTime" SortExpression="DateTime" HeaderText="时间" DataFormatString="{0:yyyy-MM-dd}">
                                <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                                <ItemStyle HorizontalAlign="Center"></ItemStyle>
                            </asp:BoundColumn>
                            <asp:BoundColumn DataField="Order" SortExpression="Order" HeaderText="顺序">
                                <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                                <ItemStyle HorizontalAlign="Center"></ItemStyle>
                            </asp:BoundColumn>
                            <asp:TemplateColumn SortExpression="isShow" HeaderText="显示">
                                <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                                <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                <ItemTemplate>
                                    <asp:CheckBox ID="cbisShow" runat="server" Enabled="False"></asp:CheckBox>
                                </ItemTemplate>
                            </asp:TemplateColumn>
                            <asp:TemplateColumn HeaderText="编辑">
                                <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                                <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                <ItemTemplate>
                                    <asp:LinkButton ID="btnEdit" runat="server" CommandName="Edit">修改</asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateColumn>
                            <asp:BoundColumn Visible="False" DataField="ID" SortExpression="ID"></asp:BoundColumn>
                            <asp:BoundColumn Visible="False" DataField="isShow" SortExpression="isShow"></asp:BoundColumn>
                        </Columns>
                    </asp:DataGrid>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
