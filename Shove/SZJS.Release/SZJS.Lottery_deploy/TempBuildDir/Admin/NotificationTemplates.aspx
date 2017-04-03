<%@ page language="C#" autoeventwireup="true" inherits="Admin_NotificationTemplates, App_Web_mq7qcqnw" validaterequest="false" enableEventValidation="false" %>

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
        <div class="title">
            短信、邮件、站内信息模板设置
        </div>
        <table id="Table1" style="width: 100%; height: 400px" cellspacing="1" cellpadding="0"
            class="baseTab" border="0">
            <tr>
                <td style="width: 160px; height: 28px">
                    <asp:DropDownList ID="ddlTemplateType" runat="server" Width="160px" AutoPostBack="True"
                        OnSelectedIndexChanged="ddlTemplateType_SelectedIndexChanged">
                        <asp:ListItem Value="1" Selected="True">手机短信</asp:ListItem>
                        <asp:ListItem Value="2">电子邮件</asp:ListItem>
                        <asp:ListItem Value="3">站内信</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td style="height: 400px" valign="top" rowspan="2">
                    <asp:TextBox ID="tbContent" runat="server" Width="100%" Height="400px" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="height: 370px" valign="top">
                    <asp:ListBox ID="listTemplateFile" runat="server" Width="100%" Height="370px" AutoPostBack="True"
                        OnSelectedIndexChanged="listTemplateFile_SelectedIndexChanged"></asp:ListBox>
                </td>
            </tr>
            <tr>
                <td style="height:38px" align="center" colspan="2">
                    <ShoveWebUI:ShoveConfirmButton ID="btnOK" runat="server" Text="保存" AlertText="确认书写无误吗？"
                        OnClick="btnOK_Click" />
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
