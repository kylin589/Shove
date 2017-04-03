<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SafeSet.aspx.cs" Inherits="Home_Room_SafeSet" %>

<%@ Register Assembly="Shove.Web.UI.4 For.NET 3.5" Namespace="Shove.Web.UI" TagPrefix="ShoveWebUI" %>
<%@ Register Src="../../UserControls/Head.ascx" TagName="Head" TagPrefix="uc1" %>
<%@ Register Src="UserControls/UserMyIcaile.ascx" TagName="UserMyIcaile" TagPrefix="uc2" %>
<%@ Register Src="UserControls/WebFoot.ascx" TagName="WebFoot" TagPrefix="uc3" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>用户安全问题设置-我的资料-用户中心-<%=_Site.Name %>－买彩票，就上<%=_Site.Name %>
        ！</title>
    <meta name="description" content="<%=_Site.Name %>彩票网<%=_Site.Url %>是一家服务于中国彩民的互联网彩票合买代购交易平台，涉及中国彩票彩种最全的网站，包含双色球,大乐透,七星彩,3d,足彩等众多彩种的实时开奖信息,图表走势、分析预测以及开奖信息等!" />
    <meta name="keywords" content="双色球合买,体育彩票,福利彩票,双色球开奖信息." />
    <link href="Style/common.css" rel="stylesheet" type="text/css" />
    <link href="Style/home.css" rel="stylesheet" type="text/css" />
    <link href="Style/StyleSheet.css" rel="stylesheet" type="text/css" />
    <link rel="shortcut icon" href="../../favicon.ico" />

    <script src="../../JavaScript/jquery-1.4.js" type="text/javascript"></script>

</head>
<body>
    <form id="form1" runat="server">
    <input type="hidden" id="hdFromUrl" runat="server" />
    <uc1:Head ID="Head1" runat="server" />
    <div class="wrap">
        <uc2:UserMyIcaile ID="UserMyIcaile1" runat="server" />
        <div class="rights">
            <div class="myself">
                <div class="bangding">
                    <p>
                        尊敬的会员：<span class="red">
                            <%=_User.Name %></span>
                    </p>
                </div>
            </div>
            <div class="jilu">
                <table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="#DDDDDD"
                    style="margin-top: 10px;">
                    <tr bgcolor="#C0DBF9">
                        <td width="17%" height="30" align="right" bgcolor="#F8F8F8">
                            用户名：<span class="red12"></span>
                        </td>
                        <td width="80%" align="left" bgcolor="#FFFFFF" style="padding-left: 10px;">
                            <asp:Label ID="tbName" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tbody id="tbUserRName" runat="server">
                        <tr bgcolor="#C0DBF9">
                            <td width="17%" height="30" align="right" bgcolor="#F8F8F8">
                                真实姓名：<span></span>
                            </td>
                            <td width="80%" align="left" bgcolor="#FFFFFF" style="padding-left: 10px;">
                                <asp:TextBox ID="tbRealityName" runat="server" />
                            </td>
                        </tr>
                        <tr bgcolor="#C0DBF9">
                            <td width="17%" height="30" align="right" bgcolor="#F8F8F8">
                                密 码：<span class="red12"></span>
                            </td>
                            <td width="80%" align="left" bgcolor="#FFFFFF" style="padding-left: 10px;">
                                <asp:TextBox ID="tbPassWord" runat="server" TextMode="Password" />
                            </td>
                        </tr>
                    </tbody>
                    <tbody id="tbOldQF" runat="server">
                        <tr id="trOldQue" runat="server" visible="false">
                            <td height="30" align="right" bgcolor="#F8F8F8">
                                原安全保护问题：
                            </td>
                            <td align="left" bgcolor="#FFFFFF" style="padding-left: 10px;">
                                <asp:Label ID="lbOQuestion" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                        <tr id="trOldAns" runat="server" visible="false">
                            <td height="30" align="right" bgcolor="#F8F8F8">
                                原答案：
                            </td>
                            <td align="left" bgcolor="#FFFFFF" style="padding-left: 10px;">
                                <asp:TextBox ID="tbOAnswer" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                    </tbody>
                    <tbody id="tbNewQF" runat="server">
                        <tr width="17%" height="30" align="right" bgcolor="#F8F8F8">
                            <td width="17%" height="30" align="right" bgcolor="#F8F8F8">
                                安全保护问题
                            </td>
                            <td align="left" bgcolor="#FFFFFF" style="padding-left: 10px;">
                                <asp:DropDownList ID="ddlQuestion" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlQuestion_SelectedIndexChanged">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr bgcolor="#C0DBF9" id="trMQ" runat="server" visible="false">
                            <td width="17%" height="30" align="right" bgcolor="#F8F8F8">
                                自定义问题：
                            </td>
                            <td align="left" bgcolor="#FFFFFF" style="padding-left: 10px;">
                                <asp:TextBox ID="tbMyQuestion" runat="server" MaxLength="90" Width="550"></asp:TextBox>
                            </td>
                        </tr>
                        <tr bgcolor="#C0DBF9">
                            <td width="17%" height="30" align="right" bgcolor="#F8F8F8">
                                答案：
                            </td>
                            <td align="left" bgcolor="#FFFFFF" style="padding-left: 10px;">
                                <asp:TextBox ID="tbAnswer" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                    </tbody>
                    <tr>
                        <td bgcolor="#F8F8F8">
                        </td>
                        <td align="left" bgcolor="#FFFFE1" class="red12" style="padding: 10px;">
                            友情提示：<br />
                            1、安全保护问题是最重要的安全凭证，为了您的安全，请牢牢记住您的安全保护问题。<br />
                            2、不要向他人泄露您的安全保护问题。<br />
                        </td>
                    </tr>
                    <tr bgcolor="#C0DBF9">
                        <td align="right" bgcolor="#FFFFFF">
                            &nbsp;
                        </td>
                        <td align="left" bgcolor="#FFFFFF" style="padding: 10px;">
                            <asp:Panel ID="Panel1" runat="server">
                                <ShoveWebUI:ShoveConfirmButton ID="btnOK" runat="server" Text="确定修改" AlertText="确信输入的资料无误，并立即保存资料吗？"
                                    OnClick="btnOK_Click" Style="cursor: pointer;" />
                                <asp:Button ID="btnGoReset" runat="server" Text=" 重　置 " OnClick="btnGoReset_Click" />
                            </asp:Panel>
                            <asp:Panel ID="Panel2" runat="server">
                                <ShoveWebUI:ShoveConfirmButton ID="btnGoEmail" runat="server" Text="确认重置" AlertText="点击确认后，系统将发送信息至您的绑定邮箱，是否继续？"
                                    Style="cursor: pointer;" OnClick="btnGoEmail_Click" />
                                <asp:Button ID="btnReturn" runat="server" Text=" 返　回 " OnClick="btnReturn_Click" />
                                <asp:Label ID="lblTips" runat="server" ForeColor="Red"></asp:Label>
                            </asp:Panel>
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
