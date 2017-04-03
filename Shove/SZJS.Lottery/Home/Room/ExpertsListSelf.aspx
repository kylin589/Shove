<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ExpertsListSelf.aspx.cs"
    Inherits="Home_Room_ExpertsListSelf" %>

<%@ Register Assembly="Shove.Web.UI.4 For.NET 3.5" Namespace="Shove.Web.UI" TagPrefix="ShoveWebUI" %>
<%@ Register Src="../../UserControls/Head.ascx" TagName="Head" TagPrefix="uc1" %>
<%@ Register Src="UserControls/UserMyIcaile.ascx" TagName="UserMyIcaile" TagPrefix="uc2" %>
<%@ Register Src="UserControls/WebFoot.ascx" TagName="WebFoot" TagPrefix="uc3" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" 
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>
        <%= _Site.Name %>我的荐号列表-我的资料-用户中心-<%= _Site.Name %>！</title>
    <meta name="description" content="<%= _Site.Name %>是一家服务于中国彩民的互联网彩票合买代购交易平台，涉及中国彩票彩种最全的网站，包含双色球,大乐透,七星彩,3d,足彩等众多彩种的实时开奖信息,图表走势、分析预测以及开奖信息等!" />
    <meta name="keywords" content="双色球合买,体育彩票,福利彩票,双色球开奖信息." />
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
    <link href="Style/common.css" rel="stylesheet" type="text/css" />
    <link href="Style/StyleSheet.css" rel="stylesheet" type="text/css" />
    <link href="Style/home.css" rel="stylesheet" type="text/css" />
    <link rel="shortcut icon" href="../../favicon.ico" />

    <script src="../../JavaScript/jquery-1.4.js" type="text/javascript"></script>

</head>
<body>
    <form id="form1" runat="server">
    <uc1:Head ID="Head2" runat="server" />
    <div class="wrap">
        <uc2:UserMyIcaile ID="UserMyIcaile1" runat="server" />
        <div class="rights">
            <div class="jilu">
                <table width="100%" border="0" cellspacing="0" cellpadding="0" style="margin-top: 10px;">
                    <tr>
                        <td width="40" height="30" align="right" valign="middle" class="red14">
                            <img src="images/user_icon_man.gif" width="19" height="16" />
                        </td>
                        <td valign="middle" style="font-size: 16px; color: #cc0000; font-family: Tahoma;
                            line-height: 20px; font-weight: bold; padding-left: 10px;">
                            我的资料
                        </td>
                    </tr>
                </table>
                <table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="#9FC8EA"
                    style="margin-bottom: 5px;">
                    <tr>
                        <td colspan="2" style="height: 30px; padding-left: 5px;" valign="middle" align="left"
                            bgcolor="#ffede3">
                            <b>&nbsp;您的用户名是：<asp:Label ID="labName" runat="server" ForeColor="Red"></asp:Label>&nbsp;&nbsp;
                                类型：<asp:Label ID="labUserType" runat="server" ForeColor="Red"></asp:Label>&nbsp;&nbsp;
                                等级：<asp:Label ID="labLevel" runat="server" ForeColor="Red"></asp:Label></b>
                        </td>
                    </tr>
                </table>
                <asp:Label ID="labExpertsList" runat="server" Text=""></asp:Label>
                <asp:DataGrid ID="g" runat="server" Width="100%" AutoGenerateColumns="False" CellPadding="1"
                    BackColor="White" BorderWidth="2px" BorderStyle="None" BorderColor="#9FC8EA"
                    Font-Names="宋体" PageSize="20" AllowPaging="True" AllowSorting="True">
                    <FooterStyle ForeColor="#330099" BackColor="#FFFFCC"></FooterStyle>
                    <SelectedItemStyle Font-Bold="True" ForeColor="#9FC8EA"></SelectedItemStyle>
                    <HeaderStyle HorizontalAlign="Center" ForeColor="RoyalBlue" VerticalAlign="Middle"
                        Height="30px" BackColor="#ffede3"></HeaderStyle>
                    <ItemStyle BackColor="White" BorderStyle="None" Height="30px" HorizontalAlign="Center" />
                    <Columns>
                        <asp:BoundColumn DataField="LotteryName" SortExpression="DateTime" HeaderText="彩种">
                            <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                            <ItemStyle HorizontalAlign="Center"></ItemStyle>
                        </asp:BoundColumn>
                        <asp:BoundColumn DataField="DateTime" SortExpression="Title" HeaderText="时间">
                            <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                            <ItemStyle HorizontalAlign="Center"></ItemStyle>
                        </asp:BoundColumn>
                        <asp:BoundColumn DataField="MaxPrice" DataFormatString="{0:c2}" HeaderText="荐号最大价格">
                            <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                            <ItemStyle HorizontalAlign="Center"></ItemStyle>
                        </asp:BoundColumn>
                        <asp:BoundColumn DataField="BonusScale" SortExpression="Price" HeaderText="佣金比例">
                            <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                            <ItemStyle HorizontalAlign="Center"></ItemStyle>
                        </asp:BoundColumn>
                        <asp:BoundColumn DataField="Level" SortExpression="Price" HeaderText="等级">
                            <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                            <ItemStyle HorizontalAlign="Center"></ItemStyle>
                        </asp:BoundColumn>
                    </Columns>
                    <PagerStyle Visible="False" HorizontalAlign="Center" ForeColor="#330099" BackColor="#FFFFCC">
                    </PagerStyle>
                </asp:DataGrid>
                <table width="100%" border="0" cellspacing="1" cellpadding="0" bgcolor="#D8D8D8"
                    style="margin-top: 10px; text-align: left">
                    <tr>
                        <td align="center">
                            <ShoveWebUI:ShoveConfirmButton ID="btnExpertTo" runat="server" Width="60px" Height="30px"
                                Text="申请专家" OnClick="btnExpertTo_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td width="100%" bgcolor="#FFFEDF" style="padding: 5px 10px 5px 10px;">
                            <span style="padding: 5px 10px 5px 10px;">如有其他问题，请联系网站客服：<span class="red14"><%= _Site.Telephone %>
                            </span></span>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
    <uc3:WebFoot ID="WebFoot1" runat="server" />
    </form>
</body>
</html>
