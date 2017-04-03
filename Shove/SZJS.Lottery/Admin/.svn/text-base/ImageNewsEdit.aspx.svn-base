<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ImageNewsEdit.aspx.cs" Inherits="Admin_ImageNewsEdit"
    ValidateRequest="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ Register Assembly="Shove.Web.UI.4 For.NET 3.5" Namespace="Shove.Web.UI" TagPrefix="ShoveWebUI" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
    <link href="style/style01.css" rel="stylesheet" type="text/css" />
</head>
<body class="center">
    <form id="form1" runat="server">
    <asp:HiddenField ID="tbID" runat="server" />
    <div>
        <table cellspacing="0" cellpadding="0" width="100%" align="center" border="0" class="baseTab">
            <tr>
                <td colspan="3" height="32" bgcolor="#B0D5EC">
                    <div class="title">
                        编辑图片新闻信息
                    </div>
                </td>
            </tr>
            <tr>
                <td style="width: 20%" align="right">
                    标&nbsp;&nbsp;题：
                </td>
                <td style="width: 60%" align="left">
                    <asp:TextBox ID="tbTitle" runat="server" Width="520px" MaxLength="50"></asp:TextBox>
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
                    <asp:CheckBox ID="cbIsBig" runat="server" Checked="true" />是否大图片新闻
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td align="right">
                    链接地址：&nbsp;
                </td>
                <td align="left">
                    <asp:TextBox ID="tbContent" runat="server" Width="520px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td align="right">
                    使用一个新的图片：&nbsp;
                </td>
                <td align="left">
                    <input id="tbImage" style="width: 528px; height: 21px" type="file" size="80" name="tbImage"
                        runat="server">
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td align="center" colspan="3">
                    <font color="#ff0000">(如果选择了新图片，下面“已存在的图片”选择将无效)</font>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;
                </td>
                <td>
                    <font face="宋体">使用已存在的图片
                        <asp:DropDownList ID="ddlImage" runat="server" Width="160px">
                        </asp:DropDownList>
                        &nbsp;&nbsp;
                        <asp:CheckBox ID="cbNoEditImage" runat="server" Text="不修改图片" Checked="True"></asp:CheckBox>
                        <asp:TextBox ID="tbOldImage" runat="server" Visible="False"></asp:TextBox>
                    </font>
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td style="height: 49px" align="center" colspan="3">
                    <ShoveWebUI:ShoveConfirmButton ID="btnSave" runat="server" Text="保存" AlertText="确信输入无误，并立即保存此资讯吗？"
                        OnClick="btnSave_Click" />
            </tr>
        </table>
        <br />
    </div>
    </form>
</body>
</html>
