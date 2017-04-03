<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddPromoter.aspx.cs" Inherits="CPS_Admin_AddPromoter" %>

<%@ Register Assembly="Shove.Web.UI.4 For.NET 3.5" Namespace="Shove.Web.UI" TagPrefix="ShoveWebUI" %>
<%@ Register Src="../UserControls/Head.ascx" TagName="Head" TagPrefix="uc1" %>
<%@ Register Src="../UserControls/Foot.ascx" TagName="Foot" TagPrefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head2" runat="server">
    <title>百姓彩票网－兼职推广员联盟|兼职工作|联盟推广|广告联盟</title>
    <meta name="description" content="针对拥有用户访问流量的网站，分配一个指定的用户访问域名链接。网站负责推广此广告链接，联盟通过指定的域名链接产生的用户交易量给网站站长支付分润收益。我们称之为“流量合作分润系统”，以下简称“CPS联盟”。" />
    <meta name="keywords" content="兼职推广员联盟|兼职工作|联盟推广|广告联盟" />
    <link href="../Style/jz.css" rel="stylesheet" type="text/css" />
    <link href="../Style/home.css" rel="stylesheet" type="text/css" />

    <script src="../../Components/My97DatePicker/WdatePicker.js" type="text/javascript"></script>

</head>
<body>
    <form id="form1" runat="server">
    <uc1:Head ID="Head1" runat="server" />
    <div class="daohang2">
        您现在位置:兼职推广首页 >> 会员管理</div>
    <div class="home">
        <div class="hometop">
        </div>
        <div class="homecen">
            <div class="left">
                <p class="titl">
                    客服资料</p>
                <p class="name">
                    <span id="lbUserName" runat="server">XXX</span><br />
                    级别:<span id="lbUserType" runat="server">推广员</span></p>
                <p class="a">
                    <a href="Default.aspx">基本信息</a> <a href="../../Home/Room/UserEdit.aspx">个人资料</a>
                </p>
                <p class="a">
                    <a href="../../Home/Room/EditPassword.aspx">修改密码</a>
                    <asp:LinkButton ID="lbExit" runat="server" OnClick="lbExit_Click">安全退出</asp:LinkButton>
                </p>
                <ul id="trPromoterCPS" runat="server">
                    <li><a href="NewsLink.aspx">广告链接</a></li>
                    <li><a href="IncomeDetaile.aspx">收入明细</a></li>
                    <li><a href="MonthTable.aspx">月度结算表</a></li>
                    <li><a href="MemberList.aspx" class="hover">会员管理</a></li>
                    <li><a href="../../Home/Room/Distill.aspx">提款管理</a></li>
                </ul>
                <ul id="trPromoter" runat="server" visible="false">
                    <li><a href="NewsLink.aspx">广告链接</a></li>
                    <li><a href="IncomeDetaile.aspx">收入明细</a></li>
                    <li><a href="MonthTable.aspx">月度结算表</a></li>
                    <li><a href="MemberList.aspx" class="hover">会员管理</a></li>
                    <li><a href="PromoterList.aspx">推广员列表</a></li>
                    <li><a href="AddPromoter.aspx">增加推广员</a></li>
                    <li><a href="LinkList.aspx">推广链接列表</a></li>
                    <li><a href="LinkBonusScale.aspx">推广链接佣金设置</a></li>
                    <li><a href="../../Home/Room/Distill.aspx">提款管理</a></li>
                </ul>
            </div>
            <div class="right">
                <div class="top">
                </div>
                <div class="cen">
                    <table width="100%" border="0" cellspacing="1" cellpadding="0" bgcolor="#CCCCCC">
                        <tr>
                            <td height="30" colspan="2" align="center" bgcolor="#EAF2FE">
                                <strong class="blue12">增加推广员</strong>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" align="left" bgcolor="#FFFFFF" class="hui" style="padding: 10px;">
                                <table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="#CCCCCC">
                                    <tr>
                                        <td width="12%" height="28" align="right" bgcolor="#F7F7F7" class="black12">
                                            用户名：
                                        </td>
                                        <td bgcolor="#FFFFFF" style="padding-left: 2px;" class="blue">
                                            &nbsp;
                                            <asp:TextBox ID="tbUserName" runat="server" CssClass="in_text_hui" />
                                            &nbsp;<span class="red">*</span><span style="color: Red;">用户名长度在 5-16 个英文字符或数字、中文
                                                3-8 之间。</span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="12%" height="28" align="right" bgcolor="#F7F7F7" class="black12">
                                            密码：
                                        </td>
                                        <td bgcolor="#FFFFFF" style="padding-left: 2px;" class="blue">
                                            &nbsp;
                                            <asp:TextBox ID="tbPassword" runat="server" CssClass="in_text_hui" TextMode="Password" />
                                            &nbsp;<span class="red">*</span><span style="color: Red;">密码长度必须在 6-16 位之间。</span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="12%" height="28" align="right" bgcolor="#F7F7F7" class="black12">
                                            确认密码：
                                        </td>
                                        <td bgcolor="#FFFFFF" style="padding-left: 2px;" class="blue">
                                            &nbsp;
                                            <asp:TextBox ID="tbPwd" runat="server" CssClass="in_text_hui" TextMode="Password" />
                                            &nbsp;<span class="red">*</span><span style="color: Red;">密码长度必须在 6-16 位之间。</span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right" bgcolor="#F7F7F7" class="black12" height="28" width="12%">
                                            网站名称：
                                        </td>
                                        <td bgcolor="#FFFFFF" class="blue" style="padding-left: 2px;">
                                            &nbsp;
                                            <asp:TextBox ID="tbUrlName" runat="server" autocomplete="off" CssClass="in_text_hui" />
                                            <span class="red">&nbsp;*</span>&nbsp;
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right" bgcolor="#F7F7F7" class="black12" height="28" width="12%">
                                            网址：
                                        </td>
                                        <td bgcolor="#FFFFFF" class="blue" style="padding-left: 2px;">
                                            &nbsp;
                                            <asp:TextBox ID="tbUrl" runat="server" autocomplete="off" CssClass="in_text_hui" />
                                            <span class="red">&nbsp;*</span>&nbsp;
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right" bgcolor="#F7F7F7" class="black12" height="28" width="12%">
                                            联系人：
                                        </td>
                                        <td bgcolor="#FFFFFF" class="blue" style="padding-left: 2px;">
                                            &nbsp;
                                            <asp:TextBox ID="tbContactPerson" runat="server" autocomplete="off" CssClass="in_text_hui" />
                                            <span class="red">&nbsp;*</span>&nbsp;
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right" bgcolor="#F7F7F7" class="black12" height="28" width="12%">
                                            联系电话：
                                        </td>
                                        <td bgcolor="#FFFFFF" class="blue" style="padding-left: 2px;">
                                            &nbsp;
                                            <asp:TextBox ID="tbPhone" runat="server" autocomplete="off" CssClass="in_text_hui"
                                                onkeyup="value=value.replace(/[^\d\-]/g,'');" />
                                            <span class="red">&nbsp;</span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right" bgcolor="#F7F7F7" class="black12" height="28" width="12%">
                                            手机号码：
                                        </td>
                                        <td bgcolor="#FFFFFF" class="blue" style="padding-left: 2px;">
                                            &nbsp;
                                            <asp:TextBox ID="tbMobile" runat="server" autocomplete="off" CssClass="in_text_hui"
                                                onkeyup="value=value.replace(/[^\d]/g,'');" />
                                            <span class="red">&nbsp;* </span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right" bgcolor="#F7F7F7" class="black12" height="28" width="12%">
                                            QQ 号码：
                                        </td>
                                        <td bgcolor="#FFFFFF" class="blue" style="padding-left: 2px;">
                                            &nbsp;
                                            <asp:TextBox ID="tbQQNum" runat="server" autocomplete="off" CssClass="in_text_hui"
                                                onkeyup="value=value.replace(/[^\d]/g,'');" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right" bgcolor="#F7F7F7" class="black12" height="28" width="12%">
                                            Email：
                                        </td>
                                        <td bgcolor="#FFFFFF" class="blue" style="padding-left: 2px;">
                                            &nbsp;
                                            <asp:TextBox ID="tbEmail" runat="server" autocomplete="off" CssClass="in_text_hui" />
                                            <span class="red">&nbsp;*</span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center" bgcolor="#F7F7F7" class="black12" height="28" colspan="2">
                                            <asp:Button ID="btnOK" runat="server" OnClick="btnOK_Click" OnClientClick="return isNull();"
                                                Text="确 定" />
                                            &nbsp;&nbsp;
                                            <asp:Button ID="btnClear" runat="server" OnClientClick="return Clear();" Text="重 填" />
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </div>
                <div class="bottom">
                </div>
            </div>
        </div>
        <div class="homebottom">
        </div>
    </div>
    <div class="fooder">
        <h1>
            申请流程：</h1>
        <span>1注册推广员</span><em></em> <span>2获取广告链接</span><em></em> <span>3选择广告样式</span><em></em>
        <span>4广告上线推广</span><em></em> <span>5查询佣金</span><em></em> <span>6提起佣金</span>
    </div>
    <uc2:Foot ID="Foot1" runat="server" />
    </form>
</body>
</html>

<script language="javascript" type="text/javascript">
        function Clear() {
            var controls = document.getElementsByTagName("input");

            for (var i = 0; i < controls.length; i++) {
                if (controls[i].type == "text") {
                    controls[i].value = "";
                }
            }

            return false;
        }

        function isNull() {
            var name = document.getElementById('tbUserName');

            if (name.value == "" || name.value.length < 5 || name.value.length > 16) {
                alert("用户名长度在 5-16 个英文字符或数字、中文 3-8 之间！");
                name.focus();

                return false;
            }

            var password = document.getElementById('tbPassword');

            if (password.value == "" || password.value.length < 6 || password.value.length > 16) {
                alert("密码长度必须在 6-16 位之间！");
                password.focus();

                return false;
            }

            var pwd = document.getElementById('tbPwd');

            if (pwd.value != password.value) {
                alert("两次密码输入不一致，请仔细检查！");
                pwd.focus();

                return false;
            }

            if (document.getElementById('tbUrlName').value == "") {
                alert("请输入网站名称!");
                document.getElementById('tbUrlName').focus();
                return false;
            }
            if (document.getElementById('tbUrl').value == "") {
                alert("请输入网址!");
                document.getElementById('tbUrl').focus();
                return false;
            }
            if (document.getElementById('tbContactPerson').value == "") {
                alert("请输入联系人!");
                document.getElementById('tbContactPerson').focus();

                return false;
            }
            if (document.getElementById('tbMobile').value == "") {
                alert("请输入手机号码!");
                document.getElementById('tbMobile').focus();
                return false;
            }

            if (document.getElementById('tbEmail').value == "") {
                alert("请输入Email!");
                document.getElementById('tbEmail').focus();

                return false;
            }
        }
       
</script>

