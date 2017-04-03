<%@ Page Language="C#" AutoEventWireup="true" CodeFile="WordCode.aspx.cs" Inherits="CPS_Admin_WordCode" %>

<%@ Register Src="../UserControls/Head.ascx" TagName="Head" TagPrefix="uc1" %>
<%@ Register Src="../UserControls/Foot.ascx" TagName="Foot" TagPrefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>百姓彩票网－兼职推广员联盟|兼职工作|联盟推广|广告联盟</title>
    <meta name="description" content="针对拥有用户访问流量的网站，分配一个指定的用户访问域名链接。网站负责推广此广告链接，联盟通过指定的域名链接产生的用户交易量给网站站长支付分润收益。我们称之为“流量合作分润系统”，以下简称“CPS联盟”。" />
    <meta name="keywords" content="兼职推广员联盟|兼职工作|联盟推广|广告联盟" />
    <link href="../Style/home.css" rel="stylesheet" type="text/css" />
    <link href="../Style/jz.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <uc1:Head ID="Head1" runat="server" />
    <div class="daohang2">
        您现在位置:兼职推广首页 >>月度结算表
    </div>
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
                    <li><a href="ImageCode.aspx">图片广告样式</a></li>
                    <li><a href="WordCode.aspx" class="hover">文字标题广告样式</a></li>
                </ul>
            </div>
            <div class="right">
                <div class="top">
                </div>
                <div class="cen">
                    <table width="100%" border="0" cellspacing="1" cellpadding="0" bgcolor="#CCCCCC">
                        <tbody>
                            <tr>
                                <td height="30" colspan="3" align="center" bgcolor="#EAF2FE">
                                    <strong class="blue12">广告样式一</strong>
                                </td>
                            </tr>
                            <tr>
                                <td height="40" colspan="3" align="center" bgcolor="#FFFFFF" class="red14" style="padding-bottom: 5px;
                                    padding-top: 5px;">
                                    买彩票，就上<%=_Site.Name %>。
                                </td>
                            </tr>
                            <tr>
                                <td width="19%" height="30" align="center" bgcolor="#FCF5E1" class="hui">
                                    广告代码
                                </td>
                                <td width="66%" height="30" bgcolor="#FFFFFF" style="padding: 5px;">
                                    <asp:TextBox ID="tbWordCode1" TextMode="MultiLine" runat="server" ReadOnly="true"
                                        Rows="5" Columns="55"></asp:TextBox>
                                </td>
                                <td width="15%" bgcolor="#FFFFFF">
                                    <input type="button" onclick="doufucopy('tbWordCode1')" value="复制代码" class="btn" />
                                </td>
                            </tr>
                            <tr>
                                <td height="30" align="center" bgcolor="#FCF5E1">
                                    <span class="hui">广告形式</span>
                                </td>
                                <td height="30" colspan="2" align="left" bgcolor="#FFFFFF" class="hui" style="padding-left: 10px;">
                                    文字标题广告
                                </td>
                            </tr>
                            <tr>
                                <td height="30" align="center" bgcolor="#FCF5E1" class="hui">
                                    文字长度
                                </td>
                                <td height="30" colspan="2" align="left" bgcolor="#FFFFFF" class="hui" style="padding-left: 10px;">
                                    14个字符
                                </td>
                            </tr>
                            <tr>
                                <td height="30" align="center" bgcolor="#FCF5E1" class="hui">
                                    使用方法
                                </td>
                                <td height="30" colspan="2" align="left" bgcolor="#FFFFFF" class="hui" style="padding-left: 10px;">
                                    复制广告代码，粘贴在你要宣传的位置。
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <table width="100%" border="0" cellspacing="1" cellpadding="0" bgcolor="#CCCCCC"
                        style="margin-top: 10px;">
                        <tbody>
                            <tr>
                                <td height="30" colspan="3" align="center" bgcolor="#EAF2FE">
                                    <strong class="blue12">广告样式二</strong>
                                </td>
                            </tr>
                            <tr>
                                <td height="40" colspan="3" align="center" bgcolor="#FFFFFF" class="red14" style="padding-bottom: 5px;
                                    padding-top: 5px;">
                                    买彩票，就上<%=_Site.Name %>。
                                </td>
                            </tr>
                            <tr>
                                <td width="19%" height="30" align="center" bgcolor="#FCF5E1" class="hui">
                                    广告代码
                                </td>
                                <td width="66%" height="30" bgcolor="#FFFFFF" style="padding: 5px;">
                                    <asp:TextBox ID="tbWordCode2" TextMode="MultiLine" runat="server" ReadOnly="true"
                                        Rows="5" Columns="55"></asp:TextBox>
                                </td>
                                <td width="15%" bgcolor="#FFFFFF">
                                    <input type="button" onclick="doufucopy('tbWordCode2')" value="复制代码" class="btn" />
                                </td>
                            </tr>
                            <tr>
                                <td height="30" align="center" bgcolor="#FCF5E1">
                                    <span class="hui">广告形式</span>
                                </td>
                                <td height="30" colspan="2" align="left" bgcolor="#FFFFFF" class="hui" style="padding-left: 10px;">
                                    文字标题广告
                                </td>
                            </tr>
                            <tr>
                                <td height="30" align="center" bgcolor="#FCF5E1" class="hui">
                                    文字长度
                                </td>
                                <td height="30" colspan="2" align="left" bgcolor="#FFFFFF" class="hui" style="padding-left: 10px;">
                                    14个字符
                                </td>
                            </tr>
                            <tr>
                                <td height="30" align="center" bgcolor="#FCF5E1" class="hui">
                                    使用方法
                                </td>
                                <td height="30" colspan="2" align="left" bgcolor="#FFFFFF" class="hui" style="padding-left: 10px;">
                                    复制广告代码，粘贴在你要宣传的位置。
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    </td>
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

<script type="text/javascript">
    function doufucopy(text) {
        text = document.getElementById(text);
        textRange = text.createTextRange();
        textRange.execCommand("Copy");
        alert("已复制到剪粘板上");

        return false;
    }
</script>

