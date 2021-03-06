﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="CPS_Admin_Default" %>

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
</head>
<body>
    <form id="form1" runat="server">
    <uc1:Head ID="Head1" runat="server" />
    <div class="daohang2">
        您现在位置:兼职推广首页 >> 基本信息</div>
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
                    <a href="Default.aspx">基本信息</a> <a href="../../Home/Room/UserEdit.aspx" target="_blank">
                        个人资料</a>
                </p>
                <p class="a">
                    <a href="../../Home/Room/EditPassword.aspx" target="_blank">修改密码</a>
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
                    <table width="100%" border="0" cellspacing="1" cellpadding="0" bgcolor="#CCCCCC"
                        style="height: 32px">
                        <tbody>
                            <tr>
                                <td height="30" colspan="2" align="center" bgcolor="#EAF2FE">
                                    <strong class="blue12">基本信息</strong>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <table width="100%" border="0" cellspacing="1" cellpadding="0" bgcolor="#ccccccc">
                        <tbody>
                            <tr>
                                <td height="28" align="right" bgcolor="#F3F8FD">
                                    今日新增会员数：
                                </td>
                                <td height="28" align="left" bgcolor="#FFFFFF" style="padding-left: 10px;">
                                    <span id="spanMemberCountByDay" class="red" runat="server">0</span>人
                                </td>
                            </tr>
                            <tr>
                                <td width="23%" height="28" align="right" bgcolor="#F3F8FD">
                                    累计会员人数：
                                </td>
                                <td width="77%" height="28" align="left" bgcolor="#FFFFFF" style="padding-left: 10px;">
                                    <span id="spanMemberCount" class="red" runat="server">0</span>人
                                </td>
                            </tr>
                            <tr>
                                <td height="28" align="right" bgcolor="#F3F8FD">
                                    今日收入：
                                </td>
                                <td height="28" align="left" bgcolor="#FFFFFF" style="padding-left: 10px;">
                                    <span id="spanIncomeByDay" class="red" runat="server">0.00</span>元
                                </td>
                            </tr>
                            <tr>
                                <td height="28" align="right" bgcolor="#F3F8FD">
                                    累计收入：
                                </td>
                                <td height="28" align="left" bgcolor="#FFFFFF" style="padding-left: 10px;">
                                    <span id="spanIncome" class="red" runat="server">0.00</span>元
                                </td>
                            </tr>
                            <tr>
                                <td height="28" align="right" bgcolor="#F3F8FD">
                                    已提佣金：
                                </td>
                                <td height="28" align="left" bgcolor="#FFFFFF" style="padding-left: 10px;">
                                    <span id="spanUsedBonus" class="red" runat="server">0.00</span>元( 包含已经提款的金额、申请中的提款金额、提款手续费
                                    )
                                </td>
                            </tr>
                            <tr>
                                <td height="28" align="right" bgcolor="#F3F8FD">
                                    可提佣金：
                                </td>
                                <td height="28" align="left" bgcolor="#FFFFFF" style="padding-left: 10px;">
                                    <span id="spanAllowBonus" class="red" runat="server">0.00</span>元 (本月实时佣金<span id="lbThisMonthIncome"
                                        class="red" runat="server">0.00</span> 元，未到结算期，不可提取)
                                </td>
                            </tr>
                            <tr>
                                <td height="40" colspan="2" align="center" bgcolor="#FFFFFF">
                                    &nbsp;
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
    </form>
</body>
</html>
