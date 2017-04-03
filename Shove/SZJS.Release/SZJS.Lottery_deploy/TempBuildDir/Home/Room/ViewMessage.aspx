<%@ page language="C#" autoeventwireup="true" inherits="Home_Room_ViewMessage, App_Web_y4qeesyo" enableEventValidation="false" %>

<%@ Register Assembly="Shove.Web.UI.4 For.NET 3.5" Namespace="Shove.Web.UI" TagPrefix="ShoveWebUI" %>
<%@ Register Src="../../UserControls/Head.ascx" TagName="Head" TagPrefix="uc1" %>
<%@ Register Src="UserControls/UserMyIcaile.ascx" TagName="UserMyIcaile" TagPrefix="uc2" %>
<%@ Register Src="UserControls/WebFoot.ascx" TagName="WebFoot" TagPrefix="uc3" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>查看我的站内信息-用户中心-<%=_Site.Name %>－买彩票，就上<%=_Site.Name %>
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
                            <img src="images/icon_6.gif" width="19" height="16" />
                        </td>
                        <td valign="middle" style="font-size: 16px; color: #cc0000; font-family: Tahoma;
                            line-height: 20px; font-weight: bold; padding-left: 10px;">
                            我的彩票记录
                        </td>
                    </tr>
                </table>
                <table width="100%" border="0" cellspacing="0" cellpadding="0" style="margin-top: 10px;">
                    <tr>
                        <td width="20" height="29">
                            &nbsp;
                        </td>
                        <td width="100" align="center" background="images/admin_qh_100_1.jpg" class="blue12">
                            <a href="ViewAccount.aspx"><strong>查看信息</strong></a>
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
                        <td height="2" colspan="11" bgcolor="#6699CC">
                        </td>
                    </tr>
                </table>
                <table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="#DDDDDD"
                    style="margin-top: 10px;">
                    <tr>
                        <td height="30" align="right" bgcolor="#F8F8F8" style="width: 20%">
                            发信人：<span class="red12"></span>
                        </td>
                        <td align="left" bgcolor="#FFFFFF" style="padding-left: 10px; width: 80%; text-align: left">
                            <asp:Label ID="lbAim" runat="server"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp; <a href="Message.aspx"
                                class="blue12">【返回】</a>
                        </td>
                    </tr>
                    <tr>
                        <td height="30" align="right" bgcolor="#F8F8F8">
                            内容：
                        </td>
                        <td width="22%" align="left" bgcolor="#FFFFFF" style="padding-left: 10px;">
                            <asp:Label ID="lbContent" runat="server"></asp:Label>
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
