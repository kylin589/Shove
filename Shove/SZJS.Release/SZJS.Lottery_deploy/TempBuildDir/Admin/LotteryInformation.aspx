<%@ page language="C#" autoeventwireup="true" inherits="Admin_LotteryInformation, App_Web__1orsh4m" validaterequest="false" enableEventValidation="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ Register Assembly="Shove.Web.UI.4 For.NET 3.5" Namespace="Shove.Web.UI" TagPrefix="ShoveWebUI" %>
<%@ Register Assembly="FreeTextBox" Namespace="FreeTextBoxControls" TagPrefix="FTB" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
    <link href="style/style01.css" rel="stylesheet" type="text/css" />
    <link href="style/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table id="Table1" cellspacing="0" cellpadding="0" width="100%" class="baseTab" border="0">
            <tr>
                <td style="height: 30px">
                    彩种
                    <asp:DropDownList ID="ddlLottery" runat="server" Width="120px" AutoPostBack="True"
                        OnSelectedIndexChanged="ddlLottery_SelectedIndexChanged">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    <ShoveWebUI:ShoveTabView ID="tv" runat="server" Height="430px" Width="1000" SupportDir="../ShoveWebUI_client">
                        <ShoveWebUI:ShoveTabPage ID="p1" Text="玩法规则" ScrollBars="Auto" Height="100%" Width="1100"
                            runat="server">
                            <fck:FCKeditor ID="tbExplain" runat="server" BasePath="../FCKeditor/" Height="400px"
                                Width="100%">
                            </fck:FCKeditor>
                        </ShoveWebUI:ShoveTabPage>
                        <ShoveWebUI:ShoveTabPage ID="p2" Text="方案书写规则" ScrollBars="Auto" Height="100%" Width="1100"
                            runat="server">
                            <fck:FCKeditor ID="tbLotteryExemple" runat="server" BasePath="../FCKeditor/" Height="400px"
                                Width="100%">
                            </fck:FCKeditor>
                        </ShoveWebUI:ShoveTabPage>
                        <ShoveWebUI:ShoveTabPage ID="p3" Text="用户投注协议" ScrollBars="Auto" Height="100%" Width="1100"
                            runat="server">
                            <fck:FCKeditor ID="tbAgreement" runat="server" BasePath="../FCKeditor/" Height="400px"
                                Width="100%">
                            </fck:FCKeditor>
                        </ShoveWebUI:ShoveTabPage>
                        <ShoveWebUI:ShoveTabPage ID="p4" Text="开奖公告模板" ScrollBars="Auto" Height="100%" Width="1100"
                            runat="server">
                            <fck:FCKeditor ID="tbOpenAfficheTemplate" runat="server" BasePath="../FCKeditor/"
                                Height="400px" Width="100%">
                            </fck:FCKeditor>
                        </ShoveWebUI:ShoveTabPage>
                    </ShoveWebUI:ShoveTabView>
                </td>
            </tr>
            <tr>
                <td align="center" style="height: 40px">
                    <ShoveWebUI:ShoveConfirmButton ID="btnOK" runat="server" Height="25" Width="60" AlertText="您确信输入无误，并立即保存吗？"
                        Text="保存" OnClick="btnOK_Click" />
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
