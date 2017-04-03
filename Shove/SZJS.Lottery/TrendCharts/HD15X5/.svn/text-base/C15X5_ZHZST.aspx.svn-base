<%@ Page Language="C#" AutoEventWireup="true" CodeFile="C15X5_ZHZST.aspx.cs" Inherits="Home_TrendCharts_C15X5_C15X5_ZHZST" %>

<%@ Register Src="../../Home/Room/UserControls/WebFoot.ascx" TagName="WebFoot" TagPrefix="uc1" %>
<%@ Register Src="../../UserControls/Head.ascx" TagName="Head" TagPrefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>15选5综合走势图-15选5走势图-彩票走势图表和数据分析－<%=_Site.Name %></title>
<meta name="keywords" content="15选5走势图-15选5综合走势图" />
<meta name="description" content="15选5走势图-15选5综合走势图、彩票走势图表和数据分析。" />
    <link href="../../Home/Room/Style/common.css" rel="stylesheet" type="text/css" />
    <link href="../../Home/Room/Style/StyleSheet.css" rel="stylesheet" type="text/css" />
    <link href="../../Home/Room/Style/zbuy.css" rel="stylesheet" type="text/css" />
    <link rel="shortcut icon" href="../../favicon.ico" />
    <link href="../../Home/Room/Style/zst.css" rel="stylesheet" type="text/css" />
    <script src="../../JavaScript/jquery-1.4.js" type="text/javascript"></script>
    <script type="text/javascript" language="javascript">
<!--
        function Style(obj, statcolor, color) {

            if (obj.style.backgroundColor == "") {
                obj.style.backgroundColor = "#FFFFFF";
                obj.style.color = statcolor;
            }
            else {
                obj.style.backgroundColor = "";
                obj.style.color = color;
            }
        }
//-->
    </script>

  
</head>
<body> 
    <form id="form1" runat="server">
  <uc2:Head ID="Head2" runat="server" />
 <div class="wrap">
<div class="zst_top">
<h1>15选5&nbsp;&nbsp;综合走势图</h1>
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
            CellPadding="0" ShowHeader="true" OnRowCreated="GridView1_RowCreated" ShowFooter="true">
            <Columns>
                <asp:BoundField DataField="Isuse" HeaderText="期号">
                    <ItemStyle CssClass="Isuse" />
                </asp:BoundField>
                <asp:BoundField DataField="LotteryNumber" HeaderText="开奖号码">
                    <ItemStyle Width="120" ForeColor="Red" />
                </asp:BoundField>
                <asp:BoundField DataField="B_1" HeaderText="01">
                    <ItemStyle CssClass="itemstyle1" />
                </asp:BoundField>
                <asp:BoundField DataField="B_2" HeaderText="02">
                    <ItemStyle CssClass="itemstyle1" />
                </asp:BoundField>
                <asp:BoundField DataField="B_3" HeaderText="03">
                    <ItemStyle CssClass="itemstyle1" />
                </asp:BoundField>
                <asp:BoundField DataField="B_4" HeaderText="04">
                    <ItemStyle CssClass="itemstyle1" />
                </asp:BoundField>
                <asp:BoundField DataField="B_5" HeaderText="05">
                    <ItemStyle CssClass="itemstyle1" />
                </asp:BoundField>
                <asp:BoundField DataField="B_6" HeaderText="06">
                    <ItemStyle Width="20" ForeColor="Blue" />
                </asp:BoundField>
                <asp:BoundField DataField="B_7" HeaderText="07">
                    <ItemStyle Width="20" ForeColor="Blue" />
                </asp:BoundField>
                <asp:BoundField DataField="B_8" HeaderText="08">
                    <ItemStyle Width="20" ForeColor="Blue" />
                </asp:BoundField>
                <asp:BoundField DataField="B_9" HeaderText="09">
                    <ItemStyle Width="20" ForeColor="Blue" />
                </asp:BoundField>
                <asp:BoundField DataField="B_10" HeaderText="10">
                    <ItemStyle Width="20" ForeColor="Blue" />
                </asp:BoundField>
                <asp:BoundField DataField="B_11" HeaderText="11">
                    <ItemStyle CssClass="itemstyle1" />
                </asp:BoundField>
                <asp:BoundField DataField="B_12" HeaderText="12">
                    <ItemStyle CssClass="itemstyle1" />
                </asp:BoundField>
                <asp:BoundField DataField="B_13" HeaderText="13">
                    <ItemStyle CssClass="itemstyle1" />
                </asp:BoundField>
                <asp:BoundField DataField="B_14" HeaderText="14">
                    <ItemStyle CssClass="itemstyle1" />
                </asp:BoundField>
                <asp:BoundField DataField="B_15" HeaderText="15">
                    <ItemStyle CssClass="itemstyle1" />
                </asp:BoundField>
                <asp:BoundField DataField="C_H" HeaderText="重号">
                    <ItemStyle Width="50" />
                </asp:BoundField>
                <asp:BoundField DataField="L_H" HeaderText="连号">
                    <ItemStyle CssClass="itemstyle2" />
                </asp:BoundField>
                <asp:BoundField DataField="Z_H" HeaderText="总和">
                    <ItemStyle Width="50" />
                </asp:BoundField>
                <asp:BoundField DataField="J_O" HeaderText="奇偶比">
                    <ItemStyle CssClass="itemstyle2" />
                </asp:BoundField>
                <asp:BoundField DataField="G_0" HeaderText="0">
                    <ItemStyle CssClass="itemstyle1" Height="18px" />
                </asp:BoundField>
                <asp:BoundField DataField="G_1" HeaderText="1">
                    <ItemStyle CssClass="itemstyle1" Height="18px" />
                </asp:BoundField>
                <asp:BoundField DataField="G_2" HeaderText="2">
                    <ItemStyle CssClass="itemstyle1" />
                </asp:BoundField>
                <asp:BoundField DataField="G_3" HeaderText="3">
                    <ItemStyle CssClass="itemstyle1" />
                </asp:BoundField>
                <asp:BoundField DataField="G_4" HeaderText="4">
                    <ItemStyle CssClass="itemstyle1" />
                </asp:BoundField>
                <asp:BoundField DataField="G_5" HeaderText="5">
                    <ItemStyle CssClass="itemstyle1" />
                </asp:BoundField>
                <asp:BoundField DataField="G_6" HeaderText="6">
                    <ItemStyle CssClass="itemstyle1" />
                </asp:BoundField>
                <asp:BoundField DataField="G_7" HeaderText="7">
                    <ItemStyle CssClass="itemstyle1" />
                </asp:BoundField>
                <asp:BoundField DataField="G_8" HeaderText="8">
                    <ItemStyle CssClass="itemstyle1" />
                </asp:BoundField>
                <asp:BoundField DataField="G_9" HeaderText="9">
                    <ItemStyle CssClass="itemstyle1" />
                </asp:BoundField>
                <asp:BoundField DataField="Q_1" HeaderText="7">
                    <ItemStyle Width="20" />
                </asp:BoundField>
                <asp:BoundField DataField="Q_2" HeaderText="8">
                    <ItemStyle Width="20" />
                </asp:BoundField>
                <asp:BoundField DataField="Q_3" HeaderText="9">
                    <ItemStyle Width="20" />
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
