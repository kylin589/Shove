<%@ page language="C#" autoeventwireup="true" inherits="Home_TrendCharts_JXSSC_SSC_3X_DX_012_ZST, App_Web_res0mvlh" enableEventValidation="false" %>
<%@ Register Src="../../Home/Room/UserControls/WebFoot.ascx" TagName="WebFoot" TagPrefix="uc1" %>
<%@ Register Src="../../UserControls/Head.ascx" TagName="Head" TagPrefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>时时彩三星单选012走势图-时时彩走势图-彩票走势图表和数据分析－<%=_Site.Name %></title>
    <meta name="keywords" content="时时彩走势图-时时彩三星单选012走势图" />
    <meta name="description" content="时时彩走势图-时时彩三星单选012走势图、彩票走势图表和数据分析。" />
      <link href="../../Home/Room/Style/common.css" rel="stylesheet" type="text/css" />
    <link href="../../Home/Room/Style/StyleSheet.css" rel="stylesheet" type="text/css" />
    <link href="../../Home/Room/Style/zbuy.css" rel="stylesheet" type="text/css" />
    <link rel="shortcut icon" href="../../favicon.ico" />
 <link href="../../Home/Room/Style/zst.css" rel="stylesheet" type="text/css" />
    <script src="../../JavaScript/jquery-1.4.js" type="text/javascript"></script>
    <script type="text/javascript" language="javascript">
<!--
function Style1(obj,statcolor,color)
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
<h1>时时彩&nbsp;&nbsp;三星单选012走势图</h1>
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

        <asp:GridView ID="GridView1" Width="100%" runat="server" AutoGenerateColumns="false"
            FooterStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center" align="center"
            bordercolorlight="#808080" bordercolordark="#FFFFFF" RowStyle-HorizontalAlign="Center"
            OnRowCreated="GridView1_RowCreated" CellPadding="0" ShowHeader="true" ShowFooter="true">
            <HeaderStyle Font-Size="12px" BackColor='#e8f1f8' Font-Bold="true" />
            <FooterStyle HorizontalAlign="Center" Font-Bold="true" Font-Size="12px" BackColor='#e8f1f8'>
            </FooterStyle>
            <RowStyle HorizontalAlign="Center"></RowStyle>
            <Columns>
                <asp:BoundField DataField="Isuse" HeaderText="期号">
                    <ItemStyle CssClass="Isuse" />
                </asp:BoundField>
                <asp:BoundField DataField="LotteryNumber" HeaderText="奖号">
                    <ItemStyle Width="120" BackColor="#FFE8EB" Font-Bold="true" />
                </asp:BoundField>
                <asp:BoundField DataField="D_X_Type" HeaderText="类型">
                    <ItemStyle Width="100" ForeColor="#999999" />
                </asp:BoundField>
                <asp:BoundField DataField="Z_0" HeaderText="000">
                    <ItemStyle CssClass="itemstyle1" />
                </asp:BoundField>
                <asp:BoundField DataField="Z_1" HeaderText="001">
                    <ItemStyle CssClass="itemstyle2" />
                </asp:BoundField>
                <asp:BoundField DataField="Z_2" HeaderText="002">
                    <ItemStyle CssClass="itemstyle1" />
                </asp:BoundField>
                <asp:BoundField DataField="Z_3" HeaderText="010">
                    <ItemStyle CssClass="itemstyle2" />
                </asp:BoundField>
                <asp:BoundField DataField="Z_4" HeaderText="011">
                    <ItemStyle CssClass="itemstyle1" />
                </asp:BoundField>
                <asp:BoundField DataField="Z_5" HeaderText="012">
                    <ItemStyle CssClass="itemstyle2" />
                </asp:BoundField>
                <asp:BoundField DataField="Z_6" HeaderText="020">
                    <ItemStyle CssClass="itemstyle1" />
                </asp:BoundField>
                <asp:BoundField DataField="Z_7" HeaderText="021">
                    <ItemStyle CssClass="itemstyle2" />
                </asp:BoundField>
                <asp:BoundField DataField="Z_8" HeaderText="022">
                    <ItemStyle CssClass="itemstyle1" />
                </asp:BoundField>
                <asp:BoundField DataField="Z_9" HeaderText="100">
                    <ItemStyle CssClass="itemstyle2" />
                </asp:BoundField>
                <asp:BoundField DataField="Z_10" HeaderText="101">
                    <ItemStyle CssClass="itemstyle1" />
                </asp:BoundField>
                <asp:BoundField DataField="Z_11" HeaderText="102">
                    <ItemStyle CssClass="itemstyle2" />
                </asp:BoundField>
                <asp:BoundField DataField="Z_12" HeaderText="110">
                    <ItemStyle CssClass="itemstyle1" />
                </asp:BoundField>
                <asp:BoundField DataField="Z_13" HeaderText="111">
                    <ItemStyle CssClass="itemstyle2" />
                </asp:BoundField>
                <asp:BoundField DataField="Z_14" HeaderText="112">
                    <ItemStyle CssClass="itemstyle1" />
                </asp:BoundField>
                <asp:BoundField DataField="Z_15" HeaderText="120">
                    <ItemStyle CssClass="itemstyle2" />
                </asp:BoundField>
                <asp:BoundField DataField="Z_16" HeaderText="121">
                    <ItemStyle CssClass="itemstyle1" />
                </asp:BoundField>
                <asp:BoundField DataField="Z_17" HeaderText="122">
                    <ItemStyle CssClass="itemstyle2" />
                </asp:BoundField>
                <asp:BoundField DataField="Z_18" HeaderText="200">
                    <ItemStyle CssClass="itemstyle1" />
                </asp:BoundField>
                <asp:BoundField DataField="Z_19" HeaderText="201">
                    <ItemStyle CssClass="itemstyle2" />
                </asp:BoundField>
                <asp:BoundField DataField="Z_20" HeaderText="202">
                    <ItemStyle CssClass="itemstyle1" />
                </asp:BoundField>
                <asp:BoundField DataField="Z_21" HeaderText="210">
                    <ItemStyle CssClass="itemstyle2" />
                </asp:BoundField>
                <asp:BoundField DataField="Z_22" HeaderText="211">
                    <ItemStyle CssClass="itemstyle1" />
                </asp:BoundField>
                <asp:BoundField DataField="Z_23" HeaderText="212">
                    <ItemStyle CssClass="itemstyle2" />
                </asp:BoundField>
                <asp:BoundField DataField="Z_24" HeaderText="220">
                    <ItemStyle CssClass="itemstyle1" />
                </asp:BoundField>
                <asp:BoundField DataField="Z_25" HeaderText="221">
                    <ItemStyle CssClass="itemstyle2" />
                </asp:BoundField>
                <asp:BoundField DataField="Z_26" HeaderText="222">
                    <ItemStyle CssClass="itemstyle1" />
                </asp:BoundField>
            </Columns>
            <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
        </asp:GridView>
        
    </div>
    <div class="wrap">
<p> 

                        <span class='blue14' style='padding-right: 8px;'>时时彩:</span><a href='SSC_5X_ZHFB.aspx'
                            target='mainFrame'>标准五星综合走势图</a> | <a href='SSC_5X_ZST.aspx' target='mainFrame'>标准五星走势图</a>
                        | <a href='SSC_5X_HZZST.aspx' target='mainFrame'>五星和值走势图</a> | <a href='SSC_5X_KDZST.aspx'
                            target='mainFrame'>五星跨度走势图</a> | <a href='SSC_5X_PJZZST.aspx' target='mainFrame'>五星平均值走势图</a>
                        | <a href='SSC_5X_DXZST.aspx' target='mainFrame'>五星大小走势图</a> | <a href='SSC_5X_JOZST.aspx'
                            target='mainFrame'>五星奇偶走势图</a> | <a href='SSC_5X_ZHZST.aspx' target='mainFrame'>五星质合走势图</a>
                        <br /><a href='SSC_4X_ZHFB.aspx' target='mainFrame'>标准四星综合走势图</a> |<a href='SSC_4X_ZST.aspx'
                            target='mainFrame'>标准四星走势图</a> | <a href='SSC_4X_HZZST.aspx' target='mainFrame'>四星和值走势图</a>
                        | <a href='SSC_4X_KDZST.aspx' target='mainFrame'>四星跨度走势图</a> | <a href='SSC_4X_PJZZST.aspx'
                            target='mainFrame'>四星平均值走势图</a> | <a href='SSC_4X_DXZST.aspx' target='mainFrame'>四星大小走势图</a>
                        | <a href='SSC_4X_JOZST.aspx' target='mainFrame'>四星奇偶走势图</a> | <a href='SSC_4X_ZHZST.aspx'
                            target='mainFrame'>四星质合走势图</a><br /><a href='SSC_3X_ZHZST.aspx' target='mainFrame'>标准三星综合走势图</a>
                        | <a href='SSC_3X_ZST.aspx' target='mainFrame'>标准三星走势图</a> | <a href='SSC_3X_HZZST.aspx'
                            target='mainFrame'>三星和值走势图</a> | <a href='SSC_3X_HZWZST.aspx' target='mainFrame'>三星和值尾走势图</a>
                        | <a href='SSC_3X_KDZST.aspx' target='mainFrame'>三星跨度走势图</a> | <a href='SSC_3X_DXZST.aspx'
                            target='mainFrame'>三星大小走势图</a> | <a href='SSC_3X_JOZST.aspx' target='mainFrame'>三星奇偶走势图</a>
                        |<a href='SSC_3X_ZhiHeZST.aspx' target='mainFrame'>三星质合走势图</a><br /><a href='SSC_3X_DX_012_ZST.aspx'
                            target='mainFrame'>单选012路走势图</a> | <a href='SSC_3X_ZX_012_ZST.aspx' target='mainFrame'>
                                组选012路走势图</a> | <a href='SSC_2X_ZHFBZST.aspx' target='mainFrame'>标准二星综合走势图</a>
                        | <a href='SSC_2X_HZZST.aspx' target='mainFrame'>二星和值走势图</a> | <a href='SSC_2X_HZWZST.aspx'
                            target='mainFrame'>二星和尾走势图</a> | <a href='SSC_2XPJZZST.aspx' target='mainFrame'>二星均值走势图</a>
                        | <a href='SSC_2X_KDZST.aspx' target='mainFrame'>二星跨度走势图</a> | <a href='SSC_2X_012ZST.aspx'
                            target='mainFrame'>二星012路走势图</a><br /><a href='SSC_2X_MaxZST.aspx' target='mainFrame'>二星最大值走势图</a>
                        | <a href='SSC_2X_MinZST.aspx' target='mainFrame'>二星最小值走势图</a> | <a href='SSC_2X_DXDSZST.aspx'
                            target='mainFrame'>大小单双走势图</a> 
                                
                       </p>
            </div>
    <uc1:WebFoot ID="WebFoot1" runat="server" />
    </form>

</body>
</html>
