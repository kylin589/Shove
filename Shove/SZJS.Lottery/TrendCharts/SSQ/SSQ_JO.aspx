<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SSQ_JO.aspx.cs" Inherits="Home_TrendCharts_SSQ_SSQ_JO" %>
<%@ Register Src="../../Home/Room/UserControls/WebFoot.ascx" TagName="WebFoot" TagPrefix="uc1" %>
<%@ Register Src="../../UserControls/Head.ascx" TagName="Head" TagPrefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>双色球奇偶分析图-双色球走势图-彩票走势图表和数据分析－<%=_Site.Name %></title>
<meta name="keywords" content="双色球走势图-双色球奇偶分析图" />
<meta name="description" content="双色球走势图-双色球奇偶分析图、彩票走势图表和数据分析。" />
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
<h1>双色球&nbsp;&nbsp;奇偶分析图走势图</h1>
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
<div  class="wrap">
 <asp:GridView ID="GridView1" Width="100%" runat="server" AutoGenerateColumns="False"
            FooterStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center" align="center"
            bordercolorlight="#808080" bordercolordark="#FFFFFF" RowStyle-HorizontalAlign="Center"
            CellPadding="0" OnRowCreated="GridView1_RowCreated" ShowFooter="True">
            <FooterStyle HorizontalAlign="Center"></FooterStyle>
            <RowStyle HorizontalAlign="Center"></RowStyle>
            <Columns>
                <asp:BoundField DataField="Isuse" HeaderText="期号">
                    <ItemStyle CssClass="Isuse" />
                </asp:BoundField>
                <asp:BoundField DataField="RQ_0" HeaderText="红球号码">
                    <ItemStyle Width="150" ForeColor="#ff0000" Font-Bold="true" />
                </asp:BoundField>
                <asp:BoundField DataField="BQ_0" HeaderText="蓝球号码">
                    <ItemStyle CssClass="itemstyle1" Width="70" />
                </asp:BoundField>
                <asp:BoundField DataField="H_Z" HeaderText="红球和值">
                    <ItemStyle Width="70" />
                </asp:BoundField>
                <asp:BoundField DataField="RZ_0" HeaderText="RZ_0">
                    <ItemStyle CssClass="itemstyle1" />
                </asp:BoundField>
                <asp:BoundField DataField="RZ_1" HeaderText="RZ_1">
                    <ItemStyle CssClass="itemstyle2" />
                </asp:BoundField>
                <asp:BoundField DataField="RZ_2" HeaderText="RZ_2">
                    <ItemStyle CssClass="itemstyle1" />
                </asp:BoundField>
                <asp:BoundField DataField="RZ_3" HeaderText="RZ_3">
                    <ItemStyle CssClass="itemstyle2" />
                </asp:BoundField>
                <asp:BoundField DataField="RZ_4" HeaderText="RZ_4">
                    <ItemStyle CssClass="itemstyle1" />
                </asp:BoundField>
                <asp:BoundField DataField="RZ_5" HeaderText="RZ_5">
                    <ItemStyle CssClass="itemstyle2" />
                </asp:BoundField>
                <asp:BoundField DataField="RZ_6" HeaderText="RZ_6">
                    <ItemStyle CssClass="itemstyle1" />
                </asp:BoundField>
                <asp:BoundField DataField="BZ_0" HeaderText="BZ_0">
                    <ItemStyle CssClass="itemstyle4" />
                </asp:BoundField>
                <asp:BoundField DataField="BH_0" HeaderText="BH_0">
                    <ItemStyle CssClass="itemstyle3" />
                </asp:BoundField>
                <asp:BoundField DataField="R1Z_0" HeaderText="R1Z_0">
                    <ItemStyle CssClass="itemstyle2" />
                </asp:BoundField>
                <asp:BoundField DataField="R1H_0" HeaderText="R1H_0">
                    <ItemStyle CssClass="itemstyle1" />
                </asp:BoundField>
                <asp:BoundField DataField="R2Z_0" HeaderText="R2Z_0">
                    <ItemStyle CssClass="itemstyle4" />
                </asp:BoundField>
                <asp:BoundField DataField="R2H_0" HeaderText="R2H_0">
                    <ItemStyle CssClass="itemstyle3" />
                </asp:BoundField>
                <asp:BoundField DataField="R3Z_0" HeaderText="R3Z_0">
                    <ItemStyle CssClass="itemstyle2" />
                </asp:BoundField>
                <asp:BoundField DataField="R3H_0" HeaderText="R3H_0">
                    <ItemStyle CssClass="itemstyle1" />
                </asp:BoundField>
                <asp:BoundField DataField="R4Z_0" HeaderText="R4Z_0">
                    <ItemStyle CssClass="itemstyle4" />
                </asp:BoundField>
                <asp:BoundField DataField="R4H_0" HeaderText="R4H_0">
                    <ItemStyle CssClass="itemstyle3" />
                </asp:BoundField>
                <asp:BoundField DataField="R5Z_0" HeaderText="R5Z_0">
                    <ItemStyle CssClass="itemstyle2" />
                </asp:BoundField>
                <asp:BoundField DataField="R5H_0" HeaderText="R5H_0">
                    <ItemStyle CssClass="itemstyle1" />
                </asp:BoundField>
                <asp:BoundField DataField="R6Z_0" HeaderText="R6Z_0">
                    <ItemStyle CssClass="itemstyle4" />
                </asp:BoundField>
                <asp:BoundField DataField="R6H_0" HeaderText="R6H_0">
                    <ItemStyle CssClass="itemstyle3" />
                </asp:BoundField>
                <asp:BoundField DataField="RHZ_0" HeaderText="RHZ_0">
                    <ItemStyle CssClass="itemstyle2" />
                </asp:BoundField>
                <asp:BoundField DataField="RHH_0" HeaderText="RHH_0">
                    <ItemStyle CssClass="itemstyle1" />
                </asp:BoundField>
                <asp:BoundField DataField="Z_H" HeaderText="Z_H">
                    <ItemStyle Width="40" ForeColor="#0000ff" Height="19" />
                </asp:BoundField>
            </Columns>
            <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
        </asp:GridView>
</div>
<div class="wrap">
<p>
                        <a href='SSQ_CGXMB.aspx' target='mainFrame'>常规项目表走势图</a>
                        | <a href='SSQ_ZHFB.aspx' target='mainFrame'>综合分布图走势图</a> | <a href='SSQ_3FQ.aspx' target='mainFrame'>
                            3分区分布图走势图</a> | <a href='SSQ_DX.aspx' target='mainFrame'>大小分析走势图</a> | <a href='SSQ_JO.aspx'
                                target='mainFrame'>奇偶分析走势图</a> | <a href='SSQ_ZH.aspx' target='mainFrame'>质合分析走势图</a>
                        | <a href='SSQ_HL.aspx' target='mainFrame'>红蓝球走势图</a> | <a href='SSQ_BQZST.aspx'
                            target='mainFrame'>蓝球综合走势图</a>
                       </p>
            </div>
  <uc1:WebFoot ID="WebFoot1" runat="server" />
    </form>

</body>
</html>
