<%@ page language="C#" autoeventwireup="true" inherits="Admin_UploadWinLotteryImage, App_Web_mq7qcqnw" enableEventValidation="false" %>

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
            中奖图片上传
        </div>
        <table id="Table1" cellspacing="1" cellpadding="0" width="100%" class="baseTab" border="0">
            <tr class="title" style="height: 28px">
                <td>
                    <strong>&nbsp;中奖彩票图片上传</strong>
                </td>
            </tr>
            <tr>
                <td style="height: 100px">
                    &nbsp; &nbsp;&nbsp; 方案号
                    <asp:TextBox ID="tbSchemeNumber" runat="server" Width="160px"></asp:TextBox><br />
                    &nbsp; &nbsp;&nbsp; 彩票图
                    <input id="fileImage" style="width: 500px; height: 21px" type="file" name="fileImage"
                        runat="server">&nbsp;
                    <ShoveWebUI:ShoveConfirmButton ID="btnGO" runat="server" Text="上传" OnClick="btnGO_Click" />
                </td>
            </tr>
        </table>
        <br />
    </div>
    </form>
</body>
</html>
