<%@ page language="C#" autoeventwireup="true" inherits="Help_pj, App_Web_85hasknr" enableEventValidation="false" %>

<%@ Register Src="../UserControls/Head.ascx" TagName="Head" TagPrefix="uc1" %>
<%@ Register Src="../Home/Room/UserControls/WebFoot.ascx" TagName="WebFoot" TagPrefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD Xhtml 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>如何派奖</title>
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
                    <li><a style="color: #f00; font-weight: bold;" href="pj.aspx">如何派奖</a></li>
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
                            <span>如何派奖</span></h1>
                    </div>
                </div>
            </div>
            <div class="index_content">
                <div class="f12">
                    <p style="font-size: 12px;">
                        <span style="color: #f00; font-weight: bold;">派奖流程</span><br />
                        会员参与合买中奖后，本站将会代为办理领奖，财务核对无误之后进行派奖——将税后奖金按以下分配标准派发到合买会员的预付款中。<br />
                        <b>现行奖金分配标准：</b><br />
                        1. 网站不收取任何手续费及佣金，中奖后亦不提成。<br />
                        2. 代购（包括单式、复式）中奖后，税后奖金将全部派送到委托人的预付款中。<br />
                        3. 复式合买、接龙中奖后，税后奖金将按参与份额比例分配到该方案的各参与会员的预付款中。<br />
                        4. 单式合买中奖后：若方案不盈利，税后奖金将按参与份额比例分配到该方案的各参与会员的预付款中；若方案盈利，则发起人先提成税后奖金的4％作为方案制作佣金，余下奖金将按参与份额比例分配到该方案的各参与会员的预付款中。<br />
                        此流程需要一段时间，请会员耐心等候。<br />
                        <span style="color: #f00; font-weight: bold;">派奖时间 </span>
                        <br />
                        <b>各彩种派奖时间如下:</b><br />
                        1. 足彩（包括TOTO14、TOTO12、TOTO9、四场过关）：正常情况下，周一开奖、领奖，周二就能完全派发到会员的预付款中。<br />
                        2. 七星：七星彩正常情况下，周二、周日这两天开奖的奖金都会在第二天派发完毕，周五开奖的会在周日这天派发完毕。<br />
                        3. 排列玩法：正常情况下，周日～周四、周六开奖的奖金都会在第二天派发完毕；周五开奖的奖金将推迟到周日派发完毕。<br />
                        由于星期六为足彩胜负彩截止时间，出票任务紧张，为了确保能及时、准确地出票，星期六当天不进行派奖，所以星期五开奖的一切彩种的奖金均推迟到星期日派发，由此给您造成的不便，敬请谅解。
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
