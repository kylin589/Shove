<%@ page language="C#" autoeventwireup="true" inherits="Lottery_BuyJQC, App_Web_mg_ktxsi" enableEventValidation="false" %>

<%@ Register Assembly="Shove.Web.UI.4 For.NET 3.5" Namespace="Shove.Web.UI" TagPrefix="ShoveWebUI" %>
<%@ Register Src="../UserControls/Head.ascx" TagName="Head" TagPrefix="uc1" %>
<%@ Register Src="../Home/Room/UserControls/WebFoot.ascx" TagName="WebFoot" TagPrefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>四场进球彩：看足球买彩票，2元可中￥500万！-四场进球彩选号投注、合买、玩法介绍－<%= _Site.Name%></title>
    <meta name="keywords" content="四场进球彩选号投注、四场进球彩合买、四场进球彩玩法介绍" />
    <meta name="description" content="<%= _Site.Name%>提供四场进球彩选号投注、合买、玩法介绍等服务。" />
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
    <link rel="shortcut icon" href="../favicon.ico" />
    <link href="../Home/Room/Style/common.css" rel="stylesheet" type="text/css" />
    <link href="../Home/Room/Style/StyleSheet.css" rel="stylesheet" type="text/css" />
    <link href="../Home/Room/Style/zbuy.css" rel="stylesheet" type="text/css" />

    <script src="../Home/Room/JavaScript/BuyJQC.js" type="text/javascript"></script>

    <script src="../JavaScript/jquery-1.4.js" type="text/javascript"></script>

    <script src="../Home/Room/JavaScript/Public.js" type="text/javascript"></script>

    <script src="../JavaScript/Public.js" type="text/javascript"></script>

</head>
<body onload="clickPlayType('201');">
    <form id="form1" runat="server">
    <input id="tbPlayTypeID" name="tbPlayTypeID" type="hidden" />
    <asp:HiddenField ID="HidIsuseEndTime" runat="server" />
    <asp:HiddenField ID="HidIsuseID" runat="server" />
    <uc1:Head ID="Head1" runat="server" />
             <div style="margin:0 auto; margin-bottom:10px; width:986px;">
             <a href="BuySSC.aspx"> <img src="../Images/ads7.jpg" /></a></div>
    <div class="wrap">
        <div class="left">
            <div class="main1">
                <img alt="" src="../Home/Room/Images/scjqc_logo.gif" />
                <dl>
                    <dt>
                        <h1>
                            <span>四场进球彩</span>：两元赢取<span>￥500万</span></h1>
                        <a href="../Help/play15.aspx">玩法介绍</a><a href="../WinQuery/Default.aspx">中奖查询</a></dt>
                    <dd>
                        不定期开奖 <em>第<em id="currIsuseName"></em>期</em><br/>
                        投注截止:<span id="currIsuseEndTime"></span>离投注截止还有:<em
                            id="toCurrIsuseEndTime"></em></dd>
                </dl>
            </div>
            <div class="clear">
            </div>
            <div class="main2">
                <div id="con">
                    <ul id="tags">
                        <li id="tag0" class="selectTag"><a onclick="selectTag('tagContent0',this);newBuy();"
                            href="javascript:void(0)">选号投注</a></li>
                        <li id="tag1"><a onclick="newCoBuy(<%=LotteryID %>)" href="javascript:void(0)">参与合买</a></li>
                        <li id="tag2"><a onclick="followScheme(<%=LotteryID %>)" href="javascript:void(0)">定制跟单</a></li>
                        <li id="tag3"><a onclick="schemeAll(<%=LotteryID %>)" href="javascript:void(0)">全部方案</a></li>
                    </ul>
                    <div id="tagContent">
                        <div id="tagContent0" style="height: 470px;">
                            <div class="tag_input">
                                <input type='radio' name='playType' id='playType201' value='201' checked='checked'
                                    onclick='clickPlayType(this.value)' /><span>单式</span>
                                <input type='radio' name='playType' id='playType202' value='202' onclick='clickPlayType(this.value)' /><span>复式</span>
                                <input type='radio' name='playType' id='playType2011' value='2011' onclick='clickPlayType(this.value)'
                                    style="display: none" /><span style="display: none">单式预投</span>
                                <input type='radio' name='playType' id='playType2022' value='2022' onclick='clickPlayType(this.value)'
                                    style="display: none" /><span style="display: none">复式预投</span>
                            </div>
                            <iframe id="iframe_playtypes" name="iframe_playtypes" width="100%" frameborder="0"
                                height="100%" scrolling="no" onload="document.getElementById('iframe_playtypes').style.height=iframe_playtypes.document.body.scrollHeight;">
                            </iframe>
                        </div>
                        <div id="tagContent1" style="display: none">
                            <iframe id="iframeCoBuy" name="iframeCoBuy" width="100%" frameborder="0" scrolling="no"
                                onload="document.getElementById('iframeCoBuy').style.height=iframeCoBuy.document.body.scrollHeight;">
                            </iframe>
                        </div>
                        <div id="tagContent2" style="display: none">
                            <iframe id="iframeFollowScheme" name="iframeFollowScheme" width="100%" frameborder="0"
                                scrolling="no" onload="document.getElementById('iframeFollowScheme').style.height=iframeFollowScheme.document.body.scrollHeight;">
                            </iframe>
                        </div>
                        <div id="tagContent3" style="display: none">
                            <iframe id="iframeSchemeAll" name="iframeSchemeAll" width="100%" frameborder="0"
                                scrolling="no" onload="document.getElementById('iframeSchemeAll').style.height=iframeSchemeAll.document.body.scrollHeight;">
                            </iframe>
                        </div>
                    </div>
                </div>

                <script type="text/javascript">
                   function selectTag(showContent, selfObj) {
                   // 操作标签
                   var tag = document.getElementById("tags").getElementsByTagName("li");
                   var taglength = tag.length;
                   for (i = 0; i < taglength; i++) {
                       tag[i].className = "";
                   }
                   selfObj.parentNode.className = "selectTag";
                   // 操作内容
                   for (i = 0; j = document.getElementById("tagContent" + i); i++) {
                        j.style.display = "none";
                   }
                   document.getElementById(showContent).style.display = "block";
                 }
                </script>

            </div>
            <div class="clear">
            </div>
            <!--机选投注区 -->
            <div class="main3" id="tagContent4">
                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                    <tbody>
                        <tr>
                            <td align="right">
                                <select class="txtarea" size="7" name="list_LotteryNumber" multiple="multiple" id="list_LotteryNumber"
                                    style="width: 580px; height:147px;">
                                </select>
                            </td>
                            <td width="120px">
                                <ul id="touzhu_btns">
                                    <li>
                                        <input type="button" id="btn_2_Rand" onclick="if(this.disabled){this.style.cursor='';return false;}return iframe_playtypes.btn_2_RandClick();"
                                            class="random_btn" value="随机1注" /></li>
                                    <li>
                                        <input type="button" id="btn_2_Rand5" onclick="if(this.disabled){this.style.cursor='';return false;}return iframe_playtypes.btn_2_RandManyClick(5);"
                                            class="random_btn" value="随机5注" /></li>
                                    <li>
                                        <input id="random5" name="btnPaste" type="button" value="粘贴上传" onclick="CreateUplaodDialog();"
                                            class="random_btn" /></li>
                                    <li>
                                        <input type="button" name="btn_ClearSelect" id="btn_ClearSelect" class="del_btn"
                                            value="删除所选" onclick="return btn_ClearSelectClick();" /></li>
                                    <li>
                                        <input type="button" name="btn_Clear" id="btn_Clear" class="del_btn" value="删除全部"
                                            onclick="return btn_ClearClick();" /></li>
                                </ul>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <!--机选投注区结束 -->
            <div class="clear">
            </div>
            <!-- 金额显示区 -->
            <div class="main3" id="tagContent5">
                <div class="lot_data">
                    <input id="CoBuy" name="CoBuy" type="checkbox" onclick="oncbInitiateTypeClick(this);"
                        value="2">
                    <label for="do_syndicate" class="red for_checkbox">
                        发起合买</label>
                    <span id="multiple_box">倍投：<input type="text" class="i-a" value="1" id="tb_Multiple"
                        name="tb_Multiple" onblur="CheckMultiple();" onkeypress="return InputMask_Number();"
                        maxlength="2" style="ime-mode: disabled;" />
                        倍{最大99倍}&nbsp;&nbsp;&nbsp;&nbsp; </span>注数:<span class="red" id="lab_Num">0</span>注
                    &nbsp;&nbsp;&nbsp;&nbsp; <span id="total_amount_box" class="amount_box">金额：<span
                        class="red">2</span>元</span><span class="amount_box"> 方案金额：<span class="red" id="lab_SumMoney">0</span>元</span>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                </div>
            </div>
            <!-- 金额显示区结束 -->
            <div class="clear">
            </div>
            <!--发起合买方案  -->
            <!--发起合买方案  -->
            <div class="mian4" id="trShowJion">
                <table width="100%" cellspacing="0" cellpadding="0" border="0" class="buy_table">
                    <tbody>
                        <tr id="trSchemeMoney" style="display: none">
                            <td class="td_title">
                                方案金额
                            </td>
                            <td class="td_content">
                                <p>
                                    <input class="i-a" type="text" onkeypress="return InputMask_Number();" id="tb_SchemeMoney"
                                        name="tb_SchemeMoney" onblur="return checkSchemeMoney(this);" />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;只能是2的倍数。
                                </p>
                            </td>
                        </tr>
                        <tr>
                            <td class="td_title">
                                佣金比率
                            </td>
                            <td class="td_content">
                                <p>
                                    <input class="i-a" type="text" value="0" onkeypress="return InputMask_Number();"
                                        id="tb_SchemeBonusScale" name="tb_SchemeBonusScale" onblur="return SchemeBonusScale();" />%
                                    佣金比例只能为0~10。
                                </p>
                            </td>
                        </tr>
                        <tr>
                            <td class="td_title">
                                我要分成
                            </td>
                            <td class="td_content">
                                <p>
                                    <input class="i-a" type="text" runat="server" id="tb_Share" onkeypress="return InputMask_Number();"
                                        onblur="return CheckShare();" value="1" />份，每份 <span id="lab_ShareMoney" style="color: Red">
                                            0.00</span>&nbsp;元。&nbsp;&nbsp; <font color="#ff0000">【注】</font>份数不能为空，且能整除总金额。
                                </p>
                            </td>
                        </tr>
                        <tr>
                            <td class="td_title">
                                我要认购
                            </td>
                            <td class="td_content">
                                <p>
                                    <input class="i-a" type="text" runat="server" onkeypress="return InputMask_Number();"
                                        id="tb_BuyShare" onblur="return CheckBuyShare();" value="1" />份，金额 <span id="lab_BuyMoney"
                                            style="color: Red">0.00</span>&nbsp;元。
                                </p>
                            </td>
                        </tr>
                        <tr>
                            <td class="td_title">
                                我要保底
                            </td>
                            <td class="td_content">
                                <p>
                                    <input class="i-a" type="text" value="0" onkeypress="return InputMask_Number();"
                                        id="tb_AssureShare" onblur="return CheckAssureShare();" value="0" />份，保底 <span id="lab_AssureMoney"
                                            style="color: Red">0.00</span>元。 【注】保底资金将被暂时冻结,在当期截止销售时、或根据此方案的销售、撤单情况,冻结资金将返还到您的电话投注卡账户中。
                                </p>
                            </td>
                        </tr>
                        <tr>
                            <td class="td_title">
                                招股对象
                            </td>
                            <td class="td_content">
                                <p>
                                    <input class="i-c" type="text" id="tb_OpenUserList" /></p>
                                <p>
                                    【注】您可以选择一些用户作为招股对象，用户名之间用 , 隔开。 如：louis,中个500万,双色球高手,...填写错误的用户名、格式不正确、或者没有填写则表示向全部会员招股。
                                </p>
                            </td>
                        </tr>
                        <tr>
                            <td class="td_title">
                                方案标题
                            </td>
                            <td class="td_content">
                                <p>
                                    <input class="i-c" type="text" value="0" id="tb_Title" /></p>
                                <p>
                                    【注】标题不能为空,长度不能超过 50 个字符。
                                </p>
                            </td>
                        </tr>
                        <tr>
                            <td class="td_title">
                                方案描述
                            </td>
                            <td class="td_content">
                                <textarea class="i-d" cols="20" rows="2" id="tb_Description"></textarea>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <!--发起合买方案结束  -->
            <div class="mian4" id="tagContent6">
                <table style="height: 90px;">
                    <tr>
                        <td height="30" class="td_title">
                            方案保密
                        </td>
                        <td valign="middle" style="padding-left: 5px;" class="td_content" colspan="2">
                            <input type="radio" name="SecrecyLevel" id="SecrecyLevel0" value="0" checked="checked" />
                            <span>不保密</span>
                            <input type="radio" name="SecrecyLevel" id="SecrecyLevel1" value="1" />
                            <span>保密到截止</span>
                            <input type="radio" name="SecrecyLevel" id="SecrecyLevel2" value="2" />
                            <span>保密到开奖</span>
                            <input type="radio" name="SecrecyLevel" id="SecrecyLevel3" value="3" />
                            <span>永久保密</span>
                        </td>
                    </tr>
                    <tr>
                        <td class="td_title">
                            确认购买
                        </td>
                        <td class="td_content">
                            <ShoveWebUI:ShoveConfirmButton ID="btn_OK" runat="server" BorderStyle="None" class="btn_buy"
                                OnClientClick="return CreateLogin('btn_OKClick();');" OnClick="btn_OK_Click" />
                        </td>
                        <td class="td_content">
                            <asp:CheckBox ID="chkAgrrement" runat="server" Checked="true" />
                            我已经阅读并同意
                            <asp:HyperLink runat="server" ID="hlAgreement" Target="_blank">《用户投注协议》</asp:HyperLink>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
        <!-- 购彩结束 -->
        <div class="right">
            <div class="rmain1">
                <div class="title">
                    <h2>
                        四场进球彩开奖公告</h2>
                    <a href="../WinQuery/Default.aspx">更多</a></div>
                <div id="ssq">
                    <p class="xian">
                        第<span id="lastIsuseInfo"></span> 期
                    </p>
                    <p>
                        开奖号码</p>
                    <p class="qiu" id="LastWinNumber">
                    </p>
                    <p>
                    </p>
                </div>
                <div class="neirong">
                    <table class="table1">
                        <tr class="td1">
                            <td>
                                用户名
                            </td>
                            <td>
                                单注奖金
                            </td>
                            <td>
                                我要跟单
                            </td>
                        </tr>
                        <asp:Repeater ID="RepWin" runat="server">
                            <ItemTemplate>
                                <tr>
                                    <td>
                                        <%#Eval("InitiateName")%>
                                    </td>
                                    <td>
                                        <span class="red">
                                            <%#Eval("Win")%></span>
                                    </td>
                                    <td>
                                        <a href="../Home/Room/FollowSchemeHistory.aspx">定制</a>
                                    </td>
                                </tr>
                            </ItemTemplate>
                            <AlternatingItemTemplate>
                                <tr style="background-color: #f7f7f7">
                                    <td>
                                        <%#Eval("InitiateName")%>
                                    </td>
                                    <td>
                                        <span class="red">
                                            <%#Eval("Win")%></span>
                                    </td>
                                    <td>
                                        <a href="#">定制</a>
                                    </td>
                                </tr>
                            </AlternatingItemTemplate>
                        </asp:Repeater>
                    </table>
                </div>
                <div class="neirong">
                    <table class="backer-block2">
                        <tbody>
                            <tr class="td1">
                                <td>
                                    期次
                                </td>
                                <td>
                                    开奖号码
                                </td>
                            </tr>
                            <%=RepWinNumber%>
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="clear">
            </div>
            <div class="imgs">
                <img src="../Home/Room/Images/gg1.jpg" />
            </div>
            <div class="rmain1">
                <div class="title">
                    <h1>
                        四场进球彩新闻</h1>
                    <a href="../SiteNews/NewList.aspx?TypeId=101008">更多</a></div>
                <div class="neirong">
                    <ul>
                        <asp:Repeater ID="RepNewt" runat="server">
                            <ItemTemplate>
                                <li><a href="../SiteNews/NewDetail.aspx?id=<%#Eval("ID")%>">
                                    <%#Shove._String.Cut(Eval("Title").ToString(),17)%></a></li>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <input id="tb_LotteryNumber" name="tb_LotteryNumber" type="hidden" />
    <input id="tb_hide_SumMoney" name="tb_hide_SumMoney" type="hidden" />
    <input id="tb_hide_AssureMoney" name="tb_hide_AssureMoney" type="hidden" />
    <input id="tb_hide_SumNum" name="tb_hide_SumNum" type="hidden" />
    <input id="HidMaxTimes" name="HidMaxTimes" type="hidden" value="1000" />
    <input id="HidLotteryID" name="HidLotteryID" type="hidden" value="<%=LotteryID %>" />
    <input id="tbAddone" name="tbAddone" type="hidden" runat="server" />
    <input id="tbPlayTypeName" name="tbPlayTypeName" type="hidden" value="单式" />
    <input id="HidSelectedLotteryNumber" name="HidSelectedLotteryNumber" type="hidden" />
    <asp:HiddenField ID="HidType" runat="server" Value="1" />
    <asp:HiddenField ID="HidLuckNumber" runat="server" />
    <uc2:WebFoot ID="WebFoot1" runat="server" />
    </form>
</body>
</html>

<script type="text/javascript">
       setTimeout("Page_load(<%= LotteryID %>, <%= Number %>);",500);
         <%=DZ %>
</script>

<script type="text/javascript">
   var notIE = -[1,];
         if(-[1,]){ 
           alert('尊敬的用户您好，由于您当前使用浏览器不支持网银操作，为了更好地体验购彩服务，请使用以IE为核心的浏览器(例如:IE7.0以上浏览器、360浏览器、傲游浏览器、TT浏览器，TheWorld、Avant Browser 、GreenBrowser.)');
         }
</script>