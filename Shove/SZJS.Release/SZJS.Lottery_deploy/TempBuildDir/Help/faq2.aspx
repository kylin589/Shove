<%@ page language="C#" autoeventwireup="true" inherits="Help_faq2, App_Web_85hasknr" enableEventValidation="false" %>

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
                        我从来没买过彩票，这些彩种都怎么玩？
                    </h1>
                    <p>
                        <strong>双色球：</strong>
                    </p>
                    <p>
                        每注投注号码由6个红色球号码和1个蓝色球号码组成。红色球号码从1—33中选择；蓝色球号码从1—16中选择。</p>
                    <p>
                        每注2元。每周二、四、日21：30开奖。一注最高可中得千万大奖。</p>
                    <p>
                        <a href="play1.aspx">双色球玩法介绍</a>
                    </p>
                    <p>
                        <strong></strong>&nbsp;</p>
                    <p>
                        <strong>3D：</strong>
                    </p>
                    <p>
                        从000到999的范围内选择一个3位数进行投注。</p>
                    <p>
                        每注2元。每日20:30开奖。一注最高可中得千元奖金。</p>
                    <p>
                        <a href="play2.aspx">3D玩法介绍</a>
                    </p>
                    <p>
                        <strong></strong>&nbsp;</p>
                    <p>
                        <strong>超级大乐透：</strong>
                    </p>
                    <p>
                        每注投注号码由5个前区号码和2个后区号码组成。前区号码从1—35中选择；后区号码从1—12中选择。</p>
                    <p>
                        每注2元，可追加投注，每注追加金额1元，形成3元1注的追加票。每周一、三、六20：30开奖。3元追加投注最高可中得1600万大奖。</p>
                    <p>
                        <a href="play7.aspx">大乐透玩法介绍</a>
                    </p>
                    <p>
                        <strong></strong>&nbsp;</p>
                    <p>
                        <strong>七星彩：</strong>
                    </p>
                    <p>
                        从0000000到9999999选择任意七位数进行投注。</p>
                    <p>
                        每注2元，每周二、五、日20:30开奖，一注最高可中得五百万大奖。</p>
                    <p>
                        <a href="play6.aspx">七星彩玩法介绍</a>
                    </p>
                    <p>
                        <strong></strong>&nbsp;</p>
                    <p>
                        <strong>七乐彩：</strong>
                    </p>
                    <p>
                        每注投注号码由01~30，30个号码中选择7个号码组成。</p>
                    <p>
                        每注2元，每周一、三、五 20:45开奖。一注最高可中得五百万大奖。</p>
                    <p>
                        <a href="play3.aspx">七乐彩玩法介绍</a>
                    </p>
                    <p>
                        <strong></strong>&nbsp;</p>
                    <p>
                        <strong>排列三：</strong>
                    </p>
                    <p>
                        从000到999的范围内选择一个3位数进行投注。</p>
                    <p>
                        每注2元。每日20:30开奖。一注最高可中得千元奖金。</p>
                    <p>
                        <a href="play9.aspx">排列三玩法介绍</a>
                    </p>
                    <p>
                        <strong></strong>&nbsp;</p>
                    <p>
                        <strong>排列五：</strong>
                    </p>
                    <p>
                        从00000到99999选择任意五位数进行投注。</p>
                    <p>
                        每注2元。每日20:30开奖。一注最高可中得十万元奖金。</p>
                    <p>
                        <a href="play10.aspx">排列五玩法介绍</a>
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
