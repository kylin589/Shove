<%@ page language="C#" autoeventwireup="true" inherits="Home_Room_ExpertsCommendsAdd, App_Web_y4qeesyo" enableEventValidation="false" %>

<%@ Register Assembly="Shove.Web.UI.4 For.NET 3.5" Namespace="Shove.Web.UI" TagPrefix="ShoveWebUI" %>
<%@ Register Src="../../UserControls/Head.ascx" TagName="Head" TagPrefix="uc1" %>
<%@ Register Src="UserControls/UserMyIcaile.ascx" TagName="UserMyIcaile" TagPrefix="uc2" %>
<%@ Register Src="UserControls/WebFoot.ascx" TagName="WebFoot" TagPrefix="uc3" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>
        <%= _Site.Name %>发表我的推荐贴-我的资料-用户中心-<%= _Site.Name %>！</title>
    <meta name="description" content="<%= _Site.Name %>是一家服务于中国彩民的互联网彩票合买代购交易平台，涉及中国彩票彩种最全的网站，包含双色球,大乐透,七星彩,3d,足彩等众多彩种的实时开奖信息,图表走势、分析预测以及开奖信息等!" />
    <meta name="keywords" content="双色球合买,体育彩票,福利彩票,双色球开奖信息." />
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
    <link href="Style/common.css" rel="stylesheet" type="text/css" />
    <link href="Style/StyleSheet.css" rel="stylesheet" type="text/css" />
    <link href="Style/home.css" rel="stylesheet" type="text/css" />
    <link rel="shortcut icon" href="../../favicon.ico" />

    <script src="../../JavaScript/jquery-1.4.js" type="text/javascript"></script>

    <script type="text/javascript" language="javascript">
function CheckMoneyOnPress() {
    if (window.event.keyCode < 48 || window.event.keyCode > 57) {
        return false;
    }

    return true;
}
    </script>

</head>
<body>
    <form id="form1" runat="server">
    <uc1:Head ID="Head2" runat="server" />
    <div class="wrap">
        <uc2:UserMyIcaile ID="UserMyIcaile1" runat="server" />
        <div class="rights">
            <div class="jilu">
                <table width="100%" border="0" cellspacing="0" cellpadding="0" style="margin-top: 10px;">
                    <tr>
                        <td width="40" height="30" align="right" valign="middle" class="red14">
                            <img src="images/user_icon_man.gif" width="19" height="16" />
                        </td>
                        <td valign="middle" style="font-size: 16px; color: #cc0000; font-family: Tahoma;
                            line-height: 20px; font-weight: bold; padding-left: 10px;">
                            我的资料
                        </td>
                    </tr>
                </table>
                <table width="100%" border="0" cellpadding="0" style="margin-top: 10px;" cellspacing="0"
                    bgcolor="#C0DBF9">
                    <tr>
                        <td width="100%" height="30" align="center" bgcolor="#FFFFFF" class="black12">
                            <div>
                                <table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="#9FC8EA">
                                    <tr>
                                        <td colspan="2" style="height: 40px; padding-left: 5px;" valign="middle" align="left"
                                            bgcolor="#ffede3">
                                            <b>添加推荐号码信息</b>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td height="30" align="right" bgcolor="f7f7f7" class="black12" style="width: 100px;">
                                            彩种：
                                        </td>
                                        <td align="left" bgcolor="#FFFFFF" class="black12" style="padding-left: 15px;">
                                            <asp:DropDownList ID="ddlExperts" runat="server" Width="140px" AutoPostBack="True"
                                                OnSelectedIndexChanged="ddlExperts_SelectedIndexChanged">
                                            </asp:DropDownList>
                                            <asp:DropDownList ID="ddlIsuse" runat="server" Width="120px">
                                            </asp:DropDownList>
                                            &nbsp;<font color="red"><asp:Label ID="labTipInfo" runat="server" Text="注：暂无可添加推荐的期号"></asp:Label></font>&nbsp;
                                            &nbsp;<font color="red">提示：您的最大荐号阅读单价是：<asp:Label ID="labMaxPrice" runat="server"></asp:Label>
                                                元/人次</font>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td height="30" align="right" bgcolor="f7f7f7" class="black12" style="width: 100px;">
                                            标题：
                                        </td>
                                        <td align="left" bgcolor="#FFFFFF" class="black12" style="padding-left: 15px;">
                                            <asp:TextBox ID="tbTitle" runat="server" Width="373px" MaxLength="50"></asp:TextBox>
                                            <span class="red12">&nbsp;&nbsp;阅读单价
                                                <asp:TextBox ID="tbPrice" onkeypress="return CheckMoneyOnPress();" runat="server"
                                                    Width="54px">0</asp:TextBox>
                                                元/人次</span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td height="30" align="right" bgcolor="f7f7f7" class="black12" style="width: 100px;">
                                            内容：
                                        </td>
                                        <td align="left" bgcolor="#FFFFFF" class="black12" style="padding: 5px 0px 5px 15px;">
                                            <fck:FCKeditor ID="tbContent" ToolbarStartExpanded="false" Height="193" Width="100%" runat="server" BasePath="~/fckeditor/">
                                            </fck:FCKeditor>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td height="30" align="right" bgcolor="f7f7f7" class="black12" style="width: 100px;">
                                            推荐号码：
                                        </td>
                                        <td align="left" bgcolor="#FFFFFF" class="red12" style="padding: 5px 0px 5px 15px;">
                                            <asp:TextBox ID="tbNumber" runat="server" Width="400px" Height="95px" TextMode="MultiLine"></asp:TextBox>&nbsp;&nbsp;<font
                                                color="red">请将推荐号码填写在此处
                                        </td>
                                    </tr>
                                </table>
                                <table width="100%" border="0" cellspacing="0" cellpadding="10">
                                    <tr>
                                        <td align="center" class="black12">
                                            <ShoveWebUI:ShoveConfirmButton ID="btnAdd" runat="server" Width="60px" Height="30px"
                                                Text="增加" AlertText="确信输入无误，并立即增加此推荐号码信息吗？" OnClick="btnAdd_Click" />
                                        </td>
                                    </tr>
                                </table>
                                <table width="100%" border="0" cellspacing="1" cellpadding="0" bgcolor="#D8D8D8"
                                    style="margin-top: 10px; text-align: left">
                                    <tr>
                                        <td width="100%" bgcolor="#FFFEDF" class="blue14" style="padding: 5px 10px 5px 10px;">
                                            <span class="blue14" style="padding: 5px 10px 5px 10px;">如有其他问题，请联系网站客服：<span class="red14"><%= _Site.Telephone %>
                                            </span></span>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
    <uc3:WebFoot ID="WebFoot1" runat="server" />
    </form>
</body>
</html>
