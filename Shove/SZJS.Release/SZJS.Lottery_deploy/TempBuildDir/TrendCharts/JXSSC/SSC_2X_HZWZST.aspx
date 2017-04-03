<%@ page language="C#" autoeventwireup="true" inherits="Home_TrendCharts_JXSSC_SSC_2X_HZWZST, App_Web_res0mvlh" enableEventValidation="false" %>
<%@ Register Src="../../Home/Room/UserControls/WebFoot.ascx" TagName="WebFoot" TagPrefix="uc1" %>
<%@ Register Src="../../UserControls/Head.ascx" TagName="Head" TagPrefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>时时彩二星和值尾走势图-时时彩走势图-彩票走势图表和数据分析－<%=_Site.Name %></title>
    <meta name="keywords" content="时时彩走势图-时时彩二星和值尾走势图" />
    <meta name="description" content="时时彩走势图-时时彩二星和值尾走势图、彩票走势图表和数据分析。" />
      <link href="../../Home/Room/Style/common.css" rel="stylesheet" type="text/css" />
    <link href="../../Home/Room/Style/StyleSheet.css" rel="stylesheet" type="text/css" />
    <link href="../../Home/Room/Style/zbuy.css" rel="stylesheet" type="text/css" />
    <link rel="shortcut icon" href="../../favicon.ico" />

    <script src="../../JavaScript/jquery-1.4.js" type="text/javascript"></script>
 <link href="../../Home/Room/Style/zst.css" rel="stylesheet" type="text/css" />
    <script language="javascript" type="text/javascript">
        function DrawLine(ojbCurrnetTd, ojbPrevTd, color) {
            var ax = getCPX(document.getElementById(ojbCurrnetTd));
            var ay = getCPY(document.getElementById(ojbCurrnetTd));
            var bx = getCPX(document.getElementById(ojbPrevTd));
            var by = getCPY(document.getElementById(ojbPrevTd));

//            var jgdiv1 = new jsGraphics("div2");

//            jgdiv1.setColor(color);
//            jgdiv1.setStroke(1);
//            jgdiv1.drawLine(ax, ay, bx, by);
//            jgdiv1.paint();
        }

        function getTop(obj) {
            var _offset = obj.offsetTop;
            if (obj.offsetParent != null) _offset += getTop(obj.offsetParent);
            return _offset;
        }

        function getLeft(obj) {
            var _offset = obj.offsetLeft;
            if (obj.offsetParent != null) _offset += getLeft(obj.offsetParent);
            return _offset;
        }

        function getCPX(obj) {
            return getLeft(obj) + obj.offsetWidth / 2;
        }
        function getCPY(obj) {
            return getTop(obj) + obj.offsetHeight / 2;
        }
        
        window.onresize = function RedrawLine()
         {
            //_removeDiv();
             
            DrawLines();
         }
    </script>

</head>
<body>
    <form id="form1" runat="server">
    <uc2:Head ID="Head2" runat="server" />
    <div class="wrap">
<div class="zst_top">
<h1>时时彩&nbsp;&nbsp;二星和值尾走势图</h1>
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
            <RowStyle HorizontalAlign="Center"></RowStyle>
            <Columns>
                <asp:BoundField DataField="Isuse" HeaderText="期号">
                    <ItemStyle CssClass="Isuse" />
                </asp:BoundField>
                <asp:BoundField DataField="LotteryNumber" HeaderText="奖号">
                    <ItemStyle Font-Bold="true" Width="64" />
                </asp:BoundField>
                <asp:BoundField DataField="Z_0" HeaderText="0">
                    <ItemStyle CssClass="itemstyle1" />
                </asp:BoundField>
                <asp:BoundField DataField="Z_1" HeaderText="1">
                    <ItemStyle CssClass="itemstyle1" />
                </asp:BoundField>
                <asp:BoundField DataField="Z_2" HeaderText="2">
                    <ItemStyle CssClass="itemstyle1" />
                </asp:BoundField>
                <asp:BoundField DataField="Z_3" HeaderText="3">
                    <ItemStyle CssClass="itemstyle1" />
                </asp:BoundField>
                <asp:BoundField DataField="Z_4" HeaderText="4">
                    <ItemStyle CssClass="itemstyle1" />
                </asp:BoundField>
                <asp:BoundField DataField="Z_5" HeaderText="5">
                    <ItemStyle CssClass="itemstyle1" />
                </asp:BoundField>
                <asp:BoundField DataField="Z_6" HeaderText="6">
                    <ItemStyle CssClass="itemstyle1" />
                </asp:BoundField>
                <asp:BoundField DataField="Z_7" HeaderText="7">
                    <ItemStyle CssClass="itemstyle1" />
                </asp:BoundField>
                <asp:BoundField DataField="Z_8" HeaderText="8">
                    <ItemStyle CssClass="itemstyle1" />
                </asp:BoundField>
                <asp:BoundField DataField="Z_9" HeaderText="9">
                    <ItemStyle CssClass="itemstyle1" />
                </asp:BoundField>
                <asp:BoundField DataField="H_Z_W" HeaderText="值">
                    <ItemStyle Width="50" ForeColor="Blue" Font-Bold="true" BackColor="#e8f1f8" />
                </asp:BoundField>
                <asp:BoundField DataField="J" HeaderText="奇">
                    <ItemStyle Width="25" CssClass="itemstyle3" />
                </asp:BoundField>
                <asp:BoundField DataField="O" HeaderText="偶">
                    <ItemStyle CssClass="itemstyle4" />
                </asp:BoundField>
                <asp:BoundField DataField="D" HeaderText="大">
                    <ItemStyle Width="25" CssClass="itemstyle3" />
                </asp:BoundField>
                <asp:BoundField DataField="X" HeaderText="小">
                    <ItemStyle CssClass="itemstyle4" />
                </asp:BoundField>
                <asp:BoundField DataField="Z" HeaderText="质">
                    <ItemStyle Width="25" CssClass="itemstyle3" />
                </asp:BoundField>
                <asp:BoundField DataField="H" HeaderText="合">
                    <ItemStyle CssClass="itemstyle4" />
                </asp:BoundField>
                <asp:BoundField DataField="L_0" HeaderText="0 路">
                    <ItemStyle Width="25" CssClass="itemstyle3" />
                </asp:BoundField>
                <asp:BoundField DataField="L_1" HeaderText="1 路">
                    <ItemStyle CssClass="itemstyle4" />
                </asp:BoundField>
                <asp:BoundField DataField="L_2" HeaderText="2 路">
                    <ItemStyle Width="25" CssClass="itemstyle3" />
                </asp:BoundField>
                <asp:BoundField DataField="D_0" HeaderText="大">
                    <ItemStyle CssClass="itemstyle4" />
                </asp:BoundField>
                <asp:BoundField DataField="ZH_0" HeaderText="中">
                    <ItemStyle Width="25" CssClass="itemstyle3" />
                </asp:BoundField>
                <asp:BoundField DataField="X_0" HeaderText="小">
                    <ItemStyle CssClass="itemstyle4" />
                </asp:BoundField>
                <asp:BoundField DataField="F_0" HeaderText="0">
                    <ItemStyle CssClass="itemstyle2" />
                </asp:BoundField>
                <asp:BoundField DataField="F_1" HeaderText="1">
                    <ItemStyle CssClass="itemstyle2" />
                </asp:BoundField>
                <asp:BoundField DataField="F_2" HeaderText="2">
                    <ItemStyle CssClass="itemstyle2" />
                </asp:BoundField>
                <asp:BoundField DataField="F_3" HeaderText="3">
                    <ItemStyle CssClass="itemstyle2" />
                </asp:BoundField>
                <asp:BoundField DataField="F_4" HeaderText="4">
                    <ItemStyle CssClass="itemstyle2" />
                </asp:BoundField>
                <asp:BoundField DataField="F_5" HeaderText="5">
                    <ItemStyle CssClass="itemstyle2" />
                </asp:BoundField>
                <asp:BoundField DataField="F_6" HeaderText="6">
                    <ItemStyle CssClass="itemstyle2" />
                </asp:BoundField>
                <asp:BoundField DataField="F_7" HeaderText="7">
                    <ItemStyle CssClass="itemstyle2" />
                </asp:BoundField>
                <asp:BoundField DataField="F_8" HeaderText="8">
                    <ItemStyle CssClass="itemstyle2" />
                </asp:BoundField>
                <asp:BoundField DataField="F_9" HeaderText="9">
                    <ItemStyle CssClass="itemstyle2" />
                </asp:BoundField>
            </Columns>
            <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
        </asp:GridView>
        <asp:Label ID="lbline" runat="server"></asp:Label>

        <script type="text/javascript">
       DrawLines();
        </script>

        
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
