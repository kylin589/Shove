<%@ page language="C#" autoeventwireup="true" inherits="Home_TrendCharts_FC3D_FC3D_C3YS, App_Web_1hqvi6z9" enableEventValidation="false" %>

<%@ Register Src="../../Home/Room/UserControls/WebFoot.ascx" TagName="WebFoot" TagPrefix="uc1" %>
<%@ Register Src="../../UserControls/Head.ascx" TagName="Head" TagPrefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>福彩3D 除3余数走势图-彩票走势图表和数据分析－<%=_Site.Name %></title>
    <meta name="keywords" content="福彩3D 除3余数走势图" />
    <meta name="description" content="福彩3D 除3余数走势图、彩票走势图表和数据分析。" />
    <link href="../../Home/Room/Style/common.css" rel="stylesheet" type="text/css" />
    <link href="../../Home/Room/Style/StyleSheet.css" rel="stylesheet" type="text/css" />
    <link href="../../Home/Room/Style/zbuy.css" rel="stylesheet" type="text/css" />
    <link rel="shortcut icon" href="../../favicon.ico" />
 <link href="../../Home/Room/Style/zst.css" rel="stylesheet" type="text/css" />
    <script src="../../JavaScript/jquery-1.4.js" type="text/javascript"></script>

    <script type="text/javascript" language="javascript">
<!--
        function ShowImg(e) {
            if (e.innerHTML == "&nbsp;") {
                e.innerHTML = "<img src='../../../Images/5[1].jpg' />";
            }
            else {
                e.innerHTML = "&nbsp;";
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
        window.onresize = function RedrawLine() {
           // _removeDiv();

            DrawLines();
        }
    </script>
    <style type="text/css">
    #GridView1{ border:0px;}
    #GridView1 tr td{ border:solid 1px #ccc;}
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <uc2:head id="Head2" runat="server" />
<div class="wrap">
<div class="zst_top">
<h1>福彩3D&nbsp;&nbsp;除3余数走势图</h1>
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
 <asp:Label ID="lbAd" runat="server"></asp:Label> <asp:Label ID="lbAd1" runat="server"></asp:Label> <asp:Label ID="lbAd2" runat="server"></asp:Label>
 </li>

</ul>
</div>  
</div>
           <div class="wrap">  <asp:GridView ID="GridView1" Width="100%" runat="server" AutoGenerateColumns="False"
                FooterStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center" align="center"
                RowStyle-HorizontalAlign="Center" OnRowCreated="GridView1_RowCreated" 
                ShowFooter="True">
<RowStyle HorizontalAlign="Center"></RowStyle>
                <Columns>
                    <asp:BoundField DataField="Isuse" HeaderText="期号">
                        <ItemStyle CssClass="Isuse" Font-Bold="true" />
                    </asp:BoundField>
                    <asp:BoundField DataField="LotteryNumber" HeaderText="01">
                        <ItemStyle Width="60" Height="35px" ForeColor="#ff0000" />
                    </asp:BoundField>
                    <asp:BoundField DataField="H_Z" HeaderText="H_Z">
                        <ItemStyle Width="28" BackColor="#FFE8EB" />
                    </asp:BoundField>
                    <asp:BoundField DataField="B_1" HeaderText="01">
                        <ItemStyle CssClass="itemstyle2" />
                    </asp:BoundField>
                    <asp:BoundField DataField="B_2" HeaderText="02">
                        <ItemStyle CssClass="itemstyle1" />
                    </asp:BoundField>
                    <asp:BoundField DataField="B_3" HeaderText="03">
                        <ItemStyle CssClass="itemstyle2" />
                    </asp:BoundField>
                    <asp:BoundField DataField="B_4" HeaderText="04">
                        <ItemStyle CssClass="itemstyle1" />
                    </asp:BoundField>
                    <asp:BoundField DataField="B_5" HeaderText="05">
                        <ItemStyle CssClass="itemstyle2" />
                    </asp:BoundField>
                    <asp:BoundField DataField="B_6" HeaderText="06">
                        <ItemStyle CssClass="itemstyle1" />
                    </asp:BoundField>
                    <asp:BoundField DataField="B_7" HeaderText="07">
                        <ItemStyle CssClass="itemstyle2" />
                    </asp:BoundField>
                    <asp:BoundField DataField="B_8" HeaderText="08">
                        <ItemStyle CssClass="itemstyle1" />
                    </asp:BoundField>
                    <asp:BoundField DataField="B_9" HeaderText="09">
                        <ItemStyle CssClass="itemstyle2" />
                    </asp:BoundField>
                    <asp:BoundField DataField="B_10" HeaderText="10">
                        <ItemStyle CssClass="itemstyle1" />
                    </asp:BoundField>
                    <asp:BoundField DataField="B_11" HeaderText="11">
                        <ItemStyle CssClass="itemstyle2" />
                    </asp:BoundField>
                    <asp:BoundField DataField="B_12" HeaderText="12">
                        <ItemStyle CssClass="itemstyle1" />
                    </asp:BoundField>
                    <asp:BoundField DataField="B_13" HeaderText="13">
                        <ItemStyle CssClass="itemstyle2" />
                    </asp:BoundField>
                    <asp:BoundField DataField="B_14" HeaderText="14">
                        <ItemStyle CssClass="itemstyle1" />
                    </asp:BoundField>
                    <asp:BoundField DataField="B_15" HeaderText="15">
                        <ItemStyle CssClass="itemstyle2" />
                    </asp:BoundField>
                    <asp:BoundField DataField="B_16" HeaderText="16">
                        <ItemStyle CssClass="itemstyle1" />
                    </asp:BoundField>
                    <asp:BoundField DataField="B_17" HeaderText="07">
                        <ItemStyle CssClass="itemstyle2" />
                    </asp:BoundField>
                    <asp:BoundField DataField="B_18" HeaderText="08">
                        <ItemStyle CssClass="itemstyle1" />
                    </asp:BoundField>
                    <asp:BoundField DataField="B_19" HeaderText="09">
                        <ItemStyle CssClass="itemstyle2" />
                    </asp:BoundField>
                    <asp:BoundField DataField="B_20" HeaderText="10">
                        <ItemStyle CssClass="itemstyle1" />
                    </asp:BoundField>
                    <asp:BoundField DataField="B_21" HeaderText="11">
                        <ItemStyle CssClass="itemstyle2" />
                    </asp:BoundField>
                    <asp:BoundField DataField="B_22" HeaderText="12">
                        <ItemStyle CssClass="itemstyle1" />
                    </asp:BoundField>
                    <asp:BoundField DataField="B_23" HeaderText="13">
                        <ItemStyle CssClass="itemstyle2" />
                    </asp:BoundField>
                    <asp:BoundField DataField="B_24" HeaderText="14">
                        <ItemStyle CssClass="itemstyle1" />
                    </asp:BoundField>
                    <asp:BoundField DataField="B_25" HeaderText="15">
                        <ItemStyle CssClass="itemstyle2" />
                    </asp:BoundField>
                    <asp:BoundField DataField="B_26" HeaderText="16">
                        <ItemStyle CssClass="itemstyle1" />
                    </asp:BoundField>
                    <asp:BoundField DataField="B_27" HeaderText="16">
                        <ItemStyle CssClass="itemstyle2" />
                    </asp:BoundField>
                </Columns>

<FooterStyle HorizontalAlign="Center"></FooterStyle>

<HeaderStyle HorizontalAlign="Center"></HeaderStyle>
            </asp:GridView>
            <asp:Label ID="lbline" runat="server"></asp:Label>
            <script type="text/javascript">
                DrawLines();
            </script>
            </div>
            <div class="wrap">
<p>
 <a href="<%= _Site.Url %>" target="_blank">
                               <a href='FC3D_ZHXT.aspx' target='mainFrame'>
                                    综合分布遗漏走势图</a> | <a href='FC3D_C3YS.aspx' target='mainFrame'>除三余数形态遗漏走势图</a>
                            | <a href='FC3D_ZHZST.aspx' target='mainFrame'>质合形态遗漏走势图</a> | <a href='FC3D_XTZST.aspx'
                                target='mainFrame'>形态遗漏走势图</a> <a href='FC3D_KDZST.aspx' target='mainFrame'>跨度遗漏走势图</a>
                            | <a href='FC3D_HZZST.aspx' target='mainFrame'>和值遗漏走势图</a> | <a href='FC3D_DZXZST.aspx'
                                target='mainFrame'>大中小形态遗漏走势图</a> |<br /> <a href='FC3D_C3YS_HTML.aspx' target='mainFrame'>
                                    除三余数号码分区表走势图</a> |<a href='FC3D_2CHW.aspx' target='mainFrame'>二次和尾差尾查询表走势图</a>
                            | <a href='FC3D_DSHM.aspx' target='mainFrame'>单双点号码分区表走势图</a> |<a href='FC3D_DTHM.aspx'
                                target='mainFrame'>胆托号码分区表走势图</a> |<a href='FC3D_DX_JO.aspx' target='mainFrame'>大小—奇偶号码分区表走势图</a>
                            | <a href='FC3D_HSWH.aspx' target='mainFrame'>和数尾号码分区表走势图</a> | <br /><a href='FC3D_HSZ.aspx'
                                target='mainFrame'>和数值号码分区表走势图</a> | <a href='FC3D_KDZH.aspx' target='mainFrame'>跨度组合分区表走势图</a>
                            | <a href='FC3D_JO_DX.aspx' target='mainFrame'>奇偶—大小号码分区表走势图</a> | <a href='FC3D_LHZH.aspx'
                                target='mainFrame'>连号组合分区表走势图</a> |<a href='FC3D_ZS.aspx' target='mainFrame'>质数号码分区表走势图</a>
                       </p>
            </div>

              
 

        <uc1:webfoot id="WebFoot1" runat="server" />
   
    </form>
</body>
</html>
