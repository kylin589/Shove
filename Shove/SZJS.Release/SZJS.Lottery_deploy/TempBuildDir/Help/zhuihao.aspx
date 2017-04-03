<%@ page language="C#" autoeventwireup="true" inherits="Help_zhuihao, App_Web_85hasknr" enableEventValidation="false" %>

<%@ Register Src="../UserControls/Head.ascx" TagName="Head" TagPrefix="uc1" %>
<%@ Register Src="../Home/Room/UserControls/WebFoot.ascx" TagName="WebFoot" TagPrefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD Xhtml 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>追号功能</title>
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
                    <li class="auto-style1"><a href="hemai.aspx">合买跟单 </a></li>
                    <li style="height: 36px"><a href="zhuce.aspx">注册登录</a></li>
                    <li><a href="play.aspx">彩种玩法</a></li>
                    <li><a href="fukuang.aspx">预存付款</a></li>
                    <li><a href="zhifu.aspx">网上支付</a></li>
                    <li><a style="color: #f00; font-weight: bold;" href="zhuihao.aspx">追号功能 </a></li>
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
                            <span>追号功能</span></h1>
                    </div>
                </div>
            </div>
            <div class="index_content">
                <div class="f12">
                    <p style="font-size: 12px;">
                        开通追号功能的彩种玩法有：排列3/5、超级大乐透、七星彩、22选5<br />
                        <b>定义：</b><br />
                        追号——连续多期购买同一个（组）号码或者一指定金额（机选号码）；<br />
                        追号功能——是指会员在我们的合买平台发起一个任务后，系统将按任务要求连续多期或间或几期地自动购买投注号码（可以是同一个或组号码，也可以是指定金额的机选号码。）：<br />
                        <span style="color: #f00; font-weight: bold;">追号方式有：</span><br />
                        1.自选追号：由发起人选定自己喜爱的固定几注号码进行追号投注。
                        <br />
                        2.机选追号：由发起人指定追号金额我们将根据您指定的金额，每期机选号码帮您自动投注。
                        <br />
                        <span style="color: #f00; font-weight: bold;">追号规则：</span><br />
                        1. 凡高级用户，均可以随时发起追号任务；<br />
                        2. 追号任务发起后，系统将自动冻结完成该任务所需的最大资金；<br />
                        3. 系统将于每期开卖后第二天11：00自动执行该期的追号任务；<br />
                        4. 用户可以随时取消任一期的代购任务或者终于整个追号任务；<br />
                        5. 用户进行追号的同时，不影响其他彩票的代购合买。
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
