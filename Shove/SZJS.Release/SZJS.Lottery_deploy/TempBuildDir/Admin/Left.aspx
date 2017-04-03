<%@ page language="C#" autoeventwireup="true" inherits="Admin_Left, App_Web_mq7qcqnw" enableEventValidation="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>深圳市久盛网络彩票系统管理控制面板</title>
    <link href="style/style01.css" rel="stylesheet" type="text/css" />
    <meta http-equiv="Content-Type" content="text/html charset=utf-8" />
</head>

<script src="../JavaScript/jquery-1.4.js" type="text/javascript"></script>

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
                    用户管理</div>
                <div class="content">
                    <div>
                        <a href="Users.aspx" target="BoardList">用户一览表</a></div>
                    <div>
                        <a href="UserAccountDetail.aspx" target="BoardList">用户账户明细</a></div>
                    <div>
                        <a href="UserAddMoney.aspx" target="BoardList">用户账户充值</a></div>
                    <div>
                        <a href="CardPasswordUsers.aspx" target="BoardList">卡密账户明细</a></div>
                    <div>
                        <a href="CardPasswordAgentsAdd.aspx" target="BoardList">增加卡密商户</a></div>
                    <div>
                        <a href="CardPasswordAgentAddMoney.aspx" target="BoardList">卡密商户充值</a></div>
                    <div>
                        <a href="Experts.aspx" target="BoardList">专家管理</a></div>
                    <div>
                        <a href="ExpertsTrys.aspx" target="BoardList">处理申请专家</a></div>
                    <div>
                        <a href="LoginLog.aspx" target="BoardList">用户登录日志</a></div>
                    <div>
                        <a href="LoginCount.aspx" target="BoardList">用户访问统计</a></div>
                </div>
            </div>
            <div class="menuItem">
                <div class="head">
                    内容管理</div>
                <div class="content">
                    <div>
                        <a href="FocusNews.aspx" target="BoardList">焦点新闻</a></div>
                    <div>
                        <a href="ImageNews.aspx" target="BoardList">图片新闻</a></div>
                    <div>
                        <a href="News.aspx" target="BoardList">新闻资讯</a></div>
                    <div>
                        <a href="SiteAffiches.aspx" target="BoardList">站点公告</a></div>
                    <div>
                        <a href="FriendshipLinks.aspx" target="BoardList">合作伙伴</a></div>
                    <div>
                        <a href="Advertisements.aspx" target="BoardList">广告管理</a></div>
                    <div>
                        <a href="FloatNotifies.aspx" target="BoardList">弹出通知管理</a></div>
                    <div>
                        <a href="ExpertsPredict.aspx" target="BoardList">专家预测管理</a></div>
                    <div>
                        <a href="Personages.aspx" target="BoardList">名人管理</a></div>
                    <div>
                        <a href="SupperCobuy.aspx?TypeState=1" target="BoardList">超级合买</a></div>
                    <div>
                        <a href="RegisterAgreement.aspx" target="BoardList">用户注册协议</a></div>
                    <div>
                        <a href="FootballLeagueTypes.aspx" target="BoardList">足球联赛类别</a></div>
                    <div>
                        <a href="AllBuyFocus.aspx" target="BoardList">活跃合买明星</a></div>
                    <div>
                        <a href="RecallingRecord.aspx" target="BoardList">合买明星战绩</a></div>
                    <div>
                        <a href="SupperCobuy.aspx?TypeState=2" target="BoardList">足彩合买控制</a></div>
                </div>
            </div>
            <div class="menuItem">
                <div class="head">
                    彩票业务中心</div>
                <div class="content">
                    <div>
                        <a href="LotteryInformation.aspx" target="BoardList">彩种规则说明</a></div>
                    <div>
                        <a href="LotteryTimeSet.aspx" target="BoardList">各玩法时间设置</a></div>
                    <div>
                        <a href="Isuse.aspx" target="BoardList">彩票期号管理</a></div>
                    <div>
                        <a href="SchemeAtTop.aspx" target="BoardList">方案置顶管理</a></div>
                    <div>
                        <a href="PrintOutput.aspx" target="BoardList">手动出票中心</a></div>
                    <div>
                        <a href="SchemeQuash.aspx" target="BoardList">方案撤单管理</a></div>
                    <div>
                        <a href="InputWinNumber.aspx" target="BoardList">录入开奖号码</a></div>
                    <div>
                        <a href="NewWinNumber.aspx" target="BoardList">最新开奖列表</a></div>
                    <div>
                        <a href="PrintOutNotFull.aspx" target="BoardList">不完整出票方案</a></div>
                    <div>
                        <a href="Open.aspx" target="BoardList">开奖&amp;派奖</a></div>
                    <div>
                        <a href="OpenManual.aspx" target="BoardList">手工开奖&amp;派奖</a></div>
                    <div>
                        <a href="InputOpenAffiche.aspx" target="BoardList">录入开奖公告视频</a></div>
                    <div>
                        <a href="UploadWinLotteryImage.aspx" target="BoardList">中奖图片上传</a></div>
                    <div>
                        <a href="SchemeList.aspx" target="BoardList">方案查询</a></div>
                    <div>
                        <a href="WinList.aspx" target="BoardList">中奖查询</a></div>
                    <div>
                        <a href="ChaseList.aspx" target="BoardList">追号查询</a></div>
                    <div>
                        <a href="Jczcgg.aspx" target="BoardList">竞彩足球过关</a></div>
                    <div>
                        <a href="Jczcdg.aspx" target="BoardList">竞彩足球单关</a></div>
                    <div>
                        <a href="Jclcgg.aspx" target="BoardList">竞彩篮球过关</a></div>
                    <div>
                        <a href="Jclcdg.aspx" target="BoardList">竞彩篮球单关</a></div>
                </div>
            </div>
            <div class="menuItem">
                <div class="head">
                    消息管理</div>
                <div class="content">
                    <div>
                        <a href="OptionEmail.aspx" target="BoardList">邮件参数设置</a></div>
                    <div>
                        <a href="OptionISP.aspx" target="BoardList">ISP参数设置</a></div>
                    <div>
                        <a href="NotificationTemplates.aspx" target="BoardList">各种消息模板</a></div>
                    <div>
                        <a href="NotificationOptions.aspx" target="BoardList">发送消息选项</a></div>
                    <div>
                        <a href="SendEmail.aspx" target="BoardList">发送 Email</a></div>
                    <div>
                        <a href="SendStationSMS.aspx" target="BoardList">发送站内信</a></div>
                    <div>
                        <a href="SendSMS.aspx" target="BoardList">发送手机短信</a></div>
                    <div>
                        <a href="ReceiveSMS.aspx" target="BoardList">接收手机短信</a></div>
                    <div>
                        <a href="SendSMSList.aspx" target="BoardList">已发送手机短信</a></div>
                    <div>
                        <a href="ISPAccount.aspx" target="BoardList">ISP 账户信息</a></div>
                    <div>
                        <a href="StationSMSList.aspx" target="BoardList">站内信内容监控</a></div>
                </div>
            </div>
            <div class="menuItem">
                <div class="head">
                    服务支持中心</div>
                <div class="content">
                    <div>
                        <a href="Questions.aspx" target="BoardList">处理用户反馈问题</a></div>
                    <div>
                        <a href="UserDistill.aspx" target="BoardList">处理用户提款申请</a></div>
                    <div>
                        <a href="ProcessingMoney.aspx" target="BoardList">处理用户充值问题</a></div>
                </div>
            </div>
            <div class="menuItem">
                <div class="head">
                    财务中心</div>
                <div class="content">
                    <div>
                        <a href="FinanceAddMoney.aspx" target="BoardList">用户充值明细表</a></div>
                    <div>
                        <a href="FinanceWin.aspx" target="BoardList">用户中奖明细表</a></div>
                    <div>
                        <a href="FinanceDistill.aspx" target="BoardList">用户提款明细表</a></div>
                    <div>
                        <a href="UserDistillWaitPay.aspx" target="BoardList">待付款用户一览表</a></div>
                    <div>
                        <a href="UserDistillProcessing.aspx" target="BoardList">支付宝处理中提款</a></div>
                    <div>
                        <a href="UserDistillUnsuccess.aspx" target="BoardList">支付宝失败一览表</a></div>
                    <div>
                        <a href="UserDistillSuccess.aspx" target="BoardList">提款用户一览表</a></div>
                    <div>
                        <a href="UserDistillGeneralLedger.aspx" target="BoardList">提款对帐单</a></div>
                    <div>
                        <a href="FinanceBalance.aspx" target="BoardList">公司收支汇总表</a></div>
                    <div>
                        <a href="CardPasswordAdd.aspx" target="BoardList">增加卡密</a></div>
                    <div>
                        <a href="CardPasswordManage.aspx" target="BoardList">卡密管理</a></div>
                </div>
            </div>
            <div class="menuItem">
                <div class="head">
                    系统管理</div>
                <div class="content">
                    <div>
                        <a href="SoftKey.aspx" target="BoardList">软件序列号</a></div>
                    <div>
                        <a href="Site.aspx" target="BoardList">站点资料</a></div>
                    <div>
                        <a href="Options.aspx" target="BoardList">系统参数设置</a></div>
                    <div>
                        <a href="Competence.aspx" target="BoardList">权限管理</a></div>
                    <div>
                        <a href="LotteryGateway.aspx" target="BoardList">电子票接口设置</a></div>
                    <div>
                        <a href="OnlinePayGateway.aspx" target="BoardList">在线支付参数设置</a></div>
                </div>
            </div>
        </div>
    </div>
    </form>
</body>
</html>
