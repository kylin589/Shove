<%@ page language="C#" autoeventwireup="true" inherits="Admin_InputOpenAffiche, App_Web_mq7qcqnw" validaterequest="false" enableEventValidation="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ Register Assembly="Shove.Web.UI.4 For.NET 3.5" Namespace="Shove.Web.UI" TagPrefix="ShoveWebUI" %>
<%@ Register Assembly="FreeTextBox" Namespace="FreeTextBoxControls" TagPrefix="FTB" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
    <link href="style/style01.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div class="title" style="text-align: center">
            录入开奖公告视频
        </div>
        <table id="Table1" cellspacing="1" cellpadding="0" width="100%" class="baseTab" border="0">
            <tr style="height: 28px" class="title">
                <td>
                    请选择
                    <asp:DropDownList ID="ddlLottery" runat="server" AutoPostBack="True" Width="140px"
                        OnSelectedIndexChanged="ddlLottery_SelectedIndexChanged">
                    </asp:DropDownList>
                    &nbsp;
                    <asp:DropDownList ID="ddlIsuse" runat="server" AutoPostBack="True" Width="120px"
                        OnSelectedIndexChanged="ddlIsuse_SelectedIndexChanged">
                    </asp:DropDownList>
                    <span style="margin-left: 30px;"><a href="InputOpenAffiche2.aspx" style="color: Red">
                        录入未开启彩种开奖公告</a></span>
                </td>
            </tr>
            <tr>
                <td align="center">
                    <fck:FCKeditor ID="tbOpenAffiche" Height="350" Width="100%" runat="server" BasePath="~/fckeditor/">
                    </fck:FCKeditor>
                </td>
            </tr>
            <tr>
                <td style="height: 21px">
                </td>
            </tr>
            <tr>
                <td style="height: 21px">
                    上传开奖视频文件
                    <input id="fileVideo" runat="server" name="fileVideo" style="width: 500px; height: 21px"
                        type="file" />
                </td>
            </tr>
            <tr>
                <td align="center" style="height: 50px">
                    <ShoveWebUI:ShoveConfirmButton ID="btnOK" runat="server" Text="保存" AlertText="确信输入无误，并立即保存吗？"
                        OnClick="btnOK_Click" />
                </td>
            </tr>
        </table>
        <br />
    </div>
    </form>
</body>
</html>
