<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserMobile.aspx.cs" Inherits="UserMobile" %>

<%@ Register Assembly="Shove.Web.UI.4 For.NET 3.5" Namespace="Shove.Web.UI" TagPrefix="ShoveWebUI" %>
<%@ Register Src="~/UserControls/Head.ascx" TagName="RegTop" TagPrefix="TOP" %>
<%@ Register Src="~/Home/Room/UserControls/WebFoot.ascx" TagName="RegFoot" TagPrefix="Foot" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>找回密码 -
        <%=_Site.Name %>－双色球开奖/双色球走势图查询-买彩票，就上<%=_Site.Name %></title>
    <meta name="description" content="会员注册，<%=_Site.Name %>彩票网是一家服务于中国彩民的互联网彩票合买代购交易平台，涉及中国彩票彩种最全的网站，包含双色球、时时乐、时时彩、足彩等众多彩种的实时开奖信息、图表走势、分析预测等。" />
    <meta name="keywords" content="会员注册，双色球开奖，双色球走势图，3d走势图，福彩3d，时时彩" />
    <link href="Home/Room/Style/StyleSheet.css" rel="stylesheet" type="text/css" />
    <link href="Home/Room/Style/common.css" rel="stylesheet" type="text/css" />
    <link href="Home/Room/Style/index.css" rel="stylesheet" type="text/css" />

    <script src="JavaScript/jquery-1.4.js" type="text/javascript"></script>

</head>
<body>
    <form id="form1" runat="server">
    <TOP:RegTop runat="server" ID="RegTop" />
    <div >
        <div>
            <table width="100%" border="0" align="center" cellpadding="3" cellspacing="1">
                <tr style="background-color: White;">
                    <td valign="middle" style="width: 184px; text-align: right">
                        <asp:Label ID="Label2" runat="server">　用户名：</asp:Label>&nbsp;
                    </td>
                    <td style="text-align: left">
                        &nbsp;<asp:TextBox ID="tbUserName" runat="server" Width="150px" Enabled="False"></asp:TextBox>
                    </td>
                </tr>
                <tr style="background-color: White;">
                    <td style="width: 184px; text-align: right">
                        &nbsp;<asp:Label ID="Label10" runat="server">手机号码：</asp:Label>&nbsp;
                    </td>
                    <td style="text-align: left">
                        &nbsp;<asp:TextBox ID="tbUserMobile" runat="server" MaxLength="11" Width="150px"></asp:TextBox>
                        <ShoveWebUI:ShoveConfirmButton ID="btnMobileValid" runat="server" Text="立即验证" AlertText="确信要立即验证您的手机吗？"
                            OnClick="btnMobileValid_Click" />
                    </td>
                </tr>
                <asp:Panel ID="panelValid" runat="server" Visible="false">
                    <tr style="background-color: White;">
                        <td style="height: 25px; width: 184px; text-align: right">
                            <asp:Label ID="Label15" runat="server">验证密码：</asp:Label>&nbsp;
                        </td>
                        <td style="height: 25px">
                            &nbsp;<asp:TextBox ID="tbValidPassword" runat="server" Width="150px"></asp:TextBox>
                            <ShoveWebUI:ShoveConfirmButton ID="btnGO" runat="server" Text=" 确定 " OnClick="btnGO_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;
                        </td>
                        <td>
                            <asp:Label ID="Label3" Style="left: 322px; top: 203px;" runat="server" ForeColor="Red"></asp:Label>
                        </td>
                    </tr>
                </asp:Panel>
            </table>
        </div>
    </div>
    <Foot:RegFoot runat="server" ID="Foot" />
    </form>
</body>
</html>
