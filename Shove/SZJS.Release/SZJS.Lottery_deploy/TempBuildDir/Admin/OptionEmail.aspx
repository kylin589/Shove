﻿<%@ page language="C#" autoeventwireup="true" inherits="Admin_OptionEmail, App_Web_mq7qcqnw" enableEventValidation="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ Register Assembly="Shove.Web.UI.4 For.NET 3.5" Namespace="Shove.Web.UI" TagPrefix="ShoveWebUI" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
    <link href="style/style01.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table id="Table1" width="100%" border="0" cellspacing="1" cellpadding="0" class="baseTab">
            <tr class="title">
                <td>
                    <asp:TextBox ID="tb1" Style="z-index: 114; left: 136px; position: absolute; top: 72px"
                        runat="server" Width="328px"></asp:TextBox>
                    <asp:TextBox ID="tb2" Style="z-index: 100; left: 136px; position: absolute; top: 104px"
                        runat="server" Width="328px"></asp:TextBox>
                    <asp:TextBox ID="tb3" Style="z-index: 101; left: 136px; position: absolute; top: 136px"
                        runat="server" Width="328px"></asp:TextBox>
                    <asp:TextBox ID="tb4" Style="z-index: 102; left: 136px; position: absolute; top: 168px"
                        runat="server" Width="328px" TextMode="Password"></asp:TextBox>
                    <asp:Label ID="Label1" Style="z-index: 106; left: 32px; position: absolute; top: 14px"
                        runat="server" ForeColor="#C00000" Font-Bold="True">邮件服务器设置（发送邮件的电子邮箱资料）</asp:Label>
                    <asp:Label ID="Label2" Style="z-index: 107; left: 61px; position: absolute; top: 72px"
                        runat="server">邮箱地址</asp:Label>
                    <asp:Label ID="Label3" Style="z-index: 108; left: 61px; position: absolute; top: 104px"
                        runat="server">邮箱服务器</asp:Label>
                    <asp:Label ID="Label4" Style="z-index: 109; left: 61px; position: absolute; top: 136px"
                        runat="server">用户名</asp:Label>
                    <asp:Label ID="Label5" Style="z-index: 110; left: 61px; position: absolute; top: 168px"
                        runat="server">用户密码</asp:Label>
                    <ShoveWebUI:ShoveConfirmButton ID="btnOK" Style="z-index: 112; left: 324px; position: absolute;
                        top: 203px" runat="server" Text="保存" AlertText="确认书写无误吗？" OnClick="btnOK_Click" />
                </td>
                <tr>
        </table>
    </div>
    </form>
</body>
</html>
