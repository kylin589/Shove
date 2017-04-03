<%@ Page Language="C#" AutoEventWireup="true" CodeFile="fukuang.aspx.cs" Inherits="Help_fukuang" %>

<%@ Register Src="../UserControls/Head.ascx" TagName="Head" TagPrefix="uc1" %>
<%@ Register Src="../Home/Room/UserControls/WebFoot.ascx" TagName="WebFoot" TagPrefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD Xhtml 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>预存付款</title>
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
            <a href="help.aspx">
                <img alt="" src="Images/help_03.jpg" /></a>
            <div class="helpCon-left">
                <ul>
                    <li><a href="faq.aspx">常见问题解答</a></li>
                    <li><a href="hemai.aspx">合买跟单 </a></li>
                    <li><a href="zhuce.aspx">注册登录</a></li>
                    <li><a href="play.aspx">彩种玩法</a></li>
                    <li><a style="color: #f00; font-weight: bold;" href="fukuang.aspx">预存付款</a></li>
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
                            <span>预存付款</span></h1>
                    </div>
                </div>
            </div>
            <div class="index_content">
                <div class="f12">
                    <p style="font-size: 12px;">
                        <span style="color: #f00; font-weight: bold;">第一步 会员登录</span><br />
                        会员登录成功后，点击“我的帐户”，点击左侧的“添加预付款”，然后弹出支付窗口。会员参与合买必须先在帐户里充值，添加预付款。<br />
                        <span style="color: #f00; font-weight: bold;">第二步 充值添加预付款。 </span>
                        <br />
                        网站提供了“支付宝”的在线支付方式，会员要在线完成添加预付款，需要去支付宝网站开通支付宝，或者需要有一张开通了网上支付功能的银行卡即可。现在中国的银行卡都具有网上支付的功能，但是需要在银行去申请，或者登录银行的官方网站，在线申请，申请非常简单，马上可以生效，一般是在线申请开通银行卡的在线支付功能。
                        点击“添加预付款”后，弹出支付页面，在页面上输入你要充值的金额，输入后点击“在线支付”，然后会弹出支付页面，可选择“支付宝”，或其余银行均可，根据你的银行卡是哪个银行的进行选择，选择后会跳转到相关银行的官方在线支付页面，然后输入密码，完成在线支付，在线支付完成后，会员的帐户里自动会增加相等的电子货币金额，然后进行网上彩票合买代购。
                    </p>
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
