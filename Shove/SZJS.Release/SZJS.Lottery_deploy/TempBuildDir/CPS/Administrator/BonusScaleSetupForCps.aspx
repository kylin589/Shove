<%@ page language="C#" autoeventwireup="true" inherits="CPS_Administrator_BonusScaleSetupForCps, App_Web_mmkwpj80" enableEventValidation="false" %>

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
            佣金返点比例设置
        </div>
        <asp:HiddenField ID="hfCpsID" runat="server" />
        <asp:HiddenField ID="hfOwnerUserID" runat="server" />
        <br />
        <span style="font-size: 14px; font-weight: bold;">CPS商家>><asp:Label ID="lblCpsName"
            runat="server" Text="lblCpsName" ForeColor="#CC0000"></asp:Label>
            佣金返点比例设置 </span>
        <br />
        <br />
        <asp:DataGrid ID="g" runat="server" BorderStyle="None" AllowSorting="True" AllowPaging="True"
            Width="100%" PageSize="30" AutoGenerateColumns="False" Font-Names="宋体" CellSpacing="1"
            CellPadding="2" CssClass="baseTab" GridLines="None" OnItemCommand="g_ItemCommand"
            DataKeyField="LotteryID" OnItemDataBound="g_ItemDataBound">
            <FooterStyle ForeColor="#330099" BackColor="#FFFFCC"></FooterStyle>
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
                <asp:TemplateColumn HeaderText="返点比例">
                    <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                    <ItemStyle HorizontalAlign="Center"></ItemStyle>
                    <ItemTemplate>
                        <asp:TextBox ID="tbBonusScale" runat="server"></asp:TextBox>
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:ButtonColumn CommandName="modify" Text="修改" HeaderStyle-Width="80px" ItemStyle-HorizontalAlign="Center" />
                <asp:BoundColumn Visible="False" DataField="LotteryID"></asp:BoundColumn>
            </Columns>
            <PagerStyle Visible="False"></PagerStyle>
        </asp:DataGrid>
        <div style="display: none">
            <ShoveWebUI:ShoveGridPager ID="gPager" runat="server" Width="100%" PageSize="20"
                ShowSelectColumn="False" DataGrid="g" AlternatingRowColor="#F7FEFA" GridColor="#E0E0E0"
                HotColor="MistyRose" OnPageWillChange="gPager_PageWillChange" OnSortBefore="gPager_SortBefore"
                class="black12" CssClass="black12" SelectRowColor="#FF9933" />
        </div>
        统一修改此商家所有彩种返点比例:<asp:TextBox ID="tbAllScale" runat="server"></asp:TextBox>
        (正确格式:0.03 )&nbsp;<asp:Button ID="btnModifyAll" runat="server" Text="统一修改" Width="89px"
            OnClick="btnModifyAll_Click" />
        <div align="center">
            <asp:HyperLink ID="linkReturn" runat="server"><img src="../Images/return.gif" /></asp:HyperLink>
        </div>
    </div>
    </form>
</body>
</html>
