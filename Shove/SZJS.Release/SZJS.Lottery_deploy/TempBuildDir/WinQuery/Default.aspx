<%@ page language="C#" autoeventwireup="true" inherits="WinQuery_Default, App_Web_tblihjbj" enableEventValidation="false" %>

<%@ Register Src="../Home/Room/UserControls/WebFoot.ascx" TagName="WebFoot" TagPrefix="uc2" %>
<%@ Register Src="../UserControls/Head.ascx" TagName="Head" TagPrefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>彩票|开奖公告|开奖结果|开奖查询|福彩|体彩|足彩|快开彩|一起买彩票、彩票合买代购交易平台－<%=_Site.Name %>－买彩票，就上<%=_Site.Name %></title>
    <meta name="keywords" content="买彩票,彩票合买" />
    <meta name="description" content="<%=_Site.Name %>为广大彩民提供互联网彩票合买代购交易平台。" />
    <link href="../Home/Room/Style/common.css" rel="stylesheet" type="text/css" />
    <link href="../Home/Room/Style/StyleSheet.css" rel="stylesheet" type="text/css" />
    <link href="../Home/Room/Style/zbuy.css" rel="stylesheet" type="text/css" />

    <script src="../JavaScript/jquery-1.4.js" type="text/javascript"></script>

    <style type="text/css">
        .hemai
        {
            width: 100%;
        }
        .hemai span
        {
            background-image: url(             '../Home/Room/Images/zfb_redball.gif' );
            background-repeat: no-repeat;
            height: 25px;
            width: 25px;
            margin-left: 3px;
            display: inline-block;
            font-family: arial, simson;
            text-align: center;
            font-weight: bold;
            font-size: 14px;
            color: white;
            line-height: 23px;
        }
        .hemai a
        {
            font-weight: bold;
            color: #244db7;
        }
        .hemai tr td
        {
            border: 1px solid #f4f4f4;
            text-align: center;
        }
        .hemai thead tr td
        {
            border: 1px solid #CCCCCC;
            text-align: center;
        }
        table strong
        {
            text-align: center;
            display: block;
            background-color: #f0f0f0;
        }
        .wrap
        {
            width: 982px;
            border: 2px solid #df0007;
        }
        table b
        {
            font-size: 14px;
            font-weight: bold;
            margin-left: 10px;
        }
        .open
        {
            background-image: url(../Home/Room/Images/kaijiang_bg.gif);
            height: 92px;
            width: 986px;
            margin: 0 auto;
        }
        .open p
        { ;margin-left:240px;padding-top:15px;}
        .open p a
        {
            margin-right: 10px;
            margin-left: 10px;
            font-weight: bold;
            color: White;
            line-height: 30px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <uc1:Head ID="Head1" runat="server" />
    <div class="open">
        <p>
            <a href="OpenInfoList.aspx?LotteryID=5" target="_blank">双色球 </a><a href="OpenInfoList.aspx?LotteryID=6"
                target="_blank">福彩3D</a> <a href="OpenInfoList.aspx?LotteryID=13" target="_blank">七乐彩</a>
            <a href="OpenInfoList.aspx?LotteryID=5" target="_blank">15选5</a> <a href="OpenInfoList.aspx?LotteryID=5" target="_blank">东方6+1</a>
             <a href="OpenInfoList.aspx?LotteryID=29" target="_blank">时时乐</a>
            <a href="OpenInfoList.aspx?LotteryID=61" target="_blank">江西时时彩</a> <a href="OpenInfoList.aspx?LotteryID=28"
                target="_blank">时时彩</a> <a href="OpenInfoList.aspx?LotteryID=2" target="_blank">四场进球</a><br />
            <a href="OpenInfoList.aspx?LotteryID=15" target="_blank">六场半全场</a> <a href="OpenInfoList.aspx?LotteryID=39"
                target="_blank">大乐透</a> <a href="OpenInfoList.aspx?LotteryID=63" target="_blank">排列3</a>
            <a href="OpenInfoList.aspx?LotteryID=64" target="_blank">排列5</a> <a href="OpenInfoList.aspx?LotteryID=3"
                target="_blank">七星彩</a> <a href="OpenInfoList.aspx?LotteryID=62" target="_blank">十一运夺金</a>
            <a href="OpenInfoList.aspx?LotteryID=70" target="_blank">11选5</a> <a href="OpenInfoList.aspx?LotteryID=65"
                target="_blank">31选7</a> <a href="OpenInfoList.aspx?LotteryID=9" target="_blank">22选5</a>
        </p>
    </div>
    <div class="wrap">
        <table width="100%" class="hemai">
            <thead>
                <tr>
                    <td>
                        中国福利彩票
                    </td>
                </tr>
            </thead>
        </table>
        <table class="hemai">
            <tbody>
                <tr>
                    <td style="width: 109px">
                        彩种
                    </td>
                    <td>
                        期号
                    </td>
                    <td>
                        开奖日期
                    </td>
                    <td>
                        开奖号码
                    </td>
                    <td>
                        奖池滚动
                    </td>
                    <td>
                        开奖日
                    </td>
                    <td>
                        走势图
                    </td>
                    <td>
                        合买
                    </td>
                    <td>
                        投注
                    </td>
                </tr>
            </tbody>
            <tbody id="Fucai" runat="server">
            </tbody>
        </table>
        <table width="100%" class="hemai">
            <thead>
                <tr>
                    <td>
                        中国体育彩票
                    </td>
                </tr>
            </thead>
        </table>
        <table class="hemai">
            <tbody>
                <tr>
                    <td style="width: 109px">
                        彩种
                    </td>
                    <td>
                        期号
                    </td>
                    <td>
                        开奖日期
                    </td>
                    <td>
                        开奖号码
                    </td>
                    <td>
                        奖池滚动
                    </td>
                    <td>
                        开奖日
                    </td>
                    <td>
                        走势图
                    </td>
                    <td>
                        合买
                    </td>
                    <td>
                        投注
                    </td>
                </tr>
            </tbody>
            <tbody id="Ticai" runat="server">
            </tbody>
        </table>
        <table width="100%" class="hemai" id="zucai">
            <thead>
                <tr>
                    <td>
                        足球彩票
                    </td>
                </tr>
            </thead>
        </table>
        <table class="hemai">
            <tbody>
                <tr>
                    <td style="width: 109px">
                        彩种
                    </td>
                    <td>
                        期号
                    </td>
                    <td>
                        开奖日期
                    </td>
                    <td>
                        开奖号码
                    </td>
                    <td>
                        奖池滚动
                    </td>
                    <td>
                        开奖日
                    </td>
                    <td>
                        走势图
                    </td>
                    <td>
                        合买
                    </td>
                    <td>
                        投注
                    </td>
                </tr>
            </tbody>
            <tbody id="Zucai" runat="server">
            </tbody>
        </table>
        <table width="100%" class="hemai">
            <thead>
                <tr>
                    <td>
                        高频彩票
                    </td>
                </tr>
            </thead>
        </table>
        <table class="hemai">
            <tbody>
                <tr>
                    <td style="width: 109px">
                        彩种
                    </td>
                    <td>
                        期号
                    </td>
                    <td>
                        开奖日期
                    </td>
                    <td>
                        开奖号码
                    </td>
                    <td>
                        奖池滚动
                    </td>
                    <td>
                        开奖日
                    </td>
                    <td>
                        走势图
                    </td>
                    <td>
                        合买
                    </td>
                    <td>
                        投注
                    </td>
                </tr>
            </tbody>
            <tbody id="Gaoping" runat="server">
            </tbody>
        </table>
    </div>
    <uc2:WebFoot ID="WebFoot1" runat="server" />
    </form>
</body>
</html>
