<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SHSSL_012.aspx.cs" Inherits="Home_TrendCharts_SHSSL_SHSSL_012" %>

<%@ Register Src="../../Home/Room/UserControls/WebFoot.ascx" TagName="WebFoot" TagPrefix="uc1" %>
<%@ Register Src="../../UserControls/Head.ascx" TagName="Head" TagPrefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>上海时时乐012路-时时乐走势图-彩票走势图表和数据分析－<%=_Site.Name %></title>
    <meta name="keywords" content="时时乐走势图-上海时时乐012路" />
    <meta name="description" content="时时乐走势图-上海时时乐012路、彩票走势图表和数据分析。" />
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
<h1>上海时时乐  012路走势图</h1>
<ul>
<li> <span>起始期数：</span>
<asp:TextBox ID="tb1" runat="server" CssClass="input" ></asp:TextBox>
<span>至</span>
<asp:TextBox ID="tb2" runat="server" CssClass="input" ></asp:TextBox>
<asp:Button ID="Button1" runat="server" Text="搜索" OnClick="btnSearch_Click" CssClass="zst_btn" />
<asp:Button ID="Button2" runat="server" Text="显示30期" OnClick="btnTop30_Click" CssClass="zst_btn"/>
<asp:Button ID="Button3" runat="server" Text="显示50期" OnClick="btnTop50_Click" CssClass="zst_btn"/>
<asp:Button ID="Button4" runat="server" Text="显示100期" OnClick="btnTop100_Click" CssClass="zst_btn"/>
</li>
<div class="clear"></div>
<li>

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
                            <asp:BoundField DataField="LotteryNumber" HeaderText="开奖号码" ItemStyle-HorizontalAlign="Center">
                                <ItemStyle Width="80" Font-Bold="true" ForeColor="#0000FF" />
                            </asp:BoundField>
                            <asp:BoundField DataField="B_0" HeaderText="B_0">
                                <ItemStyle CssClass="itemstyle1" />
                            </asp:BoundField>
                            <asp:BoundField DataField="B_1" HeaderText="B_1">
                                <ItemStyle CssClass="itemstyle1" />
                            </asp:BoundField>
                            <asp:BoundField DataField="B_2" HeaderText="B_2">
                                <ItemStyle CssClass="itemstyle1" />
                            </asp:BoundField>
                            <asp:BoundField DataField="B_3" HeaderText="B_3">
                                <ItemStyle CssClass="itemstyle1" />
                            </asp:BoundField>
                            <asp:BoundField DataField="B_4" HeaderText="B_4">
                                <ItemStyle CssClass="itemstyle1" />
                            </asp:BoundField>
                            <asp:BoundField DataField="S_0" HeaderText="S_0">
                                <ItemStyle CssClass="itemstyle2" />
                            </asp:BoundField>
                            <asp:BoundField DataField="S_1" HeaderText="S_1">
                                <ItemStyle CssClass="itemstyle2" />
                            </asp:BoundField>
                            <asp:BoundField DataField="S_2" HeaderText="S_2">
                                <ItemStyle CssClass="itemstyle2" />
                            </asp:BoundField>
                            <asp:BoundField DataField="S_3" HeaderText="S_3">
                                <ItemStyle CssClass="itemstyle2" />
                            </asp:BoundField>
                            <asp:BoundField DataField="S_4" HeaderText="S_4">
                                <ItemStyle CssClass="itemstyle2" />
                            </asp:BoundField>
                            <asp:BoundField DataField="G_0" HeaderText="G_0">
                                <ItemStyle CssClass="itemstyle1" />
                            </asp:BoundField>
                            <asp:BoundField DataField="G_1" HeaderText="G_1">
                                <ItemStyle CssClass="itemstyle1" />
                            </asp:BoundField>
                            <asp:BoundField DataField="G_2" HeaderText="G_2">
                                <ItemStyle CssClass="itemstyle1" />
                            </asp:BoundField>
                            <asp:BoundField DataField="G_3" HeaderText="G_3">
                                <ItemStyle CssClass="itemstyle1" />
                            </asp:BoundField>
                            <asp:BoundField DataField="G_4" HeaderText="G_4">
                                <ItemStyle CssClass="itemstyle1" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Z_0" HeaderText="Z_0">
                                <ItemStyle CssClass="itemstyle2" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Z_1" HeaderText="Z_1">
                                <ItemStyle CssClass="itemstyle2" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Z_2" HeaderText="Z_2">
                                <ItemStyle CssClass="itemstyle2" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Z_3" HeaderText="Z_3">
                                <ItemStyle CssClass="itemstyle2" />
                            </asp:BoundField>
                            <asp:BoundField DataField="D_0" HeaderText="D_0">
                                <ItemStyle CssClass="itemstyle1" />
                            </asp:BoundField>
                            <asp:BoundField DataField="D_1" HeaderText="D_1">
                                <ItemStyle CssClass="itemstyle1" />
                            </asp:BoundField>
                            <asp:BoundField DataField="D_2" HeaderText="D_2">
                                <ItemStyle CssClass="itemstyle1" />
                            </asp:BoundField>
                            <asp:BoundField DataField="D_3" HeaderText="D_3">
                                <ItemStyle CssClass="itemstyle1" />
                            </asp:BoundField>
                            <asp:BoundField DataField="L_0" HeaderText="L_0">
                                <ItemStyle CssClass="itemstyle2" />
                            </asp:BoundField>
                            <asp:BoundField DataField="L_1" HeaderText="L_1">
                                <ItemStyle CssClass="itemstyle2" />
                            </asp:BoundField>
                            <asp:BoundField DataField="L_2" HeaderText="L_2">
                                <ItemStyle CssClass="itemstyle2" />
                            </asp:BoundField>
                            <asp:BoundField DataField="L_3" HeaderText="L_3">
                                <ItemStyle CssClass="itemstyle2" />
                            </asp:BoundField>
                            <asp:BoundField DataField="A" HeaderText="A">
                                <ItemStyle CssClass="itemstyle1" Font-Bold="true" />
                            </asp:BoundField>
                            <asp:BoundField DataField="bb" HeaderText="B">
                                <ItemStyle CssClass="itemstyle1" Font-Bold="true" />
                            </asp:BoundField>
                            <asp:BoundField DataField="C" HeaderText="C">
                                <ItemStyle CssClass="itemstyle1" Font-Bold="true" />
                            </asp:BoundField>
                            <asp:BoundField DataField="D" HeaderText="D">
                                <ItemStyle CssClass="itemstyle1" Font-Bold="true" />
                            </asp:BoundField>
                            <asp:BoundField DataField="E" HeaderText="E">
                                <ItemStyle CssClass="itemstyle1" Font-Bold="true" />
                            </asp:BoundField>
                            <asp:BoundField DataField="F" HeaderText="F">
                                <ItemStyle CssClass="itemstyle1" Font-Bold="true" />
                            </asp:BoundField>
                            <asp:BoundField DataField="gg" HeaderText="G">
                                <ItemStyle CssClass="itemstyle1" Font-Bold="true" />
                            </asp:BoundField>
                            <asp:BoundField DataField="H" HeaderText="H">
                                <ItemStyle CssClass="itemstyle1" Font-Bold="true" />
                            </asp:BoundField>
                            <asp:BoundField DataField="I" HeaderText="I">
                                <ItemStyle CssClass="itemstyle1" Font-Bold="true" />
                            </asp:BoundField>
                            <asp:BoundField DataField="J" HeaderText="J">
                                <ItemStyle CssClass="itemstyle1" Font-Bold="true" />
                            </asp:BoundField>
                        </Columns>
                    </asp:GridView>
    </div>
    <div class="wrap">
<p> 
<font color="#FF0000">说明：</font>012路分析是将每位分别除以3所得到余数，0、3、6、9为0数，1、4、7为1数，2、5、8为2数。本站福彩3D彩票021路分析图中总体走势图中：<font
                        color="#0000FF"><strong>A</strong></font>-3个2路，<font color="#0000FF"><strong>B</strong></font>-1个1路2个2路，<font
                            color="#0000FF"><strong>C</strong></font>-2个1路1个2路，<font color="#0000FF"><strong>D</strong></font>-3个1路码，<font
                                color="#0000FF"><strong>E</strong></font>-1个0路2个2路，<font color="#0000FF"><strong>F</strong></font>-1个0路1个1路1个2路，<strong><font
                                    color="#0000FF">G</font></strong>-1个0路2个1路，<font color="#0000FF"><strong>H</strong></font>-2个0路1个2路，<font
                                        color="#0000FF"><strong>I</strong></font>-2个0路1个1路，<font color="#0000FF"><strong>J</strong></font>-3个0路。<br />

<a href='SHSSL_ZHFB.aspx' target='mainFrame'>综合分布图（基本走势图）</a> | 
<a href='SHSSL_012.aspx' target='mainFrame'>012路走势图（除3余数）</a>
                        | <a href='SHSSL_DX.aspx' target='mainFrame'>大小分析走势图</a> | <a href='SHSSL_JO.aspx' target='mainFrame'>
                            奇偶分析走势图</a> |<a href='SHSSL_ZH.aspx' target='mainFrame'>质合分析走势图</a> | <a href='SHSSL_HZ.aspx'
                                target='mainFrame'>和值走势图</a>
                       </p>
            </div>
     <uc1:WebFoot ID="WebFoot1" runat="server" />
    </form>

</body>
</html>
