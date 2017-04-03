<%@ page language="C#" autoeventwireup="true" inherits="CPS_Admin_PromoterInfo, App_Web_xh7rtory" enableEventValidation="false" %>

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
                    <li><a href="MemberList.aspx">会员管理</a></li>
                    <li><a href="PromoterList.aspx" class="hover">推广员列表</a></li>
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
                                <strong class="blue12">广告链接</strong>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" align="left" bgcolor="#FFFFFF" class="hui" style="padding: 10px;">
                                <table width="100%" border="0" cellspacing="1" cellpadding="0" bgcolor="#ccccccc">
                                    <tr>
                                        <td width="23%" height="28" align="right" bgcolor="#F3F8FD">
                                            链接地址：
                                        </td>
                                        <td width="77%" height="28" align="left" bgcolor="#FFFFFF" style="padding-left: 10px;">
                                            <span class="red14" id="spanLinkUrl" runat="server"></span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td height="28" align="right" bgcolor="#F3F8FD">
                                            CPS模式：
                                        </td>
                                        <td height="28" align="left" id="tdType" runat="server" bgcolor="#FFFFFF" style="padding-left: 10px;">
                                            推广员
                                        </td>
                                    </tr>
                                    <tr>
                                        <td height="28" align="right" bgcolor="#F3F8FD">
                                            返点比例：
                                        </td>
                                        <td height="28" align="left" bgcolor="#FFFFFF" class="red" style="padding-left: 10px;">
                                            <a href="CommendPromoterBonusScaleEidt.aspx?id=<%=CpsID %>">查看/设置返点比例<span></span></a>
                                        </td>
                                    </tr>
                                </table>
                                <table width="100%" border="0" cellspacing="0" cellpadding="0" style="margin-top: 10px;">
                                    <tr>
                                        <td class="red14">
                                            商家资料信息：
                                        </td>
                                    </tr>
                                </table>
                                <table width="100%" border="0" cellspacing="1" cellpadding="0" bgcolor="#CCCCCC">
                                    <tr>
                                        <td width="13%" height="30" align="right" bgcolor="#F5F5F5">
                                            真实姓名：
                                        </td>
                                        <td width="39%" bgcolor="#FFFFFF" style="padding-left: 10px;" id="tdRealyName" runat="server">
                                        </td>
                                        <td width="17%" align="right" bgcolor="#F5F5F5">
                                            ID：
                                        </td>
                                        <td width="31%" bgcolor="#FFFFFF" style="padding-left: 10px;" id="tdUserName" runat="server">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td height="30" align="right" bgcolor="#F5F5F5">
                                            联系人：
                                        </td>
                                        <td bgcolor="#FFFFFF" style="padding-left: 10px;">
                                            <asp:TextBox ID="tbContactPerson" size="30" runat="server" autocomplete="off" ReadOnly="true"  CssClass="text"/><span
                                                class="red">*</span>
                                        </td>
                                        <td align="right" bgcolor="#F5F5F5">
                                            联系电话：
                                        </td>
                                        <td bgcolor="#FFFFFF" style="padding-left: 10px;">
                                            <asp:TextBox ID="tbPhone" size="30" runat="server" ReadOnly="true" autocomplete="off"
                                                onkeyup="value=value.replace(/[^\d\-]/g,'');"  CssClass="text"/><span class="red">*</span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td height="30" align="right" bgcolor="#F5F5F5">
                                            手机号码：
                                        </td>
                                        <td bgcolor="#FFFFFF" style="padding-left: 10px;">
                                            <asp:TextBox ID="tbMobile" size="30" runat="server" ReadOnly="true" autocomplete="off"
                                                onkeyup="value=value.replace(/[^\d]/g,'');" CssClass="text"/><span class="red">*</span>
                                        </td>
                                        <td align="right" bgcolor="#F5F5F5" style="padding-left: 10px;">
                                            MSN,QQ：
                                        </td>
                                        <td bgcolor="#FFFFFF" style="padding-left: 10px;">
                                            <asp:TextBox ID="tbQQNum" size="30" runat="server" ReadOnly="true" autocomplete="off"
                                                onkeyup="value=value.replace(/[^\d]/g,'');" CssClass="text" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td height="30" align="right" bgcolor="#F5F5F5">
                                            Email：
                                        </td>
                                        <td bgcolor="#FFFFFF" style="padding-left: 10px;">
                                            <asp:TextBox ID="tbEmail" size="30" runat="server" autocomplete="off" CssClass="text" /><span class="red">*</span>
                                        </td>
                                        <td align="right" bgcolor="#F5F5F5">
                                            网站名称：
                                        </td>
                                        <td bgcolor="#FFFFFF" style="padding-left: 10px;">
                                            <asp:TextBox ID="tbUrlName" size="30" ReadOnly="true" runat="server" autocomplete="off"  CssClass="text"/><span
                                                class="red">*</span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td height="30" align="right" bgcolor="#F5F5F5">
                                            网址：
                                        </td>
                                        <td bgcolor="#FFFFFF" colspan="3" style="padding-left: 10px;">
                                            <asp:TextBox ID="tbUrl" size="30" ReadOnly="true" runat="server" autocomplete="off"  CssClass="text"/><span
                                                class="red">*</span>
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
