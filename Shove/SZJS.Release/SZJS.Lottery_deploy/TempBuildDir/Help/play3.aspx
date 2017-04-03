﻿<%@ page language="C#" autoeventwireup="true" inherits="Help_play3, App_Web_85hasknr" enableEventValidation="false" %>

<%@ Register Src="../UserControls/Head.ascx" TagName="Head" TagPrefix="uc1" %>
<%@ Register Src="../Home/Room/UserControls/WebFoot.ascx" TagName="WebFoot" TagPrefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD Xhtml 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>七乐彩玩法规则</title>
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
                            <span>七乐彩玩法规则</span></h1>
                    </div>
                </div>
            </div>
            <div class="index_content">
                <div class="f12">
                    <strong>第一章 总 则</strong>
                    <p>
                        本规则依据《彩票发行与销售管理暂行规定》（财综[2002]13号）等制度制定。</p>
                    <p>
                        全国联合销售30选7电脑福利彩票（以下称"七乐彩"）由中国福利彩票发行管理中心（以下称"中福彩中心"）统一组织发行，由各省、自治区、直辖市福利彩票发行中心（以下称"省中心"）在本行政区域内联合销售。</p>
                    <p>
                        七乐彩采用计算机网络系统销售，采取参加联合销售的各省中心合并奖池，统一计奖，统一开奖。</p>
                    <p>
                        七乐彩实行自愿购买，凡购买者均被视为同意并遵守本规则。</p>
                    <p>
                        不得向未成年人销售彩票或兑付奖金。</p>
                    <strong>第二章 投 注</strong>
                    <p>
                        七乐彩采用组合式玩法，从01—30共30个号码中选择7个号码组合为一注投注号码。每注金额人民币2元。</p>
                    <p>
                        七乐彩每周销售三期，期号以开奖日界定，按日历年度编排。</p>
                    <p>
                        七乐彩投注方法分为自选号码投注和机选号码投注，投注方式分为单式投注、复式投注、胆拖投注和多倍投注。</p>
                    <p>
                        自选号码投注是指由投注者自行选定投注号码的投注；机选号码投注是指由投注机为投注者随机产生投注号码的投注。</p>
                    <p>
                        单式投注是从30个号码中选择7个号码，组合为一注投注号码的投注；复式投注是从30个号码中选择8－16个号码，将每7个号码的组合方式都作为一注投注号码的多注投注；胆拖投注是在30个号码中选择1至6个号码作为每注都有的胆码，再补充其它不同的号码，进行每7个号码为一组的多注投注；多倍投注是指同样的投注号码进行多注投注。</p>
                    <strong>第三章 设 奖</strong>
                    <p>
                        七乐彩设奖奖金为销售总额的50%，其中当期奖金为销售总额的49%，调节基金为销售总额的1%。</p>
                    <p>
                        七乐彩当期奖金设七个奖等，一至三等奖为高奖等，四至七等奖为低奖等。高奖等采用浮动设奖，低奖等采用固定设奖。当期奖金减去当期低奖等奖金为当期高奖等奖金，具体设奖如下：</p>
                    <table class="table" width="100%" border="0" cellpadding="0">
                        <thead>
                            <tr>
                                <td width="52" rowspan="2" align="center" valign="center" bgcolor="#eaeaea">
                                    <p>
                                        奖&nbsp;级</p>
                                </td>
                                <td width="190" colspan="2" align="center" valign="center" bgcolor="#eaeaea">
                                    <p>
                                        中奖条件
                                    </p>
                                </td>
                                <td width="207" rowspan="2" align="center" valign="center" bgcolor="#eaeaea">
                                    <p>
                                        奖金分配
                                    </p>
                                </td>
                                <td width="111" rowspan="2" align="center" valign="center" bgcolor="#eaeaea">
                                    <p>
                                        说明
                                    </p>
                                </td>
                            </tr>
                            <tr>
                                <td width="101" align="center" valign="center" bgcolor="#eaeaea">
                                    <p>
                                        基本号码
                                    </p>
                                </td>
                                <td width="89" align="center" valign="center" bgcolor="#eaeaea">
                                    <p>
                                        特别号码
                                    </p>
                                </td>
                            </tr>
                        </thead>
                        <tr>
                            <td width="52" height="25" align="center" valign="center" bgcolor="#FAFAFA">
                                <p>
                                    一等奖
                                </p>
                            </td>
                            <td width="101" align="center" valign="center" bgcolor="#FAFAFA" class="red14">
                                <p style="color: #f00;">
                                    &#9679;&#9679;&#9679;&#9679;&#9679;&#9679;&#9679;
                                </p>
                            </td>
                            <td width="89" valign="center" bgcolor="#FAFAFA" class="blue14">
                                <p>
                                    &nbsp;
                                </p>
                            </td>
                            <td width="207" align="center" valign="center" bgcolor="#FAFAFA">
                                <p>
                                    奖金总额为当期高奖等奖金的70%
                                </p>
                            </td>
                            <td width="111" align="center" valign="center" bgcolor="#FAFAFA">
                                <p>
                                    选中7+0
                                </p>
                            </td>
                        </tr>
                        <tr>
                            <td width="52" align="center" valign="center" bgcolor="#FAFAFA" style="height: 25px">
                                <p>
                                    二等奖
                                </p>
                            </td>
                            <td width="101" align="center" valign="center" bgcolor="#FAFAFA" class="red14" style="height: 25px">
                                <p style="color: #f00;">
                                    &#9679;&#9679;&#9679;&#9679;&#9679;&#9679;
                                </p>
                            </td>
                            <td width="89" align="center" valign="center" bgcolor="#FAFAFA" class="blue14" style="height: 25px">
                                <p>
                                    &#160;&#9679;
                                </p>
                            </td>
                            <td width="207" align="center" valign="center" bgcolor="#FAFAFA" style="height: 25px">
                                <p>
                                    奖金总额为当期高奖等奖金的10%
                                </p>
                            </td>
                            <td width="111" align="center" valign="center" bgcolor="#FAFAFA" style="height: 25px">
                                <p>
                                    选中6+1
                                </p>
                            </td>
                        </tr>
                        <tr>
                            <td width="52" height="25" align="center" valign="center" bgcolor="#FAFAFA">
                                <p>
                                    三等奖
                                </p>
                            </td>
                            <td width="101" align="center" valign="center" bgcolor="#FAFAFA" class="red14">
                                <p style="color: #f00;">
                                    &#9679;&#9679;&#9679;&#9679;&#9679;&#9679;
                                </p>
                            </td>
                            <td width="89" align="center" valign="center" bgcolor="#FAFAFA" class="blue14">
                                <p>
                                    &nbsp;
                                </p>
                            </td>
                            <td width="207" align="center" valign="center" bgcolor="#FAFAFA">
                                <p>
                                    奖金总额为当期高奖等奖金的20%
                                </p>
                            </td>
                            <td width="111" align="center" valign="center" bgcolor="#FAFAFA">
                                <p>
                                    选6+0
                                </p>
                            </td>
                        </tr>
                        <tr>
                            <td width="52" height="25" align="center" valign="center" bgcolor="#FAFAFA">
                                <p>
                                    四等奖
                                </p>
                            </td>
                            <td width="101" align="center" valign="center" bgcolor="#FAFAFA" class="red14">
                                <p style="color: #f00;">
                                    &#9679;&#9679;&#9679;&#9679;&#9679;
                                </p>
                                <p>
                                    &nbsp;
                                </p>
                            </td>
                            <td width="89" align="center" valign="center" bgcolor="#FAFAFA" class="blue14">
                                <p>
                                    &#9679;</p>
                                <p>
                                </p>
                            </td>
                            <td width="207" align="center" valign="center" bgcolor="#FAFAFA">
                                <p>
                                    单注奖金额固定为200元
                                </p>
                            </td>
                            <td width="111" align="center" valign="center" bgcolor="#FAFAFA">
                                <p>
                                    选中5+1
                                </p>
                            </td>
                        </tr>
                        <tr>
                            <td width="52" height="25" align="center" valign="center" bgcolor="#FAFAFA">
                                <p>
                                    五等奖
                                </p>
                            </td>
                            <td width="101" align="center" valign="center" bgcolor="#FAFAFA" class="red14">
                                <p style="color: #f00;">
                                    &#9679;&#9679;&#9679;&#9679;&#9679;
                                </p>
                            </td>
                            <td width="89" align="center" valign="center" bgcolor="#FAFAFA" class="blue14">
                                <p>
                                    &#160;
                                </p>
                            </td>
                            <td width="207" align="center" valign="center" bgcolor="#FAFAFA">
                                <p>
                                    单注奖金额固定为50元
                                </p>
                            </td>
                            <td width="111" align="center" valign="center" bgcolor="#FAFAFA">
                                <p>
                                    选中5+0
                                </p>
                            </td>
                        </tr>
                        <tr>
                            <td width="52" height="25" align="center" valign="center" bgcolor="#FAFAFA">
                                <p>
                                    六等奖
                                </p>
                            </td>
                            <td width="101" align="center" valign="center" bgcolor="#FAFAFA" class="red14">
                                <p>
                                </p>
                                <p style="color: #f00;">
                                    &#9679;&#9679;&#9679;&#9679;
                                </p>
                                <p>
                                </p>
                            </td>
                            <td width="89" align="center" valign="center" bgcolor="#FAFAFA" class="blue14">
                                <p>
                                </p>
                                <p>
                                </p>
                                <p>
                                    &#9679;</p>
                            </td>
                            <td width="207" align="center" valign="center" bgcolor="#FAFAFA">
                                <p>
                                    单注奖金额固定为10元
                                </p>
                            </td>
                            <td width="111" align="center" valign="center" bgcolor="#FAFAFA">
                                <p>
                                    选中4+1
                                </p>
                            </td>
                        </tr>
                        <tr>
                            <td width="52" height="25" align="center" valign="top" bgcolor="#FAFAFA">
                                <p>
                                    七等奖
                                </p>
                            </td>
                            <td width="101" align="center" valign="top" bgcolor="#FAFAFA" class="red14">
                                <p style="color: #f00;">
                                    &#9679;&#9679;&#9679;&#9679;
                                </p>
                            </td>
                            <td width="89" align="center" valign="top" bgcolor="#FAFAFA" class="blue14">
                                <p>
                                </p>
                            </td>
                            <td width="207" align="center" valign="top" bgcolor="#FAFAFA">
                                <p>
                                    单注奖金额固定为5元
                                </p>
                            </td>
                            <td width="111" align="center" valign="top" bgcolor="#FAFAFA">
                                <p>
                                    选中4＋0
                                </p>
                            </td>
                        </tr>
                    </table>
                    <p>
                        七乐彩单注奖金的最高限额为500万元。</p>
                    <p>
                        七乐彩设立奖池，奖池由未中出的高奖等奖金和超出单注奖金封顶限额部分的奖金组成。奖池与当期奖金中用于一等奖的部分合并颁发一等奖奖金。</p>
                    <p>
                        调节基金包括按销售总额1%提取部分、弃奖奖金、浮动奖奖金按元取整后的余额。调节基金用于设置特别奖、调节浮动奖奖金、支付各种不可预见情况下的奖金支出风险。</p>
                    <p>
                        若当期高奖等单注奖额低于其次奖等单注奖额的二倍，应保证高奖等的单注奖额为其次奖等单注奖额的二倍，资金来源由调节基金补足，调节基金不足时由发行经费垫支。</p>
                    <strong>第四章 开 奖</strong>
                    <p>
                        七乐彩由中福彩中心统一开奖，每周一、三、五开奖。摇奖过程在公证人员监督下进行，通过公众媒体发布开奖公告。</p>
                    <p>
                        各省中心将当期投注的全部数据刻入不可改写的光盘，中福彩中心对各省中心的数据进行汇总。开奖后，以光盘记录的当期数据作为开奖检索的依据。</p>
                    <p>
                        七乐彩通过摇奖器确定开奖号码。摇奖时先摇出7个号码作为基本号码，再摇出1个号码作为特别号码。</p>
                    <p>
                        开奖公告在各地主要媒体公布，并在各投注站点张贴。</p>
                    <p>
                        七乐彩的开奖结果以中福彩中心公布的开奖公告为准。</p>
                    <strong>第五章 中 奖</strong>
                    <p>
                        七乐彩以投注者所选投注号码与当期开奖号码相同个数的多少确定中奖等级，具体中奖设定如下：</p>
                    <p>
                        一等奖：投注号码与当期开奖号码中7个基本号码完全相同（顺序不限，下同）；</p>
                    <p>
                        二等奖：投注号码与当期开奖号码中任意6个基本号码及特别号码相同；</p>
                    <p>
                        三等奖：投注号码与当期开奖号码中任意6个基本号码相同；</p>
                    <p>
                        四等奖：投注号码与当期开奖号码中任意5个基本号码及特别号码相同；</p>
                    <p>
                        五等奖：投注号码与当期开奖号码中任意5个基本号码相同；</p>
                    <p>
                        六等奖：投注号码与当期开奖号码中任意4个基本号码及特别号码相同；</p>
                    <p>
                        七等奖：投注号码与开奖号码中任意4个基本号码相同。</p>
                    <p>
                        高奖等中奖者按各奖等的中奖注数均分该奖等奖金，并以元为单位取整计算；低奖等中奖者按各奖等的单注固定奖额获得奖金。</p>
                    <p>
                        当期每注投注号码只有一次中奖机会，不能兼中兼得（另行设奖按设奖规定执行）。</p>
                    <strong>第六章 兑 奖</strong>
                    <p>
                        七乐彩兑奖当期有效。每期开奖次日起，兑奖期限为60天，逾期未兑奖者视为弃奖，弃奖奖金进入调节基金。</p>
                    <p>
                        中奖人兑奖时须提交完整的兑奖彩票。中奖彩票因受损导致无法辨认真伪的，不予兑奖。</p>
                    <p>
                        各省具体兑奖规定按各省中心的兑奖规定执行。</p>
                    <p>
                        单注彩票中奖金额超过一万元者，须缴纳个人所得税，所得税由兑奖机构代扣代缴。</p>
                    <strong>第七章 附 则</strong>
                    <p>
                        本规则自批准之日起施行。</p>
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
