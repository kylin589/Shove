<%@ page language="C#" autoeventwireup="true" inherits="CPS_Administrator_DayBuyDetailByType, App_Web_mmkwpj80" enableEventValidation="false" %>

<%@ Register Assembly="Shove.Web.UI.4 For.NET 3.5" Namespace="Shove.Web.UI" TagPrefix="ShoveWebUI" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
    <link href="style/style01.css" rel="stylesheet" type="text/css" />
</head>
<body class="center">
    <form id="form1" runat="server">
    <asp:HiddenField ID="hfDay" runat="server" />
    <div>
        <div class="title">
            CPS &nbsp;交易明细表
        </div>
        <asp:DataGrid ID="g" runat="server" CellPadding="0" BorderWidth="2px" CssClass="baseTab"
            Width="100%" BorderStyle="None" BorderColor="#E0E0E0" Font-Names="宋体" CellSpacing="1"
            PageSize="20" AllowSorting="True" AutoGenerateColumns="False" AllowPaging="True">
            <FooterStyle ForeColor="#330099" BackColor="#FFFFCC"></FooterStyle>
            <SelectedItemStyle Font-Bold="True" ForeColor="#663399"></SelectedItemStyle>
            <HeaderStyle HorizontalAlign="Center" ForeColor="RoyalBlue" VerticalAlign="Middle"
                BackColor="#EBF3F6"></HeaderStyle>
            <Columns>
                <asp:TemplateColumn HeaderText="序号">
                    <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                    <ItemTemplate>
                        <%# Container.ItemIndex + 1%>
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:BoundColumn DataField="Name" SortExpression="Name" HeaderText="会员">
                    <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                </asp:BoundColumn>
                <asp:BoundColumn DataField="DateTime" SortExpression="DateTime" HeaderText="时间">
                    <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                </asp:BoundColumn>
                <asp:BoundColumn DataField="IsuseName" SortExpression="IsuseName" HeaderText="期号">
                    <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                </asp:BoundColumn>
                <asp:BoundColumn DataField="SchemeNumber" SortExpression="SchemeNumber" HeaderText="方案号">
                    <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                </asp:BoundColumn>
                <asp:BoundColumn DataField="LotteryName" SortExpression="LotteryName" HeaderText="彩种">
                    <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                </asp:BoundColumn>
                <asp:BoundColumn DataField="PlayTypeName" SortExpression="PlayTypeName" HeaderText="方案类型">
                    <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                </asp:BoundColumn>
                <asp:BoundColumn DataField="Money" SortExpression="Money" HeaderText="方案金额" DataFormatString="{0:N}">
                    <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                </asp:BoundColumn>
                <asp:BoundColumn DataField="DetailMoney" SortExpression="DetailMoney" HeaderText="购买金额"
                    DataFormatString="{0:N}">
                    <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                </asp:BoundColumn>
            </Columns>
            <PagerStyle Visible="False" HorizontalAlign="Center" ForeColor="#330099" BackColor="#FFFFCC">
            </PagerStyle>
        </asp:DataGrid>
        <ShoveWebUI:ShoveGridPager ID="gPager" runat="server" Width="100%" ShowSelectColumn="False"
            DataGrid="g" AlternatingRowColor="Linen" GridColor="#E0E0E0" HotColor="MistyRose"
            Visible="true" OnPageWillChange="gPager_PageWillChange" OnSortBefore="gPager_SortBefore">
        </ShoveWebUI:ShoveGridPager>
    </div>
    </form>
</body>
</html>
