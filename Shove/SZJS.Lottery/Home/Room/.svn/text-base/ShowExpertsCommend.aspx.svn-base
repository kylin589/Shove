<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ShowExpertsCommend.aspx.cs"
    Inherits="Home_Room_ShowExpertsCommend" %>

<%@ Register Assembly="Shove.Web.UI.4 For.NET 3.5" Namespace="Shove.Web.UI" TagPrefix="ShoveWebUI" %>
<%@ Register Src="../../UserControls/Head.ascx" TagName="Head" TagPrefix="uc1" %>
<%@ Register Src="UserControls/UserMyIcaile.ascx" TagName="UserMyIcaile" TagPrefix="uc2" %>
<%@ Register Src="UserControls/WebFoot.ascx" TagName="WebFoot" TagPrefix="uc3" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>
        <%= _Site.Name %></title>
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
        <asp:TextBox ID="tbExpertsCommendID" runat="server" Visible="false"></asp:TextBox>
        <table width="100%" border="0" cellpadding="0" cellspacing="0">
            <tr>
                <td valign="top" align="center">
                    <asp:Label ID="Label1" runat="server" Visible="false"></asp:Label>
                    <table id="table1" width="100%" height="171" border="0" align="center" cellpadding="0"
                        runat="server" cellspacing="0">
                        <tr>
                            <td valign="top">
                                <table width="642" border="0" align="center" cellpadding="0" cellspacing="0">
                                    <tr>
                                        <td height="34" align="center" style="font-size: 14px; font-weight: bold; color: #000000">
                                            <%=Title%>
                                        </td>
                                    </tr>
                                </table>
                                <table width="642" border="0" align="center" cellpadding="0" cellspacing="0">
                                    <tr>
                                        <td width="50%" height="34" align="center" class="ttib">
                                            人气：<%=ReadCount%>
                                        </td>
                                        <td width="50%" align="right">
                                            价格：<%=Price%>
                                        </td>
                                    </tr>
                                </table>
                                <table width="742" border="0" align="center" cellpadding="0" cellspacing="0">
                                    <tr>
                                        <td width="567" height="1" bgcolor="#FF5B19">
                                        </td>
                                    </tr>
                                </table>
                                <br />
                                <table width="645" border="0" align="center" cellpadding="0" cellspacing="0">
                                    <tr>
                                        <td width="645" valign="top" style="padding: 20px; line-height: 26px;" align="left">
                                            <%=Content1%>
                                            <br />
                                            <asp:Label ID="Number1" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </div>
    <uc3:WebFoot ID="WebFoot1" runat="server" />
    </form>
</body>
</html>
