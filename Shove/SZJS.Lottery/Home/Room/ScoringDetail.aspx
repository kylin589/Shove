<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ScoringDetail.aspx.cs" Inherits="Home_Room_ScoringDetail" %>

<%@ Register Assembly="Shove.Web.UI.4 For.NET 3.5" Namespace="Shove.Web.UI" TagPrefix="ShoveWebUI" %>
<%@ Register Src="../../UserControls/Head.ascx" TagName="Head" TagPrefix="uc1" %>
<%@ Register Src="UserControls/UserMyIcaile.ascx" TagName="UserMyIcaile" TagPrefix="uc2" %>
<%@ Register Src="UserControls/WebFoot.ascx" TagName="WebFoot" TagPrefix="uc3" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>我的积分明细-我的积分-<%= _Site.Name %>
        ！</title>
    <meta name="description" content="<%= _Site.Name %> 是一家服务于中国彩民的互联网彩票合买代购交易平台，涉及中国彩票彩种最全的网站，包含双色球,大乐透,七星彩,3d,足彩等众多彩种的实时开奖信息,图表走势、分析预测以及开奖信息等!" />
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
                        <li class="selectTag"><a href="javascript:void(0)">我的积分明细</a></li>
                    </ul>
                    <div id="tagContent">
                        <div class="tagContent selectTag" id="tagContent0">
                            <table border="0" align="center" cellpadding="0" cellspacing="0" width="100%" style="border:0px;">
                                <tbody style="padding: 10px 20px 10px 20px">
                                    <tr style="background-color: #ffffff;">
                                        <td class="td6" style="height: 65px" valign="middle" align="left">
                                            <p>
                                                <font face="宋体" color="#ff0000">&nbsp;&nbsp;&nbsp;&nbsp; 注：为了减轻服务器的压力，此数据被缓存几分钟。即：你的最后操作的充值、冻结、解冻、投注等信息，如果没有完全显示出来，几分钟后重新打开本页都将会被正确显示。</font></p>
                                            <font face="宋体">如果您充值了，银行账户钱扣了，而您的账户还没有加上，请拨打<% =_Site.Telephone %>告诉我们，我们将第一时间为您处理！</font>
                                        </td>
                                    </tr>
                                    <tr style="background-color: #ffffff;">
                                        <td style="height: 35px">
                                            <font face="宋体">&nbsp;请选择开始时间进行查询
                                                <asp:DropDownList ID="ddlYear" runat="server" Width="88px">
                                                </asp:DropDownList>
                                                &nbsp;
                                                <asp:DropDownList ID="ddlMonth" runat="server" Width="80px">
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
                                                &nbsp;
                                                <ShoveWebUI:ShoveConfirmButton ID="btnGO" runat="server" Text="查询" OnClick="btnGO_Click"
                                                    BackgroupImage="Images/buttbg.gif" Style="font-size: 9pt; cursor: hand;" Height="20px"
                                                    Width="60px" /></font>
                                        </td>
                                    </tr>
                                    <tr style="background-color: #ffffff; border-bottom:0px; border-top:0px;">
                                        <td valign="top" align="center" style="border:0px;">
                                            <asp:DataGrid ID="g" runat="server" Width="100%" Style="border:0px;" AllowPaging="false"
                                                PageSize="25" AutoGenerateColumns="False" CellPadding="0" BackColor="#DDDDDD"
                                                Font-Names="Tahoma" OnItemDataBound="g_ItemDataBound" CellSpacing="0">
                                                <FooterStyle ForeColor="#330099" BackColor="#FFFFCC"></FooterStyle>
                                                <SelectedItemStyle Font-Bold="True" ForeColor="#663399"></SelectedItemStyle>
                                                <HeaderStyle HorizontalAlign="Center" BackColor="#ffede3" ForeColor="#0066BA" Height="30px">
                                                </HeaderStyle>
                                                <AlternatingItemStyle BackColor="#F8F8F8" />
                                                <ItemStyle BackColor="White" BorderStyle="None" Height="30px" HorizontalAlign="Center" />
                                                <Columns>
                                                    <asp:BoundColumn DataField="DateTime" HeaderText="时间">
                                                        <HeaderStyle HorizontalAlign="Center" Width="20%"></HeaderStyle>
                                                        <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                                    </asp:BoundColumn>
                                                    <asp:BoundColumn DataField="Memo" HeaderText="摘要">
                                                        <HeaderStyle HorizontalAlign="Center" Width="35%"></HeaderStyle>
                                                        <ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
                                                            Font-Underline="False" HorizontalAlign="Left" />
                                                    </asp:BoundColumn>
                                                    <asp:BoundColumn DataField="ScoringAdd" HeaderText="增加">
                                                        <HeaderStyle HorizontalAlign="Center" Width="15%"></HeaderStyle>
                                                        <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                                    </asp:BoundColumn>
                                                    <asp:BoundColumn DataField="ScoringSub" HeaderText="减少">
                                                        <HeaderStyle HorizontalAlign="Center" Width="15%"></HeaderStyle>
                                                        <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                                    </asp:BoundColumn>
                                                    <asp:BoundColumn DataField="Balance" HeaderText="余额">
                                                        <HeaderStyle HorizontalAlign="Center" Width="15%"></HeaderStyle>
                                                        <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                                    </asp:BoundColumn>
                                                    <asp:BoundColumn Visible="False" DataField="SchemeID" HeaderText="SchemeID"></asp:BoundColumn>
                                                </Columns>
                                                <PagerStyle Visible="False" HorizontalAlign="Center" ForeColor="#330099" BackColor="#FFFFCC">
                                                </PagerStyle>
                                            </asp:DataGrid>
                                            <ShoveWebUI:ShoveGridPager ID="gPager" runat="server" Width="100%" PageSize="30"
                                                Visible="False" ShowSelectColumn="False" DataGrid="g" AllowShorting="False" AlternatingRowColor="Linen"
                                                GridColor="#E0E0E0" HotColor="MistyRose" OnPageWillChange="gPager_PageWillChange" />
                                        </td>
                                    </tr>
                                </tbody>
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
