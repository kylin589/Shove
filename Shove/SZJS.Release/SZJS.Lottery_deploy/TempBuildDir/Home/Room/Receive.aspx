﻿<%@ page language="C#" autoeventwireup="true" inherits="Home_Room_Receive, App_Web_y4qeesyo" enableEventValidation="false" %>

<%@ Register Assembly="Shove.Web.UI.4 For.NET 3.5" Namespace="Shove.Web.UI" TagPrefix="ShoveWebUI" %>
<%@ Register Src="../../UserControls/Head.ascx" TagName="Head" TagPrefix="uc1" %>
<%@ Register Src="UserControls/WebFoot.ascx" TagName="WebFoot" TagPrefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>我的购彩账户交易明细-<%=_Site.Name %>－买彩票，就上<%=_Site.Name %></title>
    <meta name="description" content="<%=_Site.Name %>，买彩票，就上<%=_Site.Name %>。" />
    <meta name="keywords" content="<%=_Site.Name %>，双色球合买，超级大乐透合买，3D，排列3，双色球走势图。" />
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
    <link href="Style/common.css" rel="stylesheet" type="text/css" />
    <link href="Style/StyleSheet.css" rel="stylesheet" type="text/css" />
    <link href="Style/home.css" rel="stylesheet" type="text/css" />
    <link rel="shortcut icon" href="../../favicon.ico" />

    <script src="../../JavaScript/jquery-1.4.js" type="text/javascript"></script>

</head>
<body style="text-align: center">
    <form id="form1" runat="server">
    <uc1:Head ID="Head2" runat="server" />
    <div style="padding: 10px; border: #ccc 1px solid; font-size: 12px; width: 986px"
        id="box1">
        <table id="tableRegister" runat="server" border="0" cellpadding="0" cellspacing="0"
            align="center" style="padding-top: 12px;">
            <tr>
                <td height="60px" align="center" colspan="3">
                    尊敬的支付宝会员<asp:Label ID="labAccount" runat="server" Text=""></asp:Label>，<%=_Site.Name %>欢迎您！请完善您在本站的用户资料：
                </td>
            </tr>
            <tr>
                <td align="right">
                    本站用户名：
                </td>
                <td height="23" style="padding-left: 12" align="left">
                    <asp:TextBox ID="tbName" runat="server" MaxLength="16" CssClass="in_p2"></asp:TextBox>
                </td>
                <td align="left">
                    <font color="#cc0000" face="宋体"><span class="zw5">&nbsp;*</span></font>
                    <input id="btnCheckUserName" type="button" value="检查用户名是否可用" onclick="btn_CheckUserName(tbName.value);" />
                    <span id="spCheckResult"></span>
                </td>
            </tr>
            <tr>
                <td align="right">
                    本站登录密码：
                </td>
                <td height="23" style="padding-left: 12" align="left">
                    <asp:TextBox ID="tbPassword" runat="server" MaxLength="16" TextMode="Password" CssClass="in_p2"></asp:TextBox>
                </td>
                <td align="left">
                    <font color="#cc0000" face="宋体"><span class="zw5">&nbsp;*</span></font> <span style="color: red;">
                        密码长度 6 位 - 16 位</span>
                </td>
            </tr>
            <tr>
                <td align="right">
                    再次输入密码：
                </td>
                <td height="23" style="padding-left: 12" align="left">
                    <asp:TextBox ID="tbPassword2" runat="server" MaxLength="16" TextMode="Password" CssClass="in_p2"></asp:TextBox>
                </td>
                <td align="left">
                    <font color="#cc0000" face="宋体"><span class="zw5">&nbsp;* </span></font><span style="color: red;">
                        请重新输入本站登陆密码</span>
                </td>
            </tr>
            <tr>
                <td colspan="3" valign="middle" align="center" height="30px" style="padding-bottom: 5px">
                    <ShoveWebUI:ShoveConfirmButton ID="btnOK" runat="server" Style="cursor: hand" Text=" 确定 "
                        AlertText="确信输入无误并立即保存吗？" OnClick="btnOK_Click" />
                    <asp:TextBox ID="tbAlipayID" runat="server" Visible="false"></asp:TextBox>
                </td>
            </tr>
        </table>
        <table id="tableSelect" runat="server" visible="false" border="0" cellpadding="0"
            cellspacing="0" class="hei" style="padding-top: 12px">
            <tr>
                <td height="60px" align="center" colspan="2">
                    尊敬的支付宝会员<asp:Label ID="labAccount2" runat="server" Text=""></asp:Label>，<%=_Site.Name %>欢迎您！请从多个绑定用户中选择一个用户登录：
                </td>
            </tr>
            <tr>
                <td align="right">
                    选择用户名：
                </td>
                <td height="23" style="padding-left: 12px" align="left">
                    <asp:DropDownList ID="ddlName" runat="server" Width="150px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td style="padding-bottom: 5px; text-align: left; padding-left: 10px;">
                    <ShoveWebUI:ShoveConfirmButton ID="btnSelect" runat="server" Style="cursor: hand"
                        Text="登陆" OnClick="btnSelect_Click" />
                </td>
            </tr>
            <tr>
                <td align="left" colspan="2" style="height: 80px;">
                    <span>&nbsp;&nbsp;&nbsp;&nbsp;您用多个本站会员同时绑定了一个相同的支付宝账号。本系统将在 1 周后不支持这种多会员对同一支付宝账号的绑定，请您在这段时间内将您所属的所有的会员绑定上不同的支付宝账号。谢谢支持。对您造成的不便，请谅解。谢谢！</span><br />
                    <br />
                    <span>&nbsp;&nbsp;&nbsp; 否则系统升级后，您的多个会员账号，仅有最近一次注册的账号能够在支付宝官网上直接登陆。</span>
                </td>
            </tr>
        </table>
    </div>

    <script src="JavaScript/Public.js" type="text/javascript"></script>

    <script type="text/javascript" language="javascript">
        function btn_CheckUserName(userName)
        {
             var result = Home_Room_Receive.CheckUserName(userName).value;
             
             if(Number(result)==-1)
             {
                spCheckResult.innerHTML = "<font color='red'>用户名不能为空</font>";
                return;
             }
             if(Number(result)==-2)
             {
                spCheckResult.innerHTML = "<font color='red'>用户名 " + userName + " 已被占用，请重新输入一个</font>";
                return;
             }
             if(Number(result)==-3)
             {
                spCheckResult.innerHTML = "<font color='red'>用户名长度在 5-16 个英文字符或数字、中文 3-8 之间。</font>";
                return;
             }
             if(Number(result)>=0)
             {
                spCheckResult.innerHTML = "<font color='green'>用户名 " + userName + " 可以使用</font>";
                return;
             }
         }
        <%=Script %>
    </script>

    <uc2:WebFoot ID="WebFoot1" runat="server" />
    </form>
</body>
</html>
