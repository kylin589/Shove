﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="faq9.aspx.cs" Inherits="Help_faq9" %>

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
                        在网上买彩票是不是有时间限制的，比如早上9点到下午6点可以投注，其他时间无法投注？
                    </h1>
                    除了在各彩种的代购截止时间段不可以购买，其余没有时间限制。
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
