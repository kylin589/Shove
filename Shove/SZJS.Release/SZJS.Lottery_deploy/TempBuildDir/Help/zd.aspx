<%@ page language="C#" autoeventwireup="true" inherits="Help_zd, App_Web_85hasknr" enableEventValidation="false" %>

<%@ Register Src="../UserControls/Head.ascx" TagName="Head" TagPrefix="uc1" %>
<%@ Register Src="../Home/Room/UserControls/WebFoot.ascx" TagName="WebFoot" TagPrefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD Xhtml 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>方案置顶</title>
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
                    <li style="height: 36px"><a href="zhuce.aspx">注册登录</a></li>
                    <li><a href="play.aspx">彩种玩法</a></li>
                    <li><a href="fukuang.aspx">预存付款</a></li>
                    <li><a href="zhifu.aspx">网上支付</a></li>
                    <li><a href="zhuihao.aspx">追号功能 </a></li>
                    <li><a href="pj.aspx">如何派奖</a></li>
                    <li><a href="tk.aspx">如何提款</a></li>
                    <li><a href="bd.aspx">方案保底</a></li>
                    <li><a style="color: #f00; font-weight: bold;" href="zd.aspx">方案置顶</a></li>
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
                            <span>方案置顶</span></h1>
                    </div>
                </div>
            </div>
            <div class="index_content">
                <div class="f12">
                    <p style="font-size: 12px;">
                        <span style="color: #f00; font-weight: bold;">置顶方案的特征</span><br />
                        1. 置顶方案指该方案在任何排序方式下均列在前面；<br />
                        2. 置顶方案只要未满员，在任何时候均可认购，包括本站合买时间截止后，官方停售截止时间之前；<br />
                        3. 置顶方案的背景色为黄色；<br />
                        4. 置顶方案一般为网站推荐方案和无条件保底方案。偶尔也有发起人自购较多的大额方案；<br />
                        5. 置顶方案的合买成功率在95％以上；<br />
                        6. 为了尽量不影响其他方案的认购，置顶方案一般不会超过8个；<br />
                        7. 在本站合买截止以后，本站将对所有进度>=90％的方案置顶。此时，大家也可以认购这些方案。这些方案最终将由网站无条件收底。<br />
                        <span style="color: #f00; font-weight: bold;">如何申请置顶方案，举例如下：</span><br />
                        <b>足彩胜负彩置顶规则</b><br />
                        <span style="color: blue">胜负彩单式合买方案置顶必要条件：方案金额大于等于10000元而且（进度＋保底）大于等于30％。<br />
                            胜负彩复式合买方案置顶必要条件：方案金额大于等于1000元而且（进度＋保底）大于等于30％。</span><br />
                        在符合以上必要条件的前提下，如下几种情况可以申请置顶：<br />
                        1. 方案（进度＋保底）大于等于90％。<br />
                        2. 上期胜负彩获得金星者。<br />
                        3. 连续3期均有万元以上单式方案成功可以申请单式方案置顶；连续3期均有1000元以上复式方案成功可以申请复式方案置顶。
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
