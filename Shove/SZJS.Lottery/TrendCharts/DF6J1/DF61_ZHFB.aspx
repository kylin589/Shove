<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DF61_ZHFB.aspx.cs" Inherits="Home_TrendCharts_DF6_1_DF61_ZHFB" %>
<%@ Register Src="../../Home/Room/UserControls/WebFoot.ascx" TagName="WebFoot" TagPrefix="uc1" %>
<%@ Register Src="../../UserControls/Head.ascx" TagName="Head" TagPrefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>东方6+1综合分步图-彩票走势图表和数据分析－<%=_Site.Name %></title>
<meta name="keywords" content="东方6+1综合分步图" />
<meta name="description" content="东方6+1综合分步图、彩票走势图表和数据分析。" />
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

    <script language="javascript" type="text/javascript">
        function DrawLine(ojbCurrnetTd, ojbPrevTd, color) {
            var ax = getCPX(document.getElementById(ojbCurrnetTd));
            var ay = getCPY(document.getElementById(ojbCurrnetTd));
            var bx = getCPX(document.getElementById(ojbPrevTd));
            var by = getCPY(document.getElementById(ojbPrevTd));

            var jgdiv1 = new jsGraphics("div2");

            jgdiv1.setColor(color);
            jgdiv1.setStroke(1);
            jgdiv1.drawLine(ax, ay, bx, by);
            jgdiv1.paint();
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
        window.onresize = function RedrawLine() {
            _removeDiv();

            DrawLines();
        }
    </script>
   <style  type="text/css">
     input { margin-left:10px; margin-top:-4px;}
     table tr td a{ margin-right:20px;}
     #GridView1,#GridView2 { border:0px;}
     #GridView1 tr td,#GridView2 tr td{ text-align:center; line-height:20px; border:solid 1px #ccc;}
     table { width:100%; text-align:center;}
    </style> 
    
</head>
<body>
    <form id="form1" runat="server">
    

    <uc2:Head ID="Head2" runat="server" />
<div class="wrap">
<div class="zst_top">
<h1>东方6+1综合分步图</h1>
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
<a href="<%= ResolveUrl("~/Lottery/Buy_3D.aspx") %>" target="_blank"  >福彩3D投注/合买</a>
<a href="<%= ResolveUrl("~/WinQuery/6-0-0.aspx") %>" target="_blank" >福彩3D中奖查询</a>
 <asp:Label ID="lbAd" runat="server"></asp:Label> <asp:Label ID="lbAd1" runat="server"></asp:Label> <asp:Label ID="lbAd2" runat="server"></asp:Label>
 </li>

</ul>
</div>  
</div>
    <div class="wrap">
    <asp:GridView ID="GridView1" Width="1500px" runat="server" AutoGenerateColumns="false"
            FooterStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center" align="center"
             RowStyle-HorizontalAlign="Center"
            CellPadding="0" ShowHeader="true" OnRowCreated="GridView1_RowCreated" ShowFooter="true">
            <FooterStyle HorizontalAlign="Center"></FooterStyle>
            <RowStyle HorizontalAlign="Center"></RowStyle>
            <Columns>
                <asp:BoundField DataField="Isuse" HeaderText="期号">
                    <ItemStyle CssClass="Isuse" />
                </asp:BoundField>
                <asp:BoundField DataField="D1_0" HeaderText="01">
                    <ItemStyle CssClass="itemstyle1" />
                </asp:BoundField>
                <asp:BoundField DataField="D1_1" HeaderText="02">
                    <ItemStyle CssClass="itemstyle1" />
                </asp:BoundField>
                <asp:BoundField DataField="D1_2" HeaderText="03">
                    <ItemStyle CssClass="itemstyle1" />
                </asp:BoundField>
                <asp:BoundField DataField="D1_3" HeaderText="04">
                    <ItemStyle CssClass="itemstyle1" />
                </asp:BoundField>
                <asp:BoundField DataField="D1_4" HeaderText="05">
                    <ItemStyle CssClass="itemstyle1" />
                </asp:BoundField>
                <asp:BoundField DataField="D1_5" HeaderText="06">
                    <ItemStyle CssClass="itemstyle1" />
                </asp:BoundField>
                <asp:BoundField DataField="D1_6" HeaderText="07">
                    <ItemStyle CssClass="itemstyle1" />
                </asp:BoundField>
                <asp:BoundField DataField="D1_7" HeaderText="08">
                    <ItemStyle CssClass="itemstyle1" />
                </asp:BoundField>
                <asp:BoundField DataField="D1_8" HeaderText="09">
                    <ItemStyle CssClass="itemstyle1" />
                </asp:BoundField>
                <asp:BoundField DataField="D1_9" HeaderText="10">
                    <ItemStyle CssClass="itemstyle1" />
                </asp:BoundField>
                <asp:BoundField DataField="D2_0" HeaderText="11">
                    <ItemStyle CssClass="itemstyle2" />
                </asp:BoundField>
                <asp:BoundField DataField="D2_1" HeaderText="12">
                    <ItemStyle CssClass="itemstyle2" />
                </asp:BoundField>
                <asp:BoundField DataField="D2_2" HeaderText="13">
                    <ItemStyle CssClass="itemstyle2" />
                </asp:BoundField>
                <asp:BoundField DataField="D2_3" HeaderText="14">
                    <ItemStyle CssClass="itemstyle2" />
                </asp:BoundField>
                <asp:BoundField DataField="D2_4" HeaderText="15">
                    <ItemStyle CssClass="itemstyle2" />
                </asp:BoundField>
                <asp:BoundField DataField="D2_5" HeaderText="16">
                    <ItemStyle CssClass="itemstyle2" />
                </asp:BoundField>
                <asp:BoundField DataField="D2_6" HeaderText="17">
                    <ItemStyle CssClass="itemstyle2" />
                </asp:BoundField>
                <asp:BoundField DataField="D2_7" HeaderText="18">
                    <ItemStyle CssClass="itemstyle2" />
                </asp:BoundField>
                <asp:BoundField DataField="D2_8" HeaderText="19">
                    <ItemStyle CssClass="itemstyle2" />
                </asp:BoundField>
                <asp:BoundField DataField="D2_9" HeaderText="20">
                    <ItemStyle CssClass="itemstyle2" />
                </asp:BoundField>
                <asp:BoundField DataField="D3_0" HeaderText="21">
                    <ItemStyle CssClass="itemstyle3" />
                </asp:BoundField>
                <asp:BoundField DataField="D3_1" HeaderText="22">
                    <ItemStyle CssClass="itemstyle3" />
                </asp:BoundField>
                <asp:BoundField DataField="D3_2" HeaderText="23">
                    <ItemStyle CssClass="itemstyle3" />
                </asp:BoundField>
                <asp:BoundField DataField="D3_3" HeaderText="24">
                    <ItemStyle CssClass="itemstyle3" />
                </asp:BoundField>
                <asp:BoundField DataField="D3_4" HeaderText="25">
                    <ItemStyle CssClass="itemstyle3" />
                </asp:BoundField>
                <asp:BoundField DataField="D3_5" HeaderText="26">
                    <ItemStyle CssClass="itemstyle3" />
                </asp:BoundField>
                <asp:BoundField DataField="D3_6" HeaderText="27">
                    <ItemStyle CssClass="itemstyle3" />
                </asp:BoundField>
                <asp:BoundField DataField="D3_7" HeaderText="28">
                    <ItemStyle CssClass="itemstyle3" />
                </asp:BoundField>
                <asp:BoundField DataField="D3_8" HeaderText="29">
                    <ItemStyle CssClass="itemstyle3" />
                </asp:BoundField>
                <asp:BoundField DataField="D3_9" HeaderText="30">
                    <ItemStyle CssClass="itemstyle3" />
                </asp:BoundField>
                <asp:BoundField DataField="D4_0" HeaderText="21">
                    <ItemStyle CssClass="itemstyle4" />
                </asp:BoundField>
                <asp:BoundField DataField="D4_1" HeaderText="22">
                    <ItemStyle CssClass="itemstyle4" />
                </asp:BoundField>
                <asp:BoundField DataField="D4_2" HeaderText="23">
                    <ItemStyle CssClass="itemstyle4" />
                </asp:BoundField>
                <asp:BoundField DataField="D4_3" HeaderText="24">
                    <ItemStyle CssClass="itemstyle4" />
                </asp:BoundField>
                <asp:BoundField DataField="D4_4" HeaderText="25">
                    <ItemStyle CssClass="itemstyle4" />
                </asp:BoundField>
                <asp:BoundField DataField="D4_5" HeaderText="26">
                    <ItemStyle CssClass="itemstyle4" />
                </asp:BoundField>
                <asp:BoundField DataField="D4_6" HeaderText="27">
                    <ItemStyle CssClass="itemstyle4" />
                </asp:BoundField>
                <asp:BoundField DataField="D4_7" HeaderText="28">
                    <ItemStyle CssClass="itemstyle4" />
                </asp:BoundField>
                <asp:BoundField DataField="D4_8" HeaderText="29">
                    <ItemStyle CssClass="itemstyle4" />
                </asp:BoundField>
                <asp:BoundField DataField="D4_9" HeaderText="30">
                    <ItemStyle CssClass="itemstyle4" />
                </asp:BoundField>
                <asp:BoundField DataField="D5_0" HeaderText="21">
                    <ItemStyle CssClass="itemstyle1" />
                </asp:BoundField>
                <asp:BoundField DataField="D5_1" HeaderText="22">
                    <ItemStyle CssClass="itemstyle1" />
                </asp:BoundField>
                <asp:BoundField DataField="D5_2" HeaderText="23">
                    <ItemStyle CssClass="itemstyle1" />
                </asp:BoundField>
                <asp:BoundField DataField="D5_3" HeaderText="24">
                    <ItemStyle CssClass="itemstyle1" />
                </asp:BoundField>
                <asp:BoundField DataField="D5_4" HeaderText="25">
                    <ItemStyle CssClass="itemstyle1" />
                </asp:BoundField>
                <asp:BoundField DataField="D5_5" HeaderText="26">
                    <ItemStyle CssClass="itemstyle1" />
                </asp:BoundField>
                <asp:BoundField DataField="D5_6" HeaderText="27">
                    <ItemStyle CssClass="itemstyle1" />
                </asp:BoundField>
                <asp:BoundField DataField="D5_7" HeaderText="28">
                    <ItemStyle CssClass="itemstyle1" />
                </asp:BoundField>
                <asp:BoundField DataField="D5_8" HeaderText="29">
                    <ItemStyle CssClass="itemstyle1" />
                </asp:BoundField>
                <asp:BoundField DataField="D5_9" HeaderText="30">
                    <ItemStyle CssClass="itemstyle1" />
                </asp:BoundField>
                <asp:BoundField DataField="D6_0" HeaderText="21">
                    <ItemStyle CssClass="itemstyle2" />
                </asp:BoundField>
                <asp:BoundField DataField="D6_1" HeaderText="22">
                    <ItemStyle CssClass="itemstyle2" />
                </asp:BoundField>
                <asp:BoundField DataField="D6_2" HeaderText="23">
                    <ItemStyle CssClass="itemstyle2" />
                </asp:BoundField>
                <asp:BoundField DataField="D6_3" HeaderText="24">
                    <ItemStyle CssClass="itemstyle2" />
                </asp:BoundField>
                <asp:BoundField DataField="D6_4" HeaderText="25">
                    <ItemStyle CssClass="itemstyle2" />
                </asp:BoundField>
                <asp:BoundField DataField="D6_5" HeaderText="26">
                    <ItemStyle CssClass="itemstyle2" />
                </asp:BoundField>
                <asp:BoundField DataField="D6_6" HeaderText="27">
                    <ItemStyle CssClass="itemstyle2" />
                </asp:BoundField>
                <asp:BoundField DataField="D6_7" HeaderText="28">
                    <ItemStyle CssClass="itemstyle2" />
                </asp:BoundField>
                <asp:BoundField DataField="D6_8" HeaderText="29">
                    <ItemStyle CssClass="itemstyle2" />
                </asp:BoundField>
                <asp:BoundField DataField="D6_9" HeaderText="30">
                    <ItemStyle CssClass="itemstyle2" />
                </asp:BoundField>
                <asp:BoundField DataField="D7_1" HeaderText="22">
                    <ItemStyle CssClass="itemstyle4" />
                </asp:BoundField>
                <asp:BoundField DataField="D7_2" HeaderText="23">
                    <ItemStyle CssClass="itemstyle4" />
                </asp:BoundField>
                <asp:BoundField DataField="D7_3" HeaderText="24">
                    <ItemStyle CssClass="itemstyle4" />
                </asp:BoundField>
                <asp:BoundField DataField="D7_4" HeaderText="25">
                    <ItemStyle CssClass="itemstyle4" />
                </asp:BoundField>
                <asp:BoundField DataField="D7_5" HeaderText="26">
                    <ItemStyle CssClass="itemstyle4" />
                </asp:BoundField>
                <asp:BoundField DataField="D7_6" HeaderText="27">
                    <ItemStyle CssClass="itemstyle4" />
                </asp:BoundField>
                <asp:BoundField DataField="D7_7" HeaderText="28">
                    <ItemStyle CssClass="itemstyle4" />
                </asp:BoundField>
                <asp:BoundField DataField="D7_8" HeaderText="29">
                    <ItemStyle CssClass="itemstyle4" />
                </asp:BoundField>
                <asp:BoundField DataField="D7_9" HeaderText="30">
                    <ItemStyle CssClass="itemstyle4" />
                </asp:BoundField>
                <asp:BoundField DataField="D7_10" HeaderText="21">
                    <ItemStyle CssClass="itemstyle4" />
                </asp:BoundField>
                <asp:BoundField DataField="D7_11" HeaderText="22">
                    <ItemStyle CssClass="itemstyle4" />
                </asp:BoundField>
                <asp:BoundField DataField="D7_12" HeaderText="23">
                    <ItemStyle CssClass="itemstyle4" />
                </asp:BoundField>
            </Columns>
            <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
        </asp:GridView>
    </div>
      <asp:Label ID="lbline" runat="server"></asp:Label>
     <uc1:WebFoot ID="WebFoot1" runat="server" />
     </div>
    </form>
   
</body>
</html>
