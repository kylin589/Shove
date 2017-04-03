<%@ Page Language="C#" AutoEventWireup="true" CodeFile="OptionISP.aspx.cs" Inherits="Admin_OptionISP" %>

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
        <table id="Table1" width="100%" border="0" cellspacing="1" cellpadding="0" class="baseTab">
            <tr class="title">
                <td>
                    <asp:Label ID="Label9" Style="z-index: 133; left: 61px; position: absolute; top: 207px"
                        runat="server">企业ISP号码</asp:Label>
                    <asp:TextBox ID="tb5" Style="z-index: 103; left: 136px; position: absolute; top: 180px"
                        runat="server" Width="328px"></asp:TextBox>
                    <asp:Label ID="Label8" Style="z-index: 132; left: 61px; position: absolute; top: 180px"
                        runat="server">注册代码</asp:Label>
                    <asp:TextBox ID="tb6" Style="z-index: 104; left: 136px; position: absolute; top: 207px"
                        runat="server" Width="328px"></asp:TextBox>
                    <asp:TextBox ID="tb1" Style="z-index: 131; left: 136px; position: absolute; top: 72px"
                        runat="server" Width="328px"></asp:TextBox>
                    <asp:TextBox ID="tb2" Style="z-index: 100; left: 136px; position: absolute; top: 99px"
                        runat="server" Width="328px"></asp:TextBox>
                    <asp:TextBox ID="tb3" Style="z-index: 101; left: 136px; position: absolute; top: 126px"
                        runat="server" Width="328px"></asp:TextBox>
                    <asp:TextBox ID="tb4" Style="z-index: 102; left: 136px; position: absolute; top: 153px"
                        runat="server" Width="328px" TextMode="Password"></asp:TextBox>
                    <asp:Label ID="Label1" Style="z-index: 108; left: 32px; position: absolute; top:14px"
                        runat="server" Font-Bold="True" ForeColor="#C00000">无线业务设置（ISP 服务提供商提供的资料资料）</asp:Label>
                    <asp:Label ID="Label2" Style="z-index: 109; left: 61px; position: absolute; top: 72px"
                        runat="server">服务器地址</asp:Label>
                    <asp:Label ID="Label3" Style="z-index: 110; left: 61px; position: absolute; top: 99px"
                        runat="server">服务器端口</asp:Label>
                    <asp:Label ID="Label4" Style="z-index: 111; left: 61px; position: absolute; top: 126px"
                        runat="server">用户名</asp:Label>
                    <asp:Label ID="Label5" Style="z-index: 112; left: 61px; position: absolute; top: 153px"
                        runat="server">用户密码</asp:Label>
                    <ShoveWebUI:ShoveConfirmButton ID="btnOK" Style="z-index: 112; left: 324px; position: absolute;
                        top: 250px" runat="server" Text="保存" AlertText="确认书写无误吗？" OnClick="btnOK_Click" />
                </td>
                <tr>
        </table>
    </div>
    </form>
</body>
</html>
