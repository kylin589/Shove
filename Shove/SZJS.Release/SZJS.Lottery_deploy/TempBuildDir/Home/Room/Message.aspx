<%@ page language="C#" autoeventwireup="true" inherits="Home_Room_Message, App_Web_y4qeesyo" enableEventValidation="false" %>

<%@ Register Assembly="Shove.Web.UI.4 For.NET 3.5" Namespace="Shove.Web.UI" TagPrefix="ShoveWebUI" %>
<%@ Register Src="../../UserControls/Head.ascx" TagName="Head" TagPrefix="uc1" %>
<%@ Register Src="UserControls/UserMyIcaile.ascx" TagName="UserMyIcaile" TagPrefix="uc2" %>
<%@ Register Src="UserControls/WebFoot.ascx" TagName="WebFoot" TagPrefix="uc3" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>我的站内信-我的购彩纪录-用户中心-<%=_Site.Name %>－买彩票，就上<%=_Site.Name %>
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
                        <li class="selectTag"><a href="javascript:void(0)">我的信息</a></li>
                    </ul>
                    <div id="tagContent">
                        <div class="tagContent selectTag" id="tagContent0">
                            <asp:DataGrid ID="g1" runat="server" GridLines="None" CellPadding="2" BackColor="#DDDDDD"
                                BorderStyle="None" Width="100%" AutoGenerateColumns="False" CellSpacing="0" OnItemCommand="g1_ItemCommand"
                                OnItemDataBound="g1_ItemDataBound">
                                <FooterStyle ForeColor="#330099" BackColor="#FFFFCC"></FooterStyle>
                                <SelectedItemStyle Font-Bold="True" ForeColor="#663399"></SelectedItemStyle>
                                <HeaderStyle HorizontalAlign="Center" BackColor="#ffede3" ForeColor="#0066BA" Height="30px">
                                </HeaderStyle>
                                <AlternatingItemStyle BackColor="#F8F8F8" />
                                <ItemStyle BackColor="White" BorderStyle="None" Height="30px" HorizontalAlign="Center" />
                                <Columns>
                                    <asp:BoundColumn DataField="SourceUserName" HeaderText="发言人">
                                        <HeaderStyle HorizontalAlign="Center" Width="15%"></HeaderStyle>
                                        <ItemStyle Font-Bold="True" HorizontalAlign="Center"></ItemStyle>
                                    </asp:BoundColumn>
                                    <asp:BoundColumn DataField="Content" HeaderText="内容">
                                        <HeaderStyle HorizontalAlign="Center" Width="40%"></HeaderStyle>
                                        <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                    </asp:BoundColumn>
                                    <asp:TemplateColumn HeaderText="是否已读取">
                                        <HeaderStyle HorizontalAlign="Center" Width="10%"></HeaderStyle>
                                        <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                        <ItemTemplate>
                                            <asp:CheckBox ID="cbisRead" runat="server" Enabled="False" OnCheckedChanged="cbisRead_CheckedChanged"
                                                AutoPostBack="true"></asp:CheckBox>
                                        </ItemTemplate>
                                    </asp:TemplateColumn>
                                    <asp:BoundColumn DataField="DateTime" HeaderText="发言时间">
                                        <HeaderStyle HorizontalAlign="Center" Width="18%"></HeaderStyle>
                                        <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                    </asp:BoundColumn>
                                    <asp:TemplateColumn HeaderText="删除">
                                        <HeaderStyle HorizontalAlign="Center" Width="17%"></HeaderStyle>
                                        <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                        <ItemTemplate>
                                            <asp:LinkButton runat="server" ID="btnDel" Text="删除" Style="cursor: hand;" AlertText="确定要删除此条短消息吗？"
                                                Height="16px" CommandName="Del"></asp:LinkButton>
                                            <asp:LinkButton runat="server" ID="btnView" Text="查看" Style="cursor: hand;" Height="16px"
                                                CommandName="View"></asp:LinkButton>
                                        </ItemTemplate>
                                    </asp:TemplateColumn>
                                    <asp:BoundColumn DataField="ID" Visible="false"></asp:BoundColumn>
                                    <asp:BoundColumn DataField="isRead" Visible="false"></asp:BoundColumn>
                                </Columns>
                                <PagerStyle HorizontalAlign="Left" ForeColor="#003399" BackColor="#99CCCC" Mode="NumericPages">
                                </PagerStyle>
                            </asp:DataGrid>
                            <ShoveWebUI:ShoveGridPager ID="gPager1" runat="server" Width="100%" PageSize="20"
                                ShowSelectColumn="False" DataGrid="g1" AlternatingRowColor="#F8F8F8" GridColor="#E0E0E0"
                                HotColor="MistyRose" Visible="False" OnPageWillChange="gPager1_PageWillChange"
                                AllowShorting="False" RowCursorStyle="" />
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
