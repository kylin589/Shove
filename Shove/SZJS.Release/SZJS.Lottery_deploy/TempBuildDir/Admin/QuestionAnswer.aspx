<%@ page language="C#" autoeventwireup="true" inherits="Admin_QuestionAnswer, App_Web_mq7qcqnw" validaterequest="false" enableEventValidation="false" %>

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
        <div class="title" style="text-align: center">
            回复用户反馈问题
        </div>
        <table id="Table1" cellspacing="1" cellpadding="0" width="100%" class="baseTab" border="0">
            <tr>
                <td>
                    <font face="宋体"><strong>时间</strong>
                        <asp:TextBox ID="tbDateTime" runat="server" Width="200px"></asp:TextBox>
                        <asp:TextBox ID="tbID" runat="server" Visible="False"></asp:TextBox>
                        <asp:TextBox ID="tbUserID" runat="server" Visible="False"></asp:TextBox>&nbsp; <strong>
                            电话</strong>&nbsp;
                        <asp:TextBox ID="tbTelphone" runat="server" Width="200px" MaxLength="50"></asp:TextBox></font>
                </td>
            </tr>
            <tr>
                <td>
                    <font face="宋体"><strong>问题</strong></font>
                </td>
            </tr>
            <tr>
                <td>
                    <font face="宋体">
                        <asp:Label ID="labContent" runat="server"></asp:Label></font>
                </td>
            </tr>
            <tr>
                <td>
                    <font face="宋体"><strong>回答</strong></font>
                </td>
            </tr>
            <tr>
                <td align="center">
                    <fck:FCKeditor ID="tbAnswer" Height="350" Width="100%" runat="server" BasePath="~/fckeditor/">
                    </fck:FCKeditor>
                </td>
            </tr>
            <tr>
                <td style="height: 49px" align="center">
                    <ShoveWebUI:ShoveConfirmButton ID="btnAnswer" runat="server" Text="立即答复" AlertText="确信书写无误并立即答复吗？"
                        OnClick="btnAnswer_Click" />
                </td>
            </tr>
        </table>
        <br />
    </div>
    </form>
</body>
</html>
