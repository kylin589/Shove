<%@ page language="C#" autoeventwireup="true" inherits="Help_play20, App_Web_85hasknr" enableEventValidation="false" %>

<%@ Register Src="../UserControls/Head.ascx" TagName="Head" TagPrefix="uc1" %>
<%@ Register Src="../Home/Room/UserControls/WebFoot.ascx" TagName="WebFoot" TagPrefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD Xhtml 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>时时彩玩法规则</title>
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
                            <span>时时彩玩法规则</span></h1>
                    </div>
                </div>
            </div>
            <div class="index_content">
                <div class="f12">
                    <p><strong>开奖时间:</strong></p>
                    <p>开奖时间：全天24小时。&nbsp;&nbsp;开奖期数：共120期。</p>
                    <p>0:00 - 1:55 &nbsp;&nbsp;每5分钟开奖一次（共23期）。</p>
                    <p>1:55 - 10:00 &nbsp;只售一期，10:00开奖。</p>
                    <p>10:00 - 22:00 每10分钟开奖一次（共72期）。</p>
                    <p>22:00 - 24:00 每5分钟开奖一次（共24期）。</p>
                    <p>&nbsp;</p>
                    <p>&nbsp;</p>

                    <p>
                        <strong>五星通选：</strong></p>
                    <p>
                        从万、千、百、十、个位各选1个或多个号码，单注金额为2元。所选号码与开奖号码一一对应奖金为2万元。所选号码前三位或后三位与开奖一一对应，奖金为200元，前二位或者后二位与开奖一一对应，奖金为20元。</p>
                    <p>
                        例：</p>
                    <p>
                        开奖号码：<strong><font color="red">1 2 3 4 5</font></strong></p>
                    <p>
                        投注号码：<strong><font color="#1e50a2">1 2 3 4 5</font></strong></p>
                    <p>
                        五个号码全部命中，获得奖金20000元</p>
                    <p>
                        开奖号码：<strong><font color="red">1 2 3 4 5</font></strong></p>
                    <p>
                        投注号码：<strong><font color="#1e50a2">1 2 3</font></strong> 6 7（或6 7 <strong><font color="#1e50a2">
                            3 4 5</font></strong>）</p>
                    <p>
                        命中前三位或后三位号码，获得奖金200元</p>
                    <p>
                        开奖号码：<strong><font color="red">1 2 3 4 5</font></strong></p>
                    <p>
                        投注号码：<strong><font color="#1e50a2">1 2</font> </strong>5 6 7（或3 2 1 <strong><font
                            color="#1e50a2">4 5</font></strong>）</p>
                    <p>
                        命中前二位或后二位号码，获得奖金20元</p>
                    <p>
                        <strong></strong>
                    </p>
                    <p>
                        <strong></strong>&nbsp;</p>
                    <p>
                        <strong>五星复式：</strong></p>
                    <p>
                        从个、十、百、千、万位各选1个或多个号码，所选号码与开奖号码一一对应，即为中奖，2元一注，单注奖金10万元。</p>
                    <p>
                        例：</p>
                    <p>
                        开奖号码：<strong><font color="red">1 2 3 4 5</font></strong></p>
                    <p>
                        投注号码：<strong><font color="#1e50a2">1 2 3 4 5</font></strong></p>
                    <p>
                        五个号码全部命中，获得奖金100000元</p>
                    <p>
                        <strong></strong>
                    </p>
                    <p>
                        <strong></strong>&nbsp;</p>
                    <p>
                        <strong>三星复式：</strong></p>
                    <p>
                        竞猜开奖号码后三位，分别选择百位、十位和个位的1个或多个号码投注，奖金1000元。</p>
                    <p>
                        例：</p>
                    <p>
                        开奖号码：<strong><font color="red">1 2 3 4 5</font></strong></p>
                    <p>
                        投注号码：<strong><font color="#1e50a2">3 4 5</font></strong></p>
                    <p>
                        命中后三位号码，获得奖金1000元。</p>
                    <p>
                        <strong></strong>
                    </p>
                    <p>
                        <strong></strong>&nbsp;</p>
                    <p>
                        <strong>三星和值：</strong></p>
                    <p>
                        和值是复式投注的一种，根据购买者选定的和值计算出对应玩法下的数字组合方案，并以此进行复式投注。</p>
                    <p>
                        在三星和值投注中，和值的计算方式是取3位数的百位、十位、个位的三个数字进行相加，故和值的范围是0~27。</p>
                    <p>
                        如果通过和值生成选号中的号码全部猜中，奖金1000元 。</p>
                    <p>
                        <strong></strong>
                    </p>
                    <p>
                        <strong></strong>&nbsp;</p>
                    <p>
                        <strong>三星组三：</strong></p>
                    <p>
                        三星组三投注即从0~9中选择两个数字，指定其一为重复两次的数字，形成一注注彩票的投注。</p>
                    <p>
                        如果命中此有个数字重复的三位数，则获得奖金320元。</p>
                    <p>
                        <strong></strong>
                    </p>
                    <p>
                        <strong></strong>&nbsp;</p>
                    <p>
                        <strong>三星组六：</strong></p>
                    <p>
                        竞猜开奖号码后三位，选择3个或以上号码投注，如果开奖号码后三位的三个数字各不相同，且全部猜中奖金160元。</p>
                    <p>
                        <strong></strong>
                    </p>
                    <p>
                        <strong>二星复式：</strong></p>
                    <p>
                        竞猜开奖号码后两位，分别选择十位和个位的1个或多个号码投注，全部猜中奖金100元。</p>
                    <p>
                        例：</p>
                    <p>
                        开奖号码：<strong><font color="red">1 2 3 4 5</font></strong></p>
                    <p>
                        投注号码：<strong><font color="#1e50a2">4 5</font></strong></p>
                    <p>
                        命中后两位号码，获得奖金100元</p>
                    <p>
                        <strong></strong>
                    </p>
                    <p>
                        <strong></strong>&nbsp;</p>
                    <p>
                        <strong>二星和值：</strong></p>
                    <p>
                        在时时彩二星和值投注中，和值的计算方式是取后2位数的十位、个位的两个数字进行相加，故和值的范围是0~18。</p>
                    <p>
                        例：当选择和值“2”做为选号依据时，玩法中十位、个位之和为2的共有3组数字，分别为：</p>
                    <p>
                        02、20、11，同时形成三注彩票；</p>
                    <p>
                        当选择的和值数字为多个时，例如“1”和“2”，则将和值为“1”与“2”的组合进行同时投注，形成5注彩票。</p>
                    <p>
                        <strong></strong>
                    </p>
                    <p>
                        <strong></strong>&nbsp;</p>
                    <p>
                        <strong>二星组选：</strong></p>
                    <p>
                        二星组选从0-9中选2个或多个不同的号码对十位、个位投注，位置不限。投注号码与与当期开奖号码相同（位置不限）即中奖。单注投注金额2元，单注中奖金额为50元。</p>
                    <p>
                        例如：当投注号码“45”时，无论开奖号码后两位是“45”或“54”，都为中奖！</p>
                    <p>
                        <strong></strong>
                    </p>
                    <p>
                        <strong></strong>&nbsp;</p>
                    <p>
                        <strong>二星组选和值：</strong></p>
                    <p>
                        二星组选和值玩法是由二星直选和组选组合而成的复合玩法，它是根据中奖号码十位、个位数字加起来的总和值进行投注。</p>
                    <p>
                        例：当选择和值6进行投注时，实际投注注数为4注，分别为：</p>
                    <p>
                        二星直选：3、3（当中奖号码后两位为33时即中奖，中奖金额100元）</p>
                    <p>
                        二星组选：2、4（当中奖号码后两位为24或42时即中奖，中奖金额50元）</p>
                    <p>
                        二星组选：1、5（当中奖号码后两位为15或51时即中奖，中奖金额50元）</p>
                    <p>
                        二星组选：0、6（当中奖号码后两位为06或60时即中奖，中奖金额50元）</p>
                    <p>
                        <strong></strong>
                    </p>
                    <p>
                        <strong></strong>&nbsp;</p>
                    <p>
                        <strong>二星组选分位：</strong></p>
                    <p>
                        组选分位是指可以在十位或者个位上分别选1个以上（含1个）数字进行投注。若开出的奖号十位、个位数字分别包含在所投号码中（位置不限）即中奖。若十位和个位开出对子号，则中奖100元；若为两个不同号，则中奖50元。</p>
                    <p>
                        分位组选投注注数计算公式：十位所选数字个数×个位所选数字个数＝注数</p>
                    <p>
                        例如：十位选5、7、6，个位选4、6、9，注数计算：3×3＝9注。即组合为：54、56、59、74、76、79、64、66、69等九注号码。若当期开出二星中奖号码是“66”，即中奖100元；若当期开出二星中奖号码是为“46”则中奖50元</p>
                    <p>
                        注意：分位组选投注方式，组合注数超过25注没意义。当两个位置同时选相同号时，有相同的组选号码，选中可中多注组选奖。</p>
                    <p>
                        例如：十位选4.5.6，个位选4.5.6，组合为：44、45、46、54、55、56、64、65、66若开出“46”则有46、64两注中奖，每注奖金50元，共计100元。</p>
                    <p>
                        <strong></strong>
                    </p>
                    <p>
                        <strong></strong>&nbsp;</p>
                    <p>
                        <strong>一星复式：</strong></p>
                    <p>
                        竞猜开奖号码最后一位，选择1个或多个号码投注，猜中最后一位数字奖金10元。</p>
                    <p>
                        例：</p>
                    <p>
                        开奖号码：<strong><font color="red">1 2 3 4 5</font></strong></p>
                    <p>
                        投注号码：<strong><font color="#1e50a2">5</font></strong></p>
                    <p>
                        命中最后一位号码，获得奖金10元；</p>
                    <p>
                        <strong></strong>
                    </p>
                    <p>
                        <strong></strong>&nbsp;</p>
                    <p>
                        <strong>大小单双：</strong></p>
                    <p>
                        竞猜开奖号码后两位的大小单双，分别选择十位、个位投注，全部猜中则中奖，奖金4元。</p>
                    <p>
                        例：</p>
                    <p>
                        开奖号码：<font color="red"><strong>1 2 3 4 5</strong></font></p>
                    <p>
                        投注号码：<strong><font color="#1e50a2">双 单</font></strong> （<font color="#1e50a2"><strong>小
                            大、双 大、小 单</strong></font>）</p>
                    <p>
                        命中十位与个位的大小单双，即获奖金4元。</p>
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
