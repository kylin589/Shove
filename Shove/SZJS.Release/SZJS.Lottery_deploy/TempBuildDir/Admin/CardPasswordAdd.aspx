<%@ page language="C#" autoeventwireup="true" inherits="Admin_CardPasswordAdd, App_Web_mq7qcqnw" enableEventValidation="false" %>

<%@ Register Assembly="Shove.Web.UI.4 For.NET 3.5" Namespace="Shove.Web.UI" TagPrefix="ShoveWebUI" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
    <link href="style/style01.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div class="title" style="text-align: center">
            为代理商增加卡密
        </div>
        <table id="Table1" cellspacing="1" cellpadding="0" width="100%" border="0" class="baseTab">
            <tr>
                <td style="width: 35%" align="right">
                    选择代理商：
                </td>
                <td style="width: 50%">
                    <asp:DropDownList ID="ddlCardPasswordAgents" runat="server" Width="172px">
                    </asp:DropDownList>
                </td>
                <td style="width: 15%">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td align="right">
                    卡密面值金额：
                </td>
                <td>
                    <asp:TextBox ID="tbMoney" runat="server" Width="168px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td align="right">
                    卡密有效月份：
                </td>
                <td>
                    <asp:TextBox ID="tbDateTime" runat="server" Width="168px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td align="right">
                    生成卡密总数：
                </td>
                <td>
                    <asp:TextBox ID="tbCount" runat="server" Width="168px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td colspan="3" align="center" style="height: 40px;">
                    <ShoveWebUI:ShoveConfirmButton ID="btnGO" runat="server" Text="立即生成" AlertText="确定输入正确并立即生成吗？"
                        OnClick="btnGO_Click"></ShoveWebUI:ShoveConfirmButton>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
