<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserEmailBind.aspx.cs" Inherits="Home_Room_UserEmailBind" %>

<%@ Register Assembly="Shove.Web.UI.4 For.NET 3.5" Namespace="Shove.Web.UI" TagPrefix="ShoveWebUI" %>
<%@ Register Src="../../UserControls/Head.ascx" TagName="Head" TagPrefix="uc1" %>
<%@ Register Src="UserControls/UserMyIcaile.ascx" TagName="UserMyIcaile" TagPrefix="uc2" %>
<%@ Register Src="UserControls/WebFoot.ascx" TagName="WebFoot" TagPrefix="uc3" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>绑定Email-<%=_Site.Name %>-买彩票，就上<%=_Site.Name %>！</title>
    <meta name="description" content="<%=_Site.Name %>彩票网是一家服务于中国彩民的互联网彩票合买代购交易平台，涉及中国彩票彩种最全的网站，包含双色球、时时乐、时时彩、足彩等众多彩种的实时开奖信息、图表走势、分析预测等。" />
    <meta name="keywords" content="绑定Email" />
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
            <div class="myself">
                <div class="bangding">
                    <p>
                        尊敬的会员：<span class="red">
                            <%=_User.Name %></span>
                    </p>
                </div>
            </div>
            <div class="jilua">

                            <table width="100%">
                                <tr>
                                    <td height="30" colspan="2" align="left" bgcolor="#FFFFFF"  style="padding-left: 15px;">
                                        资料修改：您的用户名是：<span class="red"><asp:Label ID="labName" runat="server"></asp:Label></span>
                                        类型：<span class="red"><asp:Label ID="labUserType" runat="server"></asp:Label></span>
                                        等级：<asp:Label ID="labLevel" runat="server" ForeColor="Red"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="18%" height="30" align="right" bgcolor="f7f7f7">
                                        真实姓名：
                                    </td>
                                    <td align="left" bgcolor="#FFFFFF" style="padding-left: 15px;">
                                        <asp:Label ID="tbRealityName" runat="server" Text="Label"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="18%" height="30" align="right" bgcolor="f7f7f7">
                                        安全问题：
                                    </td>
                                    <td align="left" bgcolor="#FFFFFF" style="padding-left: 15px;">
                                        <asp:Label ID="lblQuestion" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="18%" height="30" align="right" bgcolor="f7f7f7">
                                        问题答案：
                                    </td>
                                    <td align="left" bgcolor="#FFFFFF"  style="padding-left: 15px;">
                                        <asp:TextBox runat="server" ID="tbAnswer" />
                                    </td>
                                </tr>
                                <tr>
                                    <td height="30" align="right" bgcolor="f7f7f7">
                                        Email：
                                    </td>
                                    <td align="left" bgcolor="#FFFFFF"  style="padding-left: 15px;">
                                        <label>
                                            <asp:TextBox ID="tbEmail" runat="server" />
                                            <span class="red">邮箱激活（密码找回、身份验证时需要）</span></label>
                                    </td>
                                </tr>
                                <tr>
                                    <td height="30" align="right" bgcolor="f7f7f7">
                                        状态：
                                    </td>
                                    <td align="left" bgcolor="#FFFFFF" class="black12" style="padding-left: 15px;">
                                        <asp:Label ID="labIsEmailVailded" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td height="30" align="right" bgcolor="f7f7f7">
                                        申请激活：
                                    </td>
                                    <td align="left" bgcolor="#FFFFFF" style="padding-left: 15px;">
                                        <asp:Button ID="btnBind" runat="server" Text="申请激活" OnClick="btnBind_Click" />
                                        &nbsp;<asp:Button ID="btnReBind" runat="server" Text="重新激活" OnClick="btnBind_Click" />
                                    </td>
                                </tr>
                                <tr style="background-color: White;">
                                    <td colspan="2">
                                        <asp:Label ID="Label1" runat="server" Style="color: Red;"></asp:Label>
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
