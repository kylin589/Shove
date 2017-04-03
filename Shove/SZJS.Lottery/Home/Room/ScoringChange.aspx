<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ScoringChange.aspx.cs" Inherits="Home_Room_ScoringChange" %>

<%@ Register Assembly="Shove.Web.UI.4 For.NET 3.5" Namespace="Shove.Web.UI" TagPrefix="ShoveWebUI" %>
<%@ Register Src="../../UserControls/Head.ascx" TagName="Head" TagPrefix="uc1" %>
<%@ Register Src="UserControls/UserMyIcaile.ascx" TagName="UserMyIcaile" TagPrefix="uc2" %>
<%@ Register Src="UserControls/WebFoot.ascx" TagName="WebFoot" TagPrefix="uc3" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>积分兑换-我的积分-<%= _Site.Name %>
        ！</title>
    <meta name="description" content="<%= _Site.Name %> 是一家服务于中国彩民的互联网彩票合买代购交易平台，涉及中国彩票彩种最全的网站，包含双色球,大乐透,七星彩,3d,足彩等众多彩种的实时开奖信息,图表走势、分析预测以及开奖信息等!" />
    <meta name="keywords" content="双色球合买,体育彩票,福利彩票,双色球开奖信息." />
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
    <link href="Style/common.css" rel="stylesheet" type="text/css" />
    <link href="Style/StyleSheet.css" rel="stylesheet" type="text/css" />
    <link href="Style/home.css" rel="stylesheet" type="text/css" />
    <link rel="shortcut icon" href="../../favicon.ico" />

    <script src="JavaScript/Public.js" type="text/javascript"></script>
    <script src="../../JavaScript/jquery-1.4.js" type="text/javascript"></script>
     <script type="text/javascript">
        
		function btnGoClick()
		{
			var o_labScoring = window.document.all["labScoring"];
			var o_tbScoring = window.document.all["tbScoring"];
            var Opt_ScoringExchangeRate = <%=Opt_ScoringExchangeRate.ToString()%>;
			var Scoring = o_tbScoring.value;
			
			if (Scoring < Opt_ScoringExchangeRate)
			{
				alert("请输入正确的兑换积分(积分必须为 " + Opt_ScoringExchangeRate + " 的整数倍)。");
				o_tbScoring.focus();
				
				return false;
			}
			
			if (Math.floor(Scoring / Opt_ScoringExchangeRate) * Opt_ScoringExchangeRate != Scoring)
			{
				alert("请输入正确的兑换积分(积分必须为 " + Opt_ScoringExchangeRate + " 的整数倍)。");
				o_tbScoring.focus();
				
				return false;
			}

			if (Scoring > StrToFloat(o_labScoring.innerText))
			{
				alert("您账户的可兑换积分不足，请重新输入。");
				o_tbScoring.focus();
				
				return false;
			}

			if (!confirm("您确信输入无误并要兑换积分吗？"))
			{
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
            <div class="jilua">
                <div id="con">
                    <ul id="tags">
                        <li class="selectTag"><a href="javascript:void(0)">我的积分兑换</a></li>
                    </ul>
                    <div id="tagContent">
                        <div class="tagContent selectTag" id="tagContent0">
                            <table cellspacing="0" cellpadding="0" width="100%" align="center" border="0" ">
                                <tr style="background-color: White;">
                                    <td class="hei12" style="padding: 10px; height: 61px;" align="left">
                                        您现在账户上的积分为
                                        <asp:Label ID="labScoringSum" runat="server" ForeColor="Red"></asp:Label>&nbsp;分，可兑换的积分为
                                        <asp:Label ID="labScoring" runat="server" ForeColor="Red"></asp:Label>&nbsp;分。
                                        <br />
                                        现想兑换
                                        <asp:TextBox ID="tbScoring" runat="server" Width="72px" BorderStyle="Solid" BorderWidth="1px"></asp:TextBox>&nbsp;分&nbsp;(<font
                                            color="#ff0000"><%=Opt_ScoringExchangeRate.ToString()%></font>&nbsp;的整数倍)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <ShoveWebUI:ShoveConfirmButton ID="btnOK" runat="server" BackColor="Transparent"
                                            BackgroupImage="Images/buttbg.gif" Style="font-size: 9pt; cursor: hand; border-top-style: none;
                                            font-family: 宋体; border-right-style: none; border-left-style: none; border-bottom-style: none;"
                                            Width="60px" Text="立即兑换" OnClick="btnOK_Click" OnClientClick="if (!btnGoClick()) return false; this.disabled=true;"
                                            Height="20px" />
                                    </td>
                                </tr>
                                <tr style="background-color: White;">
                                    <td style="height: 1px">
                                        &nbsp;
                                    </td>
                                </tr>
                                <tr style="background-color: White;">
                                    <td style="height: 200px; padding: 10px;" align="left">
                                        <span>我的积分规则</span> ：<br />
                                        <br />
                                        1. 我的积分是对用户参与本站彩票代购、合买进行奖励的积分机制。<br />
                                        <br />
                                        2. 我的购彩积分：<br />
                                        <font face="宋体">&nbsp;&nbsp;&nbsp; 在本站参与代购、合买彩票的用户，每成功购买满 <font color="#ff0000">1</font>
                                            元（撤单、方案未成功不积分），积 <font color="#ff0000">
                                                <%= ScoringOfSelfBuy.ToString()%>
                                            </font>分，单次投注不满 <font color="#ff0000">1</font> 元不积分。<br />
                                            <br />
                                            3.我的推荐积分：<br />
                                            &nbsp;&nbsp;&nbsp; 本站会员用一个属于自己专用的链接地址
                                            <asp:HyperLink ID="hlCommend" runat="server" Style="color:Red" NavigateUrl="Commend.aspx">推荐他人注册</asp:HyperLink>&nbsp;成为本站会员，并在本站参与代购、合买彩票，系统将奖励推荐积分，积分规则同“购彩积分”，即：每成功购买满
                                            <font color="#ff0000">1</font> 元钱（撤单、方案未成功不积分），积 <font color="#ff0000">
                                                <%= ScoringOfCommendBuy.ToString()%>
                                            </font>分，单次投注不满 <font color="#ff0000">1</font> 元不积分。<br />
                                            <br />
                                            4.积分兑换：<br />
                                            &nbsp;&nbsp;&nbsp; 积分满 <font color="#ff0000">
                                                <%=Opt_ScoringExchangeRate.ToString()%></font> 分，用户可以进行积分兑换，兑换以 <font color="#ff0000">
                                                    <%=Opt_ScoringExchangeRate.ToString()%></font> 分为一个兑换单位，超过 <font color="#ff0000">
                                                        <%=Opt_ScoringExchangeRate.ToString()%></font> 分兑换奖励的用户，兑换积分必须是 <font color="#ff0000">
                                                            <%=Opt_ScoringExchangeRate.ToString()%></font> 的整数倍，不够 <font color="#ff0000">
                                                                <%=Opt_ScoringExchangeRate.ToString()%></font> 分不能兑换。<font color="#ff0000"><%=Opt_ScoringExchangeRate.ToString()%></font>
                                            分兑换 <font color="#ff0000">1</font> 元，兑换后此款项自动增加到用户的可用资金中。</font>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <uc3:WebFoot ID="WebFoot1" runat="server" />
    </form>
</body>
</html>
