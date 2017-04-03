<%@ Page Language="C#" AutoEventWireup="true" CodeFile="InputWinNumber2.aspx.cs"
    Inherits="Admin_InputWinNumber2" %>

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
            录入开奖号码
        </div>
        <table id="Table1" cellspacing="1" cellpadding="0" width="100%" class="baseTab" border="0">
            <tr style="height: 28px" class="title">
                <td>
                    &nbsp; 请选择
                    <asp:DropDownList ID="ddlLottery" runat="server" Width="140px" AutoPostBack="True"
                        OnSelectedIndexChanged="ddlLottery_SelectedIndexChanged">
                    </asp:DropDownList>
                    &nbsp;
                    <asp:DropDownList ID="ddlIsuse" runat="server" Width="120px" AutoPostBack="True"
                        OnSelectedIndexChanged="ddlIsuse_SelectedIndexChanged">
                    </asp:DropDownList>
                    <span style="margin-left: 30px;"><a href="InputWinNumber.aspx" style="color: Red">录入已开启彩种开奖号码</a>
                    </span>
                </td>
            </tr>
            <tr>
                <td style="height: 60px">
                    &nbsp;
                    <asp:Label ID="Label1" runat="server">开奖号码</asp:Label>
                    <asp:TextBox ID="tbWinNumber" runat="server" Width="216px"></asp:TextBox>
                    <asp:Label ID="labTip" runat="server" ForeColor="Red">格式：31032200111220</asp:Label>
                </td>
            </tr>
            <tr>
                <td align="center" style="height: 60px">
                    <ShoveWebUI:ShoveConfirmButton ID="btnGO" runat="server" Text="保存" AlertText="确信输入无误，并立即保存吗？"
                        OnClick="btnGO_Click" />
                </td>
            </tr>
        </table>
        <br />
    </div>
    </form>
</body>
</html>
