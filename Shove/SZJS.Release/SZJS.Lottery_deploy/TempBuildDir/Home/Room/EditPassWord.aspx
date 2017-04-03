<%@ page language="C#" autoeventwireup="true" inherits="Home_Room_EditPassWord, App_Web_y4qeesyo" enableEventValidation="false" %>

<%@ Register Assembly="Shove.Web.UI.4 For.NET 3.5" Namespace="Shove.Web.UI" TagPrefix="ShoveWebUI" %>
<%@ Register Src="../../UserControls/Head.ascx" TagName="Head" TagPrefix="uc1" %>
<%@ Register Src="UserControls/UserMyIcaile.ascx" TagName="UserMyIcaile" TagPrefix="uc2" %>
<%@ Register Src="UserControls/WebFoot.ascx" TagName="WebFoot" TagPrefix="uc3" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>
        <%=_Site.Name %>中修改我的密码-我的资料-用户中心-<%=_Site.Name %>－买彩票，就上<%=_Site.Name %>
        ！</title>
    <meta name="description" content="<%=_Site.Name %>彩票网<%=_Site.Url %>是一家服务于中国彩民的互联网彩票合买代购交易平台，涉及中国彩票彩种最全的网站，包含双色球,大乐透,七星彩,3d,足彩等众多彩种的实时开奖信息,图表走势、分析预测以及开奖信息等!" />
    <meta name="keywords" content="双色球合买,体育彩票,福利彩票,双色球开奖信息." />
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
    <link href="Style/common.css" rel="stylesheet" type="text/css" />
    <link href="Style/StyleSheet.css" rel="stylesheet" type="text/css" />
    <link href="Style/home.css" rel="stylesheet" type="text/css" />
    <link rel="shortcut icon" href="../../favicon.ico" />

    <script src="../../JavaScript/jquery-1.4.js" type="text/javascript"></script>

</head>
<body>
    <form id="form1" runat="server">
    <uc1:Head ID="Head2" runat="server" />
    <div class="wrap">
        <uc2:UserMyIcaile ID="UserMyIcaile1" runat="server" />
        <div class="rights">
            <div class="myself">
                <div class="bangding">
                    <p>
                        尊敬的会员：<span class="red">
                            <%=_User.Name %></span>
                    </p>
                </div>
            </div>
            <div class="jilu">
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr bgcolor="#C0DBF9">
                        <td width="20%" height="30" align="right" bgcolor="#FFFFFF">
                            用户名：<span class="red12"></span>
                        </td>
                        <td width="80%" align="left" bgcolor="#FFFFFF" style="padding-left: 10px;">
                            <asp:Label ID="tbName" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr bgcolor="#C0DBF9">
                        <td height="30" align="right" bgcolor="#FFFFFF">
                            原投注密码：
                        </td>
                        <td align="left" bgcolor="#FFFFFF" style="padding-left: 10px;">
                            <label>
                                <asp:TextBox ID="tbOldPassWord" runat="server" Width="140px" TextMode="Password"></asp:TextBox>
                            </label>
                        </td>
                    </tr>
                    <tr bgcolor="#C0DBF9">
                        <td height="30" align="right" bgcolor="#FFFFFF">
                            新投注密码：
                        </td>
                        <td align="left" bgcolor="#FFFFFF" style="padding-left: 10px;">
                            <asp:TextBox ID="tbNewPassWord" runat="server" TextMode="Password" Width="140px"
                                MaxLength="30"></asp:TextBox>
                        </td>
                    </tr>
                    <tr bgcolor="#C0DBF9">
                        <td height="30" align="right" bgcolor="#FFFFFF">
                            确认新投注密码：
                        </td>
                        <td align="left" bgcolor="#FFFFFF" class="black12" style="padding-left: 10px;">
                            <asp:TextBox ID="tbRePassWord" runat="server" TextMode="Password" Width="140px" MaxLength="30"></asp:TextBox>
                        </td>
                    </tr>
                    <tr bgcolor="#C0DBF9">
                        <td height="20" colspan="2" align="right" bgcolor="#FFFFFF" class="black12">
                            <div id="hr">
                            </div>
                        </td>
                    </tr>
                    <tr bgcolor="#C0DBF9">
                        <td height="30" align="right" bgcolor="#FFFFFF" class="black12">
                            &nbsp;
                        </td>
                        <td align="left" bgcolor="#FFFFFF" class="red12" style="padding-left: 10px;">
                            （为了您的账户安全，请您输入以下信息进行确认）
                        </td>
                    </tr>
                    <tr bgcolor="#C0DBF9">
                        <td height="30" align="right" bgcolor="#FFFFFF">
                            安全保护问题：
                        </td>
                        <td align="left" bgcolor="#FFFFFF" class="black12" style="padding-left: 10px;">
                            <asp:Label ID="lbQuestion" runat="server"></asp:Label>
                            &nbsp;&nbsp;<span><a href="SafeSet.aspx?FromUrl='EditPassWord.aspx'">
                                <asp:Label ID="lbQuestionInfo" runat="server"></asp:Label>
                            </a><span class="blue12">
                        </td>
                    </tr>
                    <tr bgcolor="#C0DBF9">
                        <td height="30" align="right" bgcolor="#FFFFFF">
                            答案：
                        </td>
                        <td align="left" bgcolor="#FFFFFF" style="padding-left: 10px;">
                            <asp:TextBox ID="tbMyA" runat="server"></asp:TextBox>
                            <span style="color: Red">*</span>
                        </td>
                    </tr>
                    <tr bgcolor="#C0DBF9">
                        <td height="20" colspan="2" align="right" bgcolor="#FFFFFF">
                            <div id="hr">
                            </div>
                        </td>
                    </tr>
                    <tr bgcolor="#C0DBF9">
                        <td height="30" align="right" bgcolor="#FFFFFF">
                            &nbsp;
                        </td>
                        <td align="left" bgcolor="#FFFFFF" style="padding: 10px;">
                            <label>
                                <ShoveWebUI:ShoveConfirmButton ID="btnOK" runat="server" Text="确定修改" AlertText="确信输入的资料无误，并立即保存资料吗？"
                                    OnClick="btnOK_Click" Style="cursor: pointer;" />
                                <input type="reset" name="button2" id="button2" value="重填" />
                            </label>
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
