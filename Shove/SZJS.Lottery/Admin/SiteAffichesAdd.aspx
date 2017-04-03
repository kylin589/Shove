<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SiteAffichesAdd.aspx.cs"
    Inherits="Admin_SiteAffichesAdd" ValidateRequest="false" %>

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
            添加站点公告信息
        </div>
        <table cellspacing="0" cellpadding="0" width="100%" class="baseTab" border="0">
            <tr>
                <td style="width: 10%" align="right">
                    &nbsp;
                </td>
                <td style="width: 80%" align="left">
                    时间：
                    <asp:TextBox ID="tbDateTime" runat="server" Width="200px"></asp:TextBox>&nbsp;
                    <asp:CheckBox ID="cbisShow" runat="server" Text="是否显示" Checked="True"></asp:CheckBox>&nbsp;<asp:CheckBox
                        ID="cbisCommend" runat="server" Text="是否推荐" Checked="False"></asp:CheckBox>&nbsp;<asp:CheckBox
                            ID="cbTitleRed" runat="server" Text="标题加红" Checked="False"></asp:CheckBox>
                </td>
                <td style="width: 10%">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td style="width: 10%" align="right">
                    &nbsp;
                </td>
                <td style="width: 80%" align="left">
                    标题：
                    <asp:TextBox ID="tbTitle" runat="server" Width="520px"></asp:TextBox>
                </td>
                <td style="width: 10%">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td style="width: 10%" align="right">
                    &nbsp;
                </td>
                <td style="width: 80%" align="left">
                    内容
                    <fck:FCKeditor ID="tbContent" Height="400" Width="100%" runat="server" BasePath="~/fckeditor/">
                    </fck:FCKeditor>
                </td>
                <td style="width: 10%">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td style="height: 49px" align="center" colspan="3">
                    <ShoveWebUI:ShoveConfirmButton ID="btnAdd" runat="server" Text="增加" AlertText="确信输入无误，并立即增加此公告吗？"
                        OnClick="btnAdd_Click" />
                </td>
            </tr>
        </table>
        <br />
    </div>
    </form>
</body>
</html>
