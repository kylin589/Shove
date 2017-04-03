<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ExpertsPredictNewsAdd.aspx.cs"
    Inherits="Admin_ExpertsPredictNewsAdd" %>

<%@ Register Assembly="Shove.Web.UI.4 For.NET 3.5" Namespace="Shove.Web.UI" TagPrefix="ShoveWebUI" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="style/style01.css" rel="stylesheet" type="text/css" />
</head>
<body class="center">
    <form id="form1" runat="server">
    <div>
        <div class="title">
            添加专家预测信息
        </div>
        <table cellspacing="1" cellpadding="0" width="100%" class="baseTab" border="0">
            <tr>
                <td style="width: 10%">
                    &nbsp;
                </td>
                <td style="text-align: left; width: 80%">
                    专&nbsp;&nbsp;&nbsp; 家：
                    <asp:DropDownList ID="ddlExpertsPredictNews" Width="100" runat="server" AutoPostBack="True">
                    </asp:DropDownList>
                </td>
                <td style="width: 10%">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;
                </td>
                <td align="left">
                    <asp:CheckBox ID="cbisShow" runat="server" Text="是否显示" Checked="True"></asp:CheckBox>
                    <asp:CheckBox ID="cbisWinning" runat="server" Text="是否中奖" Checked="True"></asp:CheckBox>
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;
                </td>
                <td align="left" valign="top">
                    文字描述：
                    <asp:TextBox ID="tbDescription" runat="server" Width="400px" MaxLength="150" Height="47px"
                        TextMode="MultiLine"></asp:TextBox>
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tbody id="trContent" runat="server">
                <tr>
                    <td>
                        &nbsp;
                    </td>
                    <td>
                        <fck:FCKeditor ID="tbContent" Height="400" Width="100%" runat="server" BasePath="~/fckeditor/">
                        </fck:FCKeditor>
                    </td>
                    <td>
                        &nbsp;
                    </td>
                </tr>
            </tbody>
            <tr>
                <td style="height: 50px" align="center" colspan="3">
                    <ShoveWebUI:ShoveConfirmButton ID="btnAdd" runat="server" Text="保存" OnClick="btnAdd_Click" />
                    <span style="margin-left: 100px;"></span>
                    <ShoveWebUI:ShoveConfirmButton ID="btnCancel" runat="server" Text="取消" OnClick="btnCancel_Click" />
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
