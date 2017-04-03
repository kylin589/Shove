﻿<%@ page language="C#" autoeventwireup="true" inherits="Admin_FriendshipLinksEdit, App_Web__1orsh4m" enableEventValidation="false" %>

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
            编辑友情链接信息
        </div>
        <table cellspacing="0" cellpadding="0" width="100%" class="baseTab" border="0">
            <tr>
                <td style="width: 10%">
                    &nbsp;
                </td>
                <td style="width: 80%">
                    名称： &nbsp;
                    <asp:TextBox ID="tbName" runat="server" Width="400px" MaxLength="50"></asp:TextBox>&nbsp;<asp:CheckBox
                        ID="cbisShow" runat="server" Text="是否在首页显示" />
                    <asp:TextBox ID="tbID" runat="server" Visible="False"></asp:TextBox>
                </td>
                <td style="width: 10%">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;
                </td>
                <td>
                    网址： &nbsp;
                    <asp:TextBox ID="tbUrl" runat="server" MaxLength="255" Width="400px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;
                </td>
                <td>
                    顺序： &nbsp;
                    <asp:TextBox ID="tbOrder" runat="server" MaxLength="10" Width="100px">1</asp:TextBox>
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;
                </td>
                <td>
                    Logo：
                    <input id="tbImage" style="width: 600px; height: 21px" type="file" size="80" name="tbImage"
                        runat="server">
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;
                </td>
                <td>
                    使用已存在的图片：
                    <asp:DropDownList ID="ddlImage" runat="server" Width="250px">
                    </asp:DropDownList>
                    <asp:CheckBox ID="cbNoEditImage" runat="server" Checked="True" Text="不修改图片" />
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td style="height: 49px" align="center" colspan="3">
                    <ShoveWebUI:ShoveConfirmButton ID="btnSave" runat="server" Text="保存" AlertText="确信输入无误，并立即保存此友情链接吗？"
                        OnClick="btnSave_Click" />
                </td>
            </tr>
        </table>
        <br />
    </div>
    </form>
</body>
</html>
