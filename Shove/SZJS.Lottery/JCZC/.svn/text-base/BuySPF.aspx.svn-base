<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BuySPF.aspx.cs" Inherits="JCZC_BuySPF" %>

<%@ Register Src="../UserControls/Head.ascx" TagName="WebHead" TagPrefix="uc1" %>
<%@ Register Src="../Home/Room/UserControls/WebFoot.ascx" TagName="WebFoot" TagPrefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>让球胜平负-竞彩足球</title>
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
    <link rel="shortcut icon" href="../favicon.ico" />
    <link href="../Home/Room/Style/common.css" rel="stylesheet" type="text/css" />
    <link href="../Home/Room/Style/StyleSheet.css" rel="stylesheet" type="text/css" />
    <link href="Style/tips_globle.css" rel="stylesheet" type="text/css" />
    <link href="Style/public.css" rel="stylesheet" type="text/css" />
    <link href="Style/trade.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="buy_form" runat="server" ajax="Buy_Handler.ashx">
    <uc1:WebHead ID="WebHead1" runat="server" />
    <div id="gc_bg">
        <div id="position">
            <span class="fa">当前位置：<a href="/" target="_parent"><%=_Site.Name %></a> > <a href="/jczc/buyspf.aspx"
                target="_parent">足球投注</a> > </span><span class="sub_t">让球胜平负(最多选择6场赛事)</span></div>
        <div id="wrap">
            <div class="nav_button">
                <ul>
                    <li class="butt1"><a href="BuySPF.aspx">让球胜平负</a></li>
                    <li class="butt2"><a href="BuyZJQS.aspx">总进球数</a></li>
                    <li class="butt2"><a href="BuyZQBF.aspx">比分</a></li>
                    <li class="butt2"><a href="BuyBQC.aspx">半全场</a></li>
                    <li class="time">销售时间：周一至周五 <font class="red">09:00～22:30</font> 周六至周日 <font class="red">
                        09:00～00:30</font></li></ul>
            </div>
            <div class="choice">
                <div class="fsds">
                    <div class="l">
                        <input type="radio" onclick="window.location.href='BuySPF_DG.aspx'">
                        <label for="dgjc">
                            单关投注</label>
                        <input type="radio" checked="checked">
                        <label for="ggjc">
                            过关投注</label>
                    </div>
                </div>
            </div>
            <!--投注开始 -->
            <!-- 开始选择 !-->
            <div class="touzhu" style="border-top-color: #FFF;">
                <div class="reply_type_01">
                    <p class="time_scroll">
                        <span class="time_scroll2" id="TimeDisplay"></span>
                    </p>
                    <img src="Images/btn_sai.gif" style="cursor: pointer;" onclick="document.getElementById('leagueBox').style.display='block'"
                        align="absmiddle" alt="赛事选择">
                    已隐藏<span class="red" id="hideCount">0</span>场比赛 <a href="javascript:void 0" id="showAllTeam">
                        <font color="#ff0000">恢复</font></a> |
                    <input name="rq" checked="checked" id="showRq" type="checkbox" />
                    <asp:Label ID="lbShowRq" runat="server"></asp:Label>
                    <input name="norq" checked="checked" id="showNoRq" type="checkbox" />
                    <asp:Label ID="lbShowRoRaq" runat="server"></asp:Label>
                </div>
                <div class="searchbg">
                </div>
                <div class="ss_slect">
                    <table style="border: 1px solid #1989D7; display: none;" id="leagueBox" width="115"
                        bgcolor="#ffffff" border="0" cellpadding="3" cellspacing="1">
                        <tbody>
                            <tr>
                                <td bgcolor="#D1E7FC" height="22">
                                    <table width="100%" border="0" cellpadding="0" cellspacing="0">
                                        <tbody>
                                            <tr>
                                                <td>
                                                    &nbsp;赛事选择
                                                </td>
                                                <td width="1" align="right">
                                                    <img src="Images/btnClose.gif" alt="关闭" style="cursor: pointer; padding-right: 3px;"
                                                        onclick="document.getElementById('leagueBox').style.display='none'" />
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <%= lgList%>
                                </td>
                            </tr>
                            <tr>
                                <td align="center" bgcolor="#f1f8fe" height="25">
                                    <img src="Images/select_all.gif" alt="全选" style="cursor: pointer;" id="selectAllBtn" /><img
                                        src="Images/select_alt.gif" alt="反选" style="cursor: pointer;" id="selectOppBtn" /><img
                                            src="Images/close2.gif" alt="关闭" style="cursor: pointer;" onclick="document.getElementById('leagueBox').style.display='none'" />
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <!-- 日期选择开始 -->
                <div style="position: absolute; left: 530px; top: 230px;">
                </div>
                <!-- 开始对阵列表 !-->
                <table class="ttd showodds" id="table_vs" width="100%" border="0" cellpadding="0"
                    cellspacing="1">
                    <tbody>
                        <tr class="gg_form_tr_01">
                            <td rowspan="2">
                                赛事编号
                            </td>
                            <td rowspan="2" width="62">
                                赛事<br />
                                类型
                            </td>
                            <td rowspan="2">
                                截止<br />
                                时间
                            </td>
                            <td rowspan="2">
                                主队
                            </td>
                            <td rowspan="2">
                                让球
                            </td>
                            <td rowspan="2">
                                客队
                            </td>
                            <td colspan="3">
                                <select id="op_col">
                                    <option value="99家平均">99家平均欧指</option>
                                    <option value="威廉希尔">威廉希尔</option>
                                    <option value="立博">立博</option>
                                    <option value="Bet365">Bet365</option>
                                    <option value="澳门彩票">澳门彩票</option>
                                </select>
                            </td>
                            <td rowspan="2">
                                数据
                            </td>
                            <td colspan="4">
                                请选择投注
                            </td>
                        </tr>
                        <tr class="gg_form_tr_02">
                            <td height="18">
                                主胜
                            </td>
                            <td>
                                平局
                            </td>
                            <td>
                                主负
                            </td>
                            <td>
                                胜(3)
                            </td>
                            <td>
                                平(1)
                            </td>
                            <td>
                                负(0)
                            </td>
                            <td>
                                全包
                            </td>
                        </tr>
                        <%= MatchList %>
                    </tbody>
                </table>
                <!-- start 合买区  !-->
                <table class="bd_touzhu blank" width="99%" border="0" cellpadding="0" cellspacing="0">
                    <tbody>
                        <tr>
                            <td class="l" valign="top" width="58%">
                                <table class="table_jczqtz_gg" width="98%" border="0" cellpadding="4" cellspacing="0">
                                    <tbody>
                                        <tr>
                                            <td class="jczqtouzu_title_gg">
                                                <span class="bold">您选择的场次及投注选项</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <table class="table_bdtz_gg" width="100%" border="0" cellpadding="4" cellspacing="0">
                                                    <tbody>
                                                        <tr class="t02">
                                                            <td width="100" align="center">
                                                                赛事编号
                                                            </td>
                                                            <td align="center">
                                                                比赛对阵
                                                            </td>
                                                            <td align="center" class="bnone">
                                                                您的投注选项
                                                            </td>
                                                        </tr>
                                                    </tbody>
                                                    <tbody id="row_tpl" style="display: none;">
                                                        <tr class="t03">
                                                            <td>
                                                                <input checked="checked" value="2929" name="m2929" type="checkbox"><span>周四006</span>
                                                            </td>
                                                            <td align="center">
                                                                巴兰基利亚青年 VS 蒙特维迪奥竞技
                                                            </td>
                                                            <td align="center" class="bnone">
                                                                <label style="display: none;">
                                                                    <input checked="checked" value="3" type="checkbox">胜</label><label style="display: none;"><input
                                                                        checked="checked" value="1" type="checkbox">平</label><label style="display: none;"><input
                                                                            checked="checked" value="0" type="checkbox">负</label>
                                                            </td>
                                                        </tr>
                                                    </tbody>
                                                    <tbody id="selectTeams">
                                                    </tbody>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="center" height="50">
                                                <span style="line-height: 22px; cursor: pointer;" id="clearAllSelect">
                                                    <img src="Images/b_img_014.gif" title="清空投注"></span>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </td>
                            <td class="r" valign="top">
                                <table class="table_jczqtz_gg" style="" width="100%" border="0" cellpadding="4" cellspacing="0">
                                    <tbody>
                                        <tr>
                                            <td colspan="5" class="jczqtouzu_title_gg">
                                                确认投注信息及购买
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <table class="table_bdtz_gg" width="100%" border="0" cellpadding="4" cellspacing="0"
                                                    style="margin: 0;">
                                                    <tbody>
                                                        <tr class="t04">
                                                            <td>
                                                                1、选择过关类型
                                                            </td>
                                                        </tr>
                                                        <tr class="t05">
                                                            <td>
                                                                <input name="ssq_dg" checked="checked" type="radio">普通过关<div style="display: none;">
                                                                    <input name="ssq_dg" disabled="disabled" type="radio">组合过关<input name="ssq_dg" disabled="disabled"
                                                                        type="radio">自由过关
                                                                </div>
                                                            </td>
                                                        </tr>
                                                        <tr class="t04">
                                                            <td>
                                                                2、选择过关方式
                                                            </td>
                                                        </tr>
                                                        <tr class="t05">
                                                            <td id="ggList" align="left" bgcolor="#ffffff">
                                                                <div>
                                                                    <label style="display: none;" for="r2c1">
                                                                        <input name="ggtype_radio" id="r2c1" value="2串1" type="radio">2串1</label>
                                                                    <label style="display: none;" for="r3c1">
                                                                        <input name="ggtype_radio" id="r3c1" value="3串1" type="radio">3串1</label>
                                                                    <label style="display: none;" for="r3c3">
                                                                        <input name="ggtype_radio" id="r3c3" value="3串3" type="radio">3串3</label>
                                                                    <label style="display: none;" for="r3c4">
                                                                        <input name="ggtype_radio" id="r3c4" value="3串4" type="radio">3串4</label>
                                                                    <label style="display: none;" for="r4c1">
                                                                        <input name="ggtype_radio" id="r4c1" value="4串1" type="radio">4串1</label>
                                                                    <label style="display: none;" for="r4c4">
                                                                        <input name="ggtype_radio" id="r4c4" value="4串4" type="radio">4串4</label>
                                                                    <label style="display: none;" for="r4c5">
                                                                        <input name="ggtype_radio" id="r4c5" value="4串5" type="radio">4串5</label>
                                                                    <label style="display: none;" for="r4c6">
                                                                        <input name="ggtype_radio" id="r4c6" value="4串6" type="radio">4串6</label>
                                                                    <label style="display: none;" for="r4c11">
                                                                        <input name="ggtype_radio" id="r4c11" value="4串11" type="radio">4串11</label>
                                                                    <label style="display: none;" for="r5c1">
                                                                        <input name="ggtype_radio" id="r5c1" value="5串1" type="radio">5串1</label>
                                                                    <label style="display: none;" for="r5c5">
                                                                        <input name="ggtype_radio" id="r5c5" value="5串5" type="radio">5串5</label>
                                                                    <label style="display: none;" for="r5c6">
                                                                        <input name="ggtype_radio" id="r5c6" value="5串6" type="radio">5串6</label>
                                                                    <label style="display: none;" for="r5c10">
                                                                        <input name="ggtype_radio" id="r5c10" value="5串10" type="radio">5串10</label>
                                                                    <label style="display: none;" for="r5c16">
                                                                        <input name="ggtype_radio" id="r5c16" value="5串16" type="radio">5串16</label>
                                                                    <label style="display: none;" for="r5c20">
                                                                        <input name="ggtype_radio" id="r5c20" value="5串20" type="radio">5串20</label>
                                                                    <label style="display: none;" for="r5c26">
                                                                        <input name="ggtype_radio" id="r5c26" value="5串26" type="radio">5串26</label>
                                                                    <label style="display: none;" for="r6c1">
                                                                        <input name="ggtype_radio" id="r6c1" value="6串1" type="radio">6串1</label>
                                                                    <label style="display: none;" for="r6c6">
                                                                        <input name="ggtype_radio" id="r6c6" value="6串6" type="radio">6串6</label>
                                                                    <label style="display: none;" for="r6c7">
                                                                        <input name="ggtype_radio" id="r6c7" value="6串7" type="radio">6串7</label>
                                                                    <label style="display: none;" for="r6c15">
                                                                        <input name="ggtype_radio" id="r6c15" value="6串15" type="radio">6串15</label>
                                                                    <label style="display: none;" for="r6c20">
                                                                        <input name="ggtype_radio" id="r6c20" value="6串20" type="radio">6串20</label>
                                                                    <label style="display: none;" for="r6c22">
                                                                        <input name="ggtype_radio" id="r6c22" value="6串22" type="radio">6串22</label>
                                                                    <label style="display: none;" for="r6c35">
                                                                        <input name="ggtype_radio" id="r6c35" value="6串35" type="radio">6串35</label>
                                                                    <label style="display: none;" for="r6c42">
                                                                        <input name="ggtype_radio" id="r6c42" value="6串42" type="radio">6串42</label>
                                                                    <label style="display: none;" for="r6c50">
                                                                        <input name="ggtype_radio" id="r6c50" value="6串50" type="radio">6串50</label>
                                                                    <label style="display: none;" for="r6c57">
                                                                        <input name="ggtype_radio" id="r6c57" value="6串57" type="radio">6串57</label>
                                                                    <span class="clear"></span>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                        <tr class="t04">
                                                            <td>
                                                                3、选择投注倍数
                                                            </td>
                                                        </tr>
                                                        <tr class="t05">
                                                            <td align="left" bgcolor="#ffffff">
                                                                倍数：<input class="jczqtz_input" id="buybs" value="1" size="7" maxlength="5">
                                                                (最高99999倍)
                                                            </td>
                                                        </tr>
                                                        <tr class="t04">
                                                            <td>
                                                                4、确认投注结果
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="td_pad">
                                                                方案注数<span class="r14px" id="showCount">0</span>注，倍数<span class="r14px" id="showBS">1</span>倍，总金额<span
                                                                    class="r14px" id="showMoney">￥0.00</span>元<br />
                                                                方案理论最高奖金：<span id="MaxPrice" class="r14px">￥0.00</span>&nbsp;&nbsp;<a href="javascript:void(0);"
                                                                    id="lookDetails">查看奖金明细</a>
                                                                <div class="touz_btn">
                                                                    <img src="Images/btn_dg.gif" id="dgBtn" border="0" style="cursor: pointer;" alt="确认代购"></div>
                                                            </td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <!-- end合买区  !-->
                <div class="sg_text01">
                    <strong>投注提示</strong>：<br />
                    <span>1、单个方案最多只能选择6场赛事进行投注。</span><br />
                    <span>2、“+”号为客队让主队，“-”号为主队让客队。</span><br />
                    <span>3、请注意“让球”只适用于胜平负玩法（和其他玩法不同）。</span><br />
                    <span>4、表中所有固定奖金额仅供参考，2或3场过关投注，单注最高奖金限额20万元，4或5场过关投注，单注最高奖金限额50万元，6场过关投注，单注最高奖金限额100万元。</span><br />
                    <span class="red">5、特别提示：表中显示中奖金额=每1元对应中奖奖金。</span><br />
                </div>
                <!--投注结束 -->
            </div>
        </div>
        <input type="hidden" id="jsonggtype" value="{'单关':'A0','2串1':'AA','3串1':'AB','3串3':'AC','3串4':'AD','4串1':'AE','4串4':'AF','4串5':'AG','4串6':'AH','4串11':'AI','5串1':'AJ','5串5':'AK','5串6':'AL','5串10':'AM','5串16':'AN','5串20':'AO','5串26':'AP','6串1':'AQ','6串6':'AR','6串7':'AS','6串15':'AT','6串20':'AU','6串22':'AV','6串35':'AW','6串42':'AX','6串50':'AY','6串57':'AZ'}" />
        <input type="hidden" id="ggtypename" name="sgtypename" value="普通过关" />
        <input type="hidden" id="ggtypeid" name="ggtypeid" value="AA" />
        <input type="hidden" id="codes" name="codes" />
        <input type="hidden" id="totalmoney" name="totalmoney" />
        <input type="hidden" id="zhushu" name="zhushu" />
        <input type="hidden" id="beishu" name="beishu" />
        <input type="hidden" id="playid" name="playid" value="7201" />
        <input type="hidden" id="playname" name="playname" value="胜平负" />
        <input type="hidden" id="lotid" name="lotid" value="72" />
        <div class="layer" id="popWindow" style="position: absolute; z-index: 9999; display: none;
            top: 400px; left: 25%;">
            <div class="layer2">
                <div class="lay_box4">
                    <div class="title_t title_t4 clear">
                        <h4>
                            <span id="popWindowTitle">竞彩足球奖金明细</span></h4>
                        <a href="javascript:void(0)" class="del" title="关闭" onclick="document.getElementById('popWindow').style.display='none'"
                            alt="关闭">关闭</a></div>
                    <div class="lay_content2 scroll" id="popContent">
                        <table border="0" cellspacing="0" cellpadding="0" class="yuce_tablebox blank">
                            <tr class="trt">
                                <th>
                                    赛事编号
                                </th>
                                <th class="tb_line">
                                    比赛
                                </th>
                                <th class="tb_line">
                                    您的选择(奖金)
                                </th>
                                <th class="tb_line">
                                    最小奖金
                                </th>
                                <th class="tb_line">
                                    最大奖金
                                </th>
                            </tr>
                            <tr>
                                <td>
                                    周四026
                                </td>
                                <td>
                                    德甲
                                </td>
                                <td>
                                    胜(1.76) 平(3.07) 负(9.28)
                                </td>
                                <td class="vcenter">
                                    14.21
                                </td>
                                <td class="td_line vcenter">
                                    112.00
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    周四026
                                </td>
                                <td>
                                    德甲
                                </td>
                                <td>
                                    胜(1.76) 平(3.07) 负(9.28)
                                </td>
                                <td class="vcenter">
                                    4.21
                                </td>
                                <td class="td_line vcenter">
                                    12.00
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    周四026
                                </td>
                                <td>
                                    德甲
                                </td>
                                <td>
                                    胜(1.76) 平(3.07) 负(9.28)
                                </td>
                                <td class="vcenter">
                                    4.21
                                </td>
                                <td class="td_line vcenter">
                                    12.00
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    周四026
                                </td>
                                <td>
                                    德甲
                                </td>
                                <td>
                                    胜(1.76) 平(3.07) 负(9.28)
                                </td>
                                <td class="vcenter">
                                    4.21
                                </td>
                                <td class="td_line vcenter">
                                    12.00
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    周四026
                                </td>
                                <td>
                                    德甲
                                </td>
                                <td>
                                    胜(1.76) 平(3.07) 负(9.28)
                                </td>
                                <td class="vcenter">
                                    4.21
                                </td>
                                <td class="td_line vcenter">
                                    12.00
                                </td>
                            </tr>
                            <tr>
                                <td colspan="5" class="td_line">
                                    过关方式：<span class="red">9串1</span> 倍数：<span class="red">1</span>倍 方案总金额：<span class="red">￥2.00</span>
                                </td>
                            </tr>
                        </table>
                        <table border="0" cellspacing="0" cellpadding="0" class="yuce_tablebox">
                            <tr class="trt">
                                <th rowspan="2">
                                    命中场数
                                </th>
                                <th class="tb_line tb_line2">
                                    中奖注数
                                </th>
                                <th rowspan="2" class="tb_line">
                                    倍数
                                </th>
                                <th colspan="2" class="tb_line tb_line2">
                                    奖金范围
                                </th>
                            </tr>
                            <tr class="trt">
                                <th class="tb_line">
                                    5串1
                                </th>
                                <th class="tb_line">
                                    最小奖金
                                </th>
                                <th class="tb_line">
                                    最大奖金
                                </th>
                            </tr>
                            <tr>
                                <td>
                                    周四026
                                </td>
                                <td>
                                    1注
                                </td>
                                <td>
                                    1234
                                </td>
                                <td>
                                    4.21元[明细]
                                </td>
                                <td class="td_line vcenter">
                                    4.21元[明细]
                                </td>
                            </tr>
                            <tr>
                                <td colspan="5">
                                    注：奖金预测sp值为投注时即时sp值，最终奖金以开奖sp值为准<span class="red"></span>
                                </td>
                            </tr>
                        </table>
                        <table border="0" cellspacing="0" cellpadding="0" class="yuce_tablebox">
                            <tr class="trt">
                                <th>
                                    过关方式
                                </th>
                                <th class="tb_line">
                                    中奖注数
                                </th>
                                <th class="tb_line">
                                    中12场 最大奖金 中奖明细
                                </th>
                                <th class="tb_line">
                                    奖金
                                </th>
                            </tr>
                            <tr>
                                <td>
                                    9串1
                                </td>
                                <td>
                                    9565注
                                </td>
                                <td>
                                    <p class="td_width">
                                        [50]9.38×[46]4.27×[53]4.18×[51]3.29 ×[43]3.16×[54]3.09×1倍×2元×65% = 6991.85元</p>
                                </td>
                                <td class="td_line vcenter">
                                    13243.11元
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    合计
                                </td>
                                <td>
                                    23注
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                                <td class="td_line vcenter">
                                    <span class="bold">131.00</span>元
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <uc2:WebFoot ID="WebFoot1" runat="server" />
    <asp:HiddenField runat="server" ID="HidNowTime"></asp:HiddenField>
    </form>
</body>

<script type="text/javascript" src="JScript/tool.js"></script>

<script type="text/javascript" src="JScript/com.js"></script>

<script type="text/javascript" src="JScript/gg.js"></script>

<script id="config" type="text/javascript" src="JScript/form.js?1"></script>

<script type="text/javascript">
function stimeshow() {
    var nowTime = new Date(Date(document.getElementById("<%=HidNowTime.ClientID %>").value));

    var y = nowTime.getFullYear();
    var M = nowTime.getMonth() + 1;
    var d = nowTime.getDate();
    var h = nowTime.getHours();
    var m = nowTime.getMinutes();
    var s = nowTime.getSeconds();

    document.getElementById("TimeDisplay").innerHTML = M + "月" + d + "日 " + (h > 9 ? h : "0" + String(h)) + ":" + (m > 9 ? m : "0" + String(m)) + ":" + (s > 9 ? s : "0" + String(s));

    //时间差
    var TimePoor = nowTime.getTime() - new Date().getTime();
    document.getElementById("<%=HidNowTime.ClientID %>").value = new Date(new Date().getTime() + TimePoor + 1000);
}
setInterval(stimeshow,1000);
</script>

</html>
