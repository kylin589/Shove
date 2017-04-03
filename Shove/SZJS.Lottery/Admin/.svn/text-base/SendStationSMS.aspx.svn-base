<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SendStationSMS.aspx.cs" Inherits="Admin_SendStationSMS" %>

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
        <table cellspacing="1" cellpadding="0" width="100%" border="0" class="baseTab">
            <tr class="title">
                <td style="border-bottom: #990000 1px dashed" align="center" colspan="2">
                    <strong><font color="#996633">发送站内信</font></strong>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td class="td2" style="width: 67px" valign="top" height="25" align="right">
                    <font color="#999999">发送给：</font>
                </td>
                <td class="td2" height="25" align="left">
                    <font face="宋体">
                        <asp:TextBox ID="tbAim" runat="server" BorderWidth="1px" BorderColor="Silver" Width="560px"></asp:TextBox><br />
                        <font color="#999999">多个用户可以用,隔开。如：admin,louis,我爱500W。<font face="宋体">最多同时只能发送 10
                            个用户，超过的部分系统将不发送。</font></font></font>
                </td>
            </tr>
            <tr>
                <td colspan="2" height="10" align="left">
                </td>
            </tr>
            <tr>
                <td class="td2" style="width: 67px" valign="top" height="25">
                    <font face="宋体" color="#999999">发送内容：</font>
                </td>
                <td class="td2" height="25" align="left">
                    <font face="宋体">
                        <asp:TextBox ID="tbContent" runat="server" BorderWidth="1px" BorderColor="Silver"
                            Width="560px" MaxLength="50" Height="100px" TextMode="MultiLine"></asp:TextBox><br />
                        <font color="#999999">请不要发送黄色、反动、泄露国家机密、违反相关法律、进行人身攻击、广告等内容。长度不超过 50 个汉字。</font></font>
                </td>
            </tr>
            <tr>
                <td colspan="2" height="10" align="left">
                </td>
            </tr>
            <tr>
                <td class="td2" style="width: 67px" valign="top" height="25">
                    <font face="宋体" color="#999999">系统功能：</font>
                </td>
                <td class="td2" height="25" align="left">
                    <font face="宋体">
                        <asp:CheckBox ID="cbSystemMessage" runat="server" Text="系统消息"></asp:CheckBox>&nbsp;<font
                            color="#999999">(发送系统消息将忽略接收用户)</font></font>
                </td>
            </tr>
            <tr>
                <td align="center" colspan="2" height="40">
                    <ShoveWebUI:ShoveConfirmButton ID="btnSend" runat="server" Text="发送" AlertText="确定填写无误并发送短消息吗？"
                        OnClick="btnSend_Click" />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <font face="宋体">
                        <asp:Label ID="labSendResult" runat="server" ForeColor="Red"></asp:Label></font>
                </td>
            </tr>
        </table>
        <br />
    </div>
    </form>
</body>
</html>
