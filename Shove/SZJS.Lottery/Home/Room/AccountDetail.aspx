<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AccountDetail.aspx.cs" Inherits="Home_Room_AccountDetail" %>

<%@ Register Assembly="Shove.Web.UI.4 For.NET 3.5" Namespace="Shove.Web.UI" TagPrefix="ShoveWebUI" %>
<%@ Register Src="../../UserControls/Head.ascx" TagName="Head" TagPrefix="uc1" %>
<%@ Register Src="UserControls/UserMyIcaile.ascx" TagName="UserMyIcaile" TagPrefix="uc2" %>
<%@ Register Src="UserControls/WebFoot.ascx" TagName="WebFoot" TagPrefix="uc3" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>我的购彩账户交易明细-<%=_Site.Name %>－买彩票，就上<%=_Site.Name %>
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
            <div class="jilua">
                <div id="con">
                    <ul id="tags">
                        <li class="selectTag"><a id="AtagContent0" runat="server" onclick="selectTag('tagContent0',this)" href="javascript:void(0)">
                            购彩记录 </a></li>
                        <li><a id="AtagContent1" runat="server" onclick="selectTag('tagContent1',this)" href="javascript:void(0)">账户明细</a></li>
                        <li><a id="AtagContent2"  runat="server" onclick="selectTag('tagContent2',this)" href="javascript:void(0)">奖金派发</a>
                        </li>
                        <li><a id="AtagContent3"  runat="server" onclick="selectTag('tagContent3',this)" href="javascript:void(0)">充值记录</a>
                        </li>
                        <li><a id="AtagContent4"  runat="server" onclick="selectTag('tagContent4',this)" href="javascript:void(0)">提款记录</a>
                        </li>
                        <li><a id="AtagContent5"  runat="server" onclick="selectTag('tagContent5',this)" href="javascript:void(0)">积分明细</a></li>
                    </ul>
                    <div id="tagContent">
                        <div class="tagContent selectTag" id="tagContent0">
                            <asp:DataGrid ID="gHistory" runat="server" Width="100%" AllowPaging="True" PageSize="30"
                                AutoGenerateColumns="False" OnItemDataBound="gHistory_ItemDataBound" AllowSorting="True"
                                OnSortCommand="g_SortCommand">
                                <HeaderStyle HorizontalAlign="Center" Height="30px"></HeaderStyle>
                                <ItemStyle BorderStyle="None" Height="30px" HorizontalAlign="Center" />
                                <Columns>
                                    <asp:BoundColumn SortExpression="InitiateName" DataField="InitiateName" HeaderText="发起人">
                                    </asp:BoundColumn>
                                    <asp:BoundColumn SortExpression="LotteryName" DataField="LotteryName" HeaderText="彩种">
                                    </asp:BoundColumn>
                                    <asp:BoundColumn SortExpression="PlayTypeName" DataField="PlayTypeName" HeaderText="玩法">
                                    </asp:BoundColumn>
                                    <asp:BoundColumn SortExpression="SchemeShare" DataField="SchemeShare" HeaderText="方案份数">
                                    </asp:BoundColumn>
                                    <asp:BoundColumn SortExpression="Money" DataField="Money" HeaderText="方案金额"></asp:BoundColumn>
                                    <asp:BoundColumn SortExpression="Share" DataField="Share" HeaderText="认购份数"></asp:BoundColumn>
                                    <asp:BoundColumn SortExpression="DetailMoney" DataField="DetailMoney" HeaderText="认购金额">
                                    </asp:BoundColumn>
                                    <asp:BoundColumn HeaderText="所占股份"></asp:BoundColumn>
                                    <asp:BoundColumn SortExpression="SchemeWinMoney" DataField="SchemeWinMoney" HeaderText="方案奖金">
                                    </asp:BoundColumn>
                                    <asp:BoundColumn SortExpression="WinMoneyNoWithTax" DataField="WinMoneyNoWithTax"
                                        HeaderText="您的奖金"></asp:BoundColumn>
                                    <asp:BoundColumn HeaderText="是否中奖"></asp:BoundColumn>
                                    <asp:HyperLinkColumn DataNavigateUrlField="SchemeID" DataTextField="DateTime" DataTextFormatString="{0:yyyy-MM-dd HH:mm:ss}"
                                        HeaderText="发起时间" DataNavigateUrlFormatString="Scheme.aspx?id={0}" SortExpression="DateTime"
                                        Target="_blank" Visible="true"></asp:HyperLinkColumn>
                                    <asp:BoundColumn HeaderText="状态"></asp:BoundColumn>
                                    <asp:BoundColumn Visible="False" DataField="SchemeID" HeaderText="SchemeID"></asp:BoundColumn>
                                    <asp:BoundColumn Visible="False" DataField="QuashStatus" HeaderText="QuashedStatus">
                                    </asp:BoundColumn>
                                    <asp:BoundColumn Visible="False" DataField="Buyed" HeaderText="Buyed"></asp:BoundColumn>
                                    <asp:BoundColumn Visible="False" DataField="AssureMoney" HeaderText="AssureMoney">
                                    </asp:BoundColumn>
                                    <asp:BoundColumn Visible="False" DataField="BuyedShare" HeaderText="BuyedShare">
                                    </asp:BoundColumn>
                                    <asp:BoundColumn Visible="False" DataField="Memo" HeaderText="Memo"></asp:BoundColumn>
                                </Columns>
                                <PagerStyle Visible="False"></PagerStyle>
                            </asp:DataGrid>
                            <div class="p_a_select">
                                <ShoveWebUI:ShoveGridPager ID="gPagerHistory" runat="server" Width="100%" PageSize="30"
                                    ShowSelectColumn="False" DataGrid="gHistory" AlternatingRowColor="#F8F8F8" GridColor="#E0E0E0"
                                    HotColor="MistyRose" RowCursorStyle="" OnPageWillChange="gPager_PageWillChange"
                                    AllowShorting="true" />
                            </div>
                            <div class="clear">
                            </div>
                            <table>
                                <tr>
                                    <td>
                                        <strong>支出交易笔数：<span class="red"><asp:Label ID="lblBuyOutCount" runat="server" Text=""></asp:Label></span></strong>
                                    </td>
                                    <tr>
                                    </tr>
                                    <td>
                                        <strong>支出金额合计：<span class="red"><asp:Label ID="lblBuyOutMoney" runat="server" Text=""></asp:Label></span></strong>
                                    </td>
                                </tr>
                            </table>
                            <p>
                                说明：<br />
                                1、您可以查询您的帐户在一段时间内的所有交易流水。<br />
                                2、如果你已经充值，银行账户钱扣了，而您的账户还没有加上，请点击<span class="blue">客服系统</span>告诉我们，我们将第一时间为您处理！<br />
                                3、如有其他问题，请联系网站客服：<%=_Site.ServiceTelephone %>。<br />
                            </p>
                        </div>
                        <div class="tagContent" id="tagContent1">
                            <table style="width: 100%" border="0" cellspacing="0" cellpadding="0">
                                <tbody>
                                    <tr>
                                        <td style="line-height: 30px;">
                                            开始时间：
                                            <asp:DropDownList ID="ddlYear" runat="server">
                                            </asp:DropDownList>
                                            <asp:DropDownList ID="ddlMonth" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlMonth_SelectedIndexChanged">
                                                <asp:ListItem Value="1">1 月</asp:ListItem>
                                                <asp:ListItem Value="2">2 月</asp:ListItem>
                                                <asp:ListItem Value="3">3 月</asp:ListItem>
                                                <asp:ListItem Value="4">4 月</asp:ListItem>
                                                <asp:ListItem Value="5">5 月</asp:ListItem>
                                                <asp:ListItem Value="6">6 月</asp:ListItem>
                                                <asp:ListItem Value="7">7 月</asp:ListItem>
                                                <asp:ListItem Value="8">8 月</asp:ListItem>
                                                <asp:ListItem Value="9">9 月</asp:ListItem>
                                                <asp:ListItem Value="10">10月</asp:ListItem>
                                                <asp:ListItem Value="11">11月</asp:ListItem>
                                                <asp:ListItem Value="12">12月</asp:ListItem>
                                            </asp:DropDownList>
                                            <asp:DropDownList ID="ddlDay" runat="server">
                                            </asp:DropDownList>
                                            结束时间：
                                            <asp:DropDownList ID="ddlYear1" runat="server">
                                            </asp:DropDownList>
                                            <asp:DropDownList ID="ddlMonth1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlMonth_SelectedIndexChanged">
                                                <asp:ListItem Value="1">1 月</asp:ListItem>
                                                <asp:ListItem Value="2">2 月</asp:ListItem>
                                                <asp:ListItem Value="3">3 月</asp:ListItem>
                                                <asp:ListItem Value="4">4 月</asp:ListItem>
                                                <asp:ListItem Value="5">5 月</asp:ListItem>
                                                <asp:ListItem Value="6">6 月</asp:ListItem>
                                                <asp:ListItem Value="7">7 月</asp:ListItem>
                                                <asp:ListItem Value="8">8 月</asp:ListItem>
                                                <asp:ListItem Value="9">9 月</asp:ListItem>
                                                <asp:ListItem Value="10">10月</asp:ListItem>
                                                <asp:ListItem Value="11">11月</asp:ListItem>
                                                <asp:ListItem Value="12">12月</asp:ListItem>
                                            </asp:DropDownList>
                                            <asp:DropDownList ID="ddlDay1" runat="server">
                                            </asp:DropDownList>
                                            <ShoveWebUI:ShoveConfirmButton ID="btnGO" runat="server" Width="50px" Height="22px"
                                                OnClick="btnGO_Click" Text="查询" Style="cursor: pointer;" />
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                            <asp:DataGrid ID="g" runat="server" Width="100%" PageSize="30" AutoGenerateColumns="False" Style="border:0px;"
                                CellPadding="0" Font-Names="Tahoma" CellSpacing="0" 
                                OnItemDataBound="g_ItemDataBound" OnSortCommand="g_SortCommand">
                                <FooterStyle ForeColor="#330099" BackColor="#FFFFCC"></FooterStyle>
                                <SelectedItemStyle Font-Bold="True" ForeColor="#663399"></SelectedItemStyle>
                                <HeaderStyle HorizontalAlign="Center" BackColor="#ffede3" ForeColor="#0066BA" Height="30px">
                                </HeaderStyle>
                                <AlternatingItemStyle BackColor="#F8F8F8" />
                                <ItemStyle BackColor="White" BorderStyle="None" Height="30px" HorizontalAlign="Center" />
                                <Columns>
                                    <asp:BoundColumn DataField="DateTime" SortExpression="DateTime" HeaderText="交易时间">
                                        <ItemStyle />
                                    </asp:BoundColumn>
                                    <asp:BoundColumn DataField="Memo" SortExpression="Memo" HeaderText="摘要">
                                        <ItemStyle HorizontalAlign="Left" />
                                    </asp:BoundColumn>
                                    <asp:BoundColumn DataField="MoneyAdd" SortExpression="MoneyAdd" HeaderText="收入(元)">
                                        <ItemStyle />
                                    </asp:BoundColumn>
                                    <asp:BoundColumn DataField="MoneySub" SortExpression="MoneySub" HeaderText="支出(元)">
                                        <ItemStyle />
                                    </asp:BoundColumn>
                                    <asp:BoundColumn DataField="FormalitiesFees" SortExpression="FormalitiesFees" HeaderText="(手续费)">
                                        <ItemStyle />
                                    </asp:BoundColumn>
                                    <asp:BoundColumn DataField="Balance" SortExpression="Balance" HeaderText="余额">
                                        <ItemStyle />
                                    </asp:BoundColumn>
                                    <asp:BoundColumn DataField="Reward" SortExpression="Reward" HeaderText="中奖金额">
                                        <ItemStyle />
                                    </asp:BoundColumn>
                                    <asp:BoundColumn DataField="SumReward" SortExpression="SumReward" HeaderText="中奖总金额">
                                        <ItemStyle />
                                    </asp:BoundColumn>
                                    <asp:BoundColumn Visible="False" DataField="SchemeID" HeaderText="SchemeID"></asp:BoundColumn>
                                </Columns>
                                <PagerStyle Visible="False" HorizontalAlign="Center"></PagerStyle>
                            </asp:DataGrid>
                            <div class="p_a_select">
                                <ShoveWebUI:ShoveGridPager ID="gPager" runat="server" Width="100%" PageSize="30"
                                    ShowSelectColumn="False" DataGrid="g" HotColor="MistyRose" OnPageWillChange="gPager_PageWillChange"
                                    Visible="False" RowCursorStyle="" />
                            </div>
                            <div class="clear">
                            </div>
                            <div class="divp">
                                <table>
                                    <tr>
                                        <td>
                                            <strong>支出交易笔数： <span class="red">
                                                <asp:Label ID="lblOutCount" runat="server" Text=""></asp:Label></span></strong>
                                        </td>
                                        <td>
                                            <strong>收入交易笔数：<span class="red"><asp:Label ID="lblInCount" runat="server" Text=""></asp:Label></span></strong>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <strong>支出金额合计： <span class="red">
                                                <asp:Label ID="lblOutMoney" runat="server" Text=""></asp:Label></span></strong>
                                        </td>
                                        <td>
                                            <strong>收入金额合计：<span class="red"><asp:Label ID="lblInMoney" runat="server" Text=""></asp:Label></span></strong>
                                        </td>
                                    </tr>
                                </table>
                                <p>
                                    说明：<br />
                                    1、您可以查询您的帐户在一段时间内的所有交易流水。<br />
                                    2、如果你已经充值，银行账户钱扣了，而您的账户还没有加上，请点击<span class="blue">客服系统</span>告诉我们，我们将第一时间为您处理！<br />
                                    3、如有其他问题，请联系网站客服：<%=_Site.ServiceTelephone %>。<br />
                                </p>
                            </div>
                        </div>
                        <div class="tagContent" id="tagContent2">
                            <asp:DataGrid ID="gReward" runat="server" Width="100%" BorderStyle="None" AllowPaging="True"
                                PageSize="30" AutoGenerateColumns="False" CellPadding="0" BackColor="#dddddd"
                                Font-Names="Tahoma" OnItemDataBound="gReward_ItemDataBound" CellSpacing="1" GridLines="None"
                                OnSortCommand="g_SortCommand">
                                <FooterStyle ForeColor="#330099" BackColor="#FFFFCC"></FooterStyle>
                                <SelectedItemStyle Font-Bold="True" ForeColor="#663399"></SelectedItemStyle>
                                <HeaderStyle HorizontalAlign="Center" BackColor="#ffede3" ForeColor="#0066BA" Height="30px"
                                    CssClass="blue12_2"></HeaderStyle>
                                <AlternatingItemStyle BackColor="#F8F8F8" />
                                <ItemStyle BackColor="White" BorderStyle="None" Height="30px" HorizontalAlign="Center"
                                    CssClass="black12" />
                                <Columns>
                                    <asp:BoundColumn DataField="LotteryName" SortExpression="LotteryName" HeaderText="彩种">
                                        <HeaderStyle HorizontalAlign="Center" Width="14%"></HeaderStyle>
                                        <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                    </asp:BoundColumn>
                                    <asp:BoundColumn DataField="IsuseName" SortExpression="IsuseName" HeaderText="期号">
                                        <HeaderStyle HorizontalAlign="Center" Width="14%"></HeaderStyle>
                                        <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                    </asp:BoundColumn>
                                    <asp:BoundColumn DataField="LotteryNumber" SortExpression="LotteryNumber" HeaderText="投注内容">
                                        <HeaderStyle HorizontalAlign="Center" Width="14%"></HeaderStyle>
                                        <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                    </asp:BoundColumn>
                                    <asp:BoundColumn DataField="DetailMoney" SortExpression="DetailMoney" HeaderText="投注金额">
                                        <HeaderStyle HorizontalAlign="Center" Width="10%"></HeaderStyle>
                                        <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                    </asp:BoundColumn>
                                    <asp:BoundColumn DataField="SchemeWinMoney" SortExpression="SchemeWinMoney" HeaderText="方案奖金">
                                        <HeaderStyle HorizontalAlign="Center" Width="10%"></HeaderStyle>
                                        <ItemStyle HorizontalAlign="Right"></ItemStyle>
                                    </asp:BoundColumn>
                                    <asp:BoundColumn DataField="WinMoneyNoWithTax" SortExpression="WinMoneyNoWithTax"
                                        HeaderText="我的奖金">
                                        <HeaderStyle HorizontalAlign="Center" Width="10%"></HeaderStyle>
                                        <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                    </asp:BoundColumn>
                                    <asp:BoundColumn DataField="WinMoneyNoWithTax" SortExpression="WinMoneyNoWithTax"
                                        HeaderText="盈利指数">
                                        <HeaderStyle HorizontalAlign="Center" Width="10%"></HeaderStyle>
                                        <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                    </asp:BoundColumn>
                                    <asp:BoundColumn HeaderText="是否中奖">
                                        <HeaderStyle HorizontalAlign="Center" Width="10%"></HeaderStyle>
                                        <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                    </asp:BoundColumn>
                                    <asp:BoundColumn Visible="False" DataField="SchemeID" SortExpression="SchemeID" HeaderText="SchemeID">
                                    </asp:BoundColumn>
                                </Columns>
                                <PagerStyle Visible="False" HorizontalAlign="Center" ForeColor="#330099" BackColor="Silver"
                                    Mode="NumericPages"></PagerStyle>
                            </asp:DataGrid>
                            <div class="p_a_select">
                                <ShoveWebUI:ShoveGridPager ID="gPagerReward" runat="server" Width="100%" PageSize="30"
                                    ShowSelectColumn="False" DataGrid="gReward" AlternatingRowColor="#F8F8F8" GridColor="#E0E0E0"
                                    HotColor="MistyRose" OnPageWillChange="gPager_PageWillChange" AllowShorting="true"
                                    RowCursorStyle="" />
                            </div>
                            <div class="clear">
                            </div>
                            <div class="divp">
                                <table>
                                    <tr>
                                        <td>
                                            <strong>奖金派发笔数：<span class="red"><asp:Label ID="lblRewardCount" runat="server" Text=""></asp:Label></span></strong>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <strong>奖金派发金额合计：<span class="red"><asp:Label ID="lblRewardMoney" runat="server"
                                                Text=""></asp:Label></span></strong>
                                        </td>
                                    </tr>
                                </table>
                                <p>
                                    说明：<br />
                                    1、您可以查询您的帐户在一段时间内的所有交易流水。<br />
                                    2、如果你已经充值，银行账户钱扣了，而您的账户还没有加上，请点击<span class="blue">客服系统</span>告诉我们，我们将第一时间为您处理！<br />
                                    3、如有其他问题，请联系网站客服：<%=_Site.ServiceTelephone %>。<br />
                                </p>
                            </div>
                        </div>
                        <div class="tagContent" id="tagContent3">
                            <asp:DataGrid ID="gUserPay" runat="server" Width="100%" BorderStyle="None" AllowSorting="True"
                                AllowPaging="True" PageSize="8" AutoGenerateColumns="False" CellPadding="0" OnSortCommand="g_SortCommand"
                                BackColor="#DDDDDD" Font-Names="Tahoma" OnItemDataBound="gUserPay_ItemDataBound"
                                CellSpacing="1" GridLines="None" OnItemCommand="gUserPay_ItemCommand">
                                <SelectedItemStyle Font-Bold="True" ForeColor="#663399"></SelectedItemStyle>
                                <HeaderStyle HorizontalAlign="Center" BackColor="#ffede3" ForeColor="#0066BA" Height="30px"
                                    CssClass="blue12_2"></HeaderStyle>
                                <AlternatingItemStyle BackColor="#F8F8F8" />
                                <ItemStyle BackColor="White" BorderStyle="None" Height="30px" HorizontalAlign="Center"
                                    CssClass="black12" />
                                <Columns>
                                    <asp:TemplateColumn HeaderText="订单号">
                                        <ItemStyle Width="30%" />
                                        <ItemTemplate>
                                            <asp:LinkButton ID="btnUserPayDetail" runat="server" CommandName="ShowUserPayDetail"
                                                ForeColor="#0066BA" Font-Underline="True"><%#Eval("ID").ToString()%></asp:LinkButton>
                                            <asp:HiddenField ID="tdUserPayDetail" runat="server" Value='<%#Eval("ID").ToString()%>' />
                                        </ItemTemplate>
                                    </asp:TemplateColumn>
                                    <asp:BoundColumn DataField="Money" HeaderText="收入(元)">
                                        <ItemStyle Width="20%" />
                                    </asp:BoundColumn>
                                    <asp:BoundColumn DataField="FormalitiesFees" HeaderText="(手续费)">
                                        <ItemStyle Width="10%" />
                                    </asp:BoundColumn>
                                    <asp:BoundColumn DataField="PayType" HeaderText="交易类型">
                                        <ItemStyle Width="10%" />
                                    </asp:BoundColumn>
                                    <asp:BoundColumn DataField="DateTime" HeaderText="交易时间">
                                        <ItemStyle Width="30%" />
                                    </asp:BoundColumn>
                                </Columns>
                                <PagerStyle Visible="False" HorizontalAlign="Center" ForeColor="#330099" BackColor="#FFFFCC">
                                </PagerStyle>
                            </asp:DataGrid>
                            <div class="p_a_select">
                                <ShoveWebUI:ShoveGridPager ID="gPagerUserPay" runat="server" Width="100%" PageSize="8"
                                    ShowSelectColumn="False" DataGrid="gUserPay" AlternatingRowColor="#F8F8F8" GridColor="#E0E0E0"
                                    HotColor="MistyRose" OnPageWillChange="gPager_PageWillChange" AllowShorting="true"
                                    RowCursorStyle="" />
                            </div>
                            <div class="clear">
                            </div>
                            <div class="divp">
                                <table>
                                    <tr>
                                        <td>
                                            <strong>充值金额：<span class="red"><asp:Label ID="lblUserPayMoneys" runat="server" Text=""></asp:Label></span></strong>
                                        </td>
                                        <td>
                                            <strong>充值时间：<span class="red"><asp:Label ID="lblUserPayTime" runat="server" Text=""></asp:Label></span></strong>
                                        </td>
                                    </tr>
                                    </tr>
                                    <tr>
                                        <td>
                                            <strong>充值方式：<span class="red"><asp:Label ID="lblUserPayBank" runat="server" Text=""></asp:Label></span></strong>
                                        </td>
                                        <td>
                                            <strong>充值次数：<span class="red"><asp:Label ID="lblUserPayCount" runat="server" Text=""></asp:Label></span></strong>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <strong>充值金额合计：<span class="red"><asp:Label ID="lblUserPayMoney" runat="server" Text=""></asp:Label></span></strong>
                                        </td>
                                    </tr>
                                </table>
                                <p>
                                    说明：<br />
                                    1、您可以查询您的帐户在一段时间内的所有交易流水。<br />
                                    2、如果你已经充值，银行账户钱扣了，而您的账户还没有加上，请点击<span class="blue">客服系统</span>告诉我们，我们将第一时间为您处理！<br />
                                    3、如有其他问题，请联系网站客服：<%=_Site.ServiceTelephone %>。<br />
                                </p>
                            </div>
                        </div>
                        <div class="tagContent" id="tagContent4">
                            <asp:DataGrid ID="gUserDistills" runat="server" Width="100%" BorderStyle="None" AllowSorting="True"
                                AllowPaging="True" PageSize="8" AutoGenerateColumns="False" CellPadding="0" OnSortCommand="g_SortCommand"
                                BackColor="#DDDDDD" Font-Names="Tahoma" OnItemDataBound="gUserDistills_ItemDataBound"
                                CellSpacing="1" GridLines="None" OnItemCommand="gUserDistills_ItemCommand">
                                <SelectedItemStyle Font-Bold="True" ForeColor="#663399"></SelectedItemStyle>
                                <HeaderStyle HorizontalAlign="Center" BackColor="#ffede3" ForeColor="#0066BA" Height="30px"
                                    CssClass="blue12_2"></HeaderStyle>
                                <AlternatingItemStyle BackColor="#F8F8F8" />
                                <ItemStyle BackColor="White" BorderStyle="None" Height="30px" HorizontalAlign="Center"
                                    CssClass="black12" />
                                <Columns>
                                    <asp:TemplateColumn HeaderText="订单号">
                                        <ItemTemplate>
                                            <asp:LinkButton ID="btnDistillDetail" runat="server" CommandName="ShowDistillDetail"
                                                ForeColor="#0066BA" Font-Underline="True"><%#Eval("ID").ToString()%></asp:LinkButton>
                                            <asp:HiddenField ID="tdDistillID" runat="server" Value='<%#Eval("ID") %>' />
                                        </ItemTemplate>
                                    </asp:TemplateColumn>
                                    <asp:BoundColumn DataField="Money" HeaderText="支出(元)">
                                        <ItemStyle Width="10%" />
                                    </asp:BoundColumn>
                                    <asp:BoundColumn DataField="FormalitiesFees" HeaderText="(手续费)">
                                        <ItemStyle Width="10%" />
                                    </asp:BoundColumn>
                                    <asp:BoundColumn HeaderText="交易类型">
                                        <ItemStyle Width="10%" />
                                    </asp:BoundColumn>
                                    <asp:BoundColumn DataField="Result" HeaderText="状态">
                                        <ItemStyle Width="10%" />
                                    </asp:BoundColumn>
                                    <asp:TemplateColumn HeaderText="操作">
                                        <ItemStyle Width="10%" />
                                        <ItemTemplate>
                                            <asp:LinkButton ID="btnModified" runat="server" ForeColor="#0066BA" Font-Underline="True"
                                                CommandName="QuashDistills" Visible='<%# Eval("Result").ToString() == "0" ? true : false %>'>撤销提款</asp:LinkButton>
                                        </ItemTemplate>
                                    </asp:TemplateColumn>
                                    <asp:BoundColumn DataField="Memo" HeaderText="备注">
                                        <ItemStyle Width="25%" />
                                    </asp:BoundColumn>
                                    <asp:BoundColumn DataField="DateTime" HeaderText="交易时间">
                                        <ItemStyle Width="15%" />
                                    </asp:BoundColumn>
                                </Columns>
                                <PagerStyle Visible="False" HorizontalAlign="Center" ForeColor="#330099" BackColor="#FFFFCC">
                                </PagerStyle>
                            </asp:DataGrid>
                            <div class="p_a_select">
                                <ShoveWebUI:ShoveGridPager ID="gPagergDistills" runat="server" Width="100%" PageSize="8"
                                    ShowSelectColumn="False" DataGrid="gUserDistills" AlternatingRowColor="#F8F8F8"
                                    GridColor="#E0E0E0" HotColor="MistyRose" OnPageWillChange="gPager_PageWillChange"
                                    AllowShorting="true" RowCursorStyle="" />
                            </div>
                            <div class="clear">
                            </div>
                            <div class="divp">
                                <table>
                                    <tr>
                                        <td>
                                            <strong>提款类型：<span class="red"><asp:Label ID="lblDistillBankType" runat="server"
                                                Text=""></asp:Label></span></strong>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <strong>提款时间：<span class="red"><asp:Label ID="lblDistillTime" runat="server" Text=""></asp:Label></span></strong>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <strong>
                                                <asp:Label ID="lblDistillBanks" runat="server" Text=""></asp:Label>：<span class="red"><asp:Label
                                                    ID="lblDistillBankDetail" runat="server" Text=""></asp:Label></span></strong>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <strong>
                                                <asp:Label ID="lbAccountBankDetail" runat="server" Visible="false" Text="开户银行："></asp:Label>：<span
                                                    class="red"><asp:Label ID="lbAccountBank" runat="server" Text="" Visible="false"></asp:Label></span></strong>
                                        </td>
                                    </tr>
                                    </tr>
                                    <tr>
                                        <td>
                                            <strong>提款交易笔数：<span class="red"><asp:Label ID="lblDistillCount" runat="server" Text=""></asp:Label></span></strong>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <strong>提款金额合计：<span class="red"><asp:Label ID="lblDistillMoney" runat="server" Text=""></asp:Label></span></strong>
                                        </td>
                                    </tr>
                                </table>
                                <p>
                                    说明：<br />
                                    1、您可以查询您的帐户在一段时间内的所有交易流水。<br />
                                    2、如果你已经充值，银行账户钱扣了，而您的账户还没有加上，请点击<span class="blue">客服系统</span>告诉我们，我们将第一时间为您处理！<br />
                                    3、如有其他问题，请联系网站客服：<%=_Site.ServiceTelephone %>。<br />
                                </p>
                            </div>
                        </div>
                        <div class="tagContent" id="tagContent5">
                            <asp:DataGrid ID="gScoring" runat="server" Width="100%" BorderStyle="None" AllowSorting="True"
                                AllowPaging="True" PageSize="30" AutoGenerateColumns="False" CellPadding="0"
                                OnSortCommand="g_SortCommand" BackColor="#DDDDDD" Font-Names="Tahoma" OnItemDataBound="gScoring_ItemDataBound"
                                CellSpacing="1" GridLines="None">
                                <SelectedItemStyle Font-Bold="True" ForeColor="#663399"></SelectedItemStyle>
                                <HeaderStyle HorizontalAlign="Center" BackColor="#ffede3" ForeColor="#0066BA" Height="30px"
                                    CssClass="blue12_2"></HeaderStyle>
                                <AlternatingItemStyle BackColor="#F8F8F8" />
                                <ItemStyle BackColor="White" BorderStyle="None" Height="30px" HorizontalAlign="Center"
                                    CssClass="black12" />
                                <Columns>
                                    <asp:BoundColumn DataField="ID" HeaderText="订单号">
                                        <ItemStyle Width="17%" />
                                    </asp:BoundColumn>
                                    <asp:BoundColumn DataField="Scoring" HeaderText="收入">
                                        <ItemStyle Width="9%" />
                                    </asp:BoundColumn>
                                    <asp:BoundColumn HeaderText="支出">
                                        <ItemStyle Width="10%" />
                                    </asp:BoundColumn>
                                    <asp:BoundColumn DataField="OperatorType" HeaderText="交易类型">
                                        <ItemStyle Width="11%" />
                                    </asp:BoundColumn>
                                    <asp:BoundColumn DataField="DateTime" HeaderText="交易时间">
                                        <ItemStyle Width="17%" />
                                    </asp:BoundColumn>
                                    <asp:BoundColumn DataField="Scoring" HeaderText="积分">
                                        <ItemStyle Width="17%" />
                                    </asp:BoundColumn>
                                </Columns>
                                <PagerStyle Visible="False" HorizontalAlign="Center" ForeColor="#330099" BackColor="#FFFFCC">
                                </PagerStyle>
                            </asp:DataGrid>
                            <div class="p_a_select">
                                <ShoveWebUI:ShoveGridPager ID="gPagerScoring" runat="server" Width="100%" PageSize="30"
                                    ShowSelectColumn="False" DataGrid="gScoring" AlternatingRowColor="#F8F8F8" GridColor="#E0E0E0"
                                    HotColor="MistyRose" OnPageWillChange="gPager_PageWillChange" AllowShorting="true"
                                    RowCursorStyle="" />
                            </div>
                            <div class="clear">
                            </div>
                            <div class="divp">
                                <table>
                                    <tr>
                                        <td>
                                            <strong>支出交易笔数：<span class="red"><asp:Label ID="lblScoreOutCount" runat="server"
                                                Text=""></asp:Label></span></strong>
                                        </td>
                                        <td>
                                            <strong>收入交易笔数：<span class="red"><asp:Label ID="lblScoreInCount" runat="server" Text=""></asp:Label></span></strong>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <strong>支出金额合计：<span class="red"><asp:Label ID="lblScoreOutMoney" runat="server"
                                                Text=""></asp:Label></span></strong>
                                        </td>
                                        <td>
                                            <strong>收入积分总计：<span class="red"><asp:Label ID="lblScoreInMoney" runat="server" Text=""></asp:Label></span></strong>
                                        </td>
                                    </tr>
                                </table>
                                <p>
                                    说明：<br />
                                    1、您可以查询您的帐户在一段时间内的所有交易流水。<br />
                                    2、如果你已经充值，银行账户钱扣了，而您的账户还没有加上，请点击<span class="blue">客服系统</span>告诉我们，我们将第一时间为您处理！<br />
                                    3、如有其他问题，请联系网站客服：<%=_Site.ServiceTelephone %>。<br />
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <uc3:WebFoot ID="WebFoot1" runat="server" />
    <input type="hidden" id="historySel" runat="server" value="AtagContent0" />
    <input type="hidden" id="hdCurDiv" runat="server" value="divBuy" />
    </form>
</body>
</html>

<script type="text/javascript">
    $(document).ready(function(){
    var historySels=document.getElementById("historySel").value;
    $("#"+historySels+"").click();
    });
    
    function selectTag(showContent, selfObj) {
        // 操作标签
        var tag = document.getElementById("tags").getElementsByTagName("li");
        var taglength = tag.length;
        for (i = 0; i < taglength; i++) {
            tag[i].className = "";
        }
        selfObj.parentNode.className = "selectTag";
        // 操作内容
        for (i = 0; j = document.getElementById("tagContent" + i); i++) {
            j.style.display = "none";
        }
        document.getElementById(showContent).style.display = "block";
        document.getElementById("historySel").value="A"+showContent;
    }
    
</script>

