<%@ page language="C#" autoeventwireup="true" inherits="Admin_ImageNewsAdd, App_Web_mq7qcqnw" validaterequest="false" enableEventValidation="false" %>

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
        <table cellspacing="0" cellpadding="0" width="100%" align="center" border="0" style="line-height: 2;"
            class="baseTab">
            <tr>
                <td colspan="3" height="32" bgcolor="#B0D5EC">
                    <div class="title">
                        添加图片新闻信息
                    </div>
                </td>
            </tr>
            <tr>
                <td align="right" style="width: 20%">
                    &nbsp;&nbsp;标&nbsp;&nbsp;题：
                </td>
                <td align="left" style="width: 60%">
                    <asp:TextBox ID="tbTitle" runat="server" Width="520px" MaxLength="50"></asp:TextBox>
                </td>
                <td style="width: 20%">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td align="right">
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
                    链接地址：
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
                    使用一个新的图片：
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
                <td colspan="3" align="center">
                    <font color="#ff0000">(如果选择了新图片，下面“已存在的图片”选择将无效)</font>
                </td>
            </tr>
            <tr>
                <td align="right">
                    使用已存在的图片：
                </td>
                <td align="left">
                    <asp:DropDownList ID="ddlImage" runat="server" Width="250px">
                    </asp:DropDownList>
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td colspan="3" style="height: 50px" align="center">
                    <ShoveWebUI:ShoveConfirmButton ID="btnAdd" runat="server" Text="增加" AlertText="确信输入无误，并立即增加此图片新闻吗？"
                        OnClick="btnAdd_Click" />
                </td>
            </tr>
        </table>
        <br />
    </div>
    </form>
</body>
</html>
