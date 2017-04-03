<%@ page language="C#" autoeventwireup="true" inherits="Home_Room_AccountFreezeDetail, App_Web_y4qeesyo" enableEventValidation="false" %>

<%@ Register Assembly="Shove.Web.UI.4 For.NET 3.5" Namespace="Shove.Web.UI" TagPrefix="ShoveWebUI" %>
<%@ Register Src="../../UserControls/Head.ascx" TagName="Head" TagPrefix="uc1" %>
<%@ Register Src="UserControls/UserMyIcaile.ascx" TagName="UserMyIcaile" TagPrefix="uc2" %>
<%@ Register Src="UserControls/WebFoot.ascx" TagName="WebFoot" TagPrefix="uc3" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>我的购彩账户冻结明细-我的账户-用户中心-<%=_Site.Name %>－买彩票，就上<%=_Site.Name %>
        ！</title>
    <meta name="description" content="<%=_Site.Name %>彩票网<%=_Site.Url %>是一家服务于中国彩民的互联网彩票合买代购交易平台，涉及中国彩票彩种最全的网站，包含双色球,大乐透,七星彩,3d,足彩等众多彩种的实时开奖信息,图表走势、分析预测以及开奖信息等!" />
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
                            <img src="images/icon_5.gif" width="19" height="20" />
                        </td>
                        <td valign="middle" style="font-size: 16px; color: #cc0000; font-family: Tahoma;
                            line-height: 20px; font-weight: bold; padding-left: 10px;">
                            我的账户
                        </td>
                    </tr>
                </table>
                <table width="100%" border="0" cellspacing="0" cellpadding="0" style="margin-top: 10px;">
                    <tr>
                        <td width="20" height="29">
                            &nbsp;
                        </td>
                        <td width="100" align="center" background="images/admin_qh_100_1.jpg" class="blue12">
                            <a href="AccountFreezeDetail.aspx"><strong>冻结明细</strong></a>
                        </td>
                        <td width="4">
                            &nbsp;
                        </td>
                        <td width="6">
                            &nbsp;
                        </td>
                        <td>
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td height="1" colspan="11" bgcolor="#FFFFFF">
                        </td>
                    </tr>
                    <tr>
                        <td height="2" colspan="11" bgcolor="#6699CC">
                        </td>
                    </tr>
                </table>
                <table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#9FC8EA">
                    <tr>
                        <td valign="top" bgcolor="#FFFFFF">
                            <asp:DataGrid ID="g" runat="server" Width="100%" BorderStyle="None" AllowSorting="True"
                                AllowPaging="True" PageSize="30" AutoGenerateColumns="False" CellPadding="2"
                                BackColor="#DDDDDD" Font-Names="Tahoma" CellSpacing="1" GridLines="None" OnSortCommand="g_SortCommand">
                                <FooterStyle ForeColor="#330099" BackColor="#FFFFCC"></FooterStyle>
                                <SelectedItemStyle Font-Bold="True" ForeColor="#663399"></SelectedItemStyle>
                                <HeaderStyle HorizontalAlign="Center" BackColor="#ffede3" ForeColor="#0066BA" Height="30px"
                                    CssClass="blue12_2"></HeaderStyle>
                                <AlternatingItemStyle BackColor="#F8F8F8" />
                                <ItemStyle BackColor="White" Height="26px" HorizontalAlign="Center"></ItemStyle>
                                <Columns>
                                    <asp:BoundColumn DataField="DateTime" HeaderText="时间">
                                        <HeaderStyle Width="20%"></HeaderStyle>
                                    </asp:BoundColumn>
                                    <asp:BoundColumn DataField="Money" HeaderText="金额(元)">
                                        <HeaderStyle Width="12%"></HeaderStyle>
                                    </asp:BoundColumn>
                                    <asp:BoundColumn DataField="Memo" HeaderText="冻结原因">
                                        <HeaderStyle Width="68%"></HeaderStyle>
                                    </asp:BoundColumn>
                                </Columns>
                                <PagerStyle Visible="False" HorizontalAlign="Center" ForeColor="#330099" BackColor="#FFFFCC" />
                            </asp:DataGrid>
                            <ShoveWebUI:ShoveGridPager ID="gPager" runat="server" Width="100%" PageSize="10"
                                ShowSelectColumn="False" DataGrid="g" AlternatingRowColor="#F8F8F8" GridColor="#E0E0E0"
                                HotColor="MistyRose" OnPageWillChange="gPager_PageWillChange" RowCursorStyle=""
                                AllowShorting="true" />
                            <table width="100%" border="0" cellspacing="1" cellpadding="0" bgcolor="#D8D8D8"
                                style="margin-top: 10px;">
                                <tr>
                                    <td width="368" bgcolor="#F8F8F8" class="black12" style="padding: 5px 10px 5px 10px;">
                                        本页冻结笔数： <span class="red12">
                                            <asp:Label ID="lblPageFreezeCount" runat="server" Text=""></asp:Label>
                                        </span>
                                    </td>
                                    <td width="407" bgcolor="#F8F8F8" class="black12" style="padding: 5px 10px 5px 10px;">
                                        总冻结笔数： <span class="red12">
                                            <asp:Label ID="lblTotalFreezeCount" runat="server" Text=""></asp:Label>
                                        </span>
                                    </td>
                                </tr>
                                <tr>
                                    <td bgcolor="#F8F8F8" class="black12" style="padding: 5px 10px 5px 10px;">
                                        本页冻结资金： <span class="red12">
                                            <asp:Label ID="lblPageFreezeSum" runat="server" Text=""></asp:Label>
                                        </span>
                                    </td>
                                    <td bgcolor="#F8F8F8" class="black12" style="padding: 5px 10px 5px 10px;">
                                        总冻结资金： <span class="red12">
                                            <asp:Label ID="lblTotalFreezeSum" runat="server" Text=""></asp:Label>
                                        </span>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" bgcolor="#FFFEDF" class="black12" style="padding: 5px 10px 5px 10px;">
                                        <span class="blue12">说明：</span><br />
                                        1、您可以查询您的帐户在一段时间内的所有交易流水。<br />
                                        2、如有其他问题，请联系网站客服：<%= _Site.ServiceTelephone %>。
                                    </td>
                                </tr>
                            </table>
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
