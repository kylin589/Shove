<%@ Page Language="C#" AutoEventWireup="true" CodeFile="play1.aspx.cs" Inherits="Help_play1" %>

<%@ Register Src="../UserControls/Head.ascx" TagName="Head" TagPrefix="uc1" %>
<%@ Register Src="../Home/Room/UserControls/WebFoot.ascx" TagName="WebFoot" TagPrefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD Xhtml 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>双色球玩法规则</title>
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
                            <span>双色球玩法规则</span></h1>
                    </div>
                </div>
            </div>
            <div class="index_content">
                <div class="f12">
                    <p>
                        <strong>第一章&nbsp; 总则</strong></p>
                    <p>
                        第一条&nbsp; 本规则依据财政部《彩票发行与销售管理暂行规定》和《中国福利彩票（电脑型）联合发行与销售管理暂行办法》（以下简称《管理办法》）制定。</p>
                    <p>
                        第二条&nbsp; 中国福利彩票“双色球”（以下简称“双色球”）是一种联合发行的“乐透型”福利彩票。采用计算机网络系统发行销售，定期电视开奖。</p>
                    <p>
                        第三条&nbsp; “双色球”由中国福利彩票发行管理中心（以下简称中彩中心）统一组织发行，在全国销售。</p>
                    <p>
                        第四条&nbsp; 参与“双色球”销售的省级福利彩票发行中心（以下简称省中心）在中福彩中心的直接领导下，负责对本地区的“双色球”销售活动实施具体的组织和管理。</p>
                    <p>
                        第五条&nbsp; “双色球”彩票实行自愿购买，凡购买者均被视为同意并遵守本规则。</p>
                    <p>
                        <strong></strong>&nbsp;</p>
                    <p>
                        <strong>第二章&nbsp; 游戏</strong></p>
                    <p>
                        第六条&nbsp; “双色球”彩票投注区分为红色球号码区和蓝色球号码区。</p>
                    <p>
                        第七条&nbsp; “双色球”每注投注号码由6个红色球号码和1个蓝色球号码组成。红色球号码从1—33中选择；蓝色球号码从1—16中选择。</p>
                    <p>
                        第八条&nbsp; “双色球”每注2元。</p>
                    <p>
                        第九条&nbsp; “双色球”采取全国统一奖池计奖。</p>
                    <p>
                        第十条&nbsp; “双色球”每周销售三期，期号以开奖日界定，按日历年度编排。</p>
                    <p>
                        <strong></strong>&nbsp;</p>
                    <p>
                        <strong>第三章&nbsp; 投注</strong></p>
                    <p>
                        第十一条&nbsp; “双色球”的投注方法可分为自选号码投注和机选号码投注；其投注方式有单式投注和复式投注。</p>
                    <p>
                        第十二条&nbsp; 自选号码投注是指投注者自行选定投注号码的投注。</p>
                    <p>
                        第十三条&nbsp; 机选号码投注是指由投注机为投注者随机产生投注号码的投注。</p>
                    <p>
                        第十四条&nbsp; 单式投注是从红色球号码中选择6个号码，从蓝色球号码中选择1个号码，组合为一注投注号码的投注。</p>
                    <p>
                        第十五条&nbsp; 复式投注有三种：</p>
                    <p>
                        （一）红色球号码复式：从红色球号码中选择7-20个号码，从蓝色球号码中选择1个号码，组合成多注投注号码的投注。</p>
                    <p>
                        （二）蓝色球号码复式：从红色球号码中选择6个号码,从蓝色球号码中选择2-16个号码，组合成多注投注号码的投注。</p>
                    <p>
                        （三）全复式：从红色球号码中选择7-20个号码，从蓝色球号码中选择2-16号码，组合成多注投注号码的投注。</p>
                    <p>
                        <strong></strong>&nbsp;</p>
                    <p>
                        <strong>第四章&nbsp; 设奖</strong></p>
                    <p>
                        第十六条&nbsp; “双色球”设奖奖金为销售总额的50%，其中当期奖金为销售总额的49%，调节基金为销售总额的1%。</p>
                    <p>
                        第十七条&nbsp; “双色球”奖级设置分为高等奖和低等奖。一等奖和二等奖为高等奖，三至六等奖为低等奖。高等奖采用浮动设奖，低等奖采用固定设奖。当期奖金减去当期低等奖奖金，为当期高等奖奖金。设奖如下：</p>
                    <table class="table" cellspacing="1" cellpadding="0" border="0">
                        <thead>
                            <tr>
                                <td width="67" rowspan="2">
                                    <span style="font-size: 12px">奖 级</span>
                                </td>
                                <td colspan="2">
                                    <span style="font-size: 12px">中奖条件</span>
                                </td>
                                <td width="231" rowspan="2">
                                    <span style="font-size: 12px">奖金分配</span>
                                </td>
                                <td width="179" rowspan="2">
                                    <span style="font-size: 12px">说明</span>
                                </td>
                            </tr>
                            <tr>
                                <td width="107">
                                    <span style="font-size: 12px">红色球号码</span>
                                </td>
                                <td width="97">
                                    <span style="font-size: 12px">蓝色球号码</span>
                                </td>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td width="67">
                                    <span style="font-size: 12px">一等奖</span>
                                </td>
                                <td width="107">
                                    <span style="font-size: 12px; color: #f00;">●●●●●●</span>
                                </td>
                                <td align="center" width="97">
                                    <span style="font-size: 12px; color: #006eb7;">●</span>
                                </td>
                                <td width="231">
                                    <span style="font-size: 12px">当期高等奖奖金的70%和奖池中累积的奖金之和。</span>
                                </td>
                                <td width="179">
                                    <span style="font-size: 12px">选6+1中6+1</span>
                                </td>
                            </tr>
                            <tr>
                                <td width="67">
                                    <span style="font-size: 12px">二等奖</span>
                                </td>
                                <td width="107">
                                    <span style="font-size: 12px; color: #f00;">●●●●●●</span>
                                </td>
                                <td align="center" width="97">
                                    &nbsp;
                                </td>
                                <td width="231">
                                    <span style="font-size: 12px">当期高等奖奖金的30%</span>
                                </td>
                                <td width="179">
                                    <span style="font-size: 12px">选6+1中6+0</span>
                                </td>
                            </tr>
                            <tr>
                                <td width="67">
                                    <span style="font-size: 12px">三等奖</span>
                                </td>
                                <td width="107">
                                    <span style="font-size: 12px; color: #f00;">●●●●●</span>
                                </td>
                                <td align="center" width="97">
                                    <div align="center">
                                        <span style="font-size: 12px; color: #006eb7;">●</span></div>
                                </td>
                                <td width="231">
                                    <span style="font-size: 12px">单注奖金额固定为3000元</span>
                                </td>
                                <td width="179">
                                    <span style="font-size: 12px">选6+1中5+1</span>
                                </td>
                            </tr>
                            <tr>
                                <td width="67" rowspan="2">
                                    <span style="font-size: 12px">四等奖</span>
                                </td>
                                <td width="107">
                                    <span style="font-size: 12px; color: #f00;">●●●●●</span>
                                </td>
                                <td align="center" width="97">
                                    &nbsp;
                                </td>
                                <td width="231" rowspan="2">
                                    <span style="font-size: 12px">单注奖金额固定为200元</span>
                                </td>
                                <td width="179" rowspan="2">
                                    <span style="font-size: 12px">选6+1中5+0或中4+1</span>
                                </td>
                            </tr>
                            <tr>
                                <td width="107">
                                    <span style="font-size: 12px; color: #f00;">●●●●</span>
                                </td>
                                <td align="center" width="97">
                                    <div align="center">
                                        <span style="font-size: 12px; color: #006eb7;">●</span></div>
                                </td>
                            </tr>
                            <tr>
                                <td width="67" rowspan="2">
                                    <span style="font-size: 12px">五等奖</span>
                                </td>
                                <td width="107">
                                    <span style="font-size: 12px; color: #f00;">●●●●</span>
                                </td>
                                <td align="center" width="97">
                                    &nbsp;
                                </td>
                                <td width="231" rowspan="2">
                                    <span style="font-size: 12px">单注奖金额固定为10元</span>
                                </td>
                                <td width="179" rowspan="2">
                                    <span style="font-size: 12px">选6+1中4+0或中3+1</span>
                                </td>
                            </tr>
                            <tr>
                                <td width="107" style="height: 27px">
                                    <span style="font-size: 12px; color: #f00;">●●●</span>
                                </td>
                                <td align="center" width="97" style="height: 27px">
                                    <div align="center">
                                        <span style="font-size: 12px; color: #006eb7;">●</span></div>
                                </td>
                            </tr>
                            <tr>
                                <td width="67" rowspan="3">
                                    <span style="font-size: 12px">六等奖</span>
                                </td>
                                <td width="107">
                                    <span style="font-size: 12px; color: #f00;">●●</span>
                                </td>
                                <td align="center" width="97">
                                    <div align="center">
                                        <span style="font-size: 12px; color: #006eb7;">●</span></div>
                                </td>
                                <td width="231" rowspan="3">
                                    <span style="font-size: 12px">单注奖金额固定为5元</span>
                                </td>
                                <td width="179" rowspan="3">
                                    <span style="font-size: 12px">选6+1中2+1或中1+1或中0+1</span>
                                </td>
                            </tr>
                            <tr>
                                <td width="107">
                                    <span style="font-size: 12px; color: #f00;">●</span>
                                </td>
                                <td align="center" width="97">
                                    <div align="center">
                                        <span style="font-size: 12px; color: #006eb7;">●</span></div>
                                </td>
                            </tr>
                            <tr>
                                <td width="107">
                                    <span style="font-size: 12px">&nbsp;</span>
                                </td>
                                <td align="center" width="97">
                                    <div align="center">
                                        <span style="font-size: 12px; color: #006eb7;">●</span></div>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <p>
                        第十八条&nbsp; 根据国家有关规定，“双色球”彩票单注奖金封顶的最高限额为500万元。</p>
                    <p>
                        第十九条&nbsp; “双色球”设立奖池。奖池资金来源：未中出的高等奖奖金和超出单注封顶限额部分的奖金。奖池资金计入下期一等奖。</p>
                    <p>
                        第二十条&nbsp; 当一等奖的单注奖额低于二等奖的单注奖额时，将一、二等奖的奖金相加，由一、二等奖中奖者平分；当一、二等奖的单注奖额低于三等奖奖额时，补足三等奖奖额。当期奖金不足部分由调节基金补充，调节基金不足时，从发行费列支。</p>
                    <p>
                        <strong></strong>&nbsp;</p>
                    <p>
                        <strong>第五章&nbsp; 开奖</strong></p>
                    <p>
                        第二十一条&nbsp; “双色球”由中福彩中心统一开奖，每周开奖三次。</p>
                    <p>
                        第二十二条&nbsp; “双色球”通过摇奖器确定中奖号码。摇奖时先摇出6个红色球号码，再摇出1个蓝色球号码，摇出的红色球号码按从小到大的顺序和蓝色球号码一起公布。</p>
                    <p>
                        第二十三条&nbsp; 开奖公告在各地主要媒体上公布，并在各地投注站张贴。</p>
                    <p>
                        第二十四条&nbsp; “双色球”的开奖结果以中福彩中心公布的开奖公告为准。</p>
                    <p>
                        <strong></strong>&nbsp;</p>
                    <p>
                        <strong>第六章&nbsp; 中奖</strong></p>
                    <p>
                        第二十五条&nbsp; “双色球”彩票以投注者所选单注投注号码（复式投注按所覆盖的单注计）与当期开出中奖号码相符的球色和个数确定中奖等级：</p>
                    <p>
                        一等奖：7个号码相符（6个红色球号码和1个蓝色球号码）（红色球号码顺序不限，下同）；</p>
                    <p>
                        二等奖：6个红色球号码相符；</p>
                    <p>
                        三等奖：5个红色球号码和1个蓝色球号码相符；</p>
                    <p>
                        四等奖：5个红色球号码或4个红色球号码和1个蓝色球号码相符；</p>
                    <p>
                        五等奖：4个红色球号码或3个红色球号码和1个蓝色球号码相符；</p>
                    <p>
                        六等奖：1个蓝色球号码相符（有无红色球号码相符均可）。</p>
                    <p>
                        第二十六条&nbsp; 一等奖和二等奖中奖者按各奖级的中奖注数均分该奖级的奖金；三至六等奖按各奖级的单注固定奖额获得奖金。</p>
                    <p>
                        第二十七条&nbsp; 当期每注投注号码只有一次中奖机会，不能兼中兼得（另行设奖按设奖规定执行）。</p>
                    <p>
                        <strong></strong>&nbsp;</p>
                    <p>
                        <strong>第七章&nbsp; 兑奖</strong></p>
                    <p>
                        第二十八条&nbsp; “双色球”彩票兑奖当期有效。每期开奖次日起，兑奖期限为60天，逾期未兑奖，则中奖作废。</p>
                    <p>
                        第二十九条&nbsp; 中奖人须提交完整的兑奖彩票，因玷污、损坏等原因造成不能正确识别的，不能兑奖。</p>
                    <p>
                        第三十条&nbsp; 一等奖中奖者，需持中奖彩票和本人有效身份证明，在兑奖期限内到各地省中心验证、登记和兑奖。其它奖级的兑奖办法由省中心规定并公布。</p>
                    <p>
                        第三十一条&nbsp; 按国家有关规定，单注奖金额超过一万元者，须缴纳个人偶然所得税。</p>
                    <p>
                        <strong></strong>&nbsp;</p>
                    <p>
                        <strong>第八章&nbsp; 附则</strong></p>
                    <p>
                        第三十二条&nbsp; 本规则未尽事宜，均按《管理办法》和有关规定执行。</p>
                    <p>
                        第三十三条&nbsp; 本规则由中国福利彩票发行管理中心负责解释。</p>
                    <p>
                        第三十四条&nbsp; 本规则自发布之日起施行。</p>
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
