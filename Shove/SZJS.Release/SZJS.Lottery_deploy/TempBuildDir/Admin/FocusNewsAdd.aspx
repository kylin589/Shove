<%@ page language="C#" autoeventwireup="true" inherits="Admin_FocusNewsAdd, App_Web_mq7qcqnw" validaterequest="false" enableEventValidation="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ Register Assembly="Shove.Web.UI.4 For.NET 3.5" Namespace="Shove.Web.UI" TagPrefix="ShoveWebUI" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
    <link href="style/style01.css" rel="stylesheet" type="text/css" />
</head>
<body class="center">
    <form id="form1" runat="server">
    <div>
        <table cellspacing="0" cellpadding="0" width="100%" border="0" class="baseTab">
            <tr>
                <td colspan="3" height="32" bgcolor="#B0D5EC">
                    <div class="title">
                        添加焦点新闻信息
                    </div>
                </td>
            </tr>
            <tr>
                <td style="width: 20%">
                    &nbsp;
                </td>
                <td align="left" style="width: 60%">
                    &nbsp;&nbsp;&nbsp;&nbsp;标&nbsp;&nbsp;&nbsp;题：
                    <asp:TextBox ID="tbTitle" runat="server" Width="520px" MaxLength="100"></asp:TextBox>
                </td>
                <td style="width: 20%">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;
                </td>
                <td align="left">
                    &nbsp;&nbsp;&nbsp;&nbsp;排&nbsp;&nbsp;&nbsp;序：
                    <asp:TextBox ID="tbOrder" runat="server" Width="51px" Text="1"></asp:TextBox>
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;
                </td>
                <td align="left">
                    <asp:CheckBox ID="cbIsMaster" runat="server" Checked="true" />是否主标题
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;
                </td>
                <td align="left">
                    链接地址：
                    <asp:TextBox ID="tbContent" runat="server" Width="520px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td colspan="3" style="height: 49px" align="center">
                    <ShoveWebUI:ShoveConfirmButton ID="btnAdd" runat="server" Text="增加" AlertText="确信输入无误，并立即增加此新闻吗？"
                        OnClick="btnAdd_Click" />
                </td>
            </tr>
        </table>
        <br />
    </div>
    <asp:HiddenField ID="hID" runat="server" />
    </form>
</body>
</html>
