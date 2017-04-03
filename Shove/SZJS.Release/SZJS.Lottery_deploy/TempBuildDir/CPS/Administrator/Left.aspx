<%@ page language="C#" autoeventwireup="true" inherits="CPS_Administrator_Left, App_Web_mmkwpj80" enableEventValidation="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>深圳市久盛网络彩票系统管理控制面板</title>
    <link href="style/style01.css" rel="stylesheet" type="text/css" />
    <meta http-equiv="Content-Type" content="text/html charset=utf-8" />
</head>

<script src="../js/jquery-1.6.2.min.js" type="text/javascript"></script>

<script language="javascript" type="text/javascript">
<!--
    $(function() {
        function init() {
            $(".menuList .menuItem").each(function() {
                $(this).find(".head").next(".content").slideUp("normal");
            });
        }
        $(".head").css("cursor", "pointer").click(function() {       
           // init();
            $(this).next(".content").toggle("normal");
        });
        init();
    });
-->
</script>

<body background="style/images/leftbg.jpg">
    <form id="form1" runat="server">
    <div class="menuPanel">
        <div class="help">
            &nbsp;
        </div>
        <div class="menuList">
            <div class="menuItem">
                <div class="head">
                    商家信息管理</div>
                <div class="content">
                    <div>
                        <a href="CpsPromoterList.aspx" target="BoardList">推广员列表</a></div>
                    <div>
                        <a href="CpsAgentList.aspx" target="BoardList">代理商列表</a></div>
                </div>
            </div>
            <div class="menuItem">
                <div class="head">
                    加盟申请管理</div>
                <div class="content">
                    <div>
                        <a href="CpsTry.aspx" target="BoardList">代理商申请</a></div>
                </div>
            </div>
            <div class="menuItem">
                <div class="head">
                    佣金提款管理</div>
                <div class="content">
                    <div>
                        <a href="UserDistill.aspx" target="BoardList">用户提款申请</a></div>
                    <div>
                        <a href="UserDistillWaitPay.aspx" target="BoardList">待付款佣金列表</a></div>
                    <div>
                        <a href="UserDistillPayed.aspx" target="BoardList">已付款佣金列表</a></div>
                    <div>
                        <a href="BonusPayOff.aspx" target="BoardList">佣金发放通知</a></div>
                    <div>
                        <a href="MonthTradeSum.aspx" target="BoardList">CPS月度结算表</a></div>
                </div>
            </div>
            <div class="menuItem">
                <div class="head">
                    新闻公告管理</div>
                <div class="content">
                    <div>
                        <a href="News.aspx?Type=1" target="BoardList">新闻公告</a></div>
                    <div>
                        <a href="News.aspx?Type=2" target="BoardList">推广指南</a></div>
                </div>
            </div>
            <div class="menuItem">
                <div class="head">
                    商家注册协议</div>
                <div class="content">
                    <div>
                        <a href="CPSRegisterAgreement.aspx" target="BoardList">商家注册协议</a></div>
                </div>
            </div>
            <div class="menuItem">
                <div class="head">
                    系统设置管理</div>
                <div class="content">
                    <div>
                        <a href="BonusScaleSetup.aspx" target="BoardList">佣金比例设置</a></div>
                </div>
            </div>
        </div>
    </div>
    </form>
</body>
</html>
