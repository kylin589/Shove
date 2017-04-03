<%@ Page Language="C#" AutoEventWireup="true" CodeFile="C15X5_CGXMB.aspx.cs" Inherits="Home_TrendCharts_C15X5_C15X5_CGXMB" %>
<%@ Register Src="../../Home/Room/UserControls/WebFoot.ascx" TagName="WebFoot" TagPrefix="uc1" %>
<%@ Register Src="../../UserControls/Head.ascx" TagName="Head" TagPrefix="uc2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>15选5常规项目表-15选5走势图-彩票走势图表和数据分析－<%=_Site.Name %></title>
<meta name="keywords" content="15选5走势图-15选5常规项目表" />
<meta name="description" content="15选5走势图-15选5常规项目表、彩票走势图表和数据分析。" />
    <link href="../../Home/Room/Style/common.css" rel="stylesheet" type="text/css" />
    <link href="../../Home/Room/Style/StyleSheet.css" rel="stylesheet" type="text/css" />
    <link href="../../Home/Room/Style/zbuy.css" rel="stylesheet" type="text/css" />
    <link rel="shortcut icon" href="../../favicon.ico" />
    <link href="../../Home/Room/Style/zst.css" rel="stylesheet" type="text/css" />
    <script src="../../JavaScript/jquery-1.4.js" type="text/javascript"></script>
</head>
<body>
    <form id="form1" runat="server">
    
      
  <uc2:Head ID="Head2" runat="server" />
  <div class="wrap">
<div class="zst_top">
<h1>15选5&nbsp;&nbsp;常规项目表走势图</h1>
<ul>
<li> <span>起始期数：</span>
<asp:TextBox ID="tb1" runat="server" CssClass="input" ></asp:TextBox>
<span>至</span>
<asp:TextBox ID="tb2" runat="server" CssClass="input" ></asp:TextBox>
<asp:Button ID="btnSearch" runat="server" Text="搜索" OnClick="btnSearch_Click" CssClass="zst_btn" />
<asp:Button ID="btnTop30" runat="server" Text="显示30期" OnClick="btnTop30_Click" CssClass="zst_btn"/>
<asp:Button ID="btnTop50" runat="server" Text="显示50期" OnClick="btnTop50_Click" CssClass="zst_btn"/>
<asp:Button ID="btnTop100" runat="server" Text="显示100期" OnClick="btnTop100_Click" CssClass="zst_btn"/>
</li>
<div class="clear"></div>
<li>
<a href="<%= _Site.Url %>" target="_blank"><%=_Site.Name %>首页</a> 

<a href="<%= ResolveUrl("~/Lottery/Buy_15X5.aspx") %>" target="_blank">15选5投注/合买</a>

<a href="<%= ResolveUrl("~/WinQuery/59-0-0.aspx") %>" target="_blank">15选5中奖查询</a>
 <asp:Label ID="lbAd" runat="server"></asp:Label> <asp:Label ID="lbAd1" runat="server"></asp:Label> <asp:Label ID="lbAd2" runat="server"></asp:Label>
 </li>

</ul>
</div> 
</div>
<div class="wrap">
<asp:GridView ID="GridView1" Width="100%" runat="server" AutoGenerateColumns="false"
            FooterStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center" align="center"
            bordercolorlight="#808080" bordercolordark="#FFFFFF" RowStyle-HorizontalAlign="Center"
            CellPadding="0" ShowHeader="true" ShowFooter="true">
            <HeaderStyle BackColor="#e8f1f8" Height="35px" Font-Bold="false" />
            <FooterStyle BackColor="#e8f1f8" Height="35px" Font-Bold="true" />
            <Columns>
                <asp:BoundField DataField="Isuse" HeaderText="期号" FooterText="期号">
                    <ItemStyle CssClass="Isuse" />
                </asp:BoundField>
                <asp:BoundField DataField="LotteryNumber" HeaderText="开奖号码" FooterText="开奖号码">
                    <ItemStyle Width="160" ForeColor="#FF0000" Font-Bold="true" />
                </asp:BoundField>
                <asp:BoundField DataField="J_O" HeaderText="奇偶比" FooterText="奇偶比">
                    <ItemStyle Font-Bold="true" CssClass="itemstyle1" />
                </asp:BoundField>
                <asp:BoundField DataField="D_X" HeaderText="大小比" FooterText="大小比">
                    <ItemStyle CssClass="itemstyle2" Font-Bold="true" />
                </asp:BoundField>
                <asp:BoundField DataField="QJ_3" HeaderText="三区比" FooterText="三区比">
                    <ItemStyle CssClass="itemstyle1" Font-Bold="true" />
                </asp:BoundField>
                <asp:BoundField DataField="Z_H" HeaderText="号码和值 " FooterText="号码和值 ">
                    <ItemStyle CssClass="itemstyle2" Font-Bold="true" />
                </asp:BoundField>
                <asp:BoundField DataField="L_H" HeaderText="连号组数" FooterText="连号组数">
                    <ItemStyle CssClass="itemstyle1" Font-Bold="true" />
                </asp:BoundField>
                <asp:BoundField DataField="WH_Z" HeaderText="尾号相同组数" FooterText="尾号相同组数">
                    <ItemStyle CssClass="itemstyle2" Font-Bold="true" />
                </asp:BoundField>
                <asp:BoundField DataField="C_H" HeaderText="重复号" FooterText="重复号">
                    <ItemStyle CssClass="itemstyle1" Font-Bold="true" />
                </asp:BoundField>
            </Columns>
        </asp:GridView>
</div>
<div class="wrap">
<p> 
 <a href="<%= _Site.Url %>" target="_blank">
                                <%=_Site.Name %>首页</a> 
                                 <a href="<%= ResolveUrl("~/Lottery/Buy_15X5.aspx") %>" target="_blank" >15选5投注/合买</a> <a href="<%= ResolveUrl("~/WinQuery/59-0-0.aspx") %>"
                                target="_blank">15选5中奖查询</a>
                       </p>
            </div>

    <uc1:WebFoot ID="WebFoot1" runat="server" />
    </form>
    
</body>
</html>
