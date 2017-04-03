<%@ page language="C#" autoeventwireup="true" inherits="Help_hemai, App_Web_85hasknr" enableEventValidation="false" %>

<%@ Register Src="../UserControls/Head.ascx" TagName="Head" TagPrefix="uc1" %>
<%@ Register Src="../Home/Room/UserControls/WebFoot.ascx" TagName="WebFoot" TagPrefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD Xhtml 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>合买跟单</title>
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
                    <li><a style="color: #f00; font-weight: bold;" href="hemai.aspx">合买跟单 </a></li>
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
                            <span>合买跟单</span></h1>
                    </div>
                </div>
            </div>
            <div class="index_content">
                <div class="f12">
                    <h1>
                        什么是合买？</h1>
                    <p>
                        合买是由两个或者两个以上用户共同出资购买彩票，按照出资比例承担风险、分享利益的投注方式。
                    </p>
                    <h1>
                        什么是单式合买？什么是复式合买？</h1>
                    <p>
                        单式合买指发起人所发起的合买方案为单式投注号码。复式合买指合买发起人所发起的合买方案为复式投注号码。
                    </p>
                    <h1>
                        什么是方案流产</h1>
                    <p>
                        方案流产指合买方案在奖期截止后，方案进度＋发起人保底额＋网站保底金额都未能促使方案满员，则该方案自动流产，即未能合买成功。
                    </p>
                    <h1>
                        方案流产怎么办？</h1>
                    <p>
                        方案流产后，系统自动将合买发起人的保底资金和认购金额、各合买跟单人的认购金额自动解冻，返还至用户的帐户中。
                    </p>
                    <h1>
                        合买流程</h1>
                    <p>
                        1. 注册成为本站会员；<br />
                        2. 若已是支付宝会员，则可直接使用；若非支付宝会员，则应开通银行的网上支付功能，去相关银行开通；<br />
                        3. 登陆并进入合买区；<br />
                        4. 添加预付款：把钱从银行卡或支付宝账户转到你个人在会员帐户中；<br />
                        5. 参与合买；<br />
                        6. 查询中奖情况；<br />
                        7. 等待派奖：一般情况下，开奖的第二天即可派送到中奖用户的预付款中；<br />
                        8. 提款：把钱中预付款提到银行卡或支付宝账户。<br />
                    </p>
                    <h1>
                        合买中奖后奖金如何分配</h1>
                    <p>
                        合买方案中奖后，税后奖金将按照发起人和跟单人的出资比例进行分配，奖金直接返还到中奖用户电话投注资金帐户，网站不收取任何手续费及佣金，中奖后亦不提成。</p>
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
