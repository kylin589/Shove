<%@ page language="C#" autoeventwireup="true" inherits="Admin_ImageNews, App_Web__1orsh4m" enableEventValidation="false" %>

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
        <table cellspacing="0" cellpadding="0" width="100%" border="0" class="baseTab">
            <tr>
                <td height="32" bgcolor="#B0D5EC">
                    <div class="title">
                        图片新闻信息管理
                    </div>
                </td>
            </tr>
            <tr>
                <td align="right" valign="top">
                    <asp:DataGrid ID="g" runat="server" Width="100%" AutoGenerateColumns="False" CellPadding="1"
                        BackColor="White" BorderWidth="2px" BorderStyle="None" BorderColor="#E0E0E0"
                        Font-Names="宋体" PageSize="20" AllowPaging="True" AllowSorting="True" OnItemCommand="g_ItemCommand"
                        OnItemDataBound="g_ItemDataBound">
                        <FooterStyle ForeColor="#330099" BackColor="#FFFFCC"></FooterStyle>
                        <SelectedItemStyle Font-Bold="True" ForeColor="#663399"></SelectedItemStyle>
                        <HeaderStyle HorizontalAlign="Center" ForeColor="RoyalBlue" VerticalAlign="Middle"
                            BackColor="Silver"></HeaderStyle>
                        <Columns>
                            <asp:BoundColumn DataField="DateTime" SortExpression="DateTime" HeaderText="时间">
                                <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                                <ItemStyle HorizontalAlign="Center"></ItemStyle>
                            </asp:BoundColumn>
                            <asp:BoundColumn DataField="Title" SortExpression="Title" HeaderText="标题">
                                <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                                <ItemStyle HorizontalAlign="Left"></ItemStyle>
                            </asp:BoundColumn>
                            <asp:TemplateColumn SortExpression="IsBig" HeaderText="大图片">
                                <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                                <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                <ItemTemplate>
                                    <asp:CheckBox ID="cbIsBig" runat="server" Enabled="False"></asp:CheckBox>
                                </ItemTemplate>
                            </asp:TemplateColumn>
                            <asp:TemplateColumn HeaderText="编辑">
                                <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                                <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                <ItemTemplate>
                                    <asp:LinkButton ID="btnEdit" runat="server" CommandName="Edit">修改</asp:LinkButton>&nbsp;
                                    <asp:LinkButton ID="btnDel" runat="server" CommandName="Del" OnClientClick="return confirm('您确信要删除此条图片新闻吗？');">删除</asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateColumn>
                            <asp:BoundColumn Visible="False" DataField="ID"></asp:BoundColumn>
                            <asp:BoundColumn Visible="False" DataField="IsBig"></asp:BoundColumn>
                        </Columns>
                        <PagerStyle Visible="False" HorizontalAlign="Center" ForeColor="#330099" BackColor="#FFFFCC">
                        </PagerStyle>
                    </asp:DataGrid>
                </td>
            </tr>
            <tr>
                <td align="right" valign="top">
                    <ShoveWebUI:ShoveGridPager ID="gPager" runat="server" Width="100%" ShowSelectColumn="False"
                        DataGrid="g" AlternatingRowColor="Linen" GridColor="#E0E0E0" HotColor="MistyRose"
                        Visible="False" OnPageWillChange="gPager_PageWillChange" OnSortBefore="gPager_SortBefore" />
                </td>
            </tr>
            <tr>
                <td align="left" style="height: 46px">
                    <ShoveWebUI:ShoveConfirmButton ID="btnAdd" runat="server" Text="增加" OnClick="btnAdd_Click" />
                </td>
            </tr>
        </table>
        <br />
    </div>
    </form>
</body>
</html>
