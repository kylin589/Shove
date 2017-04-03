<%@ page language="C#" autoeventwireup="true" inherits="Home_Room_Commend, App_Web_y4qeesyo" enableEventValidation="false" %>

<%@ Register Assembly="Shove.Web.UI.4 For.NET 3.5" Namespace="Shove.Web.UI" TagPrefix="ShoveWebUI" %>
<%@ Register Src="../../UserControls/Head.ascx" TagName="Head" TagPrefix="uc1" %>
<%@ Register Src="UserControls/UserMyIcaile.ascx" TagName="UserMyIcaile" TagPrefix="uc2" %>
<%@ Register Src="UserControls/WebFoot.ascx" TagName="WebFoot" TagPrefix="uc3" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>获取好友积分-我的积分-<%= _Site.Name %></title>
    <meta name="description" content="<%= _Site.Name %>是一家服务于中国彩民的互联网彩票合买代购交易平台，涉及中国彩票彩种最全的网站，包含双色球,大乐透,七星彩,3d,足彩等众多彩种的实时开奖信息,图表走势、分析预测以及开奖信息等!" />
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
            <div class="jilua">
                <div id="con">
                    <ul id="tags">
                        <li class="selectTag"><a href="javascript:void(0)">我的积分兑换</a></li>
                    </ul>
                    <div id="tagContent">
                        <div class="tagContent selectTag" id="tagContent0">
                            <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                                <tr style="background-color: White; padding: 20px 20px 20px 20px">
                                    <td valign="top">
                                        <table cellspacing="0" cellpadding="0" width="100%" align="center" border="0">
                                            <tr>
                                                <td style="height: 28px">
                                                    <font face="宋体">&nbsp;&nbsp;&nbsp; 我的专用链接地址(请复制下列地址，用 QQ, Email 等方式传给您的好友，只要您的好友通过这个链接注册成为本站会员，并参与彩票投注、合买，您将会获得意外的推荐积分):</font>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="height: 51px" align="center">
                                                    <font color="red">http://<%=Shove._Web.Utility.GetUrlWithoutHttp()%>/UserReg.aspx?CID=<%= UserID.ToString()%>&amp;CN=<%=System.Web.HttpUtility.UrlEncode(UserName)%></font>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <font face="宋体">&nbsp;&nbsp;&nbsp; 本站会员用一个属于自己专用的链接地址推荐他人注册成为本站会员，并在本站参与投注、合买彩票，系统将奖励推荐积分，积分规则同“购彩积分”，即：每成功购买满
                                                        <font color="#ff0000">1</font> 元钱（撤单、方案未成功不积分），积 <font color="#ff0000">
                                                            <%= _Site.SiteOptions["Opt_ScoringOfCommendBuy"].ToDouble(0)%>
                                                        </font>分，单次投注不满 <font color="#ff0000">1</font> 元不积分。积分满 <font color="#ff0000">100</font>
                                                        分，用户可以进行积分兑换，兑换以 <font color="#ff0000">100</font> 分为一个兑换单位，超过 <font color="#ff0000">
                                                            100</font> 分兑换奖励的用户，兑换积分必须是 <font color="#ff0000">100</font> 的整数倍，不够 <font color="#ff0000">
                                                                100</font> 分不能兑换。<font color="#ff0000">100</font> 分兑换 <font color="#ff0000">1</font>
                                                        元，兑换后此款项自动增加到用户的可用资金中。</font>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="height: 37px" align="right">
                                                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="ScoringDetail.aspx" CssClass="li3">我的积分明细</asp:HyperLink><font
                                                        face="宋体">&nbsp;</font>
                                                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="ScoringChange.aspx" CssClass="li3">我要兑换积分</asp:HyperLink><font
                                                        face="宋体">&nbsp;&nbsp; &nbsp;&nbsp; </font>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="height: 10px">
                                                    <font face="宋体"></font>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <font face="宋体"><font face="宋体">我推荐的会员列表</font>
                                                        <asp:DataGrid ID="g" runat="server" Width="100%" BorderStyle="None" AllowPaging="false"
                                                            PageSize="20" AutoGenerateColumns="False" CellPadding="0" BackColor="#DDDDDD"
                                                            Font-Names="Tahoma" BorderWidth="2px" BorderColor="#E0E0E0" OnItemDataBound="g_ItemDataBound"
                                                            GridLines="None" CellSpacing="1">
                                                            <SelectedItemStyle Font-Bold="True" ForeColor="#663399"></SelectedItemStyle>
                                                            <HeaderStyle HorizontalAlign="Center" BackColor="#ffede3" ForeColor="#0066BA" Height="30px"
                                                                CssClass="blue12"></HeaderStyle>
                                                            <AlternatingItemStyle BackColor="#F8F8F8" />
                                                            <ItemStyle BackColor="White" BorderStyle="None" Height="30px" HorizontalAlign="Center"
                                                                CssClass="black12" />
                                                            <Columns>
                                                                <asp:BoundColumn DataField="RegisterTime" SortExpression="RegisterTime" HeaderText="推荐注册时间">
                                                                    <HeaderStyle HorizontalAlign="Center" Width="25%"></HeaderStyle>
                                                                    <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                                                </asp:BoundColumn>
                                                                <asp:BoundColumn DataField="Name" SortExpression="Name" HeaderText="用户名">
                                                                    <HeaderStyle HorizontalAlign="Center" Width="20%"></HeaderStyle>
                                                                    <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                                                </asp:BoundColumn>
                                                                <asp:BoundColumn DataField="Province" SortExpression="Province" HeaderText="省份">
                                                                    <HeaderStyle HorizontalAlign="Center" Width="15%"></HeaderStyle>
                                                                    <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                                                </asp:BoundColumn>
                                                                <asp:BoundColumn DataField="City" SortExpression="City" HeaderText="城市">
                                                                    <HeaderStyle HorizontalAlign="Center" Width="15%"></HeaderStyle>
                                                                    <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                                                </asp:BoundColumn>
                                                                <asp:BoundColumn DataField="Sex" SortExpression="Sex" HeaderText="性别">
                                                                    <HeaderStyle HorizontalAlign="Center" Width="10%"></HeaderStyle>
                                                                    <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                                                </asp:BoundColumn>
                                                                <asp:BoundColumn DataField="UserType" SortExpression="UserType" HeaderText="级别">
                                                                    <HeaderStyle HorizontalAlign="Center" Width="15%"></HeaderStyle>
                                                                    <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                                                </asp:BoundColumn>
                                                            </Columns>
                                                            <PagerStyle Visible="False" HorizontalAlign="Center" ForeColor="#330099" BackColor="#FFFFCC">
                                                            </PagerStyle>
                                                        </asp:DataGrid></font>
                                                    <ShoveWebUI:ShoveGridPager ID="gPager" runat="server" Width="100%" ShowSelectColumn="False"
                                                        DataGrid="g" AlternatingRowColor="Linen" GridColor="#E0E0E0" HotColor="MistyRose"
                                                        Visible="False" OnPageWillChange="gPager_PageWillChange" OnSortBefore="gPager_SortBefore" />
                                                </td>
                                            </tr>
                                        </table>
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
