<%@ page language="C#" autoeventwireup="true" inherits="JCZC_BuyZQBF_DG, App_Web_giir6iew" enableEventValidation="false" %>
<%@ Register src="../UserControls/Head.ascx" tagname="WebHead" tagprefix="uc1" %>
<%@ Register src="../Home/Room/UserControls/WebFoot.ascx" tagname="WebFoot" tagprefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>比分-竞彩足球</title>
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
    <link rel="shortcut icon" href="../favicon.ico" />
    <link href="../Home/Room/Style/common.css" rel="stylesheet" type="text/css" />
    <link href="../Home/Room/Style/StyleSheet.css" rel="stylesheet" type="text/css" />
    <link href="Style/tips_globle.css" rel="stylesheet" type="text/css" />
    <link href="Style/public.css" rel="stylesheet" type="text/css" />
    <link href="Style/trade.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="buy_form" runat="server" ajax="Buy_Dg_Handler.ashx">
    <uc1:WebHead ID="WebHead1" runat="server" />
    <div id="gc_bg">
        <div id="position">
            <span class="fa">当前位置：<a href="/" target="_parent"><%=_Site.Name %></a> > <a href="/jczc/buyspf.aspx" target="_parent">足球投注</a></span></div>
        <div id="wrap">
            <div class="nav_button">
                <ul>
                    <li class="butt2"><a href="BuySPF.aspx">
                        让球胜平负</a></li>
                    <li class="butt2"><a href="BuyZJQS.aspx">
                        总进球数</a></li>
                    <li class="butt1"><a href="BuyZQBF.aspx">
                        比分</a></li>
                    <li class="butt2"><a href="BuyBQC.aspx">
                        半全场</a></li>
                    <li class="time">销售时间：周一至周五 <font class="red">09:00～22:30</font> 周六至周日 <font class="red">
                        09:00～00:30</font></li></ul>
            </div>
            <div class="choice">
    <div class="fsds">
      <div class="l">
      <input type="radio" checked="checked">
      <label for="dgjc">单关投注</label>
      <input type="radio" onclick="window.location.href='BuyZQBF.aspx'">
      <label for="ggjc" >过关投注</label>
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
                    <img src="Images/btn_sai.gif" style="cursor: pointer;"
                        onclick="document.getElementById('leagueBox').style.display='block'" align="absmiddle"
                        alt="赛事选择">
                    已隐藏<span class="red" id="hideCount">0</span>场比赛 <a href="javascript:void 0" id="showAllTeam">
                        <font color="#ff0000">恢复</font></a> <span style="display: none"><a href="javascript:void(0)"
                            id="lookHistory" class="alink">查看历史赛果</a></span>
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
                                    <img src="Images/select_all.gif" alt="全选" style="cursor: pointer;"
                                        id="selectAllBtn" /><img src="Images/select_alt.gif"
                                            alt="反选" style="cursor: pointer;" id="selectOppBtn" /><img src="Images/close2.gif"
                                                alt="关闭" style="cursor: pointer;" onclick="document.getElementById('leagueBox').style.display='none'" />
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <!-- 日期选择开始 -->
                <div style="position: absolute; left: 530px; top: 230px;">
                </div>
                 <table class="ttd showodds" id="table_vs" width="100%" border="0" cellpadding="0" cellspacing="1">
                  <tbody><tr class="gg_form_tr_01">
                  <td rowspan="2">赛事编号</td>
                  <td rowspan="2" width="62">赛事<br />类型 </td>
                  <td rowspan="2">截止<br />时间</td>
                  <td rowspan="2">主队</td>
                  <td rowspan="2">客队</td>
                   <td colspan="3">
                    <select id="op_col">
                      <option value="99家平均">99家平均欧指</option>
                      <option value="威廉希尔">威廉希尔</option>
                      <option value="立博">立博</option>
                      <option value="Bet365">Bet365</option>
                      <option value="澳门彩票">澳门彩票</option>
                    </select></td>
                  <td rowspan="2">数据</td>    
                  <td rowspan="2">请选择投注</td>
                  </tr>
                  <tr class="gg_form_tr_02">
                  <td height="18">主胜</td>
                  <td>主平</td>
                  <td>主负</td>
                  </tr>
                     <%= MatchList %>
                    </tbody>
                </table>
                 <!-- start 合买区  !-->
  <table class="bd_touzhu blank" width="99%" border="0" cellpadding="0" cellspacing="0">
  <tbody><tr>
  <td class="l" valign="top" width="58%">
  <table class="table_jczqtz_gg" width="98%" border="0" cellpadding="4" cellspacing="0">
  <tbody><tr>
  <td class="jczqtouzu_title_gg"><span class="bold">您选择的场次及投注选项</span></td>
  </tr>
  <tr>
  <td><table class="table_bdtz_gg" width="100%" border="0" cellpadding="4" cellspacing="0">
    <tbody><tr class="t02">
      <td width="100" align="center">赛事编号</td>
      <td align="center">比赛对阵</td>
      <td align="center" class="bnone">您的投注选项</td>
    </tr>
      </tbody>
      <tbody id="row_tpl" >
          <tr class="t03" style="display:none"><td><input checked="checked" value="2929" name="m2929" type="checkbox"><span>周四006</span></td><td align="center">巴兰基利亚青年 VS 蒙特维迪奥竞技</td>
          <td align="center" class="bnone">
          <label style="display:none"><input type="checkbox"checked="checked"value="3A"/>胜其他</label>
          <label style="display:none"><input type="checkbox"checked="checked"value="10"/>1:0</label>
          <label style="display:none"><input type="checkbox"checked="checked"value="20"/>2:0</label>
          <label style="display:none"><input type="checkbox"checked="checked"value="21"/>2:1</label>
          <label style="display:none"><input type="checkbox"checked="checked"value="30"/>3:0</label>
          <label style="display:none"><input type="checkbox"checked="checked"value="31"/>3:1</label>
          <label style="display:none"><input type="checkbox"checked="checked"value="32"/>3:2</label>
          <label style="display:none"><input type="checkbox"checked="checked"value="40"/>4:0</label>
          <label style="display:none"><input type="checkbox"checked="checked"value="41"/>4:1</label>
          <label style="display:none"><input type="checkbox"checked="checked"value="42"/>4:2</label>
          <label style="display:none"><input type="checkbox"checked="checked"value="50"/>5:0</label>
          <label style="display:none"><input type="checkbox"checked="checked"value="51"/>5:1</label>
          <label style="display:none"><input type="checkbox"checked="checked"value="52"/>5:2</label>
          <label style="display:none"><input type="checkbox"checked="checked"value="1A"/>平其他</label>
          <label style="display:none"><input type="checkbox"checked="checked"value="00"/>0:0</label>
          <label style="display:none"><input type="checkbox"checked="checked"value="11"/>1:1</label>
          <label style="display:none"><input type="checkbox"checked="checked"value="22"/>2:2</label>
          <label style="display:none"><input type="checkbox"checked="checked"value="33"/>3:3</label>
          <label style="display:none"><input type="checkbox"checked="checked"value="0A"/>负其他</label>
          <label style="display:none"><input type="checkbox"checked="checked"value="01"/>0:1</label>
          <label style="display:none"><input type="checkbox"checked="checked"value="02"/>0:2</label>
          <label style="display:none"><input type="checkbox"checked="checked"value="12"/>1:2</label>
          <label style="display:none"><input type="checkbox"checked="checked"value="03"/>0:3</label>
          <label style="display:none"><input type="checkbox"checked="checked"value="13"/>1:3</label>
          <label style="display:none"><input type="checkbox"checked="checked"value="23"/>2:3</label>
          <label style="display:none"><input type="checkbox"checked="checked"value="04"/>0:4</label>
          <label style="display:none"><input type="checkbox"checked="checked"value="14"/>1:4</label>
          <label style="display:none"><input type="checkbox"checked="checked"value="24"/>2:4</label>
          <label style="display:none"><input type="checkbox"checked="checked"value="05"/>0:5</label>
          <label style="display:none"><input type="checkbox"checked="checked"value="15"/>1:5</label>
          <label style="display:none"><input type="checkbox"checked="checked"value="25"/>2:5</label>
          </td></tr>
          </tbody>
      <tbody id="selectTeams"></tbody>
  </table></td>
  </tr>
  <tr>
  <td align="center" height="50"><span style="line-height: 22px; cursor: pointer;" id="clearAllSelect"><img src="Images/b_img_014.gif" title="清空投注"></span></td>
  </tr>
  </tbody></table>
  </td>
  <td class="r" valign="top"><table class="table_jczqtz_gg" style="" width="100%" border="0" cellpadding="4" cellspacing="0">
     <tbody><tr>
  <td colspan="5" class="jczqtouzu_title_gg">确认投注信息及购买</td>
  </tr>
      <tr>
        <td><table class="table_bdtz_gg" width="100%" border="0" cellpadding="4" cellspacing="0" style="margin:0;">
          <tbody><tr class="t04">
            <td>1、过关方式</td>
            </tr>
          <tr class="t05">
            <td><input name="ssq_dg" checked="checked" type="radio">单关(您选择了<span style="color:#F00" id="selectMatchNum">0</span>场比赛单关投注)</td>
            </tr>
           <tr class="t04">
            <td>2、选择投注倍数</td>
          </tr>
          <tr class="t05">
            <td align="left" bgcolor="#ffffff">倍数：<input class="jczqtz_input" id="buybs" value="1" size="7" maxlength="5"> (最高99999倍) </td>
            </tr>
            <tr class="t04">
            <td>4、确认投注结果</td>
            </tr>
            <tr>
            <td class="td_pad">方案注数<span class="r14px" id="showCount">0</span>注，倍数<span class="r14px" id="showBS">1</span>倍，总金额<span class="r14px" id="showMoney">￥0.00</span>元<br />
        <div class="touz_btn"><img src="Images/btn_dg.gif" id="dgBtn" border="0" style="cursor: pointer;" alt="确认代购"></div>	</td>
            </tr>
        </tbody></table>
  </td>
      </tr>
    </tbody></table></td>
  </tr>
  </tbody>
  </table>
  <!-- end合买区  !-->
  <div class="sg_text01"><strong>投注提示</strong>：<br />
  <span>1、“+”号为客队让主队，“-”号为主队让客队。</span><br />
  <span>2、请注意“让球”只适用于胜平负玩法（和其他玩法不同）。</span><br />  
  <span>3、表中即时的单场浮动奖金已计算入返奖率并仅作参考，实际派彩奖金以官方截止销售时的投注额计算后公布为准。</span><br />
  <span class="red">4、特别提示：表中显示中奖金额=每注（2元）中奖奖金。</span><br />
  </div>
            <!--投注结束 -->
        </div>
    </div>
<input type="hidden" id="jsonggtype" value="{'单关':'A0','2串1':'AA','3串1':'AB','3串3':'AC','3串4':'AD','4串1':'AE','4串4':'AF','4串5':'AG','4串6':'AH','4串11':'AI','5串1':'AJ','5串5':'AK','5串6':'AL','5串10':'AM','5串16':'AN','5串20':'AO','5串26':'AP','6串1':'AQ','6串6':'AR','6串7':'AS','6串15':'AT','6串20':'AU','6串22':'AV','6串35':'AW','6串42':'AX','6串50':'AY','6串57':'AZ'}" />
<input type="hidden" id="ggtypename" name="sgtypename" value="普通过关" />
<input type="hidden" id="ggtypeid" name="ggtypeid" value="A0" />
<input type="hidden" id="codes" name="codes" />
<input type="hidden" id="totalmoney" name="totalmoney" />
<input type="hidden" id="zhushu" name="zhushu" />
<input type="hidden" id="beishu" name="beishu" />
<input type="hidden" id="playid" name="playid" value="7202" />
<input type="hidden" id="playname" name="playname" value="进球比分" />
<input type="hidden" id="lotid" name="lotid" value="72" />
</div>
<uc2:WebFoot ID="WebFoot1" runat="server" />
<asp:HiddenField runat="server" ID="HidNowTime"></asp:HiddenField>
</form>
</body>
<script type="text/javascript" src="JScript/tool.js"></script>
<script type="text/javascript" src="JScript/com.js"></script>
<script type="text/javascript" src="JScript/dg_bf.js"></script>
<script id="Script1" type="text/javascript" src="JScript/form.js?3"></script>
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