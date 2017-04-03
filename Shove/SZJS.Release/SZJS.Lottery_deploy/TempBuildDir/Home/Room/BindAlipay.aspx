<%@ page language="C#" autoeventwireup="true" inherits="Home_Room_BindAlipay, App_Web_y4qeesyo" enableEventValidation="false" %>

<%@ Register Assembly="Shove.Web.UI.4 For.NET 3.5" Namespace="Shove.Web.UI" TagPrefix="ShoveWebUI" %>
<%@ Register Src="../../UserControls/Head.ascx" TagName="Head" TagPrefix="uc1" %>
<%@ Register Src="UserControls/UserMyIcaile.ascx" TagName="UserMyIcaile" TagPrefix="uc2" %>
<%@ Register Src="UserControls/WebFoot.ascx" TagName="WebFoot" TagPrefix="uc3" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>绑定支付宝-<%=_Site.Name %>-买彩票，就上<%=_Site.Name %></title>
    <meta name="keywords" content="绑定支付宝" />
    <meta name="description" content="<%=_Site.Name %>彩票网是一家服务于中国彩民的互联网彩票合买代购交易平台，涉及中国彩票彩种最全的网站，包含双色球、时时乐、时时彩、足彩等众多彩种的实时开奖信息、图表走势、分析预测等。" />
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
            <div class="jilu">
                <table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">
                    <tr bgcolor="#C0DBF9">
                        <td width="20%" height="30" align="right" bgcolor="#FFFFFF">
                            用户名：<span class="red12"></span>
                        </td>
                        <td width="80%" bgcolor="#FFFFFF" class="black12" style="padding-left: 10px; text-align:left">
                            <asp:Label ID="labName" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr bgcolor="#C0DBF9">
                        <td height="30" align="right" bgcolor="#FFFFFF">
                            已绑定支付宝账号：
                        </td>
                        <td  bgcolor="#FFFFFF" style="padding-left: 10px;text-align:left">
                            <asp:Label ID="labAlipayAccountOld" runat="server" Text=""></asp:Label>
                            <asp:Label ID="labBindState" runat="server" Text="" ForeColor="Red"></asp:Label>
                        </td>
                    </tr>
                    <tr bgcolor="#C0DBF9">
                        <td height="20" colspan="2" align="right" bgcolor="#FFFFFF">
                            <div id="hr">
                            </div>
                        </td>
                    </tr>
                    <tr bgcolor="#C0DBF9">
                        <td height="30" align="right" bgcolor="#FFFFFF" >
                            &nbsp;
                        </td>
                        <td bgcolor="#FFFFFF" class="red12" style="padding-left: 10px;text-align:left">
                            （为了您的账户安全，请您输入以下信息进行确认：）
                        </td>
                    </tr>
                    <tr bgcolor="#C0DBF9">
                        <td height="30" align="right" bgcolor="#FFFFFF" >
                            核对真实姓名：
                        </td>
                        <td  bgcolor="#FFFFFF" style="padding-left: 10px;text-align:left">
                            <asp:TextBox ID="tbRealityName" runat="server" Text=""></asp:TextBox>
                        </td>
                    </tr>
                    <tr bgcolor="#C0DBF9">
                        <td height="30" align="right" bgcolor="#FFFFFF">
                            安全保护问题：
                        </td>
                        <td bgcolor="#FFFFFF" class="black12" style="padding-left: 10px;text-align:left">
                            <asp:Label ID="lbQuestion" runat="server"></asp:Label>
                            &nbsp;&nbsp;<span style="color: Red"><a href="SafeSet.aspx?FromUrl='BindAlipay.aspx'">
                                <asp:Label ID="lbQuestionInfo" runat="server"></asp:Label>
                            </a><span class="blue12">
                        </td>
                    </tr>
                    <tr bgcolor="#C0DBF9">
                        <td height="30" align="right" bgcolor="#FFFFFF">
                            答案：
                        </td>
                        <td  bgcolor="#FFFFFF" style="padding-left: 10px;text-align:left">
                            <asp:TextBox ID="tbMyA" runat="server"></asp:TextBox>
                            <span class="red12">*</span>
                        </td>
                    </tr>
                    <tr bgcolor="#C0DBF9">
                        <td height="20" colspan="2" align="right" bgcolor="#FFFFFF">
                            <div id="hr">
                            </div>
                        </td>
                    </tr>
                    <tr bgcolor="#C0DBF9">
                        <td height="30" align="right" bgcolor="#FFFFFF">
                            &nbsp;
                        </td>
                        <td  bgcolor="#FFFFFF" style="padding: 10px;text-align:left">
                            <label>
                                <ShoveWebUI:ShoveConfirmButton ID="ShoveConfirmButton1" runat="server" Text="确定绑定"
                                    OnClick="btnOK_Click" Style="cursor: pointer;" /><span style="color: Red">（点击之后，将进行用户安全验证。）</span>
                            </label>
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
