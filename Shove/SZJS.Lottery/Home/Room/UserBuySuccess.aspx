<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserBuySuccess.aspx.cs" Inherits="Home_Room_UserBuySuccess" %>

<%@ Register Src="UserControls/WebFoot.ascx" TagName="WebFoot" TagPrefix="uc1" %>
<%@ Register Src="../../UserControls/Head.ascx" TagName="Head" TagPrefix="uc2" %>
<%@ Register Src="UserControls/UserMyIcaile.ascx" TagName="UserMyIcaile" TagPrefix="uc3" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>祝贺购彩成功！-<%=_Site.Name %>－买彩票，就上<%=_Site.Name %>
        ！</title>
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
    <link href="Style/StyleSheet.css" rel="stylesheet" type="text/css" />
    <link href="Style/common.css" rel="stylesheet" type="text/css" />
    <link href="Style/home.css" rel="stylesheet" type="text/css" />
    <link rel="shortcut icon" href="../../favicon.ico" />
</head>

<script src="../../JavaScript/jquery-1.4.js" type="text/javascript"></script>

<style type="text/css">
    .hotcai
    {
        background-image: url(     'Images/hotcai_bg.jpg' );
        height: 156px;
        background-repeat: ：：none;
        margin-bottom: 10px;
        padding-left: 120px;
        padding-top: 10px;
    }
    .hotcai .lcmain .lot_ul li
    {
        margin-left: 20px;
    }
    .allcai
    {
        background-image: url(     'Images/allcaipao.jpg' );
        height: 30px;
        line-height: 30px;
        font-size: 14px;
        font-weight: bold;
        background-repeat: no-repeat;
        margin-bottom: 10px;
        padding-left: 10px;
        color: White;
    }
    .lcbox
    {
        margin-bottom: 7px;
        padding: 1px;
        border: 1px solid #e6e6e6;
    }
    .lcbox .lctit
    {
        background-image: url(     'Images/hemai_head_bg.jpg' );
        background-repeat: repeat-x;
        border-bottom: 1px solid #e6e6e6;
    }
    .lcbox .lctit .fucai
    {
        height: 31px;
        width: 200px;
        display: block;
        color: #ce2626;
        line-height: 31px;
        font-weight: bold;
        margin-left: 10px;
        font-size: 16px;
    }
    .lcbox .lcmain
    {
        padding: 3px 0 5px 0;
    }
    .lcmain .lot_ul li
    {
        border: 1px #E1E1E1 solid;
        width: 184px;
        background: #FFFFFF;
        padding: 5px 0;
        float: left;
        margin: 5px 5px 0;
        display: inline;
    }
    .lcmain .lot_ul li img
    {
        float: left;
    }
    .lcmain .lot_ul li .info
    {
        float: left;
        width: 100px;
    }
    .lcmain .lot_ul li .info h1
    {
        margin: 5px 0;
    }
    .lcmain .lot_ul li .info h1 a
    {
        color: #E60012;
    }
    .lcmain .lot_ul li .info h1 a:hover
    {
        color: #EE6B13;
        text-decoration: none;
    }
    .lcmain .lot_ul li .info span
    {
        line-height: 25px;
        color: #777777;
    }
    .lcmain .lot_ul li .btnbox
    {
        padding-left: 10px;
    }
    .lcmain .lot_ul li .btnbox a
    {
        margin-left: 25px;
        line-height: 22px;
    }
    .lcmain .lot_ul li .btnbox .buybtn
    {
        background: url(Images/buy_btn.gif);
        width: 57px;
        height: 18px;
        line-height: 18px;
        text-align: center;
        display: inline-block;
        color: #E75200;
        text-decoration: none;
        margin-left: 15px;
    }
    .cheng p
    {
        line-height: 30px;
        padding-left: 30px;
    }
    .cheng p span
    {
        color: #dd1d1e;
    }
    .cheng .xian
    {
        border: 1px dashed red;
        height: 60px;
        line-height: 60px;
        font-size: 16px;
        font-weight: bold;
        color: #dd1d1e;
        background-color: #fbeae8;
    }
    .cheng .xian img
    {
        padding-right: 10px;
        margin-top: -5px;
    }
</style>
</head>
<body>
    <form id="form1" runat="server">
    <uc2:Head ID="Head1" runat="server" />
    <div class="wrap">
        <uc3:UserMyIcaile ID="UserMyIcaile1" runat="server" />
        <div class="rights">
            <div>
                <table width="100%" border="0" cellspacing="0" cellpadding="0" style="height: 100%;
                    background-color: #FFFFDD">
                    <tr>
                        <td width="9%">
                            <img src="images/icon_cg222.jpg" width="73" height="52" />
                        </td>
                        <td width="91%" style="font-size: 17px; font-weight: bold; color: #DC0000">
                            <asp:Label runat="server" ID="lbName" />，祝贺您<asp:Label runat="server" ID="lbType"
                                Text="投注"></asp:Label>成功！ <span id="time" style="color: Red; padding-left: 20px">5</span><font
                                    color="black"> 秒后自动跳转！</font>
                        </td>
                    </tr>
                    <tr>
                        <td height="36" bgcolor="#F5F5F5" colspan="2" style="padding: 5px 10px 5px 10px;">
                            <div style="padding-bottom: 10px">
                                本次获得积分：<asp:Label runat="server" ID="lbScore" />分</div>
                            您好！
                            <asp:Label runat="server" ID="lbName1" />
                            您的账户余额：<asp:Label runat="server" ID="lbBalance" />
                            元&nbsp;&nbsp;&nbsp; <a href="" runat="server" id="Buy">
                                <asp:Label runat="server" ID="lbType1" Text="[继续投注]" /></a><a href="" runat="server"
                                    id="Look" style="padding-left: 10px" target="_blank"><span class="blue12">[查看方案]</span></a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="jilu">
                <table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">
                    <tr>
                        <td>
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td height="25" bgcolor="#FFFFFF" style="padding-left: 20px; font-size: 18px; font-weight: bold;
                            color: Red;">
                            热门彩种&gt;&gt;
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div class="hotcai">
                                <div class="lcmain">
                                    <ul class="lot_ul">
                                        <li><a href="../../Lottery/BuySSQ.aspx">
                                            <img src="Images/ssqlogo.gif" alt="双色球"></a>
                                            <div class="info">
                                                <h1>
                                                    <a href="../../Lottery/BuySSQ.aspx">双色球</a></h1>
                                                <span>每周二、四、日开奖 2元赢1000万</span>
                                            </div>
                                            <div class="clear">
                                            </div>
                                            <div class="btnbox">
                                                <a href="../../Lottery/BuySSQ.aspx" class="buybtn">立即投注</a><a href="../../JoinUs/JoinAllBuy.aspx"
                                                    class="buybtn">参与合买</a><br>
                                                <a href="../../WinQuery/Default.aspx">开奖公告</a><a href="#">走势图</a>
                                            </div>
                                        </li>
                                        <li><a href="../../Lottery/Buy3D.aspx">
                                            <img src="Images/fc3Dlogo.gif" alt="福彩3D"></a>
                                            <div class="info">
                                                <h1>
                                                    <a href="../../Lottery/Buy3D.aspx">福彩3D</a></h1>
                                                <span>每天20：30开奖 猜对3个号就有奖 </span>
                                            </div>
                                            <div class="clear">
                                            </div>
                                            <div class="btnbox">
                                                <a href="../../Lottery/Buy3D.aspx" class="buybtn">立即投注</a><a href="../../JoinUs/JoinAllBuy.aspx"
                                                    class="buybtn">参与合买</a><br>
                                                <a href="../../WinQuery/Default.aspx">开奖公告</a><a href="#">走势图</a>
                                            </div>
                                        </li>
                                        <li><a href="../../Lottery/BuyQLC.aspx">
                                            <img src="Images/qlclogo.gif" alt="七乐彩"></a>
                                            <div class="info">
                                                <h1>
                                                    <a href="../../Lottery/BuyQLC.aspx">七乐彩</a></h1>
                                                <span>七乐彩，其乐来<br>
                                                    百万奖，期期开 </span>
                                            </div>
                                            <div class="clear">
                                            </div>
                                            <div class="btnbox">
                                                <a href="../../Lottery/BuyQLC.aspx" class="buybtn">立即投注</a><a href="../../JoinUs/JoinAllBuy.aspx"
                                                    class="buybtn">参与合买</a><br>
                                                <a href="../../WinQuery/Default.aspx">开奖公告</a><a href="#">走势图</a>
                                            </div>
                                        </li>
                                    </ul>
                                    <div class="clear">
                                    </div>
                                </div>
                            </div>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
    <uc1:WebFoot ID="WebFoot1" runat="server" />

    <script language="javascript" type="text/javascript">
    var oTimer = null;
    function DisplayTimer() {
        var seconds = parseInt(time.innerHTML)>0 ? parseInt(time.innerHTML)-1:0;
        time.innerHTML = seconds.toString();
        if (seconds == 0) {
            window.clearInterval(oTimer); 
            
            window.location.href ="<%=URL %>";
        }
    }
    oTimer = setInterval('DisplayTimer()', 1000);
    </script>

    </form>
</body>
</html>
