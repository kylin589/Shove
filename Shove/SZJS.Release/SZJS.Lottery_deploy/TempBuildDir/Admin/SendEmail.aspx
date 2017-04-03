<%@ page language="C#" autoeventwireup="true" inherits="Admin_SendEmail, App_Web_mq7qcqnw" validaterequest="false" enableEventValidation="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ Register Assembly="Shove.Web.UI.4 For.NET 3.5" Namespace="Shove.Web.UI" TagPrefix="ShoveWebUI" %>
<%@ Register Assembly="FreeTextBox" Namespace="FreeTextBoxControls" TagPrefix="FTB" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
    <link href="style/style01.css" rel="stylesheet" type="text/css" />
</head>
<body class="center">
    <form id="form1" runat="server">
    <div>
        <table id="Table1" cellspacing="1" cellpadding="0" width="100%" class="baseTab" border="0">
            <tr class="title">
                <td style="border-bottom: #990000 1px dashed" align="center">
                    <strong><font color="#996633">发送邮件</font></strong>
                </td>
            </tr>
            <tr>
                <td align="center">
                    <br />
                    <table id="Table4" cellspacing="0" cellpadding="0" width="100%" border="0">
                        <tr>
                            <td class="td3" align="left">
                                <strong>发送给：</strong>
                            </td>
                        </tr>
                        <tr>
                            <td align="left">
                                <asp:TextBox ID="tbAim" runat="server" Width="99%"></asp:TextBox>
                              <font color="#999999">  多个用户可以用,隔开。如：admin,louis,我爱500W。最多同时只能发送 10 个用户，超过的部分系统将不发送。</font>
                            </td>
                        </tr>
                        <tr>
                            <td class="td3" align="left">
                                <strong>邮件标题：</strong>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" style="height: 20px">
                                <asp:TextBox ID="tbSubject" runat="server" Width="99%" MaxLength="100"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="td3" align="left">
                                <strong>邮件内容：</strong>
                            </td>
                        </tr>
                        <tr>
                            <td align="left">
                                <fck:FCKeditor ID="tbContent" Height="400" Width="100%" runat="server" BasePath="~/fckeditor/">
                                </fck:FCKeditor>
                            </td>
                        </tr>
                        <tr>
                            <td class="td3" align="left">
                                <strong>系统功能：</strong>
                            </td>
                        </tr>
                        <tr>
                            <td align="left">
                                <asp:CheckBox ID="cbSystemMessage" runat="server" Text="系统邮件"></asp:CheckBox>&nbsp;
                                <font color="#999999">(发送系统邮件将发送给全部用户,上面输入的用户不起作用)</font>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" height="40">
                                <ShoveWebUI:ShoveConfirmButton ID="btnSend" Text="发送" runat="server" AlertText="确定填写无误并发送邮件吗？"
                                    OnClick="btnSend_Click" />
                            </td>
                        </tr>
                        <tr>
                            <td align="left">
                                <font face="宋体">
                                    <asp:Label ID="labSendResult" runat="server" ForeColor="Red"></asp:Label>
                                </font>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
