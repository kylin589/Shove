<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BonusScaleSetup.aspx.cs"
    Inherits="CPS_Administrator_BonusScaleSetup" %>

<%@ Register Assembly="Shove.Web.UI.4 For.NET 3.5" Namespace="Shove.Web.UI" TagPrefix="ShoveWebUI" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
    <link href="style/style01.css" rel="stylesheet" type="text/css" />
</head>
<body class="center">
    <form id="form1" runat="server">
    <div>
        <div class="title">
            佣金比例设置
        </div>
        <asp:DataGrid ID="g" runat="server" BorderStyle="None" AllowSorting="True" Width="100%"
            CssClass="baseTab" PageSize="30" AutoGenerateColumns="False" CellPadding="2"
            Font-Names="宋体" CellSpacing="1" GridLines="None" OnItemCommand="g_ItemCommand"
            DataKeyField="LotteryID" OnItemDataBound="g_ItemDataBound">
            <SelectedItemStyle Font-Bold="True" ForeColor="#663399"></SelectedItemStyle>
            <HeaderStyle HorizontalAlign="Center" ForeColor="RoyalBlue" VerticalAlign="Middle"
                BackColor="#E9F1F8" Height="25px"></HeaderStyle>
            <ItemStyle Height="21px"></ItemStyle>
            <Columns>
                <asp:BoundColumn DataField="LotteryID" HeaderText="彩种ID">
                    <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                    <ItemStyle HorizontalAlign="Center"></ItemStyle>
                </asp:BoundColumn>
                <asp:BoundColumn DataField="LotteryName" HeaderText="彩种">
                    <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                    <ItemStyle HorizontalAlign="Center"></ItemStyle>
                </asp:BoundColumn>
                <asp:TemplateColumn HeaderText="代理商返点比例">
                    <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                    <ItemStyle HorizontalAlign="Center"></ItemStyle>
                    <ItemTemplate>
                        <asp:TextBox ID="tbUnionBonusScale" runat="server"></asp:TextBox>
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:TemplateColumn HeaderText="推广员返点比例">
                    <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                    <ItemStyle HorizontalAlign="Center"></ItemStyle>
                    <ItemTemplate>
                        <asp:TextBox ID="tbCommenderBonusScale" runat="server"></asp:TextBox>
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:ButtonColumn CommandName="modify" Text="修改" HeaderStyle-Width="80px" ItemStyle-HorizontalAlign="Center" />
            </Columns>
            <PagerStyle Visible="False"></PagerStyle>
        </asp:DataGrid>
        <p>
        </p>
    </div>
    </form>
</body>
</html>
