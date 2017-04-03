<%@ page language="C#" autoeventwireup="true" inherits="Home_Room_Invest, App_Web_y4qeesyo" enableEventValidation="false" %>

<%@ Register Assembly="Shove.Web.UI.4 For.NET 3.5" Namespace="Shove.Web.UI" TagPrefix="ShoveWebUI" %>
<%@ Register Src="../../UserControls/Head.ascx" TagName="Head" TagPrefix="uc1" %>
<%@ Register Src="UserControls/UserMyIcaile.ascx" TagName="UserMyIcaile" TagPrefix="uc2" %>
<%@ Register Src="UserControls/WebFoot.ascx" TagName="WebFoot" TagPrefix="uc3" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>
        <%=_Site.Name %>中奖查询-我的购彩纪录-用户中心-<%=_Site.Name %>－买彩票，就上<%=_Site.Name %>
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
  <li class="selectTag"><a id="AtagContent0" onclick="selectTag('tagContent0',this)" 
  href="javascript:void(0)">投注记录</a></li>
  <li ><a  id="AtagContent1" onclick="selectTag('tagContent1',this)" 
  href="javascript:void(0)">中奖查询</a></li>
  </ul> 
<div id="tagContent">
<div class="tagContent selectTag" id="tagContent0">
<table width="100%" border="0" cellspacing="0" cellpadding="0" style="background-color:#dbdbdb">
<tbody><tr>
<td style="text-align:left;">
 <asp:DropDownList ID="ddlLottery" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlLottery_SelectedIndexChanged">
                                                        </asp:DropDownList>
                                                        <asp:DropDownList ID="ddlPlayType" runat="server">
                                                        </asp:DropDownList>
                                                        <ShoveWebUI:ShoveConfirmButton ID="btnGo" BackgroupImage="../Room/images/button_chaxun.jpg"
                                                            Style="cursor: hand" runat="server" Width="50px" BorderStyle="None" Height="22px"
                                                            Font-Size="Smaller" OnClick="btnGo_Click" />
</td>
 </tr>
                                        </tbody></table>
                                <asp:DataGrid ID="gHistory" runat="server" Width="100%" BorderStyle="None" AllowPaging="True"
                                    PageSize="30" AutoGenerateColumns="False" CellPadding="0" BackColor="#DDDDDD"
                                    OnSortCommand="g_SortCommand" Font-Names="Tahoma" OnItemDataBound="gHistory_ItemDataBound"
                                    CellSpacing="0" GridLines="None">
                                    <FooterStyle ForeColor="#330099" BackColor="#FFFFCC"></FooterStyle>
                                    <SelectedItemStyle Font-Bold="True" ForeColor="#663399"></SelectedItemStyle>
                                    <HeaderStyle HorizontalAlign="Center" BackColor="#ffede3" ForeColor="#0066BA" Height="30px"
                                        CssClass="blue12_2"></HeaderStyle>
                                    <AlternatingItemStyle BackColor="#F8F8F8" />
                                    <ItemStyle BackColor="White" BorderStyle="None" Height="30px" HorizontalAlign="Center"
                                        CssClass="black12" />
                                    <Columns>
                                        <asp:BoundColumn DataField="InitiateName" SortExpression="InitiateName" HeaderText="发起人">
                                        </asp:BoundColumn>
                                        <asp:BoundColumn DataField="LotteryName" SortExpression="LotteryName" HeaderText="彩种">
                                        </asp:BoundColumn>
                                        <asp:BoundColumn DataField="PlayTypeName" SortExpression="PlayTypeName" HeaderText="玩法">
                                        </asp:BoundColumn>
                                        <asp:BoundColumn DataField="SchemeShare" SortExpression="SchemeShare" HeaderText="方案份数">
                                        </asp:BoundColumn>
                                        <asp:BoundColumn DataField="Money" SortExpression="Money" HeaderText="方案金额"></asp:BoundColumn>
                                        <asp:BoundColumn DataField="Share" SortExpression="Share" HeaderText="认购份数"></asp:BoundColumn>
                                        <asp:BoundColumn DataField="DetailMoney" SortExpression="DetailMoney" HeaderText="认购金额">
                                        </asp:BoundColumn>
                                        <asp:BoundColumn HeaderText="所占股份"></asp:BoundColumn>
                                        <asp:BoundColumn DataField="SchemeWinMoney" SortExpression="WinMoney" HeaderText="方案奖金">
                                        </asp:BoundColumn>
                                        <asp:BoundColumn DataField="WinMoneyNoWithTax" SortExpression="WinMoneyNoWithTax"
                                            HeaderText="您的奖金"></asp:BoundColumn>
                                        <asp:BoundColumn HeaderText="是否中奖"></asp:BoundColumn>
                                        <asp:HyperLinkColumn DataNavigateUrlField="SchemeID" DataTextField="DateTime" DataTextFormatString="{0:yyyy-MM-dd HH:mm:ss}"
                                            HeaderText="发起时间" DataNavigateUrlFormatString="Scheme.aspx?id={0}" SortExpression="DateTime"
                                            Target="_blank" Visible="true"></asp:HyperLinkColumn>
                                        <asp:BoundColumn HeaderText="状态"></asp:BoundColumn>
                                        <asp:BoundColumn Visible="False" DataField="SchemeID" SortExpression="SchemeID" HeaderText="SchemeID">
                                        </asp:BoundColumn>
                                        <asp:BoundColumn Visible="False" DataField="QuashStatus" SortExpression="QuashStatus"
                                            HeaderText="QuashedStatus"></asp:BoundColumn>
                                        <asp:BoundColumn Visible="False" DataField="Buyed" SortExpression="Buyed" HeaderText="Buyed">
                                        </asp:BoundColumn>
                                        <asp:BoundColumn Visible="False" DataField="AssureMoney" SortExpression="AssureMoney"
                                            HeaderText="AssureMoney"></asp:BoundColumn>
                                        <asp:BoundColumn Visible="False" DataField="BuyedShare" SortExpression="BuyedShare"
                                            HeaderText="BuyedShare"></asp:BoundColumn>
                                        <asp:BoundColumn Visible="False" DataField="Memo" HeaderText="Memo"></asp:BoundColumn>
                                    </Columns>
                                    <PagerStyle Visible="False" HorizontalAlign="Center" ForeColor="#330099" BackColor="#FFFFCC">
                                    </PagerStyle>
                                </asp:DataGrid>

<div class="p_a_select">
                                <ShoveWebUI:ShoveGridPager ID="gPagerHistory" runat="server" Width="100%" PageSize="30"
                                    ShowSelectColumn="False" DataGrid="gHistory" AlternatingRowColor="#F8F8F8" GridColor="#E0E0E0"
                                    HotColor="MistyRose" Visible="False" OnPageWillChange="gPager_PageWillChange"
                                    RowCursorStyle="" AllowShorting="true" />

</div>       
<div class="clear"></div> 
<div class="divp">
<table>
<tr>
<td><strong>本页认购金额总计：<span class="red"><asp:Label ID="lblPageBuySum" runat="server" Text=""></asp:Label></span></strong></td>
<td><strong>认购金额总计：<span class="red"><asp:Label ID="lblBuySum" runat="server" Text=""></asp:Label></span></strong></td>
<tr>
<td><strong>本页方案奖金总计：<span class="red"><asp:Label ID="lblPageSumWinMoney" runat="server" Text=""></asp:Label></span></strong></td>
<td><strong>方案奖金总计：<span class="red"> <asp:Label ID="lblSumWinMoney" runat="server" Text=""></asp:Label></span></strong></td>
</tr>
</tr>
</table>
<P>说明：<br />
1、您可以查询您的帐户在一段时间内的所有交易流水。<br />
2、如果你已经充值，银行账户钱扣了，而您的账户还没有加上，请点击<span class="blue">客服系统</span>告诉我们，我们将第一时间为您处理！<br />
3、如有其他问题，请联系网站客服：<%=_Site.ServiceTelephone %>。<br />
</P>
</div>
</div>
<div class="tagContent" id="tagContent1">
<asp:DataGrid ID="gReward" runat="server" Width="100%" BorderStyle="None" AllowPaging="True"
                                    PageSize="30" AutoGenerateColumns="False" CellPadding="0" BackColor="#DDDDDD"
                                    OnSortCommand="g_SortCommand" Font-Names="Tahoma" OnItemDataBound="gReward_ItemDataBound"
                                    CellSpacing="0" GridLines="None">
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
                                            <HeaderStyle HorizontalAlign="Center" Width="11%"></HeaderStyle>
                                            <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                        </asp:BoundColumn>
                                        <asp:BoundColumn Visible="False" DataField="SchemeID" SortExpression="SchemeID" HeaderText="SchemeID">
                                        </asp:BoundColumn>
                                    </Columns>
                                    <PagerStyle Visible="False" HorizontalAlign="Center" ForeColor="#330099" BackColor="Silver"
                                        Mode="NumericPages"></PagerStyle>
                                </asp:DataGrid>

<div class="p_a_select">
                                <ShoveWebUI:ShoveGridPager ID="gPager_Reward" runat="server" Width="842" PageSize="30"
                                    ShowSelectColumn="False" DataGrid="gReward" AlternatingRowColor="#F8F8F8" GridColor="#E0E0E0"
                                    HotColor="MistyRose" Visible="False" OnPageWillChange="gPager_PageWillChange"
                                    RowCursorStyle="" AllowShorting="true" />
</div>       
<div class="clear"></div> 
<div class="divp">
<table>
<tr>
<td><strong>奖金派发笔数：<span class="red"><asp:Label ID="lblRewardCount" runat="server" Text=""></asp:Label></span></strong></td>
<tr>
<td><strong>奖金派发金额合计：<span class="red"><asp:Label ID="lblRewardMoney" runat="server" Text=""></asp:Label></span></strong></td>
</tr>
</tr>
</table>
<P>说明：<br />
1、您可以查询您的帐户在一段时间内的所有交易流水。<br />
2、如果你已经充值，银行账户钱扣了，而您的账户还没有加上，请点击<span class="blue">客服系统</span>告诉我们，我们将第一时间为您处理！<br />
3、如有其他问题，请联系网站客服：<%=_Site.ServiceTelephone %>。<br />
</P>
<input type="hidden" id="historySel" runat="server" value="AtagContent0" />
</div>
</div>



</div></div>

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

</div>
    
    
    
    </div>
        
    </div>
    <uc3:WebFoot ID="WebFoot1" runat="server" />
    <input type="hidden" id="hdCurDiv" runat="server" value="divReward" />
    </form>
</body>
</html>



