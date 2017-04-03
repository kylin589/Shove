<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FollowFriendSchemeAdd_User.aspx.cs"
    Inherits="Home_Room_FollowFriendSchemeAdd_User" %>

<%@ Register Assembly="Shove.Web.UI.4 For.NET 3.5" Namespace="Shove.Web.UI" TagPrefix="ShoveWebUI" %>
<%@ Register Src="../../UserControls/Head.ascx" TagName="Head" TagPrefix="uc1" %>
<%@ Register Src="UserControls/UserMyIcaile.ascx" TagName="UserMyIcaile" TagPrefix="uc2" %>
<%@ Register Src="UserControls/WebFoot.ascx" TagName="WebFoot" TagPrefix="uc3" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>定制好友跟单-<%=_Site.Name %>-买彩票，就上<%=_Site.Name %>！</title>
    <meta name="description" content="<%=_Site.Name %>彩票网是一家服务于中国彩民的互联网彩票合买代购交易平台，涉及中国彩票彩种最全的网站，包含双色球、时时乐、时时彩、足彩等众多彩种的实时开奖信息、图表走势、分析预测等。" />
    <meta name="keywords" content="定制好友跟单" />
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
    <link href="Style/common.css" rel="stylesheet" type="text/css" />
    <link href="Style/StyleSheet.css" rel="stylesheet" type="text/css" />
    <link href="Style/home.css" rel="stylesheet" type="text/css" />
    <link rel="shortcut icon" href="../../favicon.ico" />

    <script src="../../JavaScript/jquery-1.4.js" type="text/javascript"></script>

    <script src="../../javaScript/Public.js" type="text/javascript"></script>

    <script language="javascript" type="text/javascript">
        function ShowOrHideDZUserList() {
            if (document.all["FollowUseList"].style.display == "") {
                document.all["FollowUseList"].style.display = "none";
            }
            else {
                document.all["FollowUseList"].style.display = "";
            }
        }

        function InputMask_Number() {
            if (window.event.keyCode < 48 || window.event.keyCode > 57)
                return false;
            return true;
        }

        function CheckMultiple(sender) {
            var multiple = StrToInt(sender.value);

            sender.value = multiple;

            if (multiple < 1) {
                if (confirm("输入不正确，按“确定”重新输入，按“取消”自动更正为 1 ，请选择。")) {
                    sender.focus();
                    return;
                }
                else {
                    multiple = 1;
                    sender.value = 1;
                }
            }
        }
    </script>

    <style type="text/css">
        .gendan tr td
        {
            border: solid 1px #cccccc;
            text-align: left;
            line-height: 30px;
            padding-right: 5px;
            text-indent: 5px;
        }
    </style>
    <base target="_self" />
</head>
<body>
    <form id="form1" runat="server">
    <uc1:Head ID="Head2" runat="server" />
    <div class="wrap">
        <uc2:UserMyIcaile ID="UserMyIcaile1" runat="server" />
        <div class="rights">
            <div class="jilu">
                <table width="100%" class="gendan" style="margin-top: 10px;">
                    <tr>
                        <td width="40" height="30" align="right" valign="middle" class="red14">
                            <img src="images/icon_6.gif" width="19" height="16" />
                        </td>
                        <td valign="middle" style="font-size: 16px; color: #cc0000; font-family: Tahoma;
                            line-height: 20px; font-weight: bold; padding-left: 10px;">
                            我的彩票记录
                        </td>
                    </tr>
                </table>
                <br />
                <table width="100%" background="images/zfb_left_bg_2.jpg" style="margin-top: 10px;">
                    <tr>
                        <td width="10" height="29" align="left">
                            &nbsp;
                        </td>
                        <td width="100" align="center" style="background-image: url(images/admin_qh_100_2.jpg)">
                            <strong>定制自动跟单</strong>
                        </td>
                        <td width="6">
                            &nbsp;
                        </td>
                        <td>
                            &nbsp;
                        </td>
                    </tr>
                </table>
                <table width="100%" class="gendan">
                    <tr>
                        <td height="1" colspan="9" bgcolor="#FFFFFF">
                        </td>
                    </tr>
                    <tr>
                        <td height="2" colspan="9" bgcolor="#6699CC">
                        </td>
                    </tr>
                </table>
                <table width="100%" class="gendan">
                    <tr>
                        <td width="150" bgcolor="#f5f5f5" style="text-align: right;">
                            好友用户名
                        </td>
                        <td bgcolor="#FFFFFF">
                            <asp:Label ID="lbUserName" runat="server" Text=""></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td bgcolor="#f5f5f5" style="text-align: right;">
                            定制自动跟单玩法
                        </td>
                        <td bgcolor="#FFFFFF">
                            <asp:DropDownList ID="ddlLotteries" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlLotteries_SelectedIndexChanged">
                            </asp:DropDownList>
                            <asp:DropDownList ID="ddlPlayTypes" runat="server">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td bgcolor="#f5f5f5" style="text-align: right;">
                            跟单金额范围
                        </td>
                        <td bgcolor="#FFFFFF">
                            <asp:TextBox ID="tbMinMoney" runat="server" Width="50px" onkeypress="return InputMask_Number();"
                                onblur="CheckMultiple(this);" Text="1"></asp:TextBox>
                            至
                            <asp:TextBox ID="tbMaxMoney" runat="server" Width="50px" onkeypress="return InputMask_Number();"
                                onblur="CheckMultiple(this); " Text="10"></asp:TextBox>&nbsp;元
                        </td>
                    </tr>
                    <tr>
                        <td bgcolor="#f5f5f5" style="text-align: right;">
                            每次认购份数
                        </td>
                        <td bgcolor="#FFFFFF">
                            <asp:TextBox ID="tbBuyShareStart" runat="server" Width="50px" onkeypress="return InputMask_Number();"
                                onblur="CheckMultiple(this);" Text="1"></asp:TextBox>
                            至
                            <asp:TextBox ID="tbBuyShareEnd" runat="server" Width="50px" onkeypress="return InputMask_Number();"
                                onblur="CheckMultiple(this);" Text="10"></asp:TextBox>&nbsp;份
                        </td>
                    </tr>
                    <tr>
                        <td bgcolor="#f5f5f5">
                        </td>
                        <td bgcolor="#FFFFFF">
                            <ShoveWebUI:ShoveConfirmButton ID="btn_OK" runat="server" Text=" 确定 " OnClick="btn_OK_Click"
                                AlertText="您确认输入无误并定制跟单吗?" />
                            <span style="margin-left: 100px;"></span>
                            <asp:Button ID="btnCancel" runat="server" Text=" 取消 " OnClick="btnCancel_Click" />
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
    <uc3:WebFoot ID="WebFoot1" runat="server" />
    <asp:HiddenField ID="HidFollowUserID" runat="server" />
    </form>
</body>
</html>
