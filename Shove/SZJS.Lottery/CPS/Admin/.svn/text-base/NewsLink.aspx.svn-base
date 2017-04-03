<%@ Page Language="C#" AutoEventWireup="true" CodeFile="NewsLink.aspx.cs" Inherits="CPS_Admin_NewsLink" %>

<%@ Register Src="../UserControls/Head.ascx" TagName="Head" TagPrefix="uc1" %>
<%@ Register Src="../UserControls/Foot.ascx" TagName="Foot" TagPrefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>百姓彩票网－兼职推广员联盟|兼职工作|联盟推广|广告联盟</title>
    <meta name="description" content="针对拥有用户访问流量的网站，分配一个指定的用户访问域名链接。网站负责推广此广告链接，联盟通过指定的域名链接产生的用户交易量给网站站长支付分润收益。我们称之为“流量合作分润系统”，以下简称“CPS联盟”。" />
    <meta name="keywords" content="兼职推广员联盟|兼职工作|联盟推广|广告联盟" />
    <link href="../Style/jz.css" rel="stylesheet" type="text/css" />
    <link href="../Style/home.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <uc1:Head ID="Head1" runat="server" />
    <div class="daohang2">
        您现在位置:兼职推广首页 >> 广告链接</div>
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
                    <li><a href="NewsLink.aspx" class="hover">广告链接</a></li>
                    <li><a href="IncomeDetaile.aspx">收入明细</a></li>
                    <li><a href="MonthTable.aspx">月度结算表</a></li>
                    <li><a href="MemberList.aspx">会员管理</a></li>
                    <li><a href="../../Home/Room/Distill.aspx">提款管理</a></li>
                </ul>
                <ul id="trPromoter" runat="server" visible="false">
                    <li><a href="NewsLink.aspx" class="hover">广告链接</a></li>
                    <li><a href="IncomeDetaile.aspx">收入明细</a></li>
                    <li><a href="MonthTable.aspx">月度结算表</a></li>
                    <li><a href="MemberList.aspx">会员管理</a></li>
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
                    <table width="100%">
                        <tbody>
                            <tr>
                                <td>
                                    <strong class="blue12">广告链接</strong>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <table width="100%" border="0" cellspacing="1" cellpadding="0" bgcolor="#ccccccc">
                        <tbody>
                            <tr>
                                <td width="23%" height="28" align="right" bgcolor="#F3F8FD">
                                    链接地址：
                                </td>
                                <td width="77%" height="28" align="left" bgcolor="#FFFFFF" style="padding-left: 10px;">
                                    <span id="spanLinkUrl" runat="server" style="font-weight: bold; color: Red"></span>
                                    <input type="button" value="复制" style="cursor: pointer" onclick="doufucopy('spanLinkUrl')" class="btn" />
                                </td>
                            </tr>
                            <tr>
                                <td height="28" align="right" bgcolor="#F3F8FD">
                                    CPS模式：
                                </td>
                                <td id="tdType" height="28" runat="server" align="left" bgcolor="#FFFFFF" style="padding-left: 10px;">
                                    推广员
                                </td>
                            </tr>
                            <tr>
                                <td height="28" align="right" bgcolor="#F3F8FD">
                                    返点比例：
                                </td>
                                <td height="28" align="left" bgcolor="#FFFFFF" class="red" style="padding-left: 10px;">
                                    <a href="BonusScaleView.aspx">查看返点比例<span></span></a>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <table width="98%" border="0" cellspacing="0" cellpadding="0" style="margin-top: 10px;">
                        <tbody>
                            <tr>
                                <td class="red14">
                                    商家资料信息：
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <table width="100%" border="0" cellspacing="1" cellpadding="0" bgcolor="#CCCCCC">
                        <tbody>
                            <tr>
                                <td width="13%" height="30" align="right" bgcolor="#F5F5F5">
                                    真实姓名：
                                </td>
                                <td id="tdRealyName" runat="server" width="39%" bgcolor="#FFFFFF" style="padding-left: 10px;">
                                </td>
                                <td width="17%" align="right" bgcolor="#F5F5F5">
                                    ID：
                                </td>
                                <td id="tdUserName" runat="server" width="31%" bgcolor="#FFFFFF" style="padding-left: 10px;">
                                </td>
                            </tr>
                            <tr>
                                <td height="30" align="right" bgcolor="#F5F5F5">
                                    联系人：
                                </td>
                                <td bgcolor="#FFFFFF" style="padding-left: 10px;">
                                    <input name="tbContactPerson" runat="server" type="text" id="tbContactPerson" size="30" class="text"
                                        autocomplete="off"><span class="red">*</span>
                                </td>
                                <td align="right" bgcolor="#F5F5F5">
                                    联系电话：
                                </td>
                                <td bgcolor="#FFFFFF" style="padding-left: 10px;">
                                    <input name="tbPhone" type="text" runat="server" id="tbPhone" size="30" autocomplete="off"
                                        onkeyup="value=value.replace(/[^\d\-]/g,'');" class="text"/><span class="red">*</span>
                                </td>
                            </tr>
                            <tr>
                                <td height="30" align="right" bgcolor="#F5F5F5">
                                    手机号码：
                                </td>
                                <td bgcolor="#FFFFFF" style="padding-left: 10px;">
                                    <input name="tbMobile" type="text" id="tbMobile" runat="server" size="30" autocomplete="off"
                                        onkeyup="value=value.replace(/[^\d]/g,'');" class="text"/><span class="red">*</span>
                                </td>
                                <td align="right" bgcolor="#F5F5F5" style="padding-left: 10px;">
                                    MSN,QQ：
                                </td>
                                <td bgcolor="#FFFFFF" style="padding-left: 10px;">
                                    <input name="tbQQNum" type="text" id="tbQQNum" runat="server" size="30" autocomplete="off"
                                        onkeyup="value=value.replace(/[^\d]/g,'');" class="text" />
                                </td>
                            </tr>
                            <tr>
                                <td height="30" align="right" bgcolor="#F5F5F5">
                                    Email：
                                </td>
                                <td bgcolor="#FFFFFF" style="padding-left: 10px;">
                                    <input name="tbEmail" type="text" id="tbEmail" runat="server" size="30" autocomplete="off" class="text" /><span
                                        class="red">*</span>
                                </td>
                                <td align="right" bgcolor="#F5F5F5">
                                    网站名称：
                                </td>
                                <td bgcolor="#FFFFFF" style="padding-left: 10px;">
                                    <input name="tbUrlName" type="text" id="tbUrlName" runat="server" size="30" autocomplete="off" class="text" /><span
                                        class="red">*</span>
                                </td>
                            </tr>
                            <tr>
                                <td height="30" align="right" bgcolor="#F5F5F5">
                                    网址：
                                </td>
                                <td id="tdUrl" bgcolor="#FFFFFF" style="padding-left: 10px;">
                                    <input name="tbUrl" type="text" id="tbUrl" runat="server" size="30" autocomplete="off" class="text" /><span
                                        class="red">*</span>
                                </td>
                                <td bgcolor="#F5F5F5" height="30" align="right" id="tdMD51" runat="server" visible="false">
                                    MD5校验码：
                                </td>
                                <td bgcolor="#FFFFFF" style="padding-left: 10px;" id="tdMD52" runat="server" visible="false">
                                    <asp:TextBox ID="tbMD5Key" size="30" runat="server" autocomplete="off" MaxLength="64" CssClass="text"/><span
                                        class="red">*</span>
                                </td>
                            </tr>
                            <tr>
                                <td height="40" align="center" colspan="4" bgcolor="#FFFFFF">
                                    <asp:Button ID="btnOK" runat="server" Text="确 定" OnClientClick="return isNull();"
                                        OnClick="btnOK_Click" CssClass="btn" />
                                    &nbsp;&nbsp;&nbsp;&nbsp;<input type="button" value="重 填" onclick="clears();"  class="btn"/>
                                </td>
                            </tr>
                        </tbody>
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
    <asp:HiddenField ID="hidType" runat="server" Value="1" />
    </form>
</body>
</html>

<script type="text/javascript">
    function clears() {
        var controls = document.getElementsByTagName("input");

        for (var i = 0; i < controls.length; i++) {
            if (controls[i].type == "text") {
                controls[i].value = "";
            }
        }
    }

    function isNull() {
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
        
        if (document.getElementById("hidType").value == "2") {
            if (document.getElementById('tbMD5Key').value == "") {
                alert("请输入MD5校验码!");
                document.getElementById('tbMD5Key').focus();
                return false;
            }
        }
        
        if (document.getElementById('tbContactPerson').value == "") {
            alert("请输入联系人!");
            document.getElementById('tbContactPerson').focus();

            return false;
        }

        if (document.getElementById('tbPhone').value == "") {
            alert("请输入联系电话!");
            document.getElementById('tbPhone').focus();

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

    function doufucopy(span) {
        clipboardData.setData("text", document.getElementById(span).innerText);
        alert("复制成功！");
    }
</script>

