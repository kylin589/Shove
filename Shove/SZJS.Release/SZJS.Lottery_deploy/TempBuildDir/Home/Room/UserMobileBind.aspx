<%@ page language="C#" autoeventwireup="true" inherits="Home_Room_UserMobileBind, App_Web_y4qeesyo" enableEventValidation="false" %>

<%@ Register Assembly="Shove.Web.UI.4 For.NET 3.5" Namespace="Shove.Web.UI" TagPrefix="ShoveWebUI" %>
<%@ Register Src="UserControls/WebFoot.ascx" TagName="WebFoot" TagPrefix="uc1" %>
<%@ Register Src="../../UserControls/Head.ascx" TagName="Head" TagPrefix="uc2" %>
<%@ Register Src="UserControls/UserMyIcaile.ascx" TagName="UserMyIcaile" TagPrefix="uc3" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>手机绑定-<%=_Site.Name %>-买彩票，就上<%=_Site.Name %>！</title>
    <meta name="description" content="<%=_Site.Name %>彩票网是一家服务于中国彩民的互联网彩票合买代购交易平台，涉及中国彩票彩种最全的网站，包含双色球、时时乐、时时彩、足彩等众多彩种的实时开奖信息、图表走势、分析预测等。" />
    <meta name="keywords" content="手机绑定" />
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
    <link href="Style/common.css" rel="stylesheet" type="text/css" />
    <link href="Style/StyleSheet.css" rel="stylesheet" type="text/css" />
    <link href="Style/home.css" rel="stylesheet" type="text/css" />
    <link rel="shortcut icon" href="../../favicon.ico" />

    <script src="../../JavaScript/jquery-1.4.js" type="text/javascript"></script>

</head>
<body>
    <form id="form1" runat="server">
    <input type="hidden" runat="server" id="hdIDCardNumber" />
    <uc2:Head ID="Head1" runat="server" />
    <div class="wrap">
        <uc3:UserMyIcaile ID="UserMyIcaile1" runat="server" />
        <div class="rights">
            <div class="myself">
                <div class="bangding">
                    <p>
                        尊敬的会员：<span class="red">
                            <%=_User.Name %></span></p>
                </div>
            </div>
            <div class="jilua">
                <table width="100%">
                    <tr>
                        <td height="30" colspan="2" bgcolor="#FFFFFF" style="padding-left: 15px; text-align:left">
                            资料修改：您的用户名是：<span class="red12"><asp:Label ID="labName" runat="server"></asp:Label></span>
                            类型：<span class="red12"><asp:Label ID="labUserType" runat="server"></asp:Label></span>
                            等级：<asp:Label ID="labLevel" runat="server" ForeColor="Red"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td width="18%" height="30" align="right" bgcolor="f7f7f7">
                            真实姓名：
                        </td>
                        <td bgcolor="#FFFFFF" style="padding-left: 15px; text-align:left">
                            <asp:Label ID="tbRealityName" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td height="30" align="right" bgcolor="f7f7f7">
                            手机号码：
                        </td>
                        <td bgcolor="#FFFFFF" style="padding-left: 15px;text-align:left">
                            <asp:Label ID="tbMobile" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td height="30" align="right" bgcolor="f7f7f7">
                            状态：
                        </td>
                        <td bgcolor="#FFFFFF" style="padding-left: 15px;text-align:left">
                            <asp:Label ID="labIsMobileVailded" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td height="30" align="right" bgcolor="f7f7f7" class="black12">
                            申请绑定：
                        </td>
                        <td  bgcolor="#FFFFFF" style="padding-left: 15px;text-align:left">
                            <asp:Button ID="btnBind" runat="server" Text="申请绑定" OnClick="btnBind_Click" />
                            &nbsp;<asp:Button ID="btnReBind" runat="server" Text="重新绑定" OnClick="btnBind_Click" />
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
    <uc1:WebFoot ID="WebFoot1" runat="server" />
    </form>
</body>
</html>
