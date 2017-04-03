<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Error.aspx.cs" Inherits="Error" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="shortcut icon" href="favicon.ico" />
    <title>出错啦 -
        <%=_Site.Name %>－双色球开奖/双色球走势图查询-买彩票，就上<%=_Site.Name %></title>
    <meta name="description" content="会员注册，<%=_Site.Name %>彩票网是一家服务于中国彩民的互联网彩票合买代购交易平台，涉及中国彩票彩种最全的网站，包含双色球、时时乐、时时彩、足彩等众多彩种的实时开奖信息、图表走势、分析预测等。" />
    <meta name="keywords" content="会员注册，双色球开奖，双色球走势图，3d走势图，福彩3d，时时彩" />
    <link href="Home/Room/Style/common.css" rel="stylesheet" type="text/css" />

    <script language="javascript" type="text/javascript">

        function tbOnMouseover() {
            var o_tdHistory = document.getElementById("tdHistory");

            o_tdHistory.style.backgroundColor = "#FF3300";
            o_tdHistory.style.cursor = "hand";
        }

        function tbOnMouseout() {
            var o_tdHistory = document.getElementById("tdHistory");

            o_tdHistory.style.backgroundColor = "#FD9A00";
        }
    
    </script>

    <link rel="shortcut icon" href="favicon.ico" />
</head>
<body>
    <form id="form1" runat="server">
    <br />
    <br />
    <table width="508" border="0" cellpadding="0" cellspacing="0" align="center">
        <tr>
            <td style="background-image: url(Images/Arrow.gif); height: 39px">
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td style="background-image: url(Images/News_success_bg3.gif)">
                <table id="tabError" runat="server" width="508" border="0" cellpadding="0" cellspacing="0">
                    <tr>
                        <td height="120" align="center" valign="middle">
                            <table border="0" cellspacing="0" cellpadding="0" style="width: 60%">
                                <tr>
                                    <td width="20%">
                                        &nbsp;<img src="Images/Cry_036.gif" alt="<%=_Site.Name %>-双色球、大乐透" />
                                    </td>
                                    <td width="80%" valign="middle">
                                        <font color="#ff6600"><strong>对不起，访问出错！请重新打开网站！ </strong></font>
                                        <br />
                                        <asp:Label ID="labClassName1" runat="server" ForeColor="white"></asp:Label>
                                        <br />
                                        请参考以下原因后再做此操作：
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left" height="34px" style="padding-left: 20px;" colspan="2">
                                        <asp:Label ID="labTip" runat="server" ForeColor="Red"> </asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
                <table id="tabErrorForNoIsuse" visible="false" runat="server" width="508" border="0"
                    cellpadding="0" cellspacing="0">
                    <tr>
                        <td height="120" align="center" valign="middle">
                            <table border="0" cellspacing="0" cellpadding="0" style="width: 60%">
                                <tr>
                                    <td width="20%">
                                        &nbsp;<img src="Images/Cry_036.gif" alt="<%=_Site.Name %>-双色球、大乐透" />
                                    </td>
                                    <td width="80%" valign="middle">
                                        <font color="#ff6600"><strong>提示：请稍后访问，谢谢！ </strong></font>
                                        <br />
                                        <asp:Label ID="labClassName2" runat="server" ForeColor="white"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left" height="34px" style="padding-left: 20px;" colspan="2">
                                        <asp:Label ID="labTipForNoIsuse" runat="server" ForeColor="Red"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td height="30" valign="top" align="center" style="background-image: url(Images/News_success_bg3.gif)">
                <button onclick="javascript:window.history.go(-1);" id="tdHistory" style="background-color: #FD9A00;
                    color: White; width: 120px; border: solid #CCCCCC 1px;" onmouseout="return tbOnMouseout();"
                    onmouseover="return tbOnMouseover();">
                    返回（<span id="time">5</span>秒跳转）</button>
            </td>
        </tr>
        <tr>
            <td style="background-image: url(Images/news_success_bg2.gif); background-repeat: no-repeat;
                height: 9px">
                &nbsp;&nbsp;
            </td>
        </tr>
    </table>
    </form>

    <script language="javascript" type="text/javascript">
    var oTimer = null;
    function DisplayTimer() {
        var seconds = parseInt(time.innerHTML)>0 ? parseInt(time.innerHTML)-1:0;
        time.innerHTML = seconds.toString();
        if (seconds == 0) {
            window.clearInterval(oTimer); 
            
            window.top.location.href ="<%=script %>";
        }
    }
    oTimer = setInterval('DisplayTimer()', 1000);
    </script>

</body>
</html>
