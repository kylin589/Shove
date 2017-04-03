<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="WinQuery_Default" %>

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

    <!--<style type="text/css">
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
        }-->
       
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <uc1:Head ID="Head1" runat="server" />
    <div class="container">
    <div class="open">彩票最新开奖公告<img src="../Home/Room/Images/kjgg/laba.jpg" alt="" />
   
      

       <!-- <p>
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
        </p>-->
    </div>
    <div class="clear"></div>
    <div class="open-today">2015-08-27 （周四）<span class="color-fo">今日开奖:</span><span class="lottery-color">
    <a href="#">双色球</a><a href="#">福彩3D</a><a href="#">排列5</a><a href="#">排列3</a></span>
    <div class="clear"></div>
    </div>

    <div class="open">数字彩</div>
    <div class="open-list">
    <table>
    <tr class="list-bj">
     <td class="initialize" ></td>
     <td>彩种</td>
     <td>期号</td>
     <td>开奖时间</td>
     <td>开奖号码</td>
     <td>详情</td>
     <td>走势</td>
     <td>投注提示</td>
     <td >购买</td>
     <td class="initialize" ></td>
    </tr>

    <tr>
    <td></td>
    <td><div class="list-sz-bj"><a href="#">双色球</a></div></td>
    <td>150997期</td>
    <td>08-25（周二）</td>
    <td><span class="list-sz-hq">08</span><span class="list-sz-hq">08</span><span class="list-sz-hq">08</span>
    <span class="list-sz-hq">08</span><span class="list-sz-hq">08</span><span class="list-sz-hq">08</span>
    <span class="list-sz-lq">08</span></td>
    <td><a href="#"><img src="../Home/Room/Images/kjgg/xq.jpg" alt="" /></a></td>
    <td><a href="#"><img src="../Home/Room/Images/kjgg/zs.jpg" alt="" /></a></td>
    <td>奖池：8亿2187万</td>
    <td  width="62"><div class="list-tz"><a href="#">投注</a></div></td>
    <td></td>
    </tr>

    <tr>
    <td></td>
    <td><div class="list-sz-bj"><a href="#">大乐透</a></div></td>
    <td>15099期</td>
    <td>昨天（周三）</td>
    <td><span class="list-sz-hq">08</span><span class="list-sz-hq">08</span><span class="list-sz-hq">08</span>
    <span class="list-sz-hq">08</span><span class="list-sz-hq">08</span><span class="list-sz-lq">08</span>
    <span class="list-sz-lq">08</span></td>
    <td><a href="#"><img src="../Home/Room/Images/kjgg/xq.jpg" alt="" /></a></td>
    <td><a href="#"><img src="../Home/Room/Images/kjgg/zs.jpg" alt="" /></a></td>
    <td>奖池：8亿2187万</td>
     <td><div class="list-tz"><a href="#">投注</a></div></td>
      <td></td>
    </tr>

     <tr>
    <td></td>
    <td><div class="list-sz-bj"><a href="#">3D</a></div></td>
    <td>15231期</td>
    <td>昨天（周三）</td>
    <td><span class="list-sz-hq">08</span><span class="list-sz-hq">08</span><span class="list-sz-hq">08</span>
    </td>
    <td><a href="#"><img src="../Home/Room/Images/kjgg/xq.jpg" alt="" /></a></td>
    <td><a href="#"><img src="../Home/Room/Images/kjgg/zs.jpg" alt="" /></a></td>
    <td>奖池：8亿2187万</td>
    <td><div class="list-tz"><a href="#">投注</a></div></td>
     <td></td>
    </tr>


     <tr>
     <td></td>
    <td><div class="list-sz-bj"><a href="#">排列3</a></div></td>
    <td>15231期</td>
    <td>昨天（周三）</td>
    <td><span class="list-sz-hq">08</span><span class="list-sz-hq">08</span><span class="list-sz-hq">08</span>
    </td>
    <td><a href="#"><img src="../Home/Room/Images/kjgg/xq.jpg" alt="" /></a></td>
    <td><a href="#"><img src="../Home/Room/Images/kjgg/zs.jpg" alt="" /></a></td>
    <td>奖池：8亿2187万</td>
    <td><div class="list-tz"><a href="#">投注</a></div></td>
     <td></td>
    </tr>


     <tr>
    <td></td>
    <td><div class="list-sz-bj"><a href="#">排列5</a></div></td>
    <td>15231期</td>
    <td>昨天（周三）</td>
    <td><span class="list-sz-hq">08</span><span class="list-sz-hq">08</span><span class="list-sz-hq">08</span>
    <span class="list-sz-hq">08</span><span class="list-sz-hq">08</span>
    </td>
    <td><a href="#"><img src="../Home/Room/Images/kjgg/xq.jpg" alt="" /></a></td>
    <td><a href="#"><img src="../Home/Room/Images/kjgg/zs.jpg" alt="" /></a></td>
    <td>奖池：8亿2187万</td>
    <td><div class="list-tz"><a href="#">投注</a></div></td>
     <td></td>
    </tr>

      <tr>
    <td></td>
    <td><div class="list-sz-bj"><a href="#">7星彩</a></div></td>
    <td>15099期</td>
    <td>08-25（周三）</td>
    <td><span class="list-sz-hq">08</span><span class="list-sz-hq">08</span><span class="list-sz-hq">08</span>
    <span class="list-sz-hq">08</span><span class="list-sz-hq">08</span><span class="list-sz-hq">08</span>
    <span class="list-sz-hq">08</span>
    </td>
    <td><a href="#"><img src="../Home/Room/Images/kjgg/xq.jpg" alt="" /></a></td>
    <td><a href="#"><img src="../Home/Room/Images/kjgg/zs.jpg" alt="" /></a></td>
    <td>奖池：1151万</td>
    <td><div class="list-tz"><a href="#">投注</a></div></td>
     <td></td>
    </tr>

      <tr>
    <td></td>
    <td><div class="list-sz-bj"><a href="#">7乐彩</a></div></td>
    <td>15099期</td>
    <td>昨天（周三）</td>
    <td><span class="list-sz-hq">08</span><span class="list-sz-hq">08</span><span class="list-sz-hq">08</span>
    <span class="list-sz-hq">08</span><span class="list-sz-hq">08</span><span class="list-sz-hq">08</span>
    <span class="list-sz-hq">08</span> <span class="list-sz-lq">08</span>
    </td>
    <td><a href="#"><img src="../Home/Room/Images/kjgg/xq.jpg" alt="" /></a></td>
    <td><a href="#"><img src="../Home/Room/Images/kjgg/zs.jpg" alt="" /></a></td>
    <td>奖池：141万</td>
    <td><div class="list-tz"><a href="#">投注</a></div></td>
     <td></td>
    </tr>

     <tr>
    <td></td>
    <td><div class="list-sz-bj"><a href="#">31选7</a></div></td>
    <td>15099期</td>
    <td>昨天（周三）</td>
    <td><span class="list-sz-hq">08</span><span class="list-sz-hq">08</span><span class="list-sz-hq">08</span>
    <span class="list-sz-hq">08</span><span class="list-sz-hq">08</span><span class="list-sz-hq">08</span>
    <span class="list-sz-hq">08</span> <span class="list-sz-lq">08</span>
    </td>
    <td><a href="#"><img src="../Home/Room/Images/kjgg/xq.jpg" alt="" /></a></td>
    <td><a href="#"><img src="../Home/Room/Images/kjgg/zs.jpg" alt="" /></a></td>
    <td>奖池：141万</td>
    <td><div class="list-tz"><a href="#">投注</a></div></td>
     <td></td>
    </tr>

     <tr style=" border:none;">
    <td></td>
    <td><div class="list-sz-bj"><a href="#">22选5</a></div></td>
    <td>15099期</td>
    <td>昨天（周三）</td>
    <td><span class="list-sz-hq">08</span><span class="list-sz-hq">08</span><span class="list-sz-hq">08</span>
    <span class="list-sz-hq">08</span><span class="list-sz-hq">08</span>
   
    </td>
    <td><a href="#"><img src="../Home/Room/Images/kjgg/xq.jpg" alt="" /></a></td>
    <td><a href="#"><img src="../Home/Room/Images/kjgg/zs.jpg" alt="" /></a></td>
    <td>奖池：141万</td>
    <td><div class="list-tz"><a href="#">投注</a></div></td>
     <td></td>
    </tr>
    </table>  
    </div>


  
   <div class="open open-sports">竞技体育</div>
    <div class="open-list">
    <table>
    <tr class="list-bj">
     <td class="initialize" ></td>
     <td>彩种</td>
     <td>期号</td>
     <td>开奖时间</td>
     <td>开奖号码</td>
     <td>详情</td>
     <td>资料库</td>
     <td>投注提示</td>
     <td >购买</td>
     <td class="initialize" ></td>
    </tr>  


     <tr>
    <td></td>
    <td><div class="list-sp-bj"><a href="#">六场半全场</a></div></td>
    <td>15122期</td>
    <td>08-26（周三）</td>
    <td width="360"><span class="list-sz-sp">08</span><span class="list-sz-sp">08</span><span class="list-sz-sp">08</span><span class="list-sz-sp">08</span><span class="list-sz-sp">08</span><span class="list-sz-sp">08</span><span class="list-sz-sp">08</span><span class="list-sz-sp">08</span><span class="list-sz-sp">08</span><span class="list-sz-sp">08</span><span class="list-sz-sp">08</span>
    </td>
    <td><a href="#"><img src="../Home/Room/Images/kjgg/xq.jpg" alt="" /></a></td>
    <td><a href="#"><img src="../Home/Room/Images/kjgg/zl.jpg" alt="" /></a></td>
    <td>简单好玩奖金高</td>
    <td  width="62"><div class="list-tz"><a href="#">投注</a></div></td>
     <td></td>
    </tr>

    <tr>
    <td></td>
    <td><div class="list-sp-bj"><a href="#">胜负彩</a></div></td>
    <td>15122期</td>
    <td>08-26（周三）</td>
    <td><span class="list-sz-sp">08</span><span class="list-sz-sp">08</span><span class="list-sz-sp">08</span><span class="list-sz-sp">08</span><span class="list-sz-sp">08</span><span class="list-sz-sp">08</span><span class="list-sz-sp">08</span><span class="list-sz-sp">08</span><span class="list-sz-sp">08</span><span class="list-sz-sp">08</span><span class="list-sz-sp">08</span><span class="list-sz-sp">08</span>
    </td>
    <td><a href="#"><img src="../Home/Room/Images/kjgg/xq.jpg" alt="" /></a></td>
    <td><a href="#"><img src="../Home/Room/Images/kjgg/zl.jpg" alt="" /></a></td>
    <td>单注最高奖金500万</td>
    <td><div class="list-tz"><a href="#">投注</a></div></td>
     <td></td>
    </tr>

    <tr>
    <td></td>
    <td><div class="list-sp-bj"><a href="#">任选九</a></div></td>
    <td>15122期</td>
    <td>08-26（周三）</td>
    <td><span class="list-sz-sp">08</span><span class="list-sz-sp">08</span><span class="list-sz-sp">08</span><span class="list-sz-sp">08</span><span class="list-sz-sp">08</span><span class="list-sz-sp">08</span><span class="list-sz-sp">08</span><span class="list-sz-sp">08</span><span class="list-sz-sp">08</span><span class="list-sz-sp">08</span><span class="list-sz-sp">08</span><span class="list-sz-sp">08</span>
    </td>
    <td><a href="#"><img src="../Home/Room/Images/kjgg/xq.jpg" alt="" /></a></td>
    <td><a href="#"><img src="../Home/Room/Images/kjgg/zl.jpg" alt="" /></a></td>
    <td>单注最高奖金500万</td>
    <td><div class="list-tz"><a href="#">投注</a></div></td>
     <td></td>
    </tr>

    <tr>
    <td></td>
    <td><div class="list-sp-bj"><a href="#">四场进球</a></div></td>
    <td>15122期</td>
    <td>08-26（周三）</td>
    <td><span class="list-sz-sp">08</span><span class="list-sz-sp">08</span><span class="list-sz-sp">08</span><span class="list-sz-sp">08</span><span class="list-sz-sp">08</span><span class="list-sz-sp">08</span><span class="list-sz-sp">08</span><span class="list-sz-sp">08</span><span class="list-sz-sp">08</span>
    </td>
    <td><a href="#"><img src="../Home/Room/Images/kjgg/xq.jpg" alt="" /></a></td>
    <td><a href="#"><img src="../Home/Room/Images/kjgg/zl.jpg" alt="" /></a></td>
    <td>简单好玩奖金高</td>
    <td><div class="list-tz"><a href="#">投注</a></div></td>
     <td></td>
    </tr>

    <tr>
    <td></td>
    <td><div class="list-sp-bj"><a href="#">足球单场</a></div></td>
    <td>15122期</td>
    <td>08-26（周三）</td>
    <td><span class="list-sz-sp"><a href="#">胜平负</a></span><span class="list-sz-sp"><a href="#">比分</a></span><span class="list-sz-sp"><a href="#">半全场</a></span><span class="list-sz-sp"><a href="#">总进球</a></span>
    </td>
    <td><a href="#"><img src="../Home/Room/Images/kjgg/xq.jpg" alt="" /></a></td>
    <td><a href="#"><img src="../Home/Room/Images/kjgg/zl.jpg" alt="" /></a></td>
    <td>猜对一场也有奖</td>
    <td><div class="list-tz"><a href="#">投注</a></div></td>
     <td></td>
    </tr>


    <tr>
    <td></td>
    <td><div class="list-sp-bj"><a href="#">篮球单场</a></div></td>
    <td>15122期</td>
    <td>08-26（周三）</td>
    <td><span class="list-sz-sp"><a href="#">篮球竞猜</a></span>
    </td>
    <td><a href="#"><img src="../Home/Room/Images/kjgg/xq.jpg" alt="" /></a></td>
    <td><a href="#"><img src="../Home/Room/Images/kjgg/zl.jpg" alt="" /></a></td>
    <td></td>
    <td><div class="list-tz"><a href="#">投注</a></div></td>
     <td></td>
    </tr>

    <tr>
    <td></td>
    <td><div class="list-sp-bj"><a href="#">竞彩足球</a></div></td>
    <td>15122期</td>
    <td>08-26（周三）</td>
    <td><span class="list-sz-sp"><a href="#">胜平负</a></span><span class="list-sz-sp"><a href="#">比分</a></span><span class="list-sz-sp"><a href="#">半全场</a></span><span class="list-sz-sp"><a href="#">总进球</a></span>
    </td>
    <td><a href="#"><img src="../Home/Room/Images/kjgg/xq.jpg" alt="" /></a></td>
    <td><a href="#"><img src="../Home/Room/Images/kjgg/zl.jpg" alt="" /></a></td>
    <td>玩2串1特别好中奖</td>
    <td><div class="list-tz"><a href="#">投注</a></div></td>
     <td></td>
    </tr>

    <tr style=" border:none;">
    <td></td>
    <td><div class="list-sp-bj"><a href="#">竞彩足球</a></div></td>
    <td>15122期</td>
    <td>08-26（周三）</td>
    <td><span class="list-sz-sp"><a href="#">胜负</a></span><span class="list-sz-sp"><a href="#">让分胜负</a></span><span class="list-sz-sp"><a href="#">大小分</a></span><span class="list-sz-sp"><a href="#">胜分差</a></span>
    </td>
    <td><a href="#"><img src="../Home/Room/Images/kjgg/xq.jpg" alt="" /></a></td>
    <td><a href="#"><img src="../Home/Room/Images/kjgg/zl.jpg" alt="" /></a></td>
    <td>玩2串1特别好中奖</td>
    <td><div class="list-tz"><a href="#">投注</a></div></td>
     <td></td>
    </tr>
    </table>
    </div>

    <div class="open open-sports">高频彩</div>
    <div class="open-list">
    <table>
    <tr class="list-bj">
     <td class="initialize" ></td>
     <td>彩种</td>
     <td>期号</td>
     <td>开奖时间</td>
     <td>开奖号码</td>
     <td>详情</td>
     <td>走势</td>
     <td>投注提示</td>
     <td >购买</td>
     <td class="initialize" ></td>
    </tr>  

    <tr>
    <td></td>
    <td><div class="list-gp-bj"><a href="#">11选5</a></div></td>
    <td>15082819期</td>
    <td>今天 12：05</td>
    <td width="310"><span class="list-sz-hq">08</span><span class="list-sz-hq">08</span><span class="list-sz-hq">08</span><span class="list-sz-hq">08</span><span class="list-sz-hq">08</span>
    </td>
    <td><a href="#"><img src="../Home/Room/Images/kjgg/xq.jpg" alt="" /></a></td>
    <td><a href="#"><img src="../Home/Room/Images/kjgg/zs.jpg" alt="" /></a></td>
    <td>猜中1个即中奖</td>
    <td width="62"><div class="list-tz"><a href="#">投注</a></div></td>
     <td></td>
     </tr>

      <tr>
    <td></td>
    <td><div class="list-gp-bj"><a href="#">老11选5</a></div></td>
    <td>15082819期</td>
    <td>今天 12：05</td>
    <td ><span class="list-sz-hq">08</span><span class="list-sz-hq">08</span><span class="list-sz-hq">08</span><span class="list-sz-hq">08</span><span class="list-sz-hq">08</span>
    </td>
    <td><a href="#"><img src="../Home/Room/Images/kjgg/xq.jpg" alt="" /></a></td>
    <td><a href="#"><img src="../Home/Room/Images/kjgg/zs.jpg" alt="" /></a></td>
    <td>猜中1个即中奖</td>
    <td width="62"><div class="list-tz"><a href="#">投注</a></div></td>
     <td></td>
     </tr>


       <tr>
    <td></td>
    <td><div class="list-gp-bj"><a href="#">粤11选5</a></div></td>
    <td>15082819期</td>
    <td>今天 12：05</td>
    <td><span class="list-sz-hq">08</span><span class="list-sz-hq">08</span><span class="list-sz-hq">08</span><span class="list-sz-hq">08</span><span class="list-sz-hq">08</span>
    </td>
    <td><a href="#"><img src="../Home/Room/Images/kjgg/xq.jpg" alt="" /></a></td>
    <td><a href="#"><img src="../Home/Room/Images/kjgg/zs.jpg" alt="" /></a></td>
    <td>猜中1个即中奖</td>
    <td width="62"><div class="list-tz"><a href="#">投注</a></div></td>
     <td></td>
     </tr>

        <tr>
    <td></td>
    <td><div class="list-gp-bj"><a href="#">好运11选5</a></div></td>
    <td>15082819期</td>
    <td>今天 12：05</td>
    <td><span class="list-sz-hq">08</span><span class="list-sz-hq">08</span><span class="list-sz-hq">08</span><span class="list-sz-hq">08</span><span class="list-sz-hq">08</span>
    </td>
    <td><a href="#"><img src="../Home/Room/Images/kjgg/xq.jpg" alt="" /></a></td>
    <td><a href="#"><img src="../Home/Room/Images/kjgg/zs.jpg" alt="" /></a></td>
    <td>简单易中</td>
    <td width="62"><div class="list-tz"><a href="#">投注</a></div></td>
     <td></td>
     </tr>

    <tr>
    <td></td>
    <td><div class="list-gp-bj"><a href="#">易乐11选5</a></div></td>
    <td>15082819期</td>
    <td>今天 12：05</td>
    <td><span class="list-sz-hq">08</span><span class="list-sz-hq">08</span><span class="list-sz-hq">08</span><span class="list-sz-hq">08</span><span class="list-sz-hq">08</span>
    </td>
    <td><a href="#"><img src="../Home/Room/Images/kjgg/xq.jpg" alt="" /></a></td>
    <td><a href="#"><img src="../Home/Room/Images/kjgg/zs.jpg" alt="" /></a></td>
    <td>简单易中</td>
    <td width="62"><div class="list-tz"><a href="#">投注</a></div></td>
    <td></td>
    </tr>

    <tr>
    <td></td>
    <td><div class="list-gp-bj"><a href="#">快3</a></div></td>
    <td>15082819期</td>
    <td>今天 12：05</td>
    <td><span class="list-sz-hq">08</span><span class="list-sz-hq">08</span><span class="list-sz-hq">08</span>和值：<span class="list-number-and">24</span><span class="list-sz-big">大</span><span class="list-sz-both">双</span>
    </td>
    <td><a href="#"><img src="../Home/Room/Images/kjgg/xq.jpg" alt="" /></a></td>
    <td><a href="#"><img src="../Home/Room/Images/kjgg/zs.jpg" alt="" /></a></td>
    <td>简单易中</td>
    <td width="62"><div class="list-tz"><a href="#">投注</a></div></td>
    <td></td>
    </tr>

     <tr>
    <td></td>
    <td><div class="list-gp-bj"><a href="#">江苏快3</a></div></td>
    <td>15082819期</td>
    <td>今天 12：05</td>
    <td><span class="list-sz-hq">08</span><span class="list-sz-hq">08</span><span class="list-sz-hq">07</span>和值：<span class="list-number-and">23</span><span class="list-sz-big">大</span><span class="list-sz-only">单</span>
    </td>
    <td><a href="#"><img src="../Home/Room/Images/kjgg/xq.jpg" alt="" /></a></td>
    <td><a href="#"><img src="../Home/Room/Images/kjgg/zs.jpg" alt="" /></a></td>
    <td>简单易中</td>
    <td width="62"><div class="list-tz"><a href="#">投注</a></div></td>
    <td></td>
    </tr>

     <tr>
    <td></td>
    <td><div class="list-gp-bj"><a href="#">新快3</a></div></td>
    <td>15082819期</td>
    <td>今天 12：05</td>
    <td><span class="list-sz-hq">01</span><span class="list-sz-hq">02</span><span class="list-sz-hq">06</span>和值：<span class="list-number-and">09</span><span class="list-sz-small">小</span><span class="list-sz-only">单</span>
    </td>
    <td><a href="#"><img src="../Home/Room/Images/kjgg/xq.jpg" alt="" /></a></td>
    <td><a href="#"><img src="../Home/Room/Images/kjgg/zs.jpg" alt="" /></a></td>
    <td>简单易中</td>
    <td width="62"><div class="list-tz"><a href="#">投注</a></div></td>
    <td></td>
    </tr>

     <tr>
    <td></td>
    <td><div class="list-gp-bj"><a href="#">湖北快3</a></div></td>
    <td>15082819期</td>
    <td>今天 12：05</td>
    <td><span class="list-sz-hq">01</span><span class="list-sz-hq">02</span><span class="list-sz-hq">06</span>和值：<span class="list-number-and">09</span><span class="list-sz-small">小</span><span class="list-sz-only">单</span>
    </td>
    <td><a href="#"><img src="../Home/Room/Images/kjgg/xq.jpg" alt="" /></a></td>
    <td><a href="#"><img src="../Home/Room/Images/kjgg/zs.jpg" alt="" /></a></td>
    <td>简单易中</td>
    <td width="62"><div class="list-tz"><a href="#">投注</a></div></td>
    <td></td>
    </tr>

     <tr>
    <td></td>
    <td><div class="list-gp-bj"><a href="#">易快3</a></div></td>
    <td>15082819期</td>
    <td>今天 12：05</td>
    <td><span class="list-sz-hq">01</span><span class="list-sz-hq">02</span><span class="list-sz-hq">06</span>和值：<span class="list-number-and">09</span><span class="list-sz-small">小</span><span class="list-sz-only">单</span>
    </td>
    <td><a href="#"><img src="../Home/Room/Images/kjgg/xq.jpg" alt="" /></a></td>
    <td><a href="#"><img src="../Home/Room/Images/kjgg/zs.jpg" alt="" /></a></td>
    <td>简单易中</td>
    <td width="62"><div class="list-tz"><a href="#">投注</a></div></td>
    <td></td>
    </tr>

     <tr>
    <td></td>
    <td><div class="list-gp-bj"><a href="#">好运快3</a></div></td>
    <td>15082819期</td>
    <td>今天 12：05</td>
    <td><span class="list-sz-hq">01</span><span class="list-sz-hq">02</span><span class="list-sz-hq">06</span>和值：<span class="list-number-and">09</span><span class="list-sz-small">小</span><span class="list-sz-only">单</span>
    </td>
    <td><a href="#"><img src="../Home/Room/Images/kjgg/xq.jpg" alt="" /></a></td>
    <td><a href="#"><img src="../Home/Room/Images/kjgg/zs.jpg" alt="" /></a></td>
    <td>简单易中</td>
    <td width="62"><div class="list-tz"><a href="#">投注</a></div></td>
    <td></td>
    </tr>

     <tr>
    <td></td>
    <td><div class="list-gp-bj"><a href="#">快乐扑克</a></div></td>
    <td>15082819期</td>
    <td>今天 12：05</td>
    <td><span class="list-sz-sp"><img src="../Home/Room/Images/kjgg/j.jpg"  alt="" /></span><span class="list-sz-sp"><img src="../Home/Room/Images/kjgg/q.jpg"  alt="" /></span><span class="list-sz-sp"><img src="../Home/Room/Images/kjgg/k.jpg"  alt="" /></span> 同花顺
    </td>
    <td><a href="#"><img src="../Home/Room/Images/kjgg/xq.jpg" alt="" /></a></td>
    <td><a href="#"><img src="../Home/Room/Images/kjgg/zs.jpg" alt="" /></a></td>
    <td>边玩扑克边中奖</td>
    <td width="62"><div class="list-tz"><a href="#">投注</a></div></td>
    <td></td>
    </tr>

     <tr>
    <td></td>
    <td><div class="list-gp-bj"><a href="#">重庆时时彩</a></div></td>
    <td>15082819期</td>
    <td>今天 12：05</td>
    <td><span class="list-sz-hq">08</span><span class="list-sz-hq">08</span><span class="list-sz-hq">08</span><span class="list-sz-hq">08</span><span class="list-sz-hq">08</span>
    </td>
    <td><a href="#"><img src="../Home/Room/Images/kjgg/xq.jpg" alt="" /></a></td>
    <td><a href="#"><img src="../Home/Room/Images/kjgg/zs.jpg" alt="" /></a></td>
    <td>简单易中</td>
    <td width="62"><div class="list-tz"><a href="#">投注</a></div></td>
    <td></td>
    </tr>

     <tr>
    <td></td>
    <td><div class="list-gp-bj"><a href="#">新时时彩</a></div></td>
    <td>15082819期</td>
    <td>今天 12：05</td>
    <td><span class="list-sz-hq">08</span><span class="list-sz-hq">08</span><span class="list-sz-hq">08</span><span class="list-sz-hq">08</span><span class="list-sz-hq">08</span>
    </td>
    <td><a href="#"><img src="../Home/Room/Images/kjgg/xq.jpg" alt="" /></a></td>
    <td><a href="#"><img src="../Home/Room/Images/kjgg/zs.jpg" alt="" /></a></td>
    <td>10分钟赚11.6万</td>
    <td width="62"><div class="list-tz"><a href="#">投注</a></div></td>
    <td></td>
    </tr>

     <tr>
    <td></td>
    <td><div class="list-gp-bj"><a href="#">时时彩</a></div></td>
    <td>15082819期</td>
    <td>今天 12：05</td>
    <td><span class="list-sz-hq">08</span><span class="list-sz-hq">08</span><span class="list-sz-hq">08</span><span class="list-sz-hq">08</span><span class="list-sz-hq">08</span>
    </td>
    <td><a href="#"><img src="../Home/Room/Images/kjgg/xq.jpg" alt="" /></a></td>
    <td><a href="#"><img src="../Home/Room/Images/kjgg/zs.jpg" alt="" /></a></td>
    <td>单注最高奖金10万</td>
    <td width="62"><div class="list-tz"><a href="#">投注</a></div></td>
    <td></td>
    </tr>

     <tr>
    <td></td>
    <td><div class="list-gp-bj"><a href="#">江西时时彩</a></div></td>
    <td>15082819期</td>
    <td>今天 12：05</td>
    <td><span class="list-sz-hq">08</span><span class="list-sz-hq">08</span><span class="list-sz-hq">08</span><span class="list-sz-hq">08</span><span class="list-sz-hq">08</span>
    </td>
    <td><a href="#"><img src="../Home/Room/Images/kjgg/xq.jpg" alt="" /></a></td>
    <td><a href="#"><img src="../Home/Room/Images/kjgg/zs.jpg" alt="" /></a></td>
    <td>简单易中</td>
    <td width="62"><div class="list-tz"><a href="#">投注</a></div></td>
    <td></td>
    </tr>

       <tr>
    <td></td>
    <td><div class="list-gp-bj"><a href="#">快乐8</a></div></td>
    <td>15082819期</td>
    <td>今天 12：05</td>
    <td style=" position:relative;"><span>03 10 11 13 14 21 23 24 33 36 <br />47 50 55 59 61 64 69 70 72 77</span><span style=" position:absolute; left:200px; top:15px;">飞盘*2</span></td>    <td><a href="#"><img src="../Home/Room/Images/kjgg/xq.jpg" alt="" /></a></td>
    <td><a href="#"><img src="../Home/Room/Images/kjgg/zs.jpg" alt="" /></a></td>
    <td>10分钟一个500万</td>
    <td width="62"><div class="list-tz"><a href="#">投注</a></div></td>
    <td></td>
    </tr>

     <tr>
    <td></td>
    <td><div class="list-gp-bj"><a href="#">粤快乐十分</a></div></td>
    <td>15082819期</td>
    <td>今天 12：05</td>
    <td><span class="list-sz-hq">08</span><span class="list-sz-hq">08</span><span class="list-sz-hq">08</span><span class="list-sz-hq">08</span><span class="list-sz-hq">08</span><span class="list-sz-hq">08</span><span class="list-sz-hq">08</span><span class="list-sz-hq">08</span>
    </td>
    <td><a href="#"><img src="../Home/Room/Images/kjgg/xq.jpg" alt="" /></a></td>
    <td><a href="#"><img src="../Home/Room/Images/kjgg/zs.jpg" alt="" /></a></td>
    <td>单注最高奖金8000</td>
    <td width="62"><div class="list-tz"><a href="#">投注</a></div></td>
    <td></td>
    </tr>

     <tr>
    <td></td>
    <td><div class="list-gp-bj"><a href="#">天津快乐十分</a></div></td>
    <td>15082819期</td>
    <td>今天 12：05</td>
    <td><span class="list-sz-hq">08</span><span class="list-sz-hq">08</span><span class="list-sz-hq">08</span><span class="list-sz-hq">08</span><span class="list-sz-hq">08</span><span class="list-sz-hq">08</span><span class="list-sz-hq">08</span><span class="list-sz-hq">08</span>
    </td>
    <td><a href="#"><img src="../Home/Room/Images/kjgg/xq.jpg" alt="" /></a></td>
    <td><a href="#"><img src="../Home/Room/Images/kjgg/zs.jpg" alt="" /></a></td>
    <td>简单易中</td>
    <td width="62"><div class="list-tz"><a href="#">投注</a></div></td>
    <td></td>
    </tr>

    <tr>
    <td></td>
    <td><div class="list-gp-bj"><a href="#">广西快乐十分</a></div></td>
    <td>15082819期</td>
    <td>今天 12：05</td>
    <td><span class="list-sz-hq">08</span><span class="list-sz-hq">08</span><span class="list-sz-hq">08</span><span class="list-sz-hq">08</span><span class="list-sz-hq">08</span>
    </td>
    <td><a href="#"><img src="../Home/Room/Images/kjgg/xq.jpg" alt="" /></a></td>
    <td><a href="#"><img src="../Home/Room/Images/kjgg/zs.jpg" alt="" /></a></td>
    <td>简单易中</td>
    <td width="62"><div class="list-tz"><a href="#">投注</a></div></td>
    <td></td>
    </tr>

    <tr>
    <td></td>
    <td><div class="list-gp-bj"><a href="#">湖南快乐十分</a></div></td>
    <td>15082819期</td>
    <td>今天 12：05</td>
    <td><span class="list-sz-hq">08</span><span class="list-sz-hq">08</span><span class="list-sz-hq">08</span><span class="list-sz-hq">08</span><span class="list-sz-hq">08</span><span class="list-sz-hq">08</span><span class="list-sz-hq">08</span><span class="list-sz-hq">08</span>
    </td>
    <td><a href="#"><img src="../Home/Room/Images/kjgg/xq.jpg" alt="" /></a></td>
    <td><a href="#"><img src="../Home/Room/Images/kjgg/zs.jpg" alt="" /></a></td>
    <td>简单易中</td>
    <td width="62"><div class="list-tz"><a href="#">投注</a></div></td>
    <td></td>
    </tr>

    <tr>
    <td></td>
    <td><div class="list-gp-bj"><a href="#">重庆快乐十分</a></div></td>
    <td>15082819期</td>
    <td>今天 12：05</td>
    <td><span class="list-sz-hq">08</span><span class="list-sz-hq">08</span><span class="list-sz-hq">08</span><span class="list-sz-hq">08</span><span class="list-sz-hq">08</span><span class="list-sz-hq">08</span><span class="list-sz-hq">08</span><span class="list-sz-hq">08</span>
    </td>
    <td><a href="#"><img src="../Home/Room/Images/kjgg/xq.jpg" alt="" /></a></td>
    <td><a href="#"><img src="../Home/Room/Images/kjgg/zs.jpg" alt="" /></a></td>
    <td>简单易中</td>
    <td width="62"><div class="list-tz"><a href="#">投注</a></div></td>
    <td></td>
    </tr>

      <tr>
    <td></td>
    <td><div class="list-gp-bj"><a href="#">时时乐</a></div></td>
    <td>15082819期</td>
    <td>今天 12：05</td>
    <td><span class="list-sz-hq">08</span><span class="list-sz-hq">08</span><span class="list-sz-hq">08</span>
    </td>
    <td><a href="#"><img src="../Home/Room/Images/kjgg/xq.jpg" alt="" /></a></td>
    <td><a href="#"><img src="../Home/Room/Images/kjgg/zs.jpg" alt="" /></a></td>
    <td>简单易中</td>
    <td width="62"><div class="list-tz"><a href="#">投注</a></div></td>
    <td></td>
    </tr>
      <tr>
    <td></td>
    <td><div class="list-gp-bj"><a href="#">湖南幸运赛车</a></div></td>
    <td>15082819期</td>
    <td>今天 12：05</td>
    <td><span class="list-sz-hq">08</span><span class="list-sz-hq">08</span><span class="list-sz-hq">08</span>
    </td>
    <td><a href="#"><img src="../Home/Room/Images/kjgg/xq.jpg" alt="" /></a></td>
    <td><a href="#"><img src="../Home/Room/Images/kjgg/zs.jpg" alt="" /></a></td>
    <td>简单易中</td>
    <td width="62"><div class="list-tz"><a href="#">投注</a></div></td>
    <td></td>
    </tr>

      <tr>
    <td></td>
    <td><div class="list-gp-bj"><a href="#">十一夺运金</a></div></td>
    <td>15082819期</td>
    <td>今天 12：05</td>
    <td><span class="list-sz-hq">08</span><span class="list-sz-hq">08</span><span class="list-sz-hq">08</span><span class="list-sz-hq">08</span><span class="list-sz-hq">08</span>
    </td>
    <td><a href="#"><img src="../Home/Room/Images/kjgg/xq.jpg" alt="" /></a></td>
    <td><a href="#"><img src="../Home/Room/Images/kjgg/zs.jpg" alt="" /></a></td>
    <td>简单易中</td>
    <td width="62"><div class="list-tz"><a href="#">投注</a></div></td>
    <td></td>
    </tr>

     <tr>
    <td></td>
    <td><div class="list-gp-bj"><a href="#">8选3</a></div></td>
    <td>15082819期</td>
    <td>今天 12：05</td>
    <td><span class="list-sz-hq">08</span><span class="list-sz-hq">08</span><span class="list-sz-hq">08</span>
    </td>
    <td><a href="#"><img src="../Home/Room/Images/kjgg/xq.jpg" alt="" /></a></td>
    <td><a href="#"><img src="../Home/Room/Images/kjgg/zs.jpg" alt="" /></a></td>
    <td>简单易中</td>
    <td width="62"><div class="list-tz"><a href="#">投注</a></div></td>
    <td></td>
    </tr>

     <tr style=" border:none;">
    <td></td>
    <td><div class="list-gp-bj"><a href="#">北京赛车PK10</a></div></td>
    <td>15082819期</td>
    <td>今天 12：05</td>
    <td><span class="list-sz-hq">08</span><span class="list-sz-hq">08</span><span class="list-sz-hq">08</span><span class="list-sz-hq">08</span><span class="list-sz-hq">08</span><span class="list-sz-hq">08</span><span class="list-sz-hq">08</span><span class="list-sz-hq">08</span><span class="list-sz-hq">08</span><span class="list-sz-hq">08</span>
    </td>
    <td><a href="#"><img src="../Home/Room/Images/kjgg/xq.jpg" alt="" /></a></td>
    <td><a href="#"><img src="../Home/Room/Images/kjgg/zs.jpg" alt="" /></a></td>
    <td>简单易中</td>
    <td width="62"><div class="list-tz"><a href="#">投注</a></div></td>
    <td></td>
    </tr>
    </table>
    </div>
  
   <!-- <div class="wrap">
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
    </div>-->
    <uc2:WebFoot ID="WebFoot1" runat="server" />
    </form>
    
</body>
</html>
