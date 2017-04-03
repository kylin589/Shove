<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ExpertsCommendsList.aspx.cs"
    Inherits="Home_Room_ExpertsCommendsList" %>

<%@ Register Assembly="Shove.Web.UI.4 For.NET 3.5" Namespace="Shove.Web.UI" TagPrefix="ShoveWebUI" %>
<%@ Register Src="../../UserControls/Head.ascx" TagName="Head" TagPrefix="uc1" %>
<%@ Register Src="UserControls/UserMyIcaile.ascx" TagName="UserMyIcaile" TagPrefix="uc2" %>
<%@ Register Src="UserControls/WebFoot.ascx" TagName="WebFoot" TagPrefix="uc3" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>
        <%= _Site.Name %>专家申请-我的资料-用户中心-<%= _Site.Name %>！</title>
    <meta name="description" content="<%= _Site.Name %>是一家服务于中国彩民的互联网彩票合买代购交易平台，涉及中国彩票彩种最全的网站，包含双色球,大乐透,七星彩,3d,足彩等众多彩种的实时开奖信息,图表走势、分析预测以及开奖信息等!" />
    <meta name="keywords" content="双色球合买,体育彩票,福利彩票,双色球开奖信息." />
    <link href="Style/common.css" rel="stylesheet" type="text/css" />
    <link href="Style/StyleSheet.css" rel="stylesheet" type="text/css" />
    <link href="Style/home.css" rel="stylesheet" type="text/css" />
    <link rel="shortcut icon" href="../../favicon.ico" />

    <script src="../../JavaScript/jquery-1.6.2.min.js" type="text/javascript"></script>

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
                        <li class="selectTag"><a href="javascript:void(0)">我的资料</a></li>
                    </ul>
                    <div id="tagContent">
                        <div class="tagContent selectTag" id="tagContent0">
                            <table width="100%" border="0" cellpadding="0" cellspacing="0">
                                <tr style="background-color: #CCCCCC">
                                    <td style="padding-left: 5px; height: 30px; text-align: left">
                                        彩种：&nbsp;&nbsp;
                                        <asp:DropDownList ID="ddlExperts" runat="server" Width="140px" AutoPostBack="True"
                                            OnSelectedIndexChanged="ddlExperts_SelectedIndexChanged">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                            </table>
                            <asp:DataGrid ID="g" runat="server" Width="100%" AutoGenerateColumns="False" CellPadding="1"
                                BackColor="White" BorderWidth="2px" BorderStyle="None" BorderColor="#9FC8EA"
                                Font-Names="宋体" PageSize="20" AllowPaging="True" AllowSorting="True" OnItemCommand="g_ItemCommand"
                                OnItemDataBound="g_ItemDataBound">
                                <FooterStyle ForeColor="#330099" BackColor="#FFFFCC"></FooterStyle>
                                <SelectedItemStyle Font-Bold="True" ForeColor="#9FC8EA"></SelectedItemStyle>
                                <HeaderStyle HorizontalAlign="Center" ForeColor="RoyalBlue" VerticalAlign="Middle"
                                    Height="30" BackColor="#ffede3"></HeaderStyle>
                                <ItemStyle BackColor="White" BorderStyle="None" Height="30px" HorizontalAlign="Center" />
                                <Columns>
                                    <asp:BoundColumn DataField="Title" SortExpression="Title" HeaderText="标题">
                                        <HeaderStyle HorizontalAlign="Center" Width="30%"></HeaderStyle>
                                        <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                    </asp:BoundColumn>
                                    <asp:BoundColumn DataField="Number1" HeaderText="推荐号码">
                                        <HeaderStyle HorizontalAlign="Center" Width="45%"></HeaderStyle>
                                        <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                    </asp:BoundColumn>
                                    <asp:BoundColumn DataField="Price" SortExpression="Price" HeaderText="价格">
                                        <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                                        <ItemStyle HorizontalAlign="Center" Width="5%"></ItemStyle>
                                    </asp:BoundColumn>
                                    <asp:BoundColumn DataField="ReadCount" SortExpression="ReadCount" HeaderText="人气">
                                        <HeaderStyle HorizontalAlign="Center" Width="5%"></HeaderStyle>
                                        <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                    </asp:BoundColumn>
                                    <asp:TemplateColumn HeaderText="查看">
                                        <HeaderStyle HorizontalAlign="Center" Width="5%"></HeaderStyle>
                                        <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                        <ItemTemplate>
                                            <asp:LinkButton ID="btnRead" runat="server" CommandName="btnRead">查看</asp:LinkButton>&nbsp;
                                        </ItemTemplate>
                                    </asp:TemplateColumn>
                                    <asp:BoundColumn Visible="False" DataField="ID"></asp:BoundColumn>
                                </Columns>
                                <PagerStyle Visible="False" HorizontalAlign="Center" ForeColor="#330099" BackColor="#FFFFCC">
                                </PagerStyle>
                            </asp:DataGrid>
                            <ShoveWebUI:ShoveGridPager ID="gPager" runat="server" Width="100%" ShowSelectColumn="False"
                                DataGrid="g" AlternatingRowColor="Linen" GridColor="#E0E0E0" HotColor="MistyRose"
                                Visible="False" OnPageWillChange="gPager_PageWillChange" OnSortBefore="gPager_SortBefore"
                                BackColor="White" BorderStyle="None" />
                            <table>
                                <tr>
                                    <td width="100%" bgcolor="#FFFEDF" style="padding: 5px 10px 5px 10px;">
                                        <span style="padding: 5px 10px 5px 10px;">如有其他问题，请联系网站客服：<span class="red14"><%= _Site.Telephone %>
                                        </span></span>
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
