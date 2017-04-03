<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CpsTryHandle.aspx.cs" Inherits="CPS_Administrator_CpsTryHandle" %>

<%@ Register Assembly="Shove.Web.UI.4 For.NET 3.5" Namespace="Shove.Web.UI" TagPrefix="ShoveWebUI" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
    <link href="style/style01.css" rel="stylesheet" type="text/css" />
</head>
<body class="center">
    <form id="form1" runat="server">
    <div>
        <div class="title">
            处理代理商申请
        </div>
        <table cellspacing="0" cellpadding="0" width="100%" border="0" align="center" class="baseTab">
            <tr>
                <td colspan="2">
                    <asp:TextBox ID="tbID" runat="server" Visible="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 40%; text-align: right">
                    申请人：
                </td>
                <td style="width: 60%; text-align: left">
                    <asp:TextBox ID="tbName" Enabled="false" runat="server" MaxLength="25" Width="300px"
                        ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 40%; text-align: right">
                    网站名称：
                </td>
                <td style="width: 60%; text-align: left">
                    <asp:TextBox ID="tbUrlName" runat="server" MaxLength="5" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 40%; text-align: right">
                    网址：
                </td>
                <td style="width: 60%; text-align: left">
                    <asp:TextBox ID="tbUrl" runat="server" MaxLength="5" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 40%; text-align: right">
                    联系人：
                </td>
                <td style="width: 60%; text-align: left">
                    <asp:TextBox ID="tbContactPerson" runat="server" MaxLength="25" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 40%; text-align: right">
                    电话：
                </td>
                <td style="width: 60%; text-align: left">
                    <asp:TextBox ID="tbTelephone" runat="server" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 40%; text-align: right">
                    手机：
                </td>
                <td style="width: 60%; text-align: left">
                    <asp:TextBox ID="tbMobile" runat="server" MaxLength="25" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 40%; text-align: right">
                    电子邮件：
                </td>
                <td style="width: 60%; text-align: left">
                    <asp:TextBox ID="tbEmail" runat="server" MaxLength="25" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 40%; text-align: right">
                    QQ号码：
                </td>
                <td style="width: 60%; text-align: left">
                    <asp:TextBox ID="tbQQ" runat="server" MaxLength="20" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 40%; text-align: right">
                    MD5密钥：
                </td>
                <td style="width: 60%; text-align: left">
                    <asp:TextBox ID="tbMD5Key" runat="server" MaxLength="128" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 40%; text-align: right">
                    CPS模式：
                </td>
                <td style="width: 60%; text-align: left">
                    <asp:DropDownList ID="ddlCpsType" Enabled="false" runat="server" Width="120px">
                        <asp:ListItem Value="1">推广员</asp:ListItem>
                        <asp:ListItem Value="2">代理商</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="width: 40%; text-align: right">
                    佣金：
                </td>
                <td style="width: 60%; text-align: left">
                    <asp:TextBox ID="tbBonusScale" runat="server" MaxLength="25" Width="100px"></asp:TextBox>&nbsp;&nbsp;
                    <asp:CheckBox ID="cbON" runat="server" Text="开通" Checked="True"></asp:CheckBox>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <ShoveWebUI:ShoveConfirmButton ID="btnAccept" runat="server" Width="60px" Text="同意"
                        AlertText="确认同意此代理商的申请吗？" OnClick="btnAccept_Click" />
                    &nbsp;&nbsp;&nbsp;<ShoveWebUI:ShoveConfirmButton ID="btnNoAccept" runat="server"
                        AlertText="确认要拒绝这个申请吗？" Text="拒绝" Width="60px" OnClick="btnNoAccept_Click" />
                </td>
            </tr>
        </table>
        <p></p>
    </div>
    </form>
</body>
</html>
