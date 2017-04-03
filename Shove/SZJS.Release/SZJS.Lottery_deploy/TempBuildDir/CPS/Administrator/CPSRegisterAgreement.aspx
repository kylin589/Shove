<%@ page language="C#" autoeventwireup="true" inherits="CPS_Administrator_CPSRegisterAgreement, App_Web_mmkwpj80" enableEventValidation="false" %>

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
            商家注册协议
        </div>
        <table id="Table1" cellspacing="0" cellpadding="0" width="100%" align="center" border="0">
            <tr>
                <td>
                    <fck:FCKeditor ID="tbContent" Height="500" Width="100%" runat="server" BasePath="~/fckeditor/">
                    </fck:FCKeditor>
                </td>
            </tr>
            <tr>
                <td align="center" style="height: 60px">
                    <ShoveWebUI:ShoveConfirmButton ID="btnOK" runat="server" AlertText="您确信输入无误，并立即保存吗？"
                        Text="保存" Width="60px" Height="25px" OnClick="btnOK_Click" />
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
