<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FollowSchemeHistory.aspx.cs"
    Inherits="Home_Room_FollowSchemeHistory" %>

<%@ Register Assembly="Shove.Web.UI.4 For.NET 3.5" Namespace="Shove.Web.UI" TagPrefix="ShoveWebUI" %>
<%@ Register Src="../../UserControls/Head.ascx" TagName="Head" TagPrefix="uc1" %>
<%@ Register Src="UserControls/UserMyIcaile.ascx" TagName="UserMyIcaile" TagPrefix="uc2" %>
<%@ Register Src="UserControls/WebFoot.ascx" TagName="WebFoot" TagPrefix="uc3" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>我的跟单-我的购彩纪录-用户中心-<%=_Site.Name %>－买彩票，就上<%=_Site.Name %>
        ！</title>
    <meta name="description" content="<%=_Site.Name %>彩票网<%=_Site.Url %>是一家服务于中国彩民的互联网彩票合买代购交易平台，涉及中国彩票彩种最全的网站，包含双色球,大乐透,七星彩,3d,足彩等众多彩种的实时开奖信息,图表走势、分析预测以及开奖信息等!" />
    <meta name="keywords" content="双色球合买,体育彩票,福利彩票,双色球开奖信息." />
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
    <link href="Style/common.css" rel="stylesheet" type="text/css" />
    <link href="Style/StyleSheet.css" rel="stylesheet" type="text/css" />
    <link href="Style/home.css" rel="stylesheet" type="text/css" />
    <link rel="shortcut icon" href="../../favicon.ico" />

    <script src="../../JavaScript/jquery-1.4.js" type="text/javascript"></script>
    <script type="text/javascript" language="javascript" charset="gbk">
        function showDialog(url) {
            var dialogWidth = 550;
            var dialogHeight = 250;
            var w = window.showModalDialog(url + "&r=" + Math.random(), "", "dialogWidth:" + dialogWidth + "px;dialogHeight=" + dialogHeight + "px;center:yes;status:no;help:no;");

            if (w == "1") {
                __doPostBack('btnSearch', '');
            }
            else {
                return false;
            }
        }
        function isCancelFollowScheme() {
            return confirm("您确认取消此定制跟单吗？");
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
                        <li class="selectTag"><a id="AtagContent0" onclick="selectTag('tagContent0',this)" href="javascript:void(0)">
                            我的跟单记录</a></li>
                        <li><a id="AtagContent1" onclick="selectTag('tagContent1',this)" href="javascript:void(0)">自动跟单设置</a></li>
                        <li><a id="AtagContent2" onclick="selectTag('tagContent2',this)" href="javascript:void(0)">好友跟单</a>
                        </li>
                    </ul>
                    <div id="tagContent">
                        <div class="tagContent selectTag" id="tagContent0">
                            <table width="100%" border="0" cellspacing="0" cellpadding="0" class="tbhead_bg">
                                <tbody>
                                    <tr>
                                        <td style="text-align:left;">
                                            <asp:DropDownList ID="ddlLottery" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlLottery_SelectedIndexChanged">
                                            </asp:DropDownList>
                                            &nbsp;&nbsp;
                                            <asp:DropDownList ID="ddlPlayType" runat="server">
                                            </asp:DropDownList>
                                            &nbsp;&nbsp;
                                            <ShoveWebUI:ShoveConfirmButton ID="btnGo" BackgroupImage="../Room/images/button_chaxun.jpg"
                                                Style="cursor: hand" runat="server" Width="50px" Font-Size="Smaller" Height="22px"
                                                BorderStyle="None" OnClick="btnGo_Click" />
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                            <asp:DataGrid ID="g" runat="server" Width="100%" BorderStyle="None" AllowPaging="True"
                                PageSize="30" AutoGenerateColumns="False" CellPadding="0" BackColor="#DDDDDD"
                                OnSortCommand="g_SortCommand" Font-Names="Tahoma" OnItemDataBound="g_ItemDataBound"
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
                                        <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                                        <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                    </asp:BoundColumn>
                                    <asp:BoundColumn DataField="PlayTypeName" SortExpression="PlayTypeName" HeaderText="方案类别">
                                        <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                                        <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                    </asp:BoundColumn>
                                    <asp:BoundColumn DataField="Title" SortExpression="Title" HeaderText="方案标题">
                                        <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                                        <ItemStyle HorizontalAlign="Left"></ItemStyle>
                                    </asp:BoundColumn>
                                    <asp:BoundColumn DataField="SchemeShare" SortExpression="SchemeShare" HeaderText="方案份数">
                                        <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                                        <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                    </asp:BoundColumn>
                                    <asp:BoundColumn DataField="Money" SortExpression="Money" HeaderText="方案金额">
                                        <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                                        <ItemStyle HorizontalAlign="Right"></ItemStyle>
                                    </asp:BoundColumn>
                                    <asp:BoundColumn DataField="Share" SortExpression="Share" HeaderText="认购份数">
                                        <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                                        <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                    </asp:BoundColumn>
                                    <asp:BoundColumn DataField="DetailMoney" SortExpression="DetailMoney" HeaderText="认购金额">
                                        <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                                        <ItemStyle HorizontalAlign="Right"></ItemStyle>
                                    </asp:BoundColumn>
                                    <asp:BoundColumn HeaderText="所占股份">
                                        <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                                        <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                    </asp:BoundColumn>
                                    <asp:BoundColumn DataField="SchemeWinMoney" SortExpression="WinMoney" HeaderText="方案奖金">
                                        <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                                        <ItemStyle HorizontalAlign="Right"></ItemStyle>
                                    </asp:BoundColumn>
                                    <asp:BoundColumn DataField="WinMoneyNoWithTax" SortExpression="WinMoneyNoWithTax"
                                        HeaderText="您的奖金">
                                        <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                                        <ItemStyle HorizontalAlign="Right"></ItemStyle>
                                    </asp:BoundColumn>
                                    <asp:BoundColumn DataField="DateTime" SortExpression="DateTime" HeaderText="发起时间"
                                        DataFormatString="{0:yyyy-MM-dd HH:mm:ss}">
                                        <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                                        <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                    </asp:BoundColumn>
                                    <asp:BoundColumn HeaderText="状态">
                                        <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                                        <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                    </asp:BoundColumn>
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
                                    <asp:BoundColumn Visible="False" DataField="Memo" SortExpression="Memo" HeaderText="Memo">
                                    </asp:BoundColumn>
                                </Columns>
                                <PagerStyle Visible="False" HorizontalAlign="Center" ForeColor="#330099" BackColor="#FFFFCC">
                                </PagerStyle>
                            </asp:DataGrid>
                            <div class="p_a_select">
                                <ShoveWebUI:ShoveGridPager ID="gPager" runat="server" Width="100%" PageSize="30"
                                    ShowSelectColumn="False" DataGrid="g" AlternatingRowColor="#F8F8F8" GridColor="#E0E0E0"
                                    HotColor="MistyRose" Visible="False" OnPageWillChange="gPager_PageWillChange"
                                    RowCursorStyle="" AllowShorting="true" />
                            </div>
                            <div class="clear">
                            </div>
                            <div class="divp">
                                <table>
                                    <tr>
                                        <td>
                                            <strong>本页认购金额总计： <span class="red">
                                                <asp:Label ID="lblPageBuyMoney" runat="server" Text=""></asp:Label></span></strong>
                                        </td>
                                        <td>
                                            <strong>认购金额总计：<span class="red"><asp:Label ID="lblTotalBuyMoney" runat="server"
                                                Text=""></asp:Label></span></strong></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <strong>本页方案奖金总计： <span class="red">
                                                <asp:Label ID="lblPageReward" runat="server" Text=""></asp:Label></span></strong>
                                        </td>
                                        <td>
                                            <strong>方案奖金总计：<span class="red">
                                                <asp:Label ID="lblTotalReward" runat="server" Text=""></asp:Label></span></strong>
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
                        <div class="tagContent" id="tagContent1">
                            <table width="100%" border="0" cellspacing="0" cellpadding="0" class="tbhead_bg">
                                <tr>
                                    <td style="text-align:left;">
                                        <asp:DropDownList ID="ddlLotterySet" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlLottery_SelectedIndexChanged">
                                        </asp:DropDownList>
                                        &nbsp;&nbsp;
                                        <asp:DropDownList ID="ddlPlayTypeSet" runat="server">
                                        </asp:DropDownList>
                                        &nbsp;&nbsp; 好友用户名：
                                        <asp:TextBox ID="TxtName" runat="server" CssClass="in_text" value="" size="25"></asp:TextBox>
                                        <ShoveWebUI:ShoveConfirmButton ID="btnSearch" BackgroupImage="../Room/images/button_chaxun.jpg"
                                            Style="cursor: hand" runat="server" Width="50px" Font-Size="Smaller" Height="22px"
                                            BorderStyle="None" OnClick="btnSearch_Click" />
                                    </td>
                                </tr>
                            </table>
                            <asp:DataGrid ID="gSetFollowScheme" runat="server" Width="100%" BorderStyle="None"
                                AllowSorting="True" AllowPaging="True" PageSize="22" AutoGenerateColumns="False"
                                CellPadding="2" BackColor="#DDDDDD" Font-Names="Tahoma" OnItemDataBound="gSetFollowScheme_ItemDataBound"
                                CellSpacing="1" OnItemCommand="g_ItemCommand" GridLines="None" BorderColor="#E0E0E0"
                                OnSortCommand="g_SortCommand" BorderWidth="2px">
                                <FooterStyle ForeColor="#330099" BackColor="#FFFFCC"></FooterStyle>
                                <SelectedItemStyle Font-Bold="True" ForeColor="#663399"></SelectedItemStyle>
                                <HeaderStyle HorizontalAlign="Center" ForeColor="#0066BA" VerticalAlign="Middle"
                                    BackColor="#ffede3" Height="25px"></HeaderStyle>
                                <ItemStyle Height="21px"></ItemStyle>
                                <Columns>
                                    <asp:BoundColumn DataField="Name" HeaderText="好友">
                                        <HeaderStyle HorizontalAlign="Center" Width="16%"></HeaderStyle>
                                        <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                    </asp:BoundColumn>
                                    <asp:BoundColumn HeaderText="战绩">
                                        <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                                        <ItemStyle HorizontalAlign="Center" ForeColor="Black"></ItemStyle>
                                    </asp:BoundColumn>
                                    <asp:BoundColumn HeaderText="已定制/可定制">
                                        <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                                        <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                    </asp:BoundColumn>
                                    <asp:BoundColumn HeaderText="所有跟单人">
                                        <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                                        <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                    </asp:BoundColumn>
                                    <asp:BoundColumn HeaderText="我的定制状态">
                                        <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                                        <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                    </asp:BoundColumn>
                                    <asp:TemplateColumn HeaderText="定制自动跟单">
                                        <ItemTemplate>
                                            <asp:Label ID="lbEdit" runat="server"></asp:Label>
                                            <asp:LinkButton runat="server" ID="Cancel" CommandName="Cancel" Visible="false" Text="取消"></asp:LinkButton>
                                        </ItemTemplate>
                                        <ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
                                            Font-Underline="False" HorizontalAlign="Center" />
                                    </asp:TemplateColumn>
                                    <asp:BoundColumn Visible="False" DataField="ID"></asp:BoundColumn>
                                </Columns>
                                <PagerStyle Visible="False"></PagerStyle>
                            </asp:DataGrid>
                            <div class="p_a_select">
                                <ShoveWebUI:ShoveGridPager ID="gPagerSetFollowScheme" runat="server" Width="100%"
                                    PageSize="30" ShowSelectColumn="False" DataGrid="gSetFollowScheme" AlternatingRowColor="#F8F8F8"
                                    GridColor="#E0E0E0" HotColor="MistyRose" Visible="False" OnPageWillChange="gPager_PageWillChange"
                                    RowCursorStyle="" AllowShorting="true" />
                            </div>
                            <p>
                                说明:<br />
                                1、您可以查询您的帐户在一段时间内的所有交易流水。<br />
                                2、如有其他问题，请联系网站客服：<%= _Site.ServiceTelephone %>。
                            </p>
                        </div>
                        <div class="tagContent" id="tagContent2">
                            <table width="100%" border="0" cellspacing="0" cellpadding="0" class="tbhead_bg">
                                <tr>
                                    <td style="text-align:left;">
                                        <asp:DropDownList ID="ddlWhoLottery" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlLottery_SelectedIndexChanged">
                                        </asp:DropDownList>
                                        &nbsp;&nbsp;
                                        <asp:DropDownList ID="ddlWhoPlaytype" runat="server">
                                        </asp:DropDownList>
                                        <ShoveWebUI:ShoveConfirmButton ID="btnFollowScheme" BackgroupImage="../Room/images/button_chaxun.jpg"
                                            Style="cursor: hand" runat="server" Width="50px" Font-Size="Smaller" Height="22px"
                                            BorderStyle="None" OnClick="btnFollowScheme_Click" />
                                    </td>
                                </tr>
                            </table>
                            <asp:DataGrid ID="gWhoFollowSchemes" runat="server" Width="100%" BorderStyle="None"
                                AllowSorting="True" AllowPaging="True" PageSize="22" AutoGenerateColumns="False"
                                CellPadding="2" BackColor="#DDDDDD" Font-Names="Tahoma" CellSpacing="1" GridLines="None"
                                BorderColor="#E0E0E0" OnSortCommand="g_SortCommand" BorderWidth="2px">
                                <FooterStyle ForeColor="#330099" BackColor="#FFFFCC"></FooterStyle>
                                <SelectedItemStyle Font-Bold="True" ForeColor="#663399"></SelectedItemStyle>
                                <HeaderStyle HorizontalAlign="Center" ForeColor="#0066BA" VerticalAlign="Middle"
                                    BackColor="#ffede3" Height="25px"></HeaderStyle>
                                <ItemStyle Height="21px"></ItemStyle>
                                <Columns>
                                    <asp:TemplateColumn HeaderText="用户名">
                                        <ItemStyle HorizontalAlign="Center" />
                                        <ItemTemplate>
                                            <%#GetUserName(Eval("UserID"))%>
                                        </ItemTemplate>
                                    </asp:TemplateColumn>
                                    <asp:TemplateColumn HeaderText="彩种">
                                        <ItemStyle HorizontalAlign="Center" />
                                        <ItemTemplate>
                                            <%#GetLottery(Eval("LotteryID"))%>
                                        </ItemTemplate>
                                    </asp:TemplateColumn>
                                    <asp:TemplateColumn HeaderText="玩法">
                                        <ItemStyle HorizontalAlign="Center" />
                                        <ItemTemplate>
                                            <%#GetPlayType(Eval("PlayTypeID"))%>
                                        </ItemTemplate>
                                    </asp:TemplateColumn>
                                    <asp:TemplateColumn HeaderText="跟单最小金额">
                                        <ItemStyle HorizontalAlign="Center" />
                                        <ItemTemplate>
                                            <%#Shove._Convert.StrToDouble(Eval("MoneyStart").ToString(),0).ToString("N")%>
                                        </ItemTemplate>
                                    </asp:TemplateColumn>
                                    <asp:TemplateColumn HeaderText="跟单最大金额">
                                        <ItemStyle HorizontalAlign="Center" />
                                        <ItemTemplate>
                                            <%#Shove._Convert.StrToDouble(Eval("MoneyEnd").ToString(), 0).ToString("N")%>
                                        </ItemTemplate>
                                    </asp:TemplateColumn>
                                    <asp:TemplateColumn HeaderText="定制时间">
                                        <ItemStyle HorizontalAlign="Center" />
                                        <ItemTemplate>
                                            <%#Eval("DateTime")%>
                                        </ItemTemplate>
                                    </asp:TemplateColumn>
                                </Columns>
                                <PagerStyle Visible="False"></PagerStyle>
                            </asp:DataGrid>
                            <input type="hidden" id="historySel" runat="server" value="AtagContent0" />
                            <div class="p_a_select">
                                <ShoveWebUI:ShoveGridPager ID="gPageWhoFollowSchemes" runat="server" Width="100%"
                                    PageSize="30" ShowSelectColumn="False" DataGrid="gWhoFollowSchemes" AlternatingRowColor="#F8F8F8"
                                    GridColor="#E0E0E0" HotColor="MistyRose" Visible="False" RowCursorStyle="" AllowShorting="true" />
                            </div>
                        </div>
                    </div>
                </div>

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
    <input type="hidden" id="hdCurDiv" runat="server" value="divMyFollowSchemes" />
    </form>
</body>
</html>

