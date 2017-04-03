<%@ Page Language="C#" AutoEventWireup="true" CodeFile="17201.aspx.cs" Inherits="Help_17201" %>

<%@ Register Src="../UserControls/Head.ascx" TagName="Head" TagPrefix="uc1" %>
<%@ Register Src="../Home/Room/UserControls/WebFoot.ascx" TagName="WebFoot" TagPrefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD Xhtml 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>常见问题-款到账时间 </title>
    <link href="help.css" rel="stylesheet" type="text/css" />
    <link href="../Home/Room/Style/common.css" rel="stylesheet" type="text/css" />
    <link href="../Home/Room/Style/zbuy.css" rel="stylesheet" type="text/css" />
    <link rel="shortcut icon" href="../favicon.ico" />

    <script src="../JavaScript/jquery-1.4.js" type="text/javascript"></script>

</head>
<body>
    <form id="form1" runat="server">
    <uc1:Head ID="Head1" runat="server" />
    <div class="helpContent">
        <img alt="" src="Images/ads.jpg" />
        <div class="helpLeft">
            <img alt="" src="Images/help_03.jpg" />
            <div class="helpCon-left">
                <ul>
                    <li><a href="faq.aspx">常见问题解答</a></li>
                    <li><a href="hemai.aspx">合买跟单 </a></li>
                    <li><a href="zhuce.aspx">注册登录</a></li>
                    <li><a href="play.aspx">彩种玩法</a></li>
                    <li><a href="fukuang.aspx">预存付款</a></li>
                    <li><a href="zhifu.aspx">网上支付</a></li>
                    <li><a href="zhuihao.aspx">追号功能 </a></li>
                    <li><a href="pj.aspx">如何派奖</a></li>
                    <li><a href="tk.aspx">如何提款</a></li>
                    <li><a href="bd.aspx">方案保底</a></li>
                    <li><a href="zd.aspx">方案置顶</a></li>
                </ul>
            </div>
            <img alt="" src="Images/help_14.jpg" />
        </div>
        <div class="helpRight">
            <!--功能指引-->
            <div class="titleBg titt">
                <div class="titleLeftBg">
                    <div class="titleRightBg">
                        <h1 class="title">
                            <span>功能指引</span></h1>
                    </div>
                </div>
            </div>
            <div class="index_content">
                <div class="f12">
                    <h1>
                        方案撤单
                    </h1>
                    自购的彩票不能撤单，自购的彩票认购成功之后就马上出票了，出票后不能再撤单。合买方案未满员出票，若发起人或参与者不想再购买此方案，可以撤单，撤单后相应的购买金额会返回账户。相应规则如下：<br />
                    <br />
                    <strong>数字彩</strong>（双色球、大乐透、排列三等彩种）：若合买进度（含保底）在50%以下，发起人和跟单人都可以自行撤单；若合买进度超过了50%，但未达到90%，跟单人不能再撤单，发起人若因特殊原因想撤单，可联系客服人员撤单；若合买进度超过了90%，就不能再撤单。<br />
                    <br />
                    <strong>足彩</strong>（胜负彩、任选九场、四场进球、六场半全）：若合买进度（含保底）在70%以下，发起人和跟单人都可以自行撤单；若合买进度超过了70%，但未达到90%，跟单人不能再撤单，发起人若因特殊原因想撤单，可联系客服人员撤单；若合买进度超过了90%，就不能再撤单。<br />
                    <br />
                    <strong>足球单场、竞彩足球、竞彩篮球</strong>：合买进度在70%以下，发起人和跟单人都可以自行撤单，合买进度在70%至90%间，跟单人不能再撤单，发起人若因特殊原因想撤单，可联系客服人员撤单；合买进度达到90%，就不能再撤单。
                </div>
            </div>
        </div>
    </div>
    <div style="clear: both">
    </div>
    <uc1:WebFoot ID="WebFoot1" runat="server" />
    </form>
</body>
</html>
