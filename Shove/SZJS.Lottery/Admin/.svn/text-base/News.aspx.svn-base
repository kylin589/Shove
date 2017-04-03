<%@ Page Language="C#" AutoEventWireup="true" CodeFile="News.aspx.cs" Inherits="Admin_News" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ Register Assembly="Shove.Web.UI.4 For.NET 3.5" Namespace="Shove.Web.UI" TagPrefix="ShoveWebUI" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
    <link href="style/style01.css" rel="stylesheet" type="text/css" />
</head>
<body class="center">
    <form id="form1" runat="server">
    <div class="title">
        新闻资讯信息管理
    </div>
    <div style="float: left; width: 20%; overflow: scroll; height: 500px">
        <ShoveWebUI:ShoveTreeView ID="tv" runat="server" Width="140px" ImageSet="BulletedList3"
            ShowExpandCollapse="true" IDFieldName="ID" OnSelectedNodeChanged="tv_SelectedNodeChanged"
            ParentIDFieldName="ParentID" TextFieldName="Name" ValueFieldName="ID" ShowLines="True">
            <NodeStyle Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" HorizontalPadding="5px"
                NodeSpacing="0px" VerticalPadding="0px" />
            <HoverNodeStyle Font-Underline="True" ForeColor="#5555DD" />
            <SelectedNodeStyle Font-Underline="True" ForeColor="#5555DD" HorizontalPadding="0px"
                VerticalPadding="0px" />
            <ParentNodeStyle Font-Bold="False" />
        </ShoveWebUI:ShoveTreeView>
    </div>
    <div style="float: left; width: 80%">
        <table cellspacing="0" cellpadding="0" width="100%" border="0" class="baseTab">
            <tr>
                <td align="center" valign="top" style="width: 100%;">
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
                            <asp:TemplateColumn SortExpression="isShow" HeaderText="显示">
                                <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                                <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                <ItemTemplate>
                                    <asp:CheckBox ID="cbisShow" runat="server" Enabled="False"></asp:CheckBox>
                                </ItemTemplate>
                            </asp:TemplateColumn>
                            <asp:TemplateColumn SortExpression="isHasImage" HeaderText="有图">
                                <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                                <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                <ItemTemplate>
                                    <asp:CheckBox ID="cbisHasImage" runat="server" Enabled="False"></asp:CheckBox>
                                </ItemTemplate>
                            </asp:TemplateColumn>
                            <asp:TemplateColumn SortExpression="isCommend" HeaderText="推荐">
                                <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                                <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                <ItemTemplate>
                                    <asp:CheckBox ID="cbisCommend" runat="server" Enabled="False"></asp:CheckBox>
                                </ItemTemplate>
                            </asp:TemplateColumn>
                            <asp:TemplateColumn SortExpression="isHot" HeaderText="热点">
                                <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                                <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                <ItemTemplate>
                                    <asp:CheckBox ID="cbisHot" runat="server" Enabled="False"></asp:CheckBox>
                                </ItemTemplate>
                            </asp:TemplateColumn>
                            <asp:BoundColumn DataField="ReadCount" SortExpression="ReadCount" HeaderText="阅读">
                                <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                                <ItemStyle HorizontalAlign="Center"></ItemStyle>
                            </asp:BoundColumn>
                            <asp:TemplateColumn HeaderText="编辑">
                                <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                                <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                <ItemTemplate>
                                    <asp:LinkButton ID="btnEdit" runat="server" CommandName="Edit">修改</asp:LinkButton>&nbsp;
                                    <asp:LinkButton ID="btnDel" runat="server" CommandName="Del" OnClientClick="return confirm('您确信要删除此条新闻资料吗？');">删除</asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateColumn>
                            <asp:BoundColumn Visible="False" DataField="ID"></asp:BoundColumn>
                            <asp:BoundColumn Visible="False" DataField="isShow"></asp:BoundColumn>
                            <asp:BoundColumn Visible="False" DataField="isHasImage"></asp:BoundColumn>
                            <asp:BoundColumn Visible="False" DataField="isCommend"></asp:BoundColumn>
                            <asp:BoundColumn Visible="False" DataField="isHot"></asp:BoundColumn>
                        </Columns>
                        <PagerStyle Visible="False" HorizontalAlign="Center" ForeColor="#330099" BackColor="#FFFFCC">
                        </PagerStyle>
                    </asp:DataGrid>
                </td>
            </tr>
            <tr>
                <td>
                    <ShoveWebUI:ShoveGridPager ID="gPager" runat="server" Width="100%" ShowSelectColumn="False"
                        DataGrid="g" AlternatingRowColor="Linen" GridColor="#E0E0E0" HotColor="MistyRose"
                        Visible="False" OnPageWillChange="gPager_PageWillChange" OnSortBefore="gPager_SortBefore" />
                </td>
            </tr>
            <tr>
                <td>
                    <ShoveWebUI:ShoveConfirmButton ID="btnAdd" runat="server" Text="增加" OnClick="btnAdd_Click" />
                </td>
            </tr>
        </table>
        <br />
    </div>
    </form>
</body>
</html>
