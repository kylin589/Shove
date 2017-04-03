<%@ page language="C#" autoeventwireup="true" inherits="Home_TrendCharts_SHSSL_SHSSL_HZ, App_Web_ikgl2x0o" enableEventValidation="false" %>

<%@ Register Src="../../Home/Room/UserControls/WebFoot.ascx" TagName="WebFoot" TagPrefix="uc1" %>
<%@ Register Src="../../UserControls/Head.ascx" TagName="Head" TagPrefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>上海时时乐和值分布遗漏图-时时乐走势图-彩票走势图表和数据分析－<%=_Site.Name %></title>
<meta name="keywords" content="时时乐走势图-上海时时乐和值分布遗漏图" />
<meta name="description" content="时时乐走势图-上海时时乐和值分布遗漏图、彩票走势图表和数据分析。" />
    <link href="../../Home/Room/Style/common.css" rel="stylesheet" type="text/css" />
    <link href="../../Home/Room/Style/StyleSheet.css" rel="stylesheet" type="text/css" />
    <link href="../../Home/Room/Style/zbuy.css" rel="stylesheet" type="text/css" />
    <link rel="shortcut icon" href="../../favicon.ico" />
    <link href="../../Home/Room/Style/zst.css" rel="stylesheet" type="text/css" />
    <script src="../../JavaScript/jquery-1.4.js" type="text/javascript"></script>
  

    <script type="text/javascript" language="javascript">
<!--
function Style(obj,statcolor,color)
{

 if(obj.style.backgroundColor=="")
 {
	obj.style.backgroundColor="#FFFFFF";
	obj.style.color=statcolor;
  }
	else
	{
	obj.style.backgroundColor="";
	obj.style.color=color;
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
<h1>上海时时乐&nbsp;&nbsp;和值分布遗漏走势图</h1>
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
                    <asp:GridView ID="GridView1"  runat="server" AutoGenerateColumns="false"
                        FooterStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center" align="center"
                        bordercolorlight="#808080" bordercolordark="#FFFFFF" RowStyle-HorizontalAlign="Center"
                        CellPadding="0" ShowHeader="true" OnRowCreated="GridView1_RowCreated" ShowFooter="true">
                        <Columns>
                            <asp:BoundField DataField="Isuse" HeaderText="期号">
                                <ItemStyle CssClass="Isuse" Font-Bold="true" />
                            </asp:BoundField>
                            <asp:BoundField DataField="LotteryNumber" HeaderText="开奖号码" ItemStyle-HorizontalAlign="Center">
                                <ItemStyle Width="100" Font-Bold="true" ForeColor="#ff0000" />
                            </asp:BoundField>
                            <asp:BoundField DataField="H_Z" HeaderText="和值">
                                <ItemStyle Width="60" Height="22" Font-Bold="true" ForeColor="#0000FF" BackColor="#ffe8eb" />
                            </asp:BoundField>
                            <asp:BoundField DataField="D1_0" HeaderText="B_0">
                                <ItemStyle CssClass="itemstyle2" />
                            </asp:BoundField>
                            <asp:BoundField DataField="D1_1" HeaderText="B_1">
                                <ItemStyle CssClass="itemstyle1" />
                            </asp:BoundField>
                            <asp:BoundField DataField="D1_2" HeaderText="B_0">
                                <ItemStyle CssClass="itemstyle2" />
                            </asp:BoundField>
                            <asp:BoundField DataField="D1_3" HeaderText="B_1">
                                <ItemStyle CssClass="itemstyle1" />
                            </asp:BoundField>
                            <asp:BoundField DataField="D1_4" HeaderText="B_0">
                                <ItemStyle CssClass="itemstyle2" />
                            </asp:BoundField>
                            <asp:BoundField DataField="D1_5" HeaderText="B_1">
                                <ItemStyle CssClass="itemstyle1" />
                            </asp:BoundField>
                            <asp:BoundField DataField="D1_6" HeaderText="B_0">
                                <ItemStyle CssClass="itemstyle2" />
                            </asp:BoundField>
                            <asp:BoundField DataField="D1_7" HeaderText="B_1">
                                <ItemStyle CssClass="itemstyle1" />
                            </asp:BoundField>
                            <asp:BoundField DataField="D1_8" HeaderText="B_0">
                                <ItemStyle CssClass="itemstyle2" />
                            </asp:BoundField>
                            <asp:BoundField DataField="D1_9" HeaderText="B_1">
                                <ItemStyle CssClass="itemstyle1" />
                            </asp:BoundField>
                            <asp:BoundField DataField="D2_0" HeaderText="B_2">
                                <ItemStyle CssClass="itemstyle2" />
                            </asp:BoundField>
                            <asp:BoundField DataField="D2_1" HeaderText="B_3">
                                <ItemStyle CssClass="itemstyle1" />
                            </asp:BoundField>
                            <asp:BoundField DataField="D2_2" HeaderText="B_2">
                                <ItemStyle CssClass="itemstyle2" />
                            </asp:BoundField>
                            <asp:BoundField DataField="D2_3" HeaderText="B_3">
                                <ItemStyle CssClass="itemstyle1" />
                            </asp:BoundField>
                            <asp:BoundField DataField="D2_4" HeaderText="B_2">
                                <ItemStyle CssClass="itemstyle2" />
                            </asp:BoundField>
                            <asp:BoundField DataField="D2_5" HeaderText="B_3">
                                <ItemStyle CssClass="itemstyle1" />
                            </asp:BoundField>
                            <asp:BoundField DataField="D2_6" HeaderText="B_2">
                                <ItemStyle CssClass="itemstyle2" />
                            </asp:BoundField>
                            <asp:BoundField DataField="D2_7" HeaderText="B_3">
                                <ItemStyle CssClass="itemstyle1" />
                            </asp:BoundField>
                            <asp:BoundField DataField="D2_8" HeaderText="B_2">
                                <ItemStyle CssClass="itemstyle2" />
                            </asp:BoundField>
                            <asp:BoundField DataField="D2_9" HeaderText="B_3">
                                <ItemStyle CssClass="itemstyle1" />
                            </asp:BoundField>
                            <asp:BoundField DataField="D3_0" HeaderText="B_4">
                                <ItemStyle CssClass="itemstyle2" />
                            </asp:BoundField>
                            <asp:BoundField DataField="D3_1" HeaderText="S_0">
                                <ItemStyle CssClass="itemstyle1" />
                            </asp:BoundField>
                            <asp:BoundField DataField="D3_2" HeaderText="B_4">
                                <ItemStyle CssClass="itemstyle2" />
                            </asp:BoundField>
                            <asp:BoundField DataField="D3_3" HeaderText="S_0">
                                <ItemStyle CssClass="itemstyle1" />
                            </asp:BoundField>
                            <asp:BoundField DataField="D3_4" HeaderText="B_4">
                                <ItemStyle CssClass="itemstyle2" />
                            </asp:BoundField>
                            <asp:BoundField DataField="D3_5" HeaderText="S_0">
                                <ItemStyle CssClass="itemstyle1" />
                            </asp:BoundField>
                            <asp:BoundField DataField="D3_6" HeaderText="B_4">
                                <ItemStyle CssClass="itemstyle2" />
                            </asp:BoundField>
                            <asp:BoundField DataField="D3_7" HeaderText="S_0">
                                <ItemStyle CssClass="itemstyle1" />
                            </asp:BoundField>
                        </Columns>
                    </asp:GridView>
             
    </div>
    <div class="wrap">
<p> 

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
