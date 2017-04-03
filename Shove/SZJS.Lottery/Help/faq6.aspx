﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="faq6.aspx.cs" Inherits="Help_faq6" %>

<%@ Register Src="../UserControls/Head.ascx" TagName="Head" TagPrefix="uc1" %>
<%@ Register Src="../Home/Room/UserControls/WebFoot.ascx" TagName="WebFoot" TagPrefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD Xhtml 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>常见问题</title>
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
                    <li><a style="color: #f00; font-weight: bold;" href="faq.aspx">常见问题解答</a></li>
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
                            <span>常见问题</span></h1>
                    </div>
                </div>
            </div>
            <div class="index_content">
                <div class="f12">
                    <h1>
                        购彩的流程是什么样的？
                    </h1>
                    1． 选择您准备投注的彩种，并进行投注。如果您不清楚如何进行投注，请查看相关彩种的玩法介绍<br />
                    2． 选择好投注号码后确认选号至投注列表区，此时您可以选择多注选号一起完成投注；<br />
                    3． 点击“立即购买”按钮，如果您还没有登陆，请根据页面提示登陆，如果是首次购买彩票，需要填写真实姓名和身份证号。<br />
                    注意：真实姓名和身份证号是中奖后领奖的重要凭证，请填写真实信息，否则无法领奖。<br />
                    4． 填写后，点击确定按钮，确认所填信息，如果发现输入有误，点击取消按钮，返回上个页面，修改您的信息并重新提交。<br />
                    5． 点击确定按钮，进入刚才购买彩票的信息页面 确认无误后，付款。<br />
                    6． 进入支付页面，您可以通过预存余额或者网上银行付款：<br />
                    7． 选择支付方式，根据提示操作。成功付款后，将看到如下提示的页面。<br />
                    8． 点击“我的彩票”，页面显示您购买的所有彩票信息。
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
