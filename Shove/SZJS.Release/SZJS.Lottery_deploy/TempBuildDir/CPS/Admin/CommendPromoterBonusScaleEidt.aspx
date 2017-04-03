<%@ page language="C#" autoeventwireup="true" inherits="CPS_Admin_CommendPromoterBonusScaleEidt, App_Web_xh7rtory" enableEventValidation="false" %>

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
                                <strong>
                                    <asp:Label ID="lblCpsName" runat="server" Text="lblCpsName" ForeColor="#CC0000"></asp:Label>
                                    佣金返点比例设置</strong>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" align="left" bgcolor="#FFFFFF">
                                <table width="100%" border="0" cellspacing="1" cellpadding="0">
                                    <tr>
                                        <td valign="top">
                                            <asp:DataGrid ID="g" runat="server" BorderStyle="None" AllowSorting="True" AllowPaging="True"
                                                Width="100%" PageSize="30" AutoGenerateColumns="False" CellPadding="2" Font-Names="宋体"
                                                CellSpacing="1" GridLines="None" OnItemCommand="g_ItemCommand" DataKeyField="LotteryID"
                                                OnItemDataBound="g_ItemDataBound">
                                                <FooterStyle ForeColor="#330099" BackColor="#FFFFCC"></FooterStyle>
                                                <SelectedItemStyle Font-Bold="True" ForeColor="#663399"></SelectedItemStyle>
                                                <HeaderStyle HorizontalAlign="Center" ForeColor="RoyalBlue" VerticalAlign="Middle"
                                                    BackColor="#E9F1F8" Height="25px"></HeaderStyle>
                                                <ItemStyle Height="21px"></ItemStyle>
                                                <Columns>
                                                    <asp:BoundColumn DataField="LotteryID" HeaderText="彩种ID">
                                                        <HeaderStyle HorizontalAlign="Center" Width="150px"></HeaderStyle>
                                                        <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                                    </asp:BoundColumn>
                                                    <asp:BoundColumn DataField="LotteryName" HeaderText="彩种">
                                                        <HeaderStyle HorizontalAlign="Center" Width="150px"></HeaderStyle>
                                                        <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                                    </asp:BoundColumn>
                                                    <asp:TemplateColumn HeaderText="返点比例">
                                                        <HeaderStyle HorizontalAlign="Center" Width="150px"></HeaderStyle>
                                                        <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                                        <ItemTemplate>
                                                            <asp:TextBox ID="tbBonusScale" runat="server" Width="90%"></asp:TextBox>
                                                        </ItemTemplate>
                                                    </asp:TemplateColumn>
                                                    <asp:ButtonColumn CommandName="modify" Text="修改" HeaderStyle-Width="80px" ItemStyle-HorizontalAlign="Center" />
                                                    <asp:BoundColumn Visible="False" DataField="LotteryID"></asp:BoundColumn>
                                                </Columns>
                                                <PagerStyle Visible="False"></PagerStyle>
                                            </asp:DataGrid>
                                            <div style="display: none">
                                                <ShoveWebUI:ShoveGridPager ID="gPager" runat="server" Width="100%" PageSize="20"
                                                    ShowSelectColumn="False" DataGrid="g" AlternatingRowColor="#F7FEFA" GridColor="#E0E0E0"
                                                    HotColor="MistyRose" OnPageWillChange="gPager_PageWillChange" OnSortBefore="gPager_SortBefore"
                                                    SelectRowColor="#FF9933" />
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td valign="top">
                                            统一修改此商家所有彩种返点比例:<asp:TextBox ID="tbAllScale" runat="server" CssClass="text" ></asp:TextBox>
                                            &nbsp;<asp:Button ID="btnModifyAll" runat="server" Text="统一修改"  OnClick="btnModifyAll_Click" CssClass="btn" />
                                            <br />
                                            <span style="color: #CC0000">提示： 正确格式:0.03,并且不能超过百姓彩票网分配给自己的返点比例．</span>
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
    <asp:HiddenField ID="hfCpsID" runat="server" />
    <asp:HiddenField ID="hfOwnerUserID" runat="server" />
    </form>
</body>
</html>
