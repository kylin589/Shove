<%@ page language="C#" autoeventwireup="true" inherits="Help_faq1, App_Web_85hasknr" enableEventValidation="false" %>

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
                        付款遇到问题怎么办</h1>
                    <p style="font-size: 12px;">
                        （1）当您点击确认充值后，请不要关闭新打开的页面，否则充值将无法完成。<br />
                        （2）由于您的支付信息银行没有及时传输给我们，导致银行卡已经扣款成功，但彩票没有购买成功，我们感到非常抱歉。不过请放心，我们会在第二个工作日和银行对账，确认您的扣款成功后，在能完成投注的情况下，立刻帮您完成支付，否则相应款项会直接充值到您的支付宝账户。<br />
                        （3）打开支付页面，提示“该页无法显示”或空白页，可能是什么原因？<br />
                        A. 没有升级IE浏览器，导致加密级别过低，无法进入银行系统。<br />
                        B．上网环境或上网方式受限，可能是网络服务商限制，建议更换一种上网方式。<br />
                        C．尝试刷新页面；如果刷新不能解决问题，可能由于浏览器缓存设置的原因，请在IE菜单->工具->Internet选项->点击“删除cookies”和“删除文件”，用以清除临时文件。<br />
                        （4）银行页面打不开的解决方法？<br />
                        A. 没有升级IE浏览器，导致加密级别过低，无法进入银行系统。<br />
                        B. 如果是个人电脑，请关闭您的防火墙再试。<br />
                        C. 在IE浏览器“工具”菜单->Internet选项->高级->安全，在SSL2.0和SSL3.0的选项前打勾。<br />
                        D. 查看密钥长度是否支持128位(IE->帮助->关于Internet Explorer)，，如果低于128，请升级密钥包。<br />
                        E. 请您把银行网址在受信任的站点中添加进去，添加方法为：打开IE浏览器->工具->Internet选项->安全->受信任的站点->站点->添加支付宝和银行的网站，重启IE浏览器登录支付宝进行相关操作。<br />
                        （5）为什么交易付款不成功？<br />
                        A. 由于银行返回的通知信息比较晚，超过了此次交易的超时时间，交易已关闭，不过请放心，我们会在收到银行的通知后，将您此次付款的金额加到您的支付宝账户。<br />
                        B. 重复付款导致（交易状态已经是已付款状态），可能对同一笔交易重复付款，不过请放心，重复付款的金额会加到您的支付宝账户中。</p>
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
