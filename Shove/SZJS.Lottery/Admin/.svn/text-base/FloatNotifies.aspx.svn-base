<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FloatNotifies.aspx.cs" Inherits="Admin_FloatNotifies" %>

<%@ Register Assembly="Shove.Web.UI.4 For.NET 3.5" Namespace="Shove.Web.UI" TagPrefix="ShoveWebUI" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
    <link href="style/style01.css" rel="stylesheet" type="text/css" />
</head>
<body class="center">
    <form id="form1" runat="server">
    <div class="title">
        弹出通知信息管理
    </div>
    <div style="text-align: center; margin-top: 0px;">
        <table cellspacing="1" cellpadding="0" width="100%" border="0" class="baseTab">
            <tr class="title" style="height: 28px;">
                <td style="text-align: center;">
                    <asp:LinkButton ID="lbAdd" runat="server" Text="添加" PostBackUrl="FloatNotifiesAdd.aspx"></asp:LinkButton>
                </td>
                <td align="right">
                    浮出广告时间：
                </td>
                <td align="left">
                    <asp:RadioButtonList ID="rblTime" RepeatDirection="Horizontal" runat="server" AutoPostBack="True"
                        OnSelectedIndexChanged="rblTime_SelectedIndexChanged">
                        <asp:ListItem Value="1">登录浮出</asp:ListItem>
                        <asp:ListItem Value="2">整点浮出</asp:ListItem>
                        <asp:ListItem Value="3">马上浮出</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td valign="top" colspan="3">
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
                            <asp:TemplateColumn HeaderText="操作">
                                <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                                <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                <ItemTemplate>
                                    <ShoveWebUI:ShoveLinkButton ID="btnEdit" runat="server" CommandName="Edit">修改</ShoveWebUI:ShoveLinkButton>
                                    <ShoveWebUI:ShoveLinkButton ID="btnDelete" runat="server" CommandName="Deletes" AlertText="真的要删除吗？">删除</ShoveWebUI:ShoveLinkButton>
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
