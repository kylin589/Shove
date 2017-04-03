<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Fail.aspx.cs" Inherits="Home_Room_OnlinePay_Fail" %>

<%@ Register Assembly="Shove.Web.UI.4 For.NET 3.5" Namespace="Shove.Web.UI" TagPrefix="ShoveWebUI" %>
<%@ Register Src="../../../UserControls/Head.ascx" TagName="Head" TagPrefix="uc1" %>
<%@ Register Src="../UserControls/UserMyIcaile.ascx" TagName="UserMyIcaile" TagPrefix="uc2" %>
<%@ Register Src="../UserControls/WebFoot.ascx" TagName="WebFoot" TagPrefix="uc3" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>网上充值-<%=_Site.Name %>-买彩票，就上<%=_Site.Name %>！</title>
    <meta name="description" content="<%=_Site.Name %>彩票网是一家服务于中国彩民的互联网彩票合买代购交易平台，涉及中国彩票彩种最全的网站，包含双色球、时时乐、时时彩、足彩等众多彩种的实时开奖信息、图表走势、分析预测等。" />
    <meta name="keywords" content="<%=_Site.Name %>提供网银充值，支付宝支付，财付通支付" />
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
    <link href="../Style/common.css" rel="stylesheet" type="text/css" />
    <link href="../Style/StyleSheet.css" rel="stylesheet" type="text/css" />
    <link href="../Style/home.css" rel="stylesheet" type="text/css" />
    <link rel="shortcut icon" href="../../../favicon.ico" />

    <script src="../../../JavaScript/jquery-1.4.js" type="text/javascript"></script>

</head>
<body>
    <form id="form1" runat="server">
    <asp:HiddenField ID="hdBankCode" runat="server" />
    <uc1:Head ID="Head2" runat="server" />
    <div class="wrap">
        <uc2:UserMyIcaile ID="UserMyIcaile1" runat="server" />
        <div class="rights">
            <div class="jilu">
                <table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#9FC8EA">
                    <tr>
                        <td valign="top" bgcolor="#FFFFFF">
                            <table id="myIcaileTab" runat="server" width="100%" border="0" cellpadding="0" cellspacing="0"
                                style="margin-top: 10px;">
                                <tr>
                                    <td>
                                        <table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="#cccccc">
                                            <tr>
                                                <td height="30" colspan="2" align="center" bgcolor="#F8F8F8" class="black12" style="padding: 5px 10px 5px 10px;">
                                                    <strong style="font-size: 16px; color: #cc0000; font-family: Tahoma; font-weight: bold;">
                                                        支付失败！</strong>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="30" colspan="2" align="center" bgcolor="#FFFFFF" class="black12">
                                                    <table cellspacing="0" cellpadding="0" width="100%" border="0">
                                                        <tr>
                                                            <td colspan="2" align="left" style="padding: 15px  25px  15px  25px;">
                                                                <br />
                                                                &nbsp;&nbsp;&nbsp;
                                                                <asp:Label ID="lab1" runat="server"></asp:Label><br />
                                                                <br />
                                                                &nbsp;&nbsp;&nbsp; <font color="red">温馨提示：账户充值失败！如果有问题，请记录下您的支付银行、支付金额等信息后，并与我们联系，我们将在第一时间进行处理，<br />
                                                                    保证您的资金安全。
                                                                    <br />
                                                                    <br />
                                                                    &nbsp;&nbsp;&nbsp; <b>如果是支付宝支付，数据正在处理中，请稍候再查询你的账户明细，谢谢。</b>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td colspan="2" height="20">
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td colspan="2" align="left" style="padding-left: 25px; padding-top: 15px; border-top: 1px solid #cccccc;">
                                                                <a class="li3" href="../AccountDetail.aspx">【查看我的账户】</a> <a class="li3" href="../Invest.aspx">
                                                                    【查看我的投注记录】</a> <a class="li3" href="../Service.aspx" target="_blank">【我要反映问题】</a>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td colspan="2" height="50">
                                                            </td>
                                                        </tr>
                                                    </table>
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
        </div>
    </div>
    <uc3:WebFoot ID="WebFoot1" runat="server" />
    <asp:HiddenField ID="HidScript" runat="server" />
    </form>
</body>
</html>
