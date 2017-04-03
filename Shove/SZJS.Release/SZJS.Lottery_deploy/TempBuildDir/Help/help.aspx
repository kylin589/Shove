<%@ page language="C#" autoeventwireup="true" inherits="Help_help, App_Web_85hasknr" enableEventValidation="false" %>

<%@ Register Src="../UserControls/Head.ascx" TagName="Head" TagPrefix="uc1" %>
<%@ Register Src="../Home/Room/UserControls/WebFoot.ascx" TagName="WebFoot" TagPrefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD Xhtml 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>帮助中心</title>
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
            <img alt="" src="Images/help_05.jpg" />
            <!--功能指引-->
            <div class="titleBg">
                <div class="titleLeftBg">
                    <div class="titleRightBg">
                        <h1 class="title">
                            <span>功能指引</span></h1>
                    </div>
                </div>
            </div>
            <div class="index_content">
                <div class="fun_layer">
                    <div class="fun_left">
                        <div class="title">
                            彩票代购</div>
                        <div class="f12">
                            <p>
                                <a target="_blank" href="17192.aspx">开奖时间</a> | <a target="_blank" href="17193.aspx">
                                    中奖规则</a> | <a target="_blank" href="17194.aspx">查看记录</a> | <a target="_blank" href="17195.aspx">
                                        查询中奖</a> |
                                <br />
                                <a target="_blank" href="17196.aspx">如何领奖</a> | <a target="_blank" href="17197.aspx">
                                    如何提款</a></p>
                        </div>
                    </div>
                    <div class="fun_right">
                        <div class=" title">
                            彩票合买</div>
                        <div class=" f12">
                            <p>
                                <a target="_blank" href="17198.aspx">佣金计算</a> | <a target="_blank" href="17199.aspx">
                                    奖金分配</a> | <a target="_blank" href="17200.aspx">方案保底</a> | <a target="_blank" href="17201.aspx">
                                        方案撤单</a> |
                                <br />
                                <a target="_blank" href="zd.aspx">方案置顶</a> | <a target="_blank" href="17203.aspx">查看方案</a></p>
                        </div>
                    </div>
                    <div class="clear">
                    </div>
                </div>
                <div class="fun_layer">
                    <div class="fun_left">
                        <div class="title">
                            账户充值</div>
                        <div class="f12">
                            <p>
                                <a target="_blank" href="17184.aspx">如何充值</a> | <a target="_blank" href="17185.aspx">
                                    充值到账时间</a> | <a target="_blank" href="17186.aspx">充值手续费</a></p>
                        </div>
                    </div>
                    <div class="fun_right">
                        <div class=" title">
                            中奖提款</div>
                        <div class=" f12">
                            <p>
                                <a target="_blank" href="17188.aspx">派奖时间</a> | <a target="_blank" href="17189.aspx">
                                    如何提款</a> | <a target="_blank" href="17190.aspx">提款手续费</a> | <a target="_blank" href="17191.aspx">
                                        提款到账时间</a></p>
                        </div>
                    </div>
                    <div class="clear">
                    </div>
                </div>
            </div>
            <!--名词解释-->
            <div class="titleBg">
                <div class="titleLeftBg">
                    <div class="titleRightBg">
                        <h1 class="title">
                            <span>热门问题</span></h1>
                    </div>
                </div>
            </div>
            <div class="index_content">
                <div class="fun_layer">
                    <div class="gn_left">
                        <div class="line_do">
                            新手指引</div>
                        <ul class="qus_list">
                            <li><a href="faq2.aspx">我从来没买过彩票，这些彩种都怎么玩？</a></li>
                            <li><a href="faq3.aspx">我不知道该投注什么号码，怎么办？</a></li>
                            <li><a href="faq4.aspx">我喜欢一注/多注号码，希望每期都投注，能不能一次付钱，帮我每期都买呢？</a></li>
                            <li><a href="faq5.aspx">我想做的投注方案金额较大，可是手里投注资金有限，怎么办？能不能找人一起买？</a></li>
                        </ul>
                    </div>
                    <div class="gn_right">
                        <div class="line_do">
                            购彩流程</div>
                        <ul class="qus_list">
                            <li><a href="faq1.aspx">付款遇到问题怎么办？</a></li>
                            <li><a href="faq6.aspx">购彩的流程是什么样的？ </a></li>
                            <li><a href="faq7.aspx">购买了彩票如何付款？</a></li>
                            <li><a href="faq8.aspx">撤销定制跟单了以后多久款项会退回呢？</a></li>
                            <li><a href="faq9.aspx">在本站买彩票是不是有时间限制的，比如早上9点到下午6点可以投注，其他时间无法投注？</a></li>
                        </ul>
                    </div>
                    <div class="clear">
                    </div>
                </div>
                <div>
                    <div class="gn_left">
                        <div class="line_do">
                            关于合买</div>
                        <ul class="qus_list">
                            <li><a href="faq10.aspx">我想问下，怎么计算我合买中了多少钱？</a></li>
                            <li><a href="faq11.aspx">请问发起的合买如何撤销？谢谢！</a></li>
                            <li><a href="faq13.aspx">合买大奖一般几天能分到钱啊，没实名认证的，提现也没问题吧？</a></li>
                        </ul>
                    </div>
                    <div class="gn_right">
                        <div class="line_do">
                            中奖与兑奖</div>
                        <ul class="qus_list">
                            <li><a href="faq14.aspx">怎么保护中奖者的个人信息呢?</a></li>
                            <li><a href="faq15.aspx">中小奖已发奖后是在哪里查？到处找都没有这个功能怎么回事？</a></li>
                        </ul>
                    </div>
                    <div class="clear">
                    </div>
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
