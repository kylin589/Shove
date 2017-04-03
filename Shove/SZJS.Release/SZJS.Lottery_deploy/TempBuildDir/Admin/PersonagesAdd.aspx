<%@ page language="C#" autoeventwireup="true" inherits="Admin_PersonagesAdd, App_Web__1orsh4m" enableEventValidation="false" %>

<%@ Register Assembly="Shove.Web.UI.4 For.NET 3.5" Namespace="Shove.Web.UI" TagPrefix="ShoveWebUI" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>无标题页</title>
    <link href="style/style01.css" rel="stylesheet" type="text/css" />
</head>
<body class="center">
    <form id="form1" runat="server">
    <div>
        <div class="title">
            添加名人信息
        </div>
        <table cellspacing="0" cellpadding="0" width="100%" class="baseTab" border="0">
            <tr>
                <td style="width: 10%">
                    &nbsp;
                </td>
                <td style="text-align: left; width: 80%">
                    <asp:DropDownList ID="ddlLotteries" Width="100" runat="server">
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
                    &nbsp;顺&nbsp; &nbsp;序：
                    <asp:TextBox ID="tbOrder" runat="server" MaxLength="10" Width="100px">1</asp:TextBox>&nbsp;<asp:CheckBox
                        ID="cbisShow" runat="server" Text="是否显示" Checked="True"></asp:CheckBox>
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;
                </td>
                <td align="left">
                    用户名：
                    <asp:TextBox ID="tbName" runat="server" Width="400px" MaxLength="50"></asp:TextBox>
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
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
