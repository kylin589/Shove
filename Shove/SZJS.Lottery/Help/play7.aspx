<%@ Page Language="C#" AutoEventWireup="true" CodeFile="play7.aspx.cs" Inherits="Help_play7" %>

<%@ Register Src="../UserControls/Head.ascx" TagName="Head" TagPrefix="uc1" %>
<%@ Register Src="../Home/Room/UserControls/WebFoot.ascx" TagName="WebFoot" TagPrefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD Xhtml 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>大乐透玩法规则</title>
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
                            <span>大乐透玩法规则</span></h1>
                    </div>
                </div>
            </div>
            <div class="index_content">
                <div class="f12">
                    <p>
                        2009年10月14日，超级大乐透启用新规则，单注头奖2元就可达到1000万，3元追加投注可以达到1600万。与旧规则相比，新规则下超级大乐透各个等级的奖金分配比例均发生了变化。以下为超级大乐透新规则：</p>
                    <p>
                        <strong>第一章 总则</strong>
                        <p>
                            第一条 根据《彩票管理条例》(国务院令第554号)等有关规定，制定本规则。</p>
                        <p>
                            第二条 全国联网电脑体育彩票超级大乐透(以下简称“超级大乐透”)由国家体育总局体育彩票管理中心组织发行，由各省、自治区、直辖市体育彩票管理中心在所辖区域内承销。</p>
                        <p>
                            第三条 超级大乐透采用计算机网络系统发行销售，定期开奖。</p>
                        <p>
                            第四条 超级大乐透实行自愿购买，凡购买该彩票均被视为同意并遵守本规则。</p>
                        <p>
                            第五条 不得向未成年人出售彩票或兑付奖金。</p>
                        <p>
                            <strong></strong>&nbsp;</p>
                        <p>
                            <strong>第二章 投注</strong></p>
                        <p>
                            第六条 超级大乐透是指由购买者从01—35共35个号码中选取5个号码为前区号码，并从01—12共12个号码中选取2个号码为后区号码组合为一注彩票进行的基本投注。每注金额人民币2元。</p>
                        <p>
                            购买者在基本投注的基础上，可进行追加投注，每注追加金额人民币1元。</p>
                        <p>
                            第七条 购买者可进行胆拖投注。在前区号码或后区号码中选择少于单式投注号码个数的号码作为每注都有的号码作为胆码，再选取除胆码以外的号码作为拖码，由胆码和拖码组合成多注投注，称为胆拖投注。胆拖投注包括三种形式：</p>
                        <p>
                            (一)前区胆拖：从01—35中选取1至4个号码为胆码，再选取除胆码以外的号码作为拖码，胆码和拖码组成前区号码(其数量之和必须等于或多于6个号码)，并从01—12中选取2个号码为后区号码。</p>
                        <p>
                            (二)后区胆拖：从01—35中至少选取5个号码为前区号码，并从01—12中选取1个号码为胆码，再选取除胆码以外的2个以上(含2个)的号码为拖码，胆码和拖码组成后区号码。</p>
                        <p>
                            (三)双区胆拖：从01—35中选取1至4个号码为胆码，再选取除胆码以外的号码作为拖码，胆码和拖码组成前区号码(其数量之和必须等于或多于6个号码)；并从01—12中选取1个号码为胆码，再选取除胆码以外的2个以上(含2个)的号码为拖码，胆码和拖码组成后区号码。</p>
                        <p>
                            第八条 在胆拖投注中，当胆码为零时，组合成的多注投注为复式投注。复式投注包括三种形式：</p>
                        <p>
                            (一)前区复式：前区号码的拖码选取6个号码以上(含6个)，后区号码选取2个号码；</p>
                        <p>
                            (二)后区复式：前区号码选取5个号码，后区号码的拖码选取3个号码以上(含3个)；</p>
                        <p>
                            (三)双区复式：前区号码的拖码选取6个号码以上(含6个)，后区号码的拖码选取3个号码以上(含3个)。</p>
                        <p>
                            第九条 购买者可对其选定的结果进行多倍投注，投注倍数范围为2-99倍。单张彩票基本投注的最大投注金额不超过20000元，基本投注加追加投注的最大投注金额不超过30000元。</p>
                        <p>
                            第十条 超级大乐透按期销售，每周销售三期，期号以开奖日界定，按日历年度编排。</p>
                        <p>
                            第十一条 购买者可在各省、自治区、直辖市体育彩票管理中心设置的投注站进行投注。投注号码可由投注机随机产生，也可通过投注单将购买者选定的号码输入投注机确定。投注号码经系统确认后打印出的对奖凭证即为超级大乐透彩票，交购买者保存。</p>
                        <p>
                            <strong></strong>&nbsp;</p>
                        <p>
                            <strong>第三章 设奖</strong></p>
                        <p>
                            第十二条 超级大乐透按当期销售总额的50%、15%、35%分别计提返奖奖金、彩票发行费和彩票公益金。返奖奖金分为当期奖金和调节基金，其中，49%为当期奖金，1%为调节基金。</p>
                        <p>
                            第十三条 超级大乐透共设八个奖级，一、二、三等奖为浮动奖，四、五、六、七、八等奖为固定奖。各奖级和奖金规定如下：</p>
                        <table width="100%" border="0" cellpadding="0" class="table">
                            <tr>
                                <td width="114" rowspan="2" align="center" valign="center" bgcolor="#EBEBEB">
                                    <p>
                                        奖级
                                    </p>
                                </td>
                                <td height="25" colspan="2" align="center" valign="center" bgcolor="#EBEBEB">
                                    <p>
                                        中奖条件
                                    </p>
                                </td>
                                <td width="70" rowspan="2" align="center" valign="center" bgcolor="#EBEBEB">
                                    <p>
                                        说明
                                    </p>
                                </td>
                                <td width="189" rowspan="2" align="center" valign="center" bgcolor="#EBEBEB">
                                    <p>
                                        单注奖金（基本）
                                    </p>
                                </td>
                                <td width="94" rowspan="2" align="center" valign="center" bgcolor="#EBEBEB">
                                    <p>
                                        追加投注奖金
                                    </p>
                                </td>
                                <td width="97" rowspan="2" align="center" valign="center" bgcolor="#EBEBEB">
                                    <p>
                                        费用（追加投注）
                                    </p>
                                </td>
                            </tr>
                            <tr>
                                <td width="85" height="25" align="center" valign="center" bgcolor="#EBEBEB">
                                    <p>
                                        前区
                                    </p>
                                </td>
                                <td width="69" align="center" valign="center" bgcolor="#EBEBEB">
                                    <p>
                                        后区
                                    </p>
                                </td>
                            </tr>
                            <tr>
                                <td height="25" colspan="8" valign="center" bgcolor="#FFFFFF" class="red12" style="padding-left: 20px;">
                                    <p>
                                        35选5+12选2玩法（前区选5个号，后区选2个号，最高奖金800万）
                                    </p>
                                </td>
                            </tr>
                            <tr>
                                <td width="114" height="25" align="center" valign="center" bgcolor="#FFFFFF" class="blue12">
                                    <p>
                                        一等奖
                                    </p>
                                </td>
                                <td width="85" align="center" valign="center" bgcolor="#FFFFFF" class="red14">
                                    <p>
                                        &#9679;&#9679;&#9679;&#9679;&#9679;
                                    </p>
                                </td>
                                <td width="69" align="center" valign="center" bgcolor="#FFFFFF" class="blue14">
                                    <p>
                                        &#9679;&#9679;
                                    </p>
                                </td>
                                <td width="70" align="center" valign="center" bgcolor="#F4F9FF">
                                    <p>
                                        5+2
                                    </p>
                                </td>
                                <td width="189" align="center" valign="center" bgcolor="#FFFFFF">
                                    <p>
                                        高等奖奖金的75%与奖池奖金之和除以中奖注数，500万封顶
                                    </p>
                                </td>
                                <td width="94" align="center" valign="center" bgcolor="#FFFFFF">
                                    <p>
                                        一等奖奖金的60%，300万封顶
                                    </p>
                                </td>
                                <td width="97" rowspan="13" align="center" valign="center" bgcolor="#FFFFFF">
                                    <p>
                                        2(+1)元
                                    </p>
                                </td>
                            </tr>
                            <tr>
                                <td width="114" height="25" align="center" valign="center" bgcolor="#FFFFFF" class="blue12">
                                    <p>
                                        二等奖
                                    </p>
                                </td>
                                <td width="85" align="center" valign="center" bgcolor="#FFFFFF" class="red14">
                                    <p>
                                        &#9679;&#9679;&#9679;&#9679;&#9679;
                                    </p>
                                </td>
                                <td width="69" align="center" valign="center" bgcolor="#FFFFFF" class="blue14">
                                    <p>
                                        &#9679;
                                    </p>
                                </td>
                                <td width="70" align="center" valign="center" bgcolor="#F4F9FF">
                                    <p>
                                        5+1
                                    </p>
                                </td>
                                <td width="189" align="center" valign="center" bgcolor="#FFFFFF">
                                    <p>
                                        高等奖奖金的20%除以中奖注数，500万封顶
                                    </p>
                                </td>
                                <td width="94" align="center" valign="center" bgcolor="#FFFFFF">
                                    <p>
                                        二等奖奖金的60%，300万封顶
                                    </p>
                                </td>
                            </tr>
                            <tr>
                                <td width="114" height="25" align="center" valign="center" bgcolor="#FFFFFF" class="blue12">
                                    <p>
                                        三等奖
                                    </p>
                                </td>
                                <td width="85" align="center" valign="center" bgcolor="#FFFFFF" class="red14">
                                    <p>
                                        &#9679;&#9679;&#9679;&#9679;&#9679;
                                    </p>
                                </td>
                                <td width="69" align="center" valign="center" bgcolor="#FFFFFF">
                                    <p>
                                        无
                                    </p>
                                </td>
                                <td width="70" align="center" valign="center" bgcolor="#F4F9FF">
                                    <p>
                                        5+0
                                    </p>
                                </td>
                                <td width="189" align="center" valign="center" bgcolor="#FFFFFF">
                                    <p>
                                        高等奖奖金的5%除以中奖注数
                                    </p>
                                </td>
                                <td width="94" align="center" valign="center" bgcolor="#FFFFFF">
                                    <p>
                                        三等奖奖金的60%
                                    </p>
                                </td>
                            </tr>
                            <tr>
                                <td width="114" height="25" align="center" valign="center" bgcolor="#FFFFFF" class="blue12">
                                    <p>
                                        四等奖
                                    </p>
                                </td>
                                <td width="85" align="center" valign="center" bgcolor="#FFFFFF" class="red14">
                                    <p>
                                        &#9679;&#9679;&#9679;&#9679;
                                    </p>
                                </td>
                                <td width="69" align="center" valign="center" bgcolor="#FFFFFF" class="blue14">
                                    <p>
                                        &#9679;&#9679;
                                    </p>
                                </td>
                                <td width="70" align="center" valign="center" bgcolor="#F4F9FF">
                                    <p>
                                        4+2
                                    </p>
                                </td>
                                <td width="189" align="center" valign="center" bgcolor="#FFFFFF">
                                    <p>
                                        3000元
                                    </p>
                                </td>
                                <td width="94" align="center" valign="center" bgcolor="#FFFFFF">
                                    <p>
                                        1500元
                                    </p>
                                </td>
                            </tr>
                            <tr>
                                <td width="114" height="25" align="center" valign="center" bgcolor="#FFFFFF" class="blue12">
                                    <p>
                                        五等奖
                                    </p>
                                </td>
                                <td width="85" align="center" valign="center" bgcolor="#FFFFFF" class="red14">
                                    <p>
                                        &#9679;&#9679;&#9679;&#9679;
                                    </p>
                                </td>
                                <td width="69" align="center" valign="center" bgcolor="#FFFFFF" class="blue14">
                                    <p>
                                        &#9679;
                                    </p>
                                </td>
                                <td width="70" align="center" valign="center" bgcolor="#F4F9FF">
                                    <p>
                                        4+1
                                    </p>
                                </td>
                                <td width="189" align="center" valign="center" bgcolor="#FFFFFF">
                                    <p>
                                        600元
                                    </p>
                                </td>
                                <td width="94" align="center" valign="center" bgcolor="#FFFFFF">
                                    <p>
                                        300元</p>
                                </td>
                            </tr>
                            <tr>
                                <td width="114" height="25" rowspan="2" align="center" valign="center" bgcolor="#FFFFFF"
                                    class="blue12">
                                    <p>
                                        六等奖
                                    </p>
                                </td>
                                <td width="85" align="center" valign="center" bgcolor="#FFFFFF" class="red14">
                                    <p>
                                        &#9679;&#9679;&#9679;&#9679;
                                    </p>
                                </td>
                                <td width="69" align="center" valign="center" bgcolor="#FFFFFF">
                                    <p>
                                        无
                                    </p>
                                </td>
                                <td width="70" align="center" valign="center" bgcolor="#F4F9FF">
                                    <p>
                                        4+0
                                    </p>
                                </td>
                                <td width="189" rowspan="2" align="center" valign="center" bgcolor="#FFFFFF">
                                    <p>
                                        100元
                                    </p>
                                </td>
                                <td width="94" rowspan="2" align="center" valign="center" bgcolor="#FFFFFF">
                                    <p>
                                        50元</p>
                                </td>
                            </tr>
                            <tr>
                                <td width="85" align="center" valign="center" bgcolor="#FFFFFF" class="red14">
                                    <p>
                                        &#9679;&#9679;&#9679;
                                    </p>
                                </td>
                                <td width="69" align="center" valign="center" bgcolor="#FFFFFF" class="blue14">
                                    <p>
                                        &#9679;&#9679;
                                    </p>
                                </td>
                                <td width="70" align="center" valign="center" bgcolor="#F4F9FF">
                                    <p>
                                        3+2
                                    </p>
                                </td>
                            </tr>
                            <tr>
                                <td width="114" height="25" rowspan="2" align="center" valign="center" bgcolor="#FFFFFF"
                                    class="blue12">
                                    <p>
                                        七等奖
                                    </p>
                                </td>
                                <td width="85" align="center" valign="center" bgcolor="#FFFFFF" class="red14">
                                    <p>
                                        &#9679;&#9679;&#9679;
                                    </p>
                                </td>
                                <td width="69" align="center" valign="center" bgcolor="#FFFFFF" class="blue14">
                                    <p>
                                        &#9679;
                                    </p>
                                </td>
                                <td width="70" align="center" valign="center" bgcolor="#F4F9FF">
                                    <p>
                                        3+1
                                    </p>
                                </td>
                                <td width="189" rowspan="2" align="center" valign="center" bgcolor="#FFFFFF">
                                    <p>
                                        10元
                                    </p>
                                </td>
                                <td width="94" rowspan="2" align="center" valign="center" bgcolor="#FFFFFF">
                                    <p>
                                        5元
                                    </p>
                                </td>
                            </tr>
                            <tr>
                                <td width="85" align="center" valign="center" bgcolor="#FFFFFF" class="red14">
                                    <p>
                                        &#9679;&#9679;
                                    </p>
                                </td>
                                <td width="69" align="center" valign="center" bgcolor="#FFFFFF" class="blue14">
                                    <p>
                                        &#9679;&#9679;
                                    </p>
                                </td>
                                <td width="70" align="center" valign="center" bgcolor="#F4F9FF">
                                    <p>
                                        2+2
                                    </p>
                                </td>
                            </tr>
                            <tr>
                                <td width="114" height="25" rowspan="4" align="center" valign="center" bgcolor="#FFFFFF"
                                    class="blue12">
                                    <p>
                                        八等奖
                                    </p>
                                </td>
                                <td width="85" align="center" valign="center" bgcolor="#FFFFFF" class="red14">
                                    <p>
                                        &#9679;&#9679;&#9679;
                                    </p>
                                </td>
                                <td width="69" align="center" valign="center" bgcolor="#FFFFFF">
                                    <p>
                                        无
                                    </p>
                                </td>
                                <td width="70" align="center" valign="center" bgcolor="#F4F9FF">
                                    <p>
                                        3+0
                                    </p>
                                </td>
                                <td width="189" rowspan="4" align="center" valign="center" bgcolor="#FFFFFF">
                                    <p>
                                        5元
                                    </p>
                                </td>
                                <td width="94" rowspan="4" align="center" valign="center" bgcolor="#FFFFFF">
                                    <p>
                                        无
                                    </p>
                                </td>
                            </tr>
                            <tr>
                                <td width="85" align="center" valign="center" bgcolor="#FFFFFF" class="red14">
                                    <p>
                                        &#9679;
                                    </p>
                                </td>
                                <td width="69" align="center" valign="center" bgcolor="#FFFFFF" class="blue14">
                                    <p>
                                        &#9679;&#9679;
                                    </p>
                                </td>
                                <td width="70" align="center" valign="center" bgcolor="#F4F9FF">
                                    <p>
                                        1+2
                                    </p>
                                </td>
                            </tr>
                            <tr>
                                <td width="85" align="center" valign="center" bgcolor="#FFFFFF" class="red14">
                                    <p>
                                        &#9679;&#9679;
                                    </p>
                                </td>
                                <td width="69" align="center" valign="center" bgcolor="#FFFFFF" class="blue14">
                                    <p>
                                        &#9679;
                                    </p>
                                </td>
                                <td width="70" align="center" valign="center" bgcolor="#F4F9FF">
                                    <p>
                                        2+1
                                    </p>
                                </td>
                            </tr>
                            <tr>
                                <td width="85" align="center" valign="center" bgcolor="#FFFFFF">
                                    <p>
                                        无
                                    </p>
                                </td>
                                <td width="69" align="center" valign="center" bgcolor="#FFFFFF" class="blue14">
                                    <p>
                                        &#9679;&#9679;
                                    </p>
                                </td>
                                <td width="70" align="center" valign="center" bgcolor="#F4F9FF">
                                    <p>
                                        0+2
                                    </p>
                                </td>
                            </tr>
                            <tr>
                                <td height="25" colspan="8" valign="center" bgcolor="#FFFFFF" class="red12" style="padding-left: 20px;">
                                    <p>
                                        12选2玩法（只在后区选2个号，固定奖金60元）
                                    </p>
                                </td>
                            </tr>
                            <tr>
                                <td width="114" height="25" align="center" valign="center" bgcolor="#FFFFFF" class="blue12">
                                    <p>
                                        12选2
                                    </p>
                                </td>
                                <td width="85" align="center" valign="center" bgcolor="#FFFFFF">
                                    <p>
                                        不投注
                                    </p>
                                </td>
                                <td width="69" align="center" valign="center" bgcolor="#FFFFFF" class="blue14">
                                    <p>
                                        &#9679;&#9679;
                                    </p>
                                </td>
                                <td width="70" align="center" valign="center" bgcolor="#F4F9FF">
                                    <p>
                                        2
                                    </p>
                                </td>
                                <td width="189" align="center" valign="center" bgcolor="#FFFFFF">
                                    <p>
                                        60元
                                    </p>
                                </td>
                                <td width="94" align="center" valign="center" bgcolor="#FFFFFF">
                                    <p>
                                        无
                                    </p>
                                </td>
                                <td width="97" align="center" valign="center" bgcolor="#FFFFFF">
                                    <p>
                                        2元
                                    </p>
                                </td>
                            </tr>
                        </table>
                        <p>
                            第十四条 浮动奖级单注奖金根据该奖级基本投注与追加投注中奖数量按比例分配。</p>
                        <p>
                            第十五条 追加投注仅参与一至七等奖的奖金分配。追加投注一、二、三等奖为浮动奖，四至七等奖为固定奖。如追加投注中得浮动奖，则追加投注奖金为当期基本投注对应单注奖金的60%。如追加投注中得固定奖，则追加投注奖金为当期基本投注对应单注奖金的50%。</p>
                        <p>
                            第十六条 超级大乐透设置奖池，奖池由未中出的浮动奖奖金和超出浮动奖单注奖金封顶限额部分的奖金组成。奖池与当期奖金中用于一等奖的部分及调节基金转入部分合并颁发一等奖奖金。</p>
                        <p>
                            第十七条 调节基金包括按销售总额的1%提取部分、浮动奖奖金按元取整后的余额和逾期未退票的票款。调节基金专项用于支付各种不可预见情况下的奖金支出风险、调节浮动奖奖金以及设立特别奖。动用调节基金设立特别奖，应当报财政部审核批准。</p>
                        <p>
                            第十八条 一、二、三等奖按照该奖级实际中奖注数平均分配该奖级奖金。当上一奖级单注奖金低于下一奖级单注奖金的两倍时，上一奖级单注奖金补足至下一奖级单注奖金的两倍，但补足后的单注奖金最高限额500万元，所需资金从调节基金中支付，若调节基金不足时，用彩票发行费垫支。</p>
                        <p>
                            <strong></strong>&nbsp;</p>
                        <p>
                            <strong>第四章 开奖</strong></p>
                        <p>
                            第十九条 超级大乐透每周一、三、六开奖。</p>
                        <p>
                            第二十条 每期开奖时，在公证人员封存销售数据资料之后，并在其监督下从01—35共35个号码中随机摇出5个前区号码，从01—12共12个号码中随机摇出2个后区号码。5个前区号码和2个后区号码组成当期开奖号码。</p>
                        <p>
                            第二十一条 每期开奖后，由国家体育总局体育彩票管理中心将当期销售总额、开奖号码、各奖级中奖情况以及奖池资金余额等信息，通过新闻媒体向社会公布，并将开奖结果通知各销售终端。</p>
                        <p>
                            <strong></strong>&nbsp;</p>
                        <p>
                            <strong>第五章 中奖</strong></p>
                        <p>
                            第二十二条 超级大乐透根据投注号码与当期开奖号码相符情况确定相应中奖资格：</p>
                        <p>
                            一等奖：投注号码与当期开奖号码全部相同(顺序不限，下同)，即中奖；</p>
                        <p>
                            二等奖：投注号码与当期开奖号码中的5个前区号码及任意1个后区号码相同，即中奖；</p>
                        <p>
                            三等奖：投注号码与当期开奖号码中的5个前区号码相同，即中奖；</p>
                        <p>
                            四等奖：投注号码与当期开奖号码中的任意4个前区号码及2个后区号码相同，即中奖；</p>
                        <p>
                            五等奖：投注号码与当期开奖号码中的任意4个前区号码及任意1个后区号码相同，即中奖；</p>
                        <p>
                            六等奖：投注号码与当期开奖号码中的任意4个前区号码相同，或者任意3个前区号码及2个后区号码相同，即中奖；</p>
                        <p>
                            七等奖：投注号码与当期开奖号码中的任意3个前区号码及任意1个后区号码相同，或者任意2个前区号码及2个后区号码相同，即中奖；</p>
                        <p>
                            八等奖：投注号码与当期开奖号码中的任意3个前区号码相同，或者任意1个前区号码及2个后区号码相同，或者任意2个前区号码及任意1个后区号码相同，或者2个后区号码相同，即中奖。</p>
                        <p>
                            第二十三条 当期每注投注号码只有一次中奖机会，不兼中兼得，另行设立的特别奖除外。</p>
                        <p>
                            <strong></strong>&nbsp;</p>
                        <p>
                            <strong>第六章 兑奖</strong></p>
                        <p>
                            第二十四条 超级大乐透兑奖当期有效。每期自开奖之日起60天为兑奖期，逾期未兑视为弃奖，弃奖奖金纳入彩票公益金。</p>
                        <p>
                            第二十五条 中奖彩票为兑奖唯一凭证，中奖彩票因玷污、损坏等原因不能正确识别的，不能兑奖。</p>
                        <p>
                            第二十六条 兑奖机构有权查验中奖者的中奖彩票及有效身份证件，兑奖者应予配合。</p>
                        <p>
                            第二十七条 凡伪造、涂改中奖彩票，冒领奖金者，送交司法机关追究法律责任。</p>
                        <p>
                            <strong></strong>&nbsp;</p>
                        <p>
                            <strong>第七章 附则</strong></p>
                        <p>
                            第二十八条 本规则自批准之日起执行。</p>
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
