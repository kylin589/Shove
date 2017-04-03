<%@ page language="C#" autoeventwireup="true" enableeventvalidation="false" inherits="Home_Room_UserEdit, App_Web_y4qeesyo" %>

<%@ Register Assembly="Shove.Web.UI.4 For.NET 3.5" Namespace="Shove.Web.UI" TagPrefix="ShoveWebUI" %>
<%@ Register Src="UserControls/WebFoot.ascx" TagName="WebFoot" TagPrefix="uc1" %>
<%@ Register Src="../../UserControls/Head.ascx" TagName="Head" TagPrefix="uc2" %>
<%@ Register Src="UserControls/UserMyIcaile.ascx" TagName="UserMyIcaile" TagPrefix="uc3" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>修改用户资料-<%=_Site.Name %>-买彩票，就上<%=_Site.Name %>！</title>
    <meta name="description" content="<%=_Site.Name %>彩票网是一家服务于中国彩民的互联网彩票合买代购交易平台，涉及中国彩票彩种最全的网站，包含双色球、时时乐、时时彩、足彩等众多彩种的实时开奖信息、图表走势、分析预测等。" />
    <meta name="keywords" content="修改用户资料" />
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
    <link href="Style/common.css" rel="stylesheet" type="text/css" />
    <link href="Style/StyleSheet.css" rel="stylesheet" type="text/css" />
    <link href="Style/home.css" rel="stylesheet" type="text/css" />
    <link rel="shortcut icon" href="../../favicon.ico" />
    <style type="text/css">
        .red12
        {
            font-size: 12px;
            color: #FF0065;
            font-family: "tahoma";
            line-height: 20px;
        }
        .red12 A:link
        {
            font-family: "tahoma";
            color: #FF0065;
            text-decoration: none;
        }
        .red12 A:active
        {
            font-family: "tahoma";
            color: #FF0065;
            text-decoration: none;
        }
        .red12 A:visited
        {
            font-family: "tahoma";
            color: #FF0065;
            text-decoration: none;
        }
        .red12 A:hover
        {
            font-family: "tahoma";
            color: #ff6600;
            text-decoration: none;
        }
        .jilua table tr td
{

	border-bottom-style: solid;
	border-bottom-width: 1px;
	border-bottom-color: #CCCCCC; border-left:none;  border-right:none; border-top:none;
}
    </style>

    <script src="../../JavaScript/jquery-1.4.js" type="text/javascript"></script>

    <script src="../../Components/My97DatePicker/WdatePicker.js" type="text/javascript"></script>

</head>
<body>
    <form id="form1" runat="server">
    <input type="hidden" runat="server" id="hdIDCardNumber" />
    <uc2:Head ID="Head1" runat="server" />
    <div class="wrap">
        <uc3:UserMyIcaile ID="UserMyIcaile1" runat="server" />
        <div class="rights">
            <div class="myself">
                <div class="bangding">
                    <p>
                        尊敬的会员：<span class="red">
                            <%=_User.Name %></span></p>
                </div>
            </div>
            <div class="jilua">
                <div id="con">
                    <ul id="tags">
                        <li class="selectTag"><a href="javascript:void(0)">我的个人中心</a></li>
                    </ul>
                    <div>
                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                            <tr bgcolor="#C0DBF9">
                                <td width="20%" height="30" style="text-align: right" bgcolor="#FFFFFF">
                                    真实姓名：<span class="red12"></span>
                                </td>
                                <td width="80%" bgcolor="#FFFFFF" style="padding-left: 10px; text-align: left">
                                    <asp:TextBox ID="tbRealityName" runat="server" Width="160px" CssClass="input_txt"></asp:TextBox>
                                    <asp:Label ID="lbRealityName" runat="server" Visible="false"></asp:Label>&nbsp;&nbsp;
                                    <asp:Label ID="lbIsRealityNameValided" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr bgcolor="#C0DBF9">
                                <td width="20%" height="30" style="text-align: right" bgcolor="#FFFFFF">
                                    &nbsp;
                                </td>
                                <td bgcolor="#FFFFFF" style="padding-left: 10px; text-align: left">
                                    <span class="red12">非常重要，您提款的重要依据，提款时银行卡的户名必须是这里填写的真实姓名，一旦提交将不可更改！</span>
                                </td>
                            </tr>
                            <tr bgcolor="#C0DBF9">
                                <td width="20%" height="30" style="text-align: right" bgcolor="#FFFFFF">
                                    身份证号码：<span class="red12"></span>
                                </td>
                                <td width="80%" bgcolor="#FFFFFF" style="padding-left: 10px; text-align: left">
                                    <asp:TextBox ID="tbIdIDCardNumber" Text="" runat="server" Width="160px" CssClass="input_txt"></asp:TextBox>
                                    <asp:Label ID="lbIdCardNumber" runat="server" Visible="false"></asp:Label>&nbsp;&nbsp;
                                    <asp:Label ID="lbIsIdCardNumberValided" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr bgcolor="#C0DBF9">
                                <td width="20%" height="30" style="text-align: right" bgcolor="#FFFFFF">
                                    &nbsp;
                                </td>
                                <td bgcolor="#FFFFFF" style="padding-left: 10px; text-align: left">
                                    <span>填写成功后用户不能自行修改，如需修改，请点击&nbsp;</span><span class="red12">在线客服</span>&nbsp;<span>咨询处理流程，请确认。</span>
                                </td>
                            </tr>
                            <tr bgcolor="#C0DBF9">
                                <td width="20%" height="30" style="text-align: right" bgcolor="#FFFFFF">
                                    用户名：<span class="red12"></span>
                                </td>
                                <td width="80%" bgcolor="#FFFFFF" style="padding-left: 10px; text-align: left">
                                    <asp:Label ID="lbUserName" runat="server" Text=""></asp:Label>
                                </td>
                            </tr>
                            <tr bgcolor="#C0DBF9">
                                <td width="20%" height="30" style="text-align: right" bgcolor="#FFFFFF">
                                    性别：<span class="red12"></span>
                                </td>
                                <td width="80%" bgcolor="#FFFFFF" style="padding-left: 10px; text-align: left">
                                    <asp:RadioButton ID="rbSexM" runat="server" GroupName="rbSex" Text="男" />
                                    <asp:RadioButton ID="rbSexW" runat="server" GroupName="rbSex" Text="女" />
                                </td>
                            </tr>
                            <tr bgcolor="#C0DBF9">
                                <td height="30" style="text-align: right" bgcolor="#FFFFFF">
                                    手机号码：
                                </td>
                                <td bgcolor="#FFFFFF" style="padding-left: 10px; text-align: left">
                                    <label>
                                        <asp:Label ID="lbMobile" runat="server" Text="" Width="160px"></asp:Label>
                                        <asp:Label ID="labIsMobileVailded" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr bgcolor="#C0DBF9">
                                <td height="30" style="text-align: right" bgcolor="#FFFFFF">
                                    E-mail：
                                </td>
                                <td bgcolor="#FFFFFF" style="padding-left: 10px; text-align: left">
                                    <asp:TextBox ID="tbEmail" runat="server" Width="160px" MaxLength="50" CssClass="input_txt"></asp:TextBox>&nbsp;
                                    <asp:Label ID="lbIsEmailValided" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr bgcolor="#C0DBF9">
                                <td height="30" style="text-align: right" bgcolor="#FFFFFF">
                                    QQ：
                                </td>
                                <td bgcolor="#FFFFFF" style="padding-left: 10px; text-align: left">
                                    <asp:Label ID="lbQQ" runat="server" Text="" Width="160px"></asp:Label>
                                    <asp:Label ID="lbQQValided" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr bgcolor="#C0DBF9">
                                <td height="30" style="text-align: right" bgcolor="#FFFFFF">
                                    城市：
                                </td>
                                <td bgcolor="#FFFFFF" style="padding-left: 10px; text-align: left">
                                    <ShoveWebUI:ShoveProvinceCityInput ID="ddlCity" runat="server" SupportDir="~/ShoveWebUI_client" />
                                </td>
                            </tr>
                            <tr bgcolor="#C0DBF9">
                                <td height="30" style="text-align: right" bgcolor="#FFFFFF">
                                    出生日期：
                                </td>
                                <td bgcolor="#FFFFFF" style="padding-left: 10px; text-align: left">
                                    <asp:TextBox ID="tbBirthday" runat="server" MaxLength="10" onFocus="WdatePicker({el:'tbBirthday',dateFmt:'yyyy-MM-dd', maxDate:'%y-%M-%d'})" CssClass="input_txt"></asp:TextBox>
                                    <span>如：1990-9-1</span>
                                </td>
                            </tr>
                            <tr bgcolor="#C0DBF9">
                                <td height="30" style="text-align: right" bgcolor="#FFFFFF">
                                    联系地址：
                                </td>
                                <td bgcolor="#FFFFFF" style="padding-left: 10px; text-align: left">
                                    <asp:TextBox ID="tbAddress" Width="260px" runat="server" MaxLength="50" CssClass="input_txt"></asp:TextBox>
                                </td>
                            </tr>
                            <tr bgcolor="#C0DBF9">
                                <td height="20" colspan="2" style="text-align: right" bgcolor="#FFFFFF">
                                    <div id="hr">
                                    </div>
                                </td>
                            </tr>
                            <tr bgcolor="#C0DBF9">
                                <td height="30" style="text-align: right" bgcolor="#FFFFFF">
                                    &nbsp;
                                </td>
                                <td bgcolor="#FFFFFF" class="red12" style="padding-left: 10px; text-align: left">
                                    （为了您的账户安全，请您输入以下信息进行确认）
                                </td>
                            </tr>
                            <div id="divNewQF" runat="server" visible="false">
                                <tr width="17%" height="30" style="text-align: right">
                                    <td width="17%" height="30" style="text-align: right">
                                        安全保护问题
                                    </td>
                                    <td style="padding-left: 10px; text-align: left">
                                        <asp:DropDownList ID="ddlQuestion" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlQuestion_SelectedIndexChanged">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr id="trMQ" runat="server" visible="false">
                                    <td width="17%" height="30" style="text-align: right">
                                        自定义问题：
                                    </td>
                                    <td bgcolor="#FFFFFF" style="padding-left: 10px; text-align: left">
                                        <asp:TextBox ID="tbMyQuestion" runat="server" MaxLength="90" Width="550" CssClass="input_txt"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="17%" height="30" style="text-align: right">
                                        答案：
                                    </td>
                                    <td bgcolor="#FFFFFF" style="padding-left: 10px; text-align: left">
                                        <asp:TextBox ID="tbAnswer" runat="server" CssClass="input_txt"></asp:TextBox>
                                    </td>
                                </tr>
                            </div>
                            <div id="divAnswer" visible="false" runat="server">
                                <tr bgcolor="#C0DBF9">
                                    <td height="30" style="text-align: right" bgcolor="#FFFFFF">
                                        安全保护问题：
                                    </td>
                                    <td bgcolor="#FFFFFF" style="padding-left: 10px; text-align: left">
                                        <asp:Label ID="lbQuestion" runat="server"></asp:Label>
                                        &nbsp;&nbsp;<span><a href="SafeSet.aspx?FromUrl='UserEdit.aspx'">
                                            <asp:Label ID="lbQuestionInfo" runat="server"></asp:Label>
                                        </a></span>
                                    </td>
                                </tr>
                                <tr bgcolor="#C0DBF9">
                                    <td height="30" style="text-align: right" bgcolor="#FFFFFF">
                                        答案：
                                    </td>
                                    <td bgcolor="#FFFFFF" style="padding-left: 10px; text-align: left">
                                        <asp:TextBox ID="tbMyA" runat="server" CssClass="input_txt"></asp:TextBox>
                                        <span class="red12">*</span>
                                    </td>
                                </tr>
                            </div>
                            <tr bgcolor="#C0DBF9">
                                <td colspan="2" style="text-align: right" bgcolor="#FFFFFF">
                                    <div id="hr">
                                    </div>
                                </td>
                            </tr>
                            <tr bgcolor="#C0DBF9">
                                <td height="30" style="text-align: right" bgcolor="#FFFFFF">
                                    &nbsp;
                                </td>
                                <td align="left" bgcolor="#FFFFFF" style="padding: 10px;">
                                    <ShoveWebUI:ShoveConfirmButton ID="btnOK" runat="server" Text="确定修改" AlertText="确信输入的资料无误，并立即保存资料吗？"
                                        Style="cursor: pointer;" OnClick="btnOK_Click"  CssClass="qrxg"/>
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <uc1:WebFoot ID="WebFoot1" runat="server" />
    </form>
</body>
</html>
