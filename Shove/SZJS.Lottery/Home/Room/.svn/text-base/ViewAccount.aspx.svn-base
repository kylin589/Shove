<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ViewAccount.aspx.cs" Inherits="Home_Room_ViewAccount" %>

<%@ Register Assembly="Shove.Web.UI.4 For.NET 3.5" Namespace="Shove.Web.UI" TagPrefix="ShoveWebUI" %>
<%@ Register Src="../../UserControls/Head.ascx" TagName="Head" TagPrefix="uc1" %>
<%@ Register Src="UserControls/UserMyIcaile.ascx" TagName="UserMyIcaile" TagPrefix="uc2" %>
<%@ Register Src="UserControls/WebFoot.ascx" TagName="WebFoot" TagPrefix="uc3" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>账户全览-我的账号-用户中心-<%=_Site.Name %>－买彩票，就上<%=_Site.Name %>
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
            <div class="jilua">
                <div id="con">
                    <ul id="tags">
                        <li class="selectTag"><a href="javascript:void(0)">账户全览</a></li>
                    </ul>
                    <div id="tagContent">
                        <div class="tagContent selectTag" id="tagContent0">
                            <table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#DDDDDD"
                                style="margin-top: 10px;">
                                <tr>
                                    <td width="17%" height="30" align="right" bgcolor="#F8F8F8">
                                        用户类型：<span class="red12"></span>
                                    </td>
                                    <td colspan="2" align="left" bgcolor="#FFFFFF" style="padding-left: 10px;">
                                        <asp:Label ID="labUserType" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td height="30" align="right" bgcolor="#F8F8F8">
                                        账户余额：
                                    </td>
                                    <td width="22%" align="left" bgcolor="#FFFFFF" style="padding-left: 10px;">
                                        <span class="red12">
                                            <asp:Label ID="labBalance" runat="server"></asp:Label></span> 元
                                    </td>
                                    <td width="61%" align="left" bgcolor="#FFFFFF" style="padding-left: 10px;">
                                        <a href="Distill.aspx" target="_self">【我要提款】</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td height="30" align="right" bgcolor="#F8F8F8">
                                        已冻结金额：
                                    </td>
                                    <td align="left" bgcolor="#FFFFFF" style="padding-left: 10px;">
                                        <span>
                                            <asp:Label ID="labFreeze" runat="server"></asp:Label></span> 元
                                    </td>
                                    <td align="left" bgcolor="#FFFFFF" style="padding-left: 10px;">
                                        <a href="AccountFreezeDetail.aspx" style="text-decoration: none" target="_self" runat="server"
                                            id="lbFreezDetail" visible="false">【冻结明细】</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td height="30" align="right" bgcolor="#F8F8F8">
                                        可投注金额：
                                    </td>
                                    <td align="left" bgcolor="#FFFFFF" style="padding-left: 10px;">
                                        <span>
                                            <asp:Label ID="labBalanceDo" runat="server"></asp:Label></span> 元
                                    </td>
                                    <td align="left" bgcolor="#FFFFFF" style="padding-left: 10px;">
                                        <a href="../../Index.aspx" target="_blank">【我要购彩】</a> <a href="../../JoinUs/JoinAllBuy.aspx" target="_blank">【我要合买】</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td height="30" align="right" bgcolor="#F8F8F8">
                                        我的积分：
                                    </td>
                                    <td align="left" bgcolor="#FFFFFF" style="padding-left: 10px;" colspan="2">
                                        <asp:Label ID="labScoring" runat="server"></asp:Label><span>&nbsp;分</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td height="30" align="right" bgcolor="#F8F8F8">
                                        &nbsp;
                                    </td>
                                    <td colspan="2" align="left" bgcolor="#FFFFFF" style="padding: 10px;">
                                        如果你已经充值，银行账户钱扣了，而您的账户还没有加上，请点击<span>在线客服</span> 告诉我们，我们将第一时间为您处理！<br />
                                        <table width="100%" border="0" cellspacing="1" cellpadding="0" bgcolor="#FFCD33"
                                            style="margin-top: 10px;">
                                            <tr>
                                                <td bgcolor="#F8F8F8" style="padding: 10px;">
                                                    资金冻结的原因：<span style="color: Red"><br />
                                                        1、方案发起人保底<br />
                                                        2、用户取款<br />
                                                        3、追号冻结<br />
                                                        4、自动跟单冻结 </span>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <uc3:WebFoot ID="WebFoot1" runat="server" />
    </form>
</body>
</html>
