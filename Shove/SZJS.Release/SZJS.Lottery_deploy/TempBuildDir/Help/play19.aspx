<%@ page language="C#" autoeventwireup="true" inherits="Help_play19, App_Web_85hasknr" enableEventValidation="false" %>

<%@ Register Src="../UserControls/Head.ascx" TagName="Head" TagPrefix="uc1" %>
<%@ Register Src="../Home/Room/UserControls/WebFoot.ascx" TagName="WebFoot" TagPrefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD Xhtml 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>球种玩法</title>
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
                            <span>11选5玩法规则</span></h1>
                    </div>
                </div>
            </div>
            <div class="index_content">
                <div class="f12">
                    <strong>第一章 总则</strong> <strong>第一章 总则</strong>
                    <p>
                        第一条 根据《彩票管理条例》（国务院令第554号）等有关规定，制定本游戏规则。</p>
                    <p>
                        第二条 "11选5"电脑体育彩票由国家体育总局体育彩票管理中心组织发行，经财政部批准的省级体育彩票管理中心在所辖区域内承销，采用计算机网络系统发行销售。</p>
                    <p>
                        第三条 "11选5"电脑体育彩票实行自愿购买，凡购买该彩票者即视为同意并遵守本规则。</p>
                    <p>
                        第四条 不得向未成年人销售彩票或兑付奖金。</p>
                    <strong>第二章 投注</strong>
                    <p>
                        第五条 购买"11选5"电脑体育彩票时，从01至11的号码中任选1个或多个（最多8个）号码所组成的一注彩票的投注为单式投注。其中：</p>
                    <p>
                        从11个号码中任选1个号码的投注为"任选一"；</p>
                    <p>
                        选2个号码的投注分为"任选二"、"选前二"；</p>
                    <p>
                        选3个号码的投注分为"任选三"、"选前三"；</p>
                    <p>
                        选4个号码的投注为"任选四"；</p>
                    <p>
                        选5个号码的投注为"任选五"；</p>
                    <p>
                        选6个号码的投注为"任选六"；</p>
                    <p>
                        选7个号码的投注为"任选七"；</p>
                    <p>
                        选8个号码的投注为"任选八"。</p>
                    <p>
                        第六条 "选前二"、"选前三"投注方式分为直选投注和组选投注。</p>
                    <p>
                        直选投注：所选2个或3个号码与当期顺序摇出的5个号码中的前2个或3个号码一一对应进行的投注。</p>
                    <p>
                        组选投注：所选2个或3个号码与当期顺序摇出的5个号码中的前2个或3个号码不按先后，均作为一注投注号码进行的投注。</p>
                    <p>
                        第七条 除单式投注外、购买者还可进行复式投注、胆拖投注、多倍投注。</p>
                    <p>
                        复式投注是指所选号码个数超过单式投注的号码个数，按该单式投注方式组成多注彩票的投注。</p>
                    <p>
                        胆拖投注是指先选取少于单式投注号码个数的号码作为胆码（即每注彩票均包含的号码），再选取除胆码以外的号码作为拖码，胆码与拖码个数之和须多于单式投注号码个数，由胆码与拖码按该单式投注方式组成多注彩票的投注。</p>
                    <p>
                        多倍投注是指对选定结果不超过99倍的投注。</p>
                    <p>
                        第八条 单张彩票最大投注金额不超过20000元。</p>
                    <p>
                        第九条 购买者可在当地省体育彩票管理中心设置的投注站进行投注。投注号码可由投注机随机产生，也可通过投注单将购买者选定的号码输入投注机确定。投注号码经系统确认后打印出的兑奖凭证即为"11选5"电脑体育彩票，交购买者保存。</p>
                    <p>
                        第十条 "11选5"电脑体育彩票每期全部投注号码的可投注数量实行动态控制，如投注号码受限，则不能投注。</p>
                    <p>
                        第十一条 若因销售终端故障、通讯线路故障和投注站信用额度受限等原因造成投注不成功，应退还投注者投注金额。</p>
                    <p>
                        第十二条 "11选5"电脑体育彩票每注2元人民币。彩票不记名、不挂失、不返还本金、不流通使用。</p>
                    <strong>第三章 设奖</strong>
                    <p>
                        第十三条 "11选5"电脑体育彩票按每期销售总额的59%、13%、28%计提奖金、发行费和公益金。</p>
                    <p>
                        第十四条 "11选5"电脑体育彩票按不同单式投注方式设奖，均为固定奖。奖金规定如下：</p>
                    <table width="100%" border="0" cellpadding="0" class="table">
                        <tr>
                            <td height="25" colspan="2" align="center" valign="center" bgcolor="#EBEBEB">
                                <p>
                                    玩法
                                </p>
                            </td>
                            <td width="345" align="center" valign="center" bgcolor="#EBEBEB">
                                <p>
                                    规则
                                </p>
                            </td>
                            <td width="97" align="center" valign="center" bgcolor="#EBEBEB">
                                <p>
                                    奖金
                                </p>
                            </td>
                        </tr>
                        <tr>
                            <td width="47" rowspan="8" align="center" valign="center" bgcolor="#FFFFFF">
                                <p>
                                    任选
                                </p>
                            </td>
                            <td width="78" height="25" align="center" valign="center" bgcolor="#F4F9FF">
                                <p>
                                    任选一
                                </p>
                            </td>
                            <td width="345" align="center" valign="center" bgcolor="#FFFFFF">
                                <p>
                                    选1个号码，猜开奖号码第1个数字
                                </p>
                            </td>
                            <td width="97" align="center" valign="center" bgcolor="#FFFFFF">
                                <p>
                                    13元
                                </p>
                            </td>
                        </tr>
                        <tr>
                            <td width="78" height="25" align="center" valign="center" bgcolor="#F4F9FF">
                                <p>
                                    任选二
                                </p>
                            </td>
                            <td width="345" align="center" valign="center" bgcolor="#FFFFFF">
                                <p>
                                    选2个号码，猜开奖号码任意2个数字
                                </p>
                            </td>
                            <td width="97" align="center" valign="center" bgcolor="#FFFFFF">
                                <p>
                                    6元
                                </p>
                            </td>
                        </tr>
                        <tr>
                            <td width="78" height="25" align="center" valign="center" bgcolor="#F4F9FF">
                                <p>
                                    任选三
                                </p>
                            </td>
                            <td width="345" align="center" valign="center" bgcolor="#FFFFFF">
                                <p>
                                    选3个号码，猜开奖号码任意3个数字
                                </p>
                            </td>
                            <td width="97" align="center" valign="center" bgcolor="#FFFFFF">
                                <p>
                                    19元
                                </p>
                            </td>
                        </tr>
                        <tr>
                            <td width="78" height="25" align="center" valign="center" bgcolor="#F4F9FF">
                                <p>
                                    任选四
                                </p>
                            </td>
                            <td width="345" align="center" valign="center" bgcolor="#FFFFFF">
                                <p>
                                    选4个号码，猜开奖号码任意4个数字
                                </p>
                            </td>
                            <td width="97" align="center" valign="center" bgcolor="#FFFFFF">
                                <p>
                                    78元
                                </p>
                            </td>
                        </tr>
                        <tr>
                            <td width="78" height="25" align="center" valign="center" bgcolor="#F4F9FF">
                                <p>
                                    任选五
                                </p>
                            </td>
                            <td width="345" align="center" valign="center" bgcolor="#FFFFFF">
                                <p>
                                    选5个号码，猜开奖号码的5个数字
                                </p>
                            </td>
                            <td width="97" align="center" valign="center" bgcolor="#FFFFFF">
                                <p>
                                    540元
                                </p>
                            </td>
                        </tr>
                        <tr>
                            <td width="78" height="25" align="center" valign="center" bgcolor="#F4F9FF">
                                <p>
                                    任选六
                                </p>
                            </td>
                            <td width="345" align="center" valign="center" bgcolor="#FFFFFF">
                                <p>
                                    选6个号码，猜开奖号码的5个数字
                                </p>
                            </td>
                            <td width="97" align="center" valign="center" bgcolor="#FFFFFF">
                                <p>
                                    90元
                                </p>
                            </td>
                        </tr>
                        <tr>
                            <td width="78" height="25" align="center" valign="center" bgcolor="#F4F9FF">
                                <p>
                                    任选七
                                </p>
                            </td>
                            <td width="345" align="center" valign="center" bgcolor="#FFFFFF">
                                <p>
                                    选7个号码，猜开奖号码的5个数字
                                </p>
                            </td>
                            <td width="97" align="center" valign="center" bgcolor="#FFFFFF">
                                <p>
                                    26元
                                </p>
                            </td>
                        </tr>
                        <tr>
                            <td width="78" height="25" align="center" valign="center" bgcolor="#F4F9FF">
                                <p>
                                    任选八
                                </p>
                            </td>
                            <td width="345" align="center" valign="center" bgcolor="#FFFFFF">
                                <p>
                                    选8个号码，猜开奖号码的5个数字
                                </p>
                            </td>
                            <td width="97" align="center" valign="center" bgcolor="#FFFFFF">
                                <p>
                                    9元
                                </p>
                            </td>
                        </tr>
                        <tr>
                            <td width="47" rowspan="2" align="center" valign="center" bgcolor="#FFFFFF">
                                <p>
                                    前二
                                </p>
                            </td>
                            <td width="78" height="25" align="center" valign="center" bgcolor="#F4F9FF">
                                <p>
                                    直选
                                </p>
                            </td>
                            <td width="345" align="center" valign="center" bgcolor="#FFFFFF">
                                <p>
                                    选2个号码顺序唯一，猜开奖号码的前2个数字
                                </p>
                            </td>
                            <td width="97" align="center" valign="center" bgcolor="#FFFFFF">
                                <p>
                                    130元
                                </p>
                            </td>
                        </tr>
                        <tr>
                            <td width="78" height="25" align="center" valign="center" bgcolor="#F4F9FF">
                                <p>
                                    组选
                                </p>
                            </td>
                            <td width="345" align="center" valign="center" bgcolor="#FFFFFF">
                                <p>
                                    选2个号码顺序不限，猜开奖号码的前2个数字
                                </p>
                            </td>
                            <td width="97" align="center" valign="center" bgcolor="#FFFFFF">
                                <p>
                                    65元
                                </p>
                            </td>
                        </tr>
                        <tr>
                            <td width="47" rowspan="2" align="center" valign="center" bgcolor="#FFFFFF">
                                <p>
                                    前三
                                </p>
                            </td>
                            <td width="78" height="25" align="center" valign="center" bgcolor="#F4F9FF">
                                <p>
                                    直选
                                </p>
                            </td>
                            <td width="345" align="center" valign="center" bgcolor="#FFFFFF">
                                <p>
                                    选3个号码顺序唯一，猜开奖号码的前3个数字
                                </p>
                            </td>
                            <td width="97" align="center" valign="center" bgcolor="#FFFFFF">
                                <p>
                                    1170元
                                </p>
                            </td>
                        </tr>
                        <tr>
                            <td width="78" height="25" align="center" valign="center" bgcolor="#F4F9FF">
                                <p>
                                    组选
                                </p>
                            </td>
                            <td width="345" align="center" valign="center" bgcolor="#FFFFFF">
                                <p>
                                    选3个号码顺序不限，猜开奖号码的前3个数字
                                </p>
                            </td>
                            <td width="97" align="center" valign="center" bgcolor="#FFFFFF">
                                <p>
                                    195元
                                </p>
                            </td>
                        </tr>
                    </table>
                    <p>
                        第十五条 "11选5"电脑体育彩票设置奖池，奖池由当期计提奖金与实际中出奖金的差额累计而成。若当期计提奖金大于当期实际中出奖金时，余额滚入奖池；若当期计提奖金小于当期实际中出奖金时，差额用奖池补足；若奖池资金不足时，用调节基金补足，调节基金不足时，从发行经费中垫支。</p>
                    <p>
                        第十六条 调节基金包括弃奖收入和逾期未退票的票款。调节基金专项用于支付各种不可预见情况下的奖金支出风险以及设立特别奖。</p>
                    <strong>第四章 开奖</strong>
                    <p>
                        第十七条 "11选5"电脑体育彩票12分钟一期，10分钟销售，2分钟开奖，一天65期。</p>
                    <p>
                        第十八条 "11选5"电脑体育彩票每期开奖结果通过随机数码生成器，从01-11共11个号码中按顺序自动生成5个不同号码作为当期中奖号码。</p>
                    <strong>第五章 中奖</strong>
                    <p>
                        第二十条 所购彩票与当期开奖结果对照，符合以下情况即为中奖。</p>
                    <table width="100%" border="0" cellpadding="0" class="table">
                        <tr>
                            <td height="25" colspan="2" align="center" valign="center" bgcolor="#EBEBEB">
                                <p>
                                    玩法
                                </p>
                            </td>
                            <td width="124" align="center" valign="center" bgcolor="#EBEBEB">
                                <p>
                                    开奖号码
                                </p>
                            </td>
                            <td width="182" align="center" valign="center" bgcolor="#EBEBEB">
                                <p>
                                    投注号码举例
                                </p>
                            </td>
                            <td width="65" align="center" valign="center" bgcolor="#EBEBEB">
                                <p>
                                    投注金额
                                </p>
                            </td>
                            <td width="96" align="center" valign="center" bgcolor="#EBEBEB">
                                <p>
                                    中奖金额
                                </p>
                            </td>
                        </tr>
                        <tr>
                            <td width="40" rowspan="8" align="center" valign="center" bgcolor="#FAFAFA">
                                <p>
                                    任选
                                </p>
                            </td>
                            <td width="58" height="25" align="center" valign="center" bgcolor="#F4F9FF">
                                <p>
                                    任选一
                                </p>
                            </td>
                            <td width="124" rowspan="12" align="center" valign="center" bgcolor="#FFFFFF">
                                <p>
                                    01&nbsp;02&nbsp;03&nbsp;04&nbsp;05
                                </p>
                            </td>
                            <td width="182" align="center" valign="center" bgcolor="#FFFFFF">
                                <p>
                                    01
                                </p>
                            </td>
                            <td width="65" rowspan="12" align="center" valign="center" bgcolor="#FFFFFF">
                                <p>
                                    2元
                                </p>
                            </td>
                            <td width="96" align="center" valign="center" bgcolor="#FFFFFF">
                                <p>
                                    13元
                                </p>
                            </td>
                        </tr>
                        <tr>
                            <td width="58" height="25" align="center" valign="center" bgcolor="#F4F9FF">
                                <p>
                                    任选二
                                </p>
                            </td>
                            <td width="182" align="center" valign="center" bgcolor="#FFFFFF">
                                <p>
                                    01&nbsp;05
                                </p>
                            </td>
                            <td width="96" align="center" valign="center" bgcolor="#FFFFFF">
                                <p>
                                    6元
                                </p>
                            </td>
                        </tr>
                        <tr>
                            <td width="58" height="25" align="center" valign="center" bgcolor="#F4F9FF">
                                <p>
                                    任选三
                                </p>
                            </td>
                            <td width="182" align="center" valign="center" bgcolor="#FFFFFF">
                                <p>
                                    01&nbsp;02&nbsp;04
                                </p>
                            </td>
                            <td width="96" align="center" valign="center" bgcolor="#FFFFFF">
                                <p>
                                    19元
                                </p>
                            </td>
                        </tr>
                        <tr>
                            <td width="58" height="25" align="center" valign="center" bgcolor="#F4F9FF">
                                <p>
                                    任选四
                                </p>
                            </td>
                            <td width="182" align="center" valign="center" bgcolor="#FFFFFF">
                                <p>
                                    01&nbsp;02&nbsp;04&nbsp;05
                                </p>
                            </td>
                            <td width="96" align="center" valign="center" bgcolor="#FFFFFF">
                                <p>
                                    78元
                                </p>
                            </td>
                        </tr>
                        <tr>
                            <td width="58" height="25" align="center" valign="center" bgcolor="#F4F9FF">
                                <p>
                                    任选五
                                </p>
                            </td>
                            <td width="182" align="center" valign="center" bgcolor="#FFFFFF">
                                <p>
                                    01&nbsp;02&nbsp;03&nbsp;04&nbsp;05
                                </p>
                            </td>
                            <td width="96" align="center" valign="center" bgcolor="#FFFFFF">
                                <p>
                                    540元
                                </p>
                            </td>
                        </tr>
                        <tr>
                            <td width="58" height="25" align="center" valign="center" bgcolor="#F4F9FF">
                                <p>
                                    任选六
                                </p>
                            </td>
                            <td width="182" align="center" valign="center" bgcolor="#FFFFFF">
                                <p>
                                    01&nbsp;02&nbsp;03&nbsp;04&nbsp;05&nbsp;06
                                </p>
                            </td>
                            <td width="96" align="center" valign="center" bgcolor="#FFFFFF">
                                <p>
                                    90元
                                </p>
                            </td>
                        </tr>
                        <tr>
                            <td width="58" height="25" align="center" valign="center" bgcolor="#F4F9FF">
                                <p>
                                    任选七
                                </p>
                            </td>
                            <td width="182" align="center" valign="center" bgcolor="#FFFFFF">
                                <p>
                                    01&nbsp;02&nbsp;03&nbsp;04&nbsp;05&nbsp;06&nbsp;07
                                </p>
                            </td>
                            <td width="96" align="center" valign="center" bgcolor="#FFFFFF">
                                <p>
                                    26元
                                </p>
                            </td>
                        </tr>
                        <tr>
                            <td width="58" height="25" align="center" valign="center" bgcolor="#F4F9FF">
                                <p>
                                    任选八
                                </p>
                            </td>
                            <td width="182" align="center" valign="center" bgcolor="#FFFFFF">
                                <p>
                                    01&nbsp;02&nbsp;03&nbsp;04&nbsp;05&nbsp;06&nbsp;07&nbsp;08
                                </p>
                            </td>
                            <td width="96" align="center" valign="center" bgcolor="#FFFFFF">
                                <p>
                                    9元
                                </p>
                            </td>
                        </tr>
                        <tr>
                            <td width="40" rowspan="2" align="center" valign="center" bgcolor="#FAFAFA">
                                <p>
                                    前二
                                </p>
                            </td>
                            <td width="58" height="25" align="center" valign="center" bgcolor="#F4F9FF">
                                <p>
                                    直选
                                </p>
                            </td>
                            <td width="182" align="center" valign="center" bgcolor="#FFFFFF">
                                <p>
                                    01&nbsp;02
                                </p>
                            </td>
                            <td width="96" align="center" valign="center" bgcolor="#FFFFFF">
                                <p>
                                    130元
                                </p>
                            </td>
                        </tr>
                        <tr>
                            <td width="58" height="25" align="center" valign="center" bgcolor="#F4F9FF">
                                <p>
                                    组选
                                </p>
                            </td>
                            <td width="182" align="center" valign="center" bgcolor="#FFFFFF">
                                <p>
                                    02&nbsp;01
                                </p>
                            </td>
                            <td width="96" align="center" valign="center" bgcolor="#FFFFFF">
                                <p>
                                    65元
                                </p>
                            </td>
                        </tr>
                        <tr>
                            <td width="40" rowspan="2" align="center" valign="center" bgcolor="#FAFAFA">
                                <p>
                                    前三
                                </p>
                            </td>
                            <td width="58" height="25" align="center" valign="center" bgcolor="#F4F9FF">
                                <p>
                                    直选
                                </p>
                            </td>
                            <td width="182" align="center" valign="center" bgcolor="#FFFFFF">
                                <p>
                                    01&nbsp;02&nbsp;03
                                </p>
                            </td>
                            <td width="96" align="center" valign="center" bgcolor="#FFFFFF">
                                <p>
                                    1170元
                                </p>
                            </td>
                        </tr>
                        <tr>
                            <td width="58" height="25" align="center" valign="center" bgcolor="#F4F9FF">
                                <p>
                                    组选
                                </p>
                            </td>
                            <td width="182" align="center" valign="center" bgcolor="#FFFFFF">
                                <p>
                                    02&nbsp;01&nbsp;03
                                </p>
                            </td>
                            <td width="96" align="center" valign="center" bgcolor="#FFFFFF">
                                <p>
                                    195元
                                </p>
                            </td>
                        </tr>
                    </table>
                    <strong>第六章 兑奖</strong>
                    <p>
                        第二十一条 "11选5"电脑体育彩票兑奖当期有效。每期自开奖之日起28天为兑奖期，逾期未兑视为弃奖，弃奖奖金纳入调节基金。</p>
                    <p>
                        第二十二条 中奖彩票为兑奖唯一凭证，中奖彩票因玷污、损坏等原因不能正确识别的，不能兑奖。</p>
                    <p>
                        第二十三条 兑奖机构有权查验中奖者的中奖彩票及有效身份证件，兑奖者应予配合。</p>
                    <p>
                        第二十四条 凡伪造、涂改中奖彩票，冒领奖金者，送交司法机关追究法律责任。</p>
                    <strong>第七章 附则</strong>
                    <p>
                        第二十五条 本游戏规则解释权属国家体育总局体育彩票管理中心。</p>
                    <p>
                        第二十六条 本游戏规则自发布之日起执行。</p>
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
