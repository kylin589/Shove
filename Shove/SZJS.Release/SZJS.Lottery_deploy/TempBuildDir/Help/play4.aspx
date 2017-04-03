<%@ page language="C#" autoeventwireup="true" inherits="Help_play4, App_Web_85hasknr" enableEventValidation="false" %>

<%@ Register Src="../UserControls/Head.ascx" TagName="Head" TagPrefix="uc1" %>
<%@ Register Src="../Home/Room/UserControls/WebFoot.ascx" TagName="WebFoot" TagPrefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD Xhtml 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>15选5玩法规则</title>
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
                    <li><a style="color: #f00; font-weight: bold;" href="play.aspx">彩种玩法</a></li>
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
                            <span>15选5玩法规则</span></h1>
                    </div>
                </div>
            </div>
            <div class="index_content">
                <div class="f12">
                    <p>
                        <span style="font-weight: bold;">一、发行周期和开奖时间 </span>
                        <br />
                        15选5每日发行1期，当日18:27截止销售，官方开奖时间为19:45。<br />
                        <br />
                        <span style="font-weight: bold;">二、怎么玩 </span>
                    </p>
                    <p>
                        15选5的投注方式为从01~15中选择5个数字作为投注号码，竞猜每期开出的5个数字中奖号码：</p>
                    <table width="100%" border="0" cellpadding="0" class="table">
                        <tr>
                            <td width="84" align="center" valign="center" bgcolor="#eaeaea" style="height: 25px">
                                <p>
                                    奖级
                                </p>
                            </td>
                            <td align="center" valign="center" bgcolor="#eaeaea" style="width: 108px; height: 25px">
                                <p>
                                    中奖条件
                                </p>
                            </td>
                            <td width="189" align="center" valign="center" bgcolor="#eaeaea" style="height: 25px">
                                <p>
                                    中奖说明
                                </p>
                            </td>
                            <td width="193" align="center" valign="center" bgcolor="#eaeaea" style="height: 25px">
                                <p>
                                    单注奖金
                                </p>
                            </td>
                        </tr>
                        <tr>
                            <td width="84" height="25" align="center" valign="center" bgcolor="#FAFAFA">
                                <p>
                                    特别奖
                                </p>
                            </td>
                            <td align="center" valign="center" bgcolor="#FAFAFA" class="red14" style="width: 108px">
                                <p>
                                    &#9679;&#9679;&#9679;&#9679;&#9679;
                                </p>
                            </td>
                            <td width="189" valign="center" bgcolor="#FAFAFA" style="padding-left: 10px;">
                                <p>
                                    5个数字全中，且至少包含4个连续自然数号码。
                                </p>
                            </td>
                            <td width="193" valign="center" bgcolor="#FAFAFA" style="padding-left: 10px;">
                                <p>
                                    高等奖奖金的10%与奖池奖金之和除以中奖注数。
                                </p>
                            </td>
                        </tr>
                        <tr>
                            <td width="84" align="center" valign="center" bgcolor="#FAFAFA" style="height: 25px">
                                <p>
                                    一等奖
                                </p>
                            </td>
                            <td align="center" valign="center" bgcolor="#FAFAFA" class="red14" style="height: 25px;
                                width: 108px;">
                                <p>
                                    &#9679;&#9679;&#9679;&#9679;&#9679;
                                </p>
                            </td>
                            <td width="189" valign="center" bgcolor="#FAFAFA" style="padding-left: 10px; height: 25px;">
                                <p>
                                    5个数字全中，顺序不限。
                                </p>
                            </td>
                            <td width="193" valign="center" bgcolor="#FAFAFA" style="padding-left: 10px; height: 25px;">
                                <p>
                                    高等奖奖金的90%除以中奖注数。
                                </p>
                            </td>
                        </tr>
                        <tr>
                            <td width="84" height="25" align="center" valign="center" bgcolor="#FAFAFA">
                                <p>
                                    二等奖
                                </p>
                            </td>
                            <td align="center" valign="center" bgcolor="#FAFAFA" class="red14" style="width: 108px">
                                <p>
                                    &#9679;&#9679;&#9679;&#9679;
                                </p>
                            </td>
                            <td width="189" valign="center" bgcolor="#FAFAFA" style="padding-left: 10px;">
                                <p>
                                    任意中4个数字。
                                </p>
                            </td>
                            <td width="193" valign="center" bgcolor="#FAFAFA" style="padding-left: 10px;">
                                <p>
                                    10元。
                                </p>
                            </td>
                        </tr>
                    </table>
                    <br />
                    <p style="font-weight: bold;">
                        三、术语解释
                    </p>
                    <p>
                        高等奖奖金：每期投注总额的49%为当期奖金，高等奖奖金=当期奖金-当期二等奖奖金总和
                    </p>
                    <p>
                        奖池：高等奖奖金的90%用以平分给当期所有中一等奖的彩民，10%累积进入奖池，奖池奖金用于开出特别奖号码时派奖
                    </p>
                    <br />
                    <p style="font-weight: bold;">
                        &nbsp;四、奖金概念和基本计算方式
                    </p>
                    <p>
                        15选5设奖为特别奖、一等奖、二等奖，奖金的算法比较特别。二等奖奖金固定10元，一等奖奖金受销量和中奖注数影响浮动，特别奖满足&#8220;开出号码包括四个连续数字&#8221;的条件会进行派发。
                    </p>
                    <p>
                        15选5的奖金计算中，涉及&#8220;当期销量&#8221;、&#8220;中奖注数&#8221;、&#8220;高等奖奖金&#8221;、&#8220;奖池&#8221;等概念：
                    </p>
                    <p>
                        当期销量：即当期销售的投注总额，其中的49%为当期奖金。
                    </p>
                    <p>
                        中奖注数：即一等奖和二等奖的中奖注数，影响一等奖和特别奖的奖金分配（一等奖和特别奖&#8220;兼中兼得&#8221;，中特别奖的彩民必定中一等奖）。
                    </p>
                    <p>
                        高等奖奖金：当期奖金扣除二等奖奖金后剩下的金额。高等奖奖金的90%为一等奖奖金，由中奖者平分。
                    </p>
                    <p>
                        奖池：用于派发特别奖，如果当期号码没有开出特别奖，则当期高等奖奖金的10%将累积进入奖池，直到开出特别奖、中奖者平分奖池金额为止。</p>
                    <p style="font-weight: bold;">
                        五、举例说明奖金分配
                    </p>
                    <p class="red">
                        1、特别奖号码开出的情况（即开奖号码包括四个连续数字）
                    </p>
                    <p>
                        假设：开奖号码为&nbsp;02&nbsp;03&nbsp;04&nbsp;05&nbsp;13，当期销量5000000元，一等奖中奖注数300，二等奖中奖注数10000，开奖前奖池金额3000000元：<br />
                    </p>
                    <table width="100%" border="0" cellpadding="0" class="table">
                        <tr>
                            <td width="65" height="25" align="center" valign="center" bgcolor="#eaeaea">
                                <p>
                                    奖项
                                </p>
                            </td>
                            <td width="96" align="center" valign="center" bgcolor="#eaeaea">
                                <p>
                                    到手
                                </p>
                            </td>
                            <td width="90" align="center" valign="center" bgcolor="#eaeaea">
                                <p>
                                    奖金
                                </p>
                            </td>
                            <td width="109" align="center" valign="center" bgcolor="#eaeaea">
                                <p>
                                    投注号码
                                </p>
                            </td>
                            <td width="130" align="center" valign="center" bgcolor="#eaeaea">
                                <p>
                                    中奖注数
                                </p>
                            </td>
                            <td width="83" align="center" valign="center" bgcolor="#eaeaea">
                                <p>
                                    开奖后奖池
                                </p>
                            </td>
                        </tr>
                        <tr>
                            <td width="65" height="25" align="center" valign="center" bgcolor="#FAFAFA">
                                <p>
                                    特别奖
                                </p>
                            </td>
                            <td width="96" rowspan="2" align="center" valign="center" bgcolor="#FAFAFA">
                                <p>
                                    18167元
                                </p>
                            </td>
                            <td width="90" align="center" valign="center" bgcolor="#FAFAFA">
                                <p>
                                    10817元
                                </p>
                            </td>
                            <td width="109" rowspan="2" align="center" valign="center" bgcolor="#FAFAFA">
                                <p>
                                    02&nbsp;03&nbsp;04&nbsp;05&nbsp;13
                                </p>
                            </td>
                            <td width="130" rowspan="2" align="center" valign="center" bgcolor="#FAFAFA">
                                <p>
                                    300
                                </p>
                            </td>
                            <td width="83" rowspan="3" align="center" valign="center" bgcolor="#FAFAFA">
                                <p>
                                    0元
                                </p>
                            </td>
                        </tr>
                        <tr>
                            <td width="65" height="25" align="center" valign="center" bgcolor="#FAFAFA">
                                <p>
                                    一等奖
                                </p>
                            </td>
                            <td width="90" align="center" valign="center" bgcolor="#FAFAFA">
                                <p>
                                    7350元
                                </p>
                            </td>
                        </tr>
                        <tr>
                            <td width="65" height="25" align="center" valign="center" bgcolor="#FAFAFA">
                                <p>
                                    二等奖
                                </p>
                            </td>
                            <td width="96" align="center" valign="center" bgcolor="#FAFAFA">
                                <p>
                                    10元
                                </p>
                            </td>
                            <td width="90" align="center" valign="center" bgcolor="#FAFAFA">
                                <p>
                                    10元
                                </p>
                            </td>
                            <td width="109" align="center" valign="center" bgcolor="#FAFAFA">
                                <p>
                                    02&nbsp;04&nbsp;05&nbsp;13&nbsp;14
                                </p>
                            </td>
                            <td width="130" align="center" valign="center" bgcolor="#FAFAFA">
                                <p>
                                    10000
                                </p>
                            </td>
                        </tr>
                    </table>
                    <p>
                        一等奖奖金：5000000*49%*90%/300=7350
                    </p>
                    <p>
                        特别奖奖金：(3000000+5000000*49%*10%)/300=10817
                    </p>
                    <p>
                        （一等奖和特别奖&#8220;兼中兼得&#8221;，中特别奖的彩民必定中一等奖）
                    </p>
                    <p class="red">
                        2、没有开出特别奖号码的情况
                    </p>
                    <p>
                        假设：开奖号码为&nbsp;02&nbsp;04&nbsp;06&nbsp;08&nbsp;14，当期销量5000000元，一等奖中奖注数300，二等奖中奖注数10000，开奖前奖池金额3000000元：</p>
                    <table width="100%" border="0" cellpadding="0" class="table">
                        <tr>
                            <td width="65" height="25" align="center" valign="center" bgcolor="#eaeaea">
                                <p>
                                    奖项
                                </p>
                            </td>
                            <td width="96" align="center" valign="center" bgcolor="#eaeaea">
                                <p>
                                    到手
                                </p>
                            </td>
                            <td width="90" align="center" valign="center" bgcolor="#eaeaea">
                                <p>
                                    奖金
                                </p>
                            </td>
                            <td width="109" align="center" valign="center" bgcolor="#eaeaea">
                                <p>
                                    投注号码
                                </p>
                            </td>
                            <td width="130" align="center" valign="center" bgcolor="#eaeaea">
                                <p>
                                    中奖注数
                                </p>
                            </td>
                            <td width="83" align="center" valign="center" bgcolor="#eaeaea">
                                <p>
                                    开奖后奖池
                                </p>
                            </td>
                        </tr>
                        <tr>
                            <td width="65" height="25" align="center" valign="center" bgcolor="#FAFAFA">
                                <p>
                                    一等奖
                                </p>
                            </td>
                            <td width="96" align="center" valign="center" bgcolor="#FAFAFA">
                                <p>
                                    7350元
                                </p>
                            </td>
                            <td width="90" align="center" valign="center" bgcolor="#FAFAFA">
                                <p>
                                    7350元
                                </p>
                            </td>
                            <td width="109" align="center" valign="center" bgcolor="#FAFAFA">
                                <p>
                                    02&nbsp;04&nbsp;06&nbsp;08&nbsp;14
                                </p>
                            </td>
                            <td width="130" align="center" valign="center" bgcolor="#FAFAFA">
                                <p>
                                    300
                                </p>
                            </td>
                            <td width="83" rowspan="2" align="center" valign="center" bgcolor="#FAFAFA">
                                <p>
                                    3245000元
                                </p>
                            </td>
                        </tr>
                        <tr>
                            <td width="65" height="25" align="center" valign="center" bgcolor="#FAFAFA">
                                <p>
                                    二等奖
                                </p>
                            </td>
                            <td width="96" align="center" valign="center" bgcolor="#FAFAFA">
                                <p>
                                    10元
                                </p>
                            </td>
                            <td width="90" align="center" valign="center" bgcolor="#FAFAFA">
                                <p>
                                    10元
                                </p>
                            </td>
                            <td width="109" align="center" valign="center" bgcolor="#FAFAFA">
                                <p>
                                    02&nbsp;04&nbsp;06&nbsp;12&nbsp;14
                                </p>
                            </td>
                            <td width="130" align="center" valign="center" bgcolor="#FAFAFA">
                                <p>
                                    10000
                                </p>
                            </td>
                        </tr>
                    </table>
                    <p>
                        一等奖奖金：5000000*49%*90%/300=7350
                    </p>
                    <p>
                        奖池金额：3000000+5000000*49%*10%=3245000
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
