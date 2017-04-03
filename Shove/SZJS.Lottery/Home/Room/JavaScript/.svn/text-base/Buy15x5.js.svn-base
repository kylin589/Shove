/*--------------------------------------全局变量-----------------------------------------------*/
//当前彩种编号
var currentLotteryID = null;
//彩种名称
var LotteryName = null;

//彩票号码
var o_tb_LotteryNumber;
//多注彩票号码
var o_list_LotteryNumber;
//注的陪数
var o_tb_Multiple;

//份额
var o_tb_Share;
//保底份额
var o_tb_AssureShare;
//购买的份额
var o_tb_BuyShare;
//方案标题
var o_tb_Title;

//合买佣金比率
var o_tb_SchemeBonusScale;
//追号佣金比例
var o_tb_SchemeBonusScalec;

var o_lab_Num; //注数
var o_lab_SumMoney; //总金额
var o_lab_ShareMoney; //每份金额
var o_lab_AssureMoney;  //保底金额
var o_lab_BuyMoney; //认购份数金额
var o_lb_LbSumMoney; //任务总金额
var o_tb_Price; //每注金额

var FCExperts_lcal = null;               //本地福彩专家列表值
var bonusNumbers_lcal = null;            //本地中奖列表值

//发起方案条件
var Opt_InitiateSchemeLimitLowerScaleMoney = 100;
var Opt_InitiateSchemeLimitLowerScale = 0.2;
var Opt_InitiateSchemeLimitUpperScaleMoney = 10000;
var Opt_InitiateSchemeLimitUpperScale = 0.05;

function $Id(id) {
    return document.getElementById(id);
}
//初始化全局变量数据
function init() {
    o_tb_LotteryNumber = $("#tb_LotteryNumber");
    o_list_LotteryNumber = $("#list_LotteryNumber");
    o_tb_Multiple = $("#tb_Multiple");
    o_tb_Share = $("#tb_Share");
    o_tb_SchemeBonusScale = $("#tb_SchemeBonusScale");
    o_tb_SchemeBonusScalec = $("#tb_SchemeBonusScalec");
    
    o_tb_AssureShare = $("#tb_AssureShare");
    o_tb_BuyShare = $("#tb_BuyShare");
    o_tb_Title = $("#tb_Title");
    o_lab_Num = $("#lab_Num");
    o_lab_SumMoney = $("#labSumMoney");
    o_lab_ShareMoney = $("#lab_ShareMoney");
    o_lab_AssureMoney = $("#lab_AssureMoney");
    o_lab_BuyMoney = $("#lab_BuyMoney");
    
    o_tb_LotteryNumber.val("");
    o_tb_Multiple.val("1");
    o_tb_Share.val("1");

    GetSchemeBonusScalec();
    o_tb_AssureShare.val("0");
    o_tb_BuyShare.val("1");
    o_tb_Title.val("");
    o_lab_Num.html("0");
    o_lab_SumMoney.html("0.00");
    o_lab_ShareMoney.html("0.00");
    o_lab_AssureMoney.html("0.00");
    o_lab_BuyMoney.html("0.00");
    o_lb_LbSumMoney = $("#LbSumMoney");
    try {
        o_tb_Price = $("#HidPrice").val();
    } catch (ex) { o_tb_Price = 2; }



}
//获得佣金比例
var isGetSchemeBonusScalec = false;
var time_GetSchemeBonusScalec = null;
function GetSchemeBonusScalec() {

    if (!isGetSchemeBonusScalec) {
        try {

            Lottery_Buy15x5.GetSchemeBonusScalec(currentLotteryID, GetSchemeBonusScalec_callback);

        }
        catch (e) {
            time_GetSchemeBonusScalec = setTimeout("Lottery_Buy15x5.GetSchemeBonusScalec(" + currentLotteryID + ",GetSchemeBonusScalec_callback);", 2000);
        }
    }
}

function GetSchemeBonusScalec_callback(response) {
 
    if (response == null || response.value == null) {

        time_GetSchemeBonusScalec = setTimeout("Lottery_Buy15x5.GetSchemeBonusScalec(" + currentLotteryID + ",GetSchemeBonusScalec_callback);", 2000);

        return;
    }

    //将time_GetSchemeBonusScalec移除
    if (time_GetSchemeBonusScalec != null) {
        clearTimeout(time_GetSchemeBonusScalec);
    }

    var v = response.value.split('|');

    if (v.length != 7) {

        return;
    }

    o_tb_SchemeBonusScale.val(v[0]);
    o_tb_SchemeBonusScalec.val(v[0]);

    Opt_InitiateSchemeLimitLowerScaleMoney = v[1];
    Opt_InitiateSchemeLimitLowerScale = v[2];
    Opt_InitiateSchemeLimitUpperScaleMoney = v[3];
    Opt_InitiateSchemeLimitUpperScale = v[4];

    currentLotteryID = v[5];
    LotteryName = v[6];

    isGetSchemeBonusScalec = true;
}




//页面加载的时候，加载相应的数据
function Page_load(lotteryId) {

    //初始化彩种信息
    currentLotteryID = lotteryId

    //第一步（加载彩种）
    loadLottery(currentLotteryID);
}

//加载彩票信息
var lockInit = null;
function loadLottery(lotteryID) {
    if (lockInit == null) {
        init();
        lockInit = 1;
    }

    //获取当前投注奖期信息
    GetIsuseInfo(lotteryID);

    //获取投注时间信息
    GetServerTime(lotteryID);




}


//定时读取最近的开奖信息的定时器
var time_GetServerTime = null;

//获取服务器时间
function GetServerTime(lotteryID) {

    currentLotteryID = lotteryID;

    try {

        Lottery_Buy15x5.GetSysTime(GetServerTime_callback);

    }
    catch (e) {
        //如果失败了，就继续读取
        time_GetServerTime = setTimeout("GetServerTime(" + lotteryID + ");", 2000);
    }
}
//响应服务器的时间值
function GetServerTime_callback(response) {
    if (response == null || response.value == null) {

        time_GetServerTime = setTimeout("GetServerTime(" + currentLotteryID + ");", 2000);

        return;
    }

    //将time_GetServerTime移除
    if (time_GetServerTime != null) {
        clearTimeout(time_GetServerTime);
    }

    var serverTime = response.value;
   
    var IsuseEndTime = new Date($("#HidIsuseEndTime").val().replace(new RegExp("-", "g"), "/"));
    var TimePoor = new Date(serverTime.replace(new RegExp("-", "g"), "/")).getTime() - new Date().getTime();

    var to = IsuseEndTime.getTime() - new Date(serverTime.replace(new RegExp("-", "g"), "/")).getTime();

    var d = Math.floor(to / (1000 * 60 * 60 * 24));
    var h = Math.floor(to / (1000 * 60 * 60)) % 24;
    var m = Math.floor(to / (1000 * 60)) % 60;
    var s = Math.floor(to / 1000) % 60;

    if (!isNaN(d)) {
        if (d < 0) {
            $("#toCurrIsuseEndTime").html("本期已截止投注");
            var lottery = setTimeout("loadLottery(" + currentLotteryID + ");", 20000);
            return;
        }
        else {
            clearTimeout(lottery);
            $("#toCurrIsuseEndTime").html((d > 0 ? ((d > 9 ? String(d) : "0" + String(d)) + "天") : "") + ((h > 0 || d > 0) ? ((h > 9 ? String(h) : "0" + String(h)) + "时") : "") + ((m > 9 ? String(m) : "0" + String(m)) + "分") + ((s > 9 ? String(s) : "0" + String(s)) + "秒"));
        }
    }

   setTimeout("showIsuseTime(" + IsuseEndTime.getTime() + ", " + TimePoor + ", " + 1000 + "," + currentLotteryID + ")", 1000);

}


//显示当前期的投注时间
var lockIsuseTime = null;
function showIsuseTime(eTime, tPoor, goTime, lotteryID) {

    if (goTime >= 600000)//10分钟
    {
        GetServerTime(lotteryID);

        return;
    }

    var serverTime = new Date().getTime() + tPoor;
    var IsuseEndTime = new Date($Id("HidIsuseEndTime").value.replace(new RegExp("-", "g"), "/"));
    var to = IsuseEndTime.getTime() - serverTime;

    var d = Math.floor(to / (1000 * 60 * 60 * 24));
    var h = Math.floor(to / (1000 * 60 * 60)) % 24;
    var m = Math.floor(to / (1000 * 60)) % 60;
    var s = Math.floor(to / 1000) % 60;

    if (!isNaN(d)) {
        if (d < 0) {
            $Id("toCurrIsuseEndTime").innerHTML = "本期已截止投注";
            var lottery = setTimeout("loadLottery(" + lotteryID + ");", 20000);
            return;
        }
        else {
            clearTimeout(lottery);
            $Id("toCurrIsuseEndTime").innerHTML = (d > 0 ? ((d > 9 ? String(d) : "0" + String(d)) + "天") : "") + ((h > 0 || d > 0) ? ((h > 9 ? String(h) : "0" + String(h)) + "时") : "") + ((m > 9 ? String(m) : "0" + String(m)) + "分") + ((s > 9 ? String(s) : "0" + String(s)) + "秒");
        }
    }

    if (lockIsuseTime != null) {
        clearTimeout(lockIsuseTime);
    }

    lockIsuseTime = setTimeout("showIsuseTime(" + eTime + "," + tPoor + "," + (goTime + 1000) + "," + lotteryID + ")", 1000);
}


//获取当前投注奖期信息
var time_GetIsuseInfo = null;
function GetIsuseInfo(lotteryID) {

    currentLotteryID = lotteryID;

    try {

        Lottery_Buy15x5.GetIsuseInfo(lotteryID, GetIsuseInfo_callback);

    }
    catch (e) {

        time_GetIsuseInfo = setTimeout("GetIsuseInfo(" + lotteryID + ");", 2000);
    }
}

function GetIsuseInfo_callback(response) {

    if (response == null || response.value == null) {

        time_GetIsuseInfo = setTimeout("GetIsuseInfo(" + currentLotteryID + ");", 2000);

        return;
    }

    //将time_GetIsuseInfo移除
    if (time_GetIsuseInfo != null) {
        clearTimeout(time_GetIsuseInfo);
    }

    var v = response.value;
    if (v.indexOf("|") == -1) {
        return;
    }

    var arrInfo = v.split('|');

    if (arrInfo.length != 4) {
        return;
    }

    var lastIsuse = arrInfo[1];
    var currIsuse = arrInfo[0];
    var chaseIsuse = arrInfo[2];
    $("#LastWinNumber").html(arrInfo[3]);
    $("#lastIsuseInfo").html(lastIsuse);
   $("#div_QH_Today").html(chaseIsuse);
    try {
        var firstChase = $Id("div_QH_Today").childNodes[0].rows[0].cells[0].childNodes[0];
        if (firstChase != undefined) {
            firstChase.checked = true;
            check(firstChase);
        }
    } catch (e) { }

    var arrcurrIsuse = currIsuse.split(',');
    $("#HidIsuseID").val(arrcurrIsuse[0]);
    $("#currIsuseName").html(arrcurrIsuse[1]);
    $("#currIsuseEndTime").html(arrcurrIsuse[2].replace("/", "-").replace("/", "-"));
    $("#HidIsuseEndTime").val(arrcurrIsuse[2]);
}


$(document).ready(function() {

    //设置嵌套页面初始值宽度
    $("#iframe_playtypes").load(function() {
        var ifmHeight = iframe_playtypes.document.body.scrollHeight;
        $("#iframe_playtypes").css("height", ifmHeight);
    });

    $("#iframeCoBuy").load(function() {
    var ifmHeight = iframeCoBuy.document.body.scrollHeight;
        $("#iframeCoBuy").css("height", ifmHeight);
    });

    $("#iframeFollowScheme").load(function() {
    var ifmHeight = iframeFollowScheme.document.body.scrollHeight;
        $("#iframeFollowScheme").css("height", ifmHeight);
    });

    $("#iframeSchemeAll").load(function() {
    var ifmHeight = iframeSchemeAll.document.body.scrollHeight;
        $("#iframeSchemeAll").css("height", ifmHeight);
    });
    
    
    $("#tbPlayTypeID").val("5901");
    iframe_playtypes.location.href = '../Home/Room/PlayTypes/AHFC15X5/AHFC15X5_D.htm';
    //设置单选按钮的跳转事件
    $("input:radio[name='playType']").click(function() {
        var playTypeName = '';
        var t = $(this).val();
        $("#tbPlayTypeID").val(t);
        switch (t) {
            case '5901':
                playTypeName = '单式';
                iframe_playtypes.location.href = '../Home/Room/PlayTypes/AHFC15X5/AHFC15X5_D.htm';
                break;

            case '5902':
                playTypeName = '复式';
                iframe_playtypes.location.href = '../Home/Room/PlayTypes/AHFC15X5/AHFC15X5_F.htm';
                break;

            case '5903':
                playTypeName = '胆拖';
                iframe_playtypes.location.href = '../Home/Room/PlayTypes/AHFC15X5/AHFC15X5_DT.htm';
                break;
            default:
                t = '5901';
                playTypeName = '单式';
                iframe_playtypes.location.href = '../Home/Room/PlayTypes/AHFC15X5/AHFC15X5_D.htm';
                break;
        }
        $("#tbPlayTypeName").val(playTypeName);
        HidBtnRand(playTypeName);
        resetPage();

    });
    //合买
    $("#CoBuy").click(function() {
        if ($(this).attr("checked")) {
            $("#Chase").attr("checked", false);
            $("#trShowJion").show();
            $("#trGoon").hide();
        } else {
        $("#trShowJion").hide();
        } 
    });
    //追号
    $("#Chase").click(function() {
        if ($(this).attr("checked")) {
            $("#CoBuy").attr("checked", false);
            $("#trGoon").show();
            $("#trShowJion").hide();
        } else {
        $("#trGoon").hide();
        }

    });



});

function HidBtnRand(playTypeName) {
    var isHidRandTR = playTypeName.indexOf("单式") < 0 || playTypeName.indexOf("组选") > -1;

    if (isHidRandTR) {
        $Id("btn_2_Rand").disabled = "false";
        $Id("btn_2_Rand5").disabled = "false";
        $Id("btn_2_Rand").style.cursor = '';
        $Id("btn_2_Rand5").style.cursor = '';
    }
    else {
        $Id("btn_2_Rand").disabled = "";
        $Id("btn_2_Rand5").disabled = "";
        $Id("btn_2_Rand").style.cursor = 'pointer';
        $Id("btn_2_Rand5").style.cursor = 'pointer';
    }
}
//清空全部
function btn_ClearClick() {
    try {
        while ($Id("list_LotteryNumber").length > 0) {
            $Id("list_LotteryNumber").remove(0);
        }

        o_tb_LotteryNumber.val("");
        o_lab_Num.html("0");
        CalcResult();
        return true;
    }
    catch (e) {
        return false;
    }
}

function btn_ClearSelectClick() {
    if ($Id("list_LotteryNumber").length < 1) {
        alert("您还没有输入投注内容。");
        return true;
    }

    var SelectNum = 0;
    var i = 0;
    for (i = 0; i < $Id("list_LotteryNumber").length; i++) {
        if ($Id("list_LotteryNumber").options[i].selected)
            SelectNum++;
    }

    if (SelectNum < 1) {
        alert("请选择要删除的投注内容(按住 Ctrl 键可以多选)。");
        return true;
    }

    for (i = $Id("list_LotteryNumber").length - 1; i >= 0; i--) {
        if ($Id("list_LotteryNumber").options[i].selected) {
            var Num = parseInt($Id("list_LotteryNumber").options[i].value, 10);
            o_lab_Num.html(StrToInt(o_lab_Num.html()) - Num);
            $Id("list_LotteryNumber").remove(i);
        }
    }

    $Id("list_LotteryNumber").value = "";
    if ($Id("list_LotteryNumber").length > 0) {
        for (i = 0; i < $Id("list_LotteryNumber").length; i++)
            $Id("list_LotteryNumber").value += ($Id("list_LotteryNumber").options[i].text + "\n");
    }

    if ($Id("list_LotteryNumber").length == 0) {
        resetPage();
    }
    CalcResult();
    return true;
}

//重置页面
function resetPage() {

    btn_ClearClick();
    init();
}
function check(obj) {
    if (obj == undefined) {
        return;
    }

    var obj_TxtBNum = $Id(obj.id.replace("check", "times"));
    var obj_TxtMoney = $Id(obj.id.replace("check", "money"));

    if (obj.checked != true) {
        obj_TxtBNum.disabled = "disabled";
        obj_TxtBNum.value = "1";
        obj_TxtMoney.value = "0";
    }
    else {
        obj_TxtBNum.disabled = "";
    }

    accountAllMoney();
}
function Cb_CheckAll() {
    var o_cb_All = $Id("cb_All");
    var table = $Id("div_QH_Today").childNodes[0];
    if (table != null) {
        var rows = table.rows;
        var num = rows.length;
        for (var i = 1; i < num; i++) {
            var obj = rows[i].cells[0].childNodes[0];
            obj.checked = o_cb_All.checked;
            check(obj);
        }
    }
    
}
//计算结果
function CalcResult() {
    var multiple = StrToInt(o_tb_Multiple.val());
    multiple = multiple == 0 ? 1 : multiple;
    var SumNum = StrToInt(o_lab_Num.html());
    var Share = StrToInt(o_tb_Share.val());
    var BuyShare = StrToInt(o_tb_BuyShare.val());
    var AssureShare = StrToInt(o_tb_AssureShare.val());

    var SumMoney = Round(multiple * o_tb_Price * SumNum, 2);
    var ShareMoney = Round(SumMoney / Share, 2);

    var AssureMoney = Round(AssureShare * ShareMoney, 2);
    var BuyMoney = Round(BuyShare * ShareMoney, 2);

    o_lab_SumMoney.html(SumMoney);
    o_lab_ShareMoney.html(ShareMoney);
    o_lab_AssureMoney.html(AssureMoney);
    o_lab_BuyMoney.html(BuyMoney);

      accountAllMoney();
}
function accountAllMoney() {
    var arrTable = new Array();
    var needMoney = 0;
    var obj_Name = "";
    var i = 0;

    arrTable[0] = window.$Id("div_QH_Today");
    for (j = 0; j < arrTable.length; j++) {
        var objs = arrTable[j].getElementsByTagName("input");
        var obj_txtMoney, obj_txtBNum;
        for (var i = 0; i < objs.length; i++) {
            if (objs[i].type.toLowerCase() == "checkbox")
                if (objs[i].checked == true) {
                obj_txtBNum = $Id(objs[i].id.replace("check", "times"));
                obj_txtMoney = $Id(objs[i].id.replace("check", "money"));
                obj_Name = $Id(objs[i].id.substring(0, (objs[i].id.length - 6)));
                obj_txtMoney.value = parseInt(obj_txtBNum.value) * parseInt(o_lab_SumMoney.html());
                needMoney = parseInt(needMoney) + parseInt(obj_txtMoney.value);
                i++;
            }
        }
    }

    $("#LbSumMoney").html(needMoney);
}
//投注确定
function btn_OKClick() {
    if (!$("#chkAgrrement").attr("checked")) {
        alert("请先阅读用户投注协议，谢谢！");
        return false;
    }
    if (($("#currIsuseEndTime").html() == "本期已截止投注") < 0) {
        alert("本期投注已截止，谢谢。");
        return false;
    }

    var multiple = StrToInt(o_tb_Multiple.val());
    var SumNum = StrToInt(o_lab_Num.html());
    var Share = StrToInt(o_tb_Share.val());
    var BuyShare = StrToInt(o_tb_BuyShare.val());
    var AssureShare = StrToInt(o_tb_AssureShare.val());
    var SumMoney = StrToInt(o_lab_SumMoney.html());
    var AssureMoney = StrToFloat(o_lab_AssureMoney.html());
    var BuyMoney = StrToFloat(o_lab_BuyMoney.html());

    if (SumNum < 1) {
        alert("请输入投注内容。");
        return false;
    }
    if (multiple < 1) {
        alert("请输入正确的倍数。");
        o_tb_Multiple.focus();
        return false;
    }
    if (Share < 1) {
        alert("请输入正确的份数。");
        o_tb_Share.focus();
        return false;
    }

    if (StrToFloat(o_lab_ShareMoney.html()) < 1) {
        alert("每份金额不能小于 1 元。");
        o_tb_Share.focus();
        return false;
    }

    //追号
    if ($("#Chase").attr("checked")) {
        if (StrToInt($("#LbSumMoney").html()) > 0) {

            if (StrToInt($("#tbAutoStopAtWinMoney").val()) < 0) {
                alert("追号截止金额错误!");

                return;
            }
            $("#tb_hide_ChaseBuyedMoney").val($("#LbSumMoney").html());

            var TipStr = '您要申请' + LotteryName + $("#tbPlayTypeName").val() + '投注，详细内容：\n\n';

            TipStr += "　　总金额：　" + $("#LbSumMoney").html() + " 元\n\n";

            if (!confirm(TipStr + "按“确定”即表示您已阅读《" + LotteryName + "用户投注协议》并立即提交代购方案，确定要提交投注方案吗？"))
                return false;
        }
        else {
            alert("请输入投注内容!");
            return false;
        }
    }
    else {

        var Opt_InitiateSchemeLimitScale = 0;

        if ((Opt_InitiateSchemeLimitLowerScaleMoney > 0) && (Opt_InitiateSchemeLimitUpperScaleMoney > Opt_InitiateSchemeLimitLowerScaleMoney) && (Opt_InitiateSchemeLimitUpperScale > 0) && (Opt_InitiateSchemeLimitLowerScale > Opt_InitiateSchemeLimitUpperScale)) {
            if (SumMoney <= Opt_InitiateSchemeLimitLowerScaleMoney) {
                Opt_InitiateSchemeLimitScale = Opt_InitiateSchemeLimitLowerScale;
            }
            else if (SumMoney >= Opt_InitiateSchemeLimitUpperScaleMoney) {
                Opt_InitiateSchemeLimitScale = Opt_InitiateSchemeLimitUpperScale;
            }
            else {
                Opt_InitiateSchemeLimitScale = Opt_InitiateSchemeLimitLowerScale - ((SumMoney - Opt_InitiateSchemeLimitLowerScaleMoney) * ((Opt_InitiateSchemeLimitLowerScale - Opt_InitiateSchemeLimitUpperScale) / (Opt_InitiateSchemeLimitUpperScaleMoney - Opt_InitiateSchemeLimitLowerScaleMoney)));
            }
        }
        else if (Opt_InitiateSchemeLimitLowerScale == Opt_InitiateSchemeLimitUpperScale) {
            Opt_InitiateSchemeLimitScale = Opt_InitiateSchemeLimitLowerScale;
        }

        if (Opt_InitiateSchemeLimitScale <= 0) {
            Opt_InitiateSchemeLimitScale = 0.1;
        }

        if ((BuyShare) < Math.round(Share * Opt_InitiateSchemeLimitScale)) {
            if (Opt_InitiateSchemeLimitLowerScale == Opt_InitiateSchemeLimitUpperScale) {
                alert("发起人最少必须认购 " + (Opt_InitiateSchemeLimitLowerScale * 100) + "%。(" + Math.round(Share * Opt_InitiateSchemeLimitLowerScale) + ' 份， ' + (Math.round(Share * Opt_InitiateSchemeLimitLowerScale) * StrToFloat(o_lab_ShareMoney.html())) + ' 元)');
            }
            else {
                alert("此方案发起人认购(不含保底)最少必须达到 " + Math.round(Share * Opt_InitiateSchemeLimitScale) + " 份。\r\n\r\n" +
                    "发起方案最少认购比例说明：\r\n" +
                    "方案金额小于或等于 " + Opt_InitiateSchemeLimitLowerScaleMoney + " 元，最少认购 " + Opt_InitiateSchemeLimitLowerScale * 100 + "%，\r\n" +
                    "方案金额大于或等于 " + Opt_InitiateSchemeLimitUpperScaleMoney + " 元，最少认购 " + Opt_InitiateSchemeLimitUpperScale * 100 + "%，\r\n" +
                    "方案金额在 " + Opt_InitiateSchemeLimitLowerScaleMoney + " 元至 " + Opt_InitiateSchemeLimitUpperScaleMoney + " 元之间的最少认购比例平滑递减。\r\n\r\n" +
                    "此方案金额的最少认购比例是 " + Round(Opt_InitiateSchemeLimitScale, 2) * 100 + "% 。");
            }

            o_tb_BuyShare.focus();
            return false;
        }

        if ((BuyShare + AssureShare) > Share) {
            alert("保底和购买的份数大于总份数。");
            o_tb_AssureShare.focus();
            return false;
        }

        if ((SumMoney < o_tb_Price) || (SumMoney > 1000000)) {
            alert("单个方案的总金额必须在" + o_tb_Price + "元至 1000000 元之间。");
            return false;
        }

        var TipStr = '您要发起' + LotteryName + $("#tbPlayTypeName").val() + '方案，详细内容：\n\n';
        TipStr += "　　注　数：　" + SumNum + "\n";
        TipStr += "　　倍　数：　" + multiple + "\n";
        TipStr += "　　总金额：　" + o_lab_SumMoney.html() + " 元\n\n";
        TipStr += "　　总份数：　" + Share + " 份\n";
        TipStr += "　　每　份：　" + o_lab_ShareMoney.html() + " 元\n\n";
        TipStr += "　　保　底：　" + AssureShare + " 份，" + o_lab_AssureMoney.html() + " 元\n";
        TipStr += "　　购　买：　" + BuyShare + " 份，" + o_lab_BuyMoney.html() + " 元\n\n";

        if (!confirm(TipStr + "按“确定”即表示您已阅读《" + LotteryName + "投注协议》并立即提交方案，确定要提交方案吗？"))
            return false;
    }

    $("#tb_hide_SumMoney").val(o_lab_SumMoney.html());
    $("#tb_hide_AssureMoney").val(o_lab_AssureMoney.html());
    $("#tb_hide_SumNum").val(o_lab_Num.html());

    __doPostBack('btn_OK', '');
}
//限制只能输入数字键
function InputMask_Number() {
    if (window.event.keyCode < 48 || window.event.keyCode > 57)
        return false;
    return true;
}

function CheckMultiple() {
    var multiple = StrToInt(o_tb_Multiple.val());
    if (multiple < 1 || multiple > 999) {
        if (confirm("倍数不正确，按“确定”重新输入，按“取消”自动更正为 1 倍，请选择。")) {
            o_tb_Multiple.focus();
            return;
        }
        else {
            multiple = 1;
            o_tb_Multiple.val(1);
        }
    }
    CalcResult();
}

function CheckMultiple2(sender) {
    var multiple = StrToInt(sender.value);
    if (multiple < 1 || multiple > 999) {
        if (confirm("倍数不正确，按“确定”重新输入，按“取消”自动更正为 1 倍，请选择。")) {
            sender.focus();
            return;
        }
        else {
            multiple = 1;
            sender.value = 1;
        }
    }

    accountAllMoney();
}

//判断合买佣金比率
function SchemeBonusScale() {
    if (isNaN(o_tb_SchemeBonusScale.val())) {
        alert('请输入数字');
        o_tb_SchemeBonusScale.focus();
        return;
    }
    var SchemeBonusScale = StrToInt(o_tb_SchemeBonusScale.val());
    o_tb_SchemeBonusScale.val(SchemeBonusScale);
    if (SchemeBonusScale < 0) {
        alert("输入的佣金比率非法。");
        o_tb_SchemeBonusScale.focus();

        return false;
    }
    if (SchemeBonusScale > 10) {
        alert("输入的佣金比率不能大于10%")
        o_tb_SchemeBonusScale.focus();

        return false;
    }

    return true;
}
//判断追号佣金比例
function SchemeBonusScalec() {
    if (isNaN(o_tb_SchemeBonusScalec.val())) {
        alert('请输入数字');
        o_tb_SchemeBonusScalec.focus();

        return;
    }
    var SchemeBonusScalec = StrToInt(o_tb_SchemeBonusScalec.val());
    o_tb_SchemeBonusScalec.val(SchemeBonusScalec);
    if (SchemeBonusScalec < 0) {
        alert("输入的佣金比率非法。");
        o_tb_SchemeBonusScalec.focus();

        return false;
    }
    if (SchemeBonusScalec > 10) {
        alert("输入的佣金比率不能大于10%")
        o_tb_SchemeBonusScalec.focus();

        return false;
    }

    return true;
}
//分成
function CheckShare() {
    var Share = StrToInt(o_tb_Share.val());
    var OK = false;

    o_tb_Share.val(Share);

    if (Share < 0) {
        alert("输入的份数非法。");

        OK = false;
    }
    else if (Share == 1) {
        OK = true;
    }
    else {
        if (Share > 1) {
            var multiple = StrToInt(o_tb_Multiple.val());
            var SumNum = StrToInt(o_lab_Num.html());
            var SumMoney = multiple * o_tb_Price * SumNum;
            var ShareMoney = SumMoney / Share;
            var ShareMoney2 = Math.round(ShareMoney * 100) / 100;

            if (ShareMoney == ShareMoney2)
                OK = true;

            if (ShareMoney < 1) {
                OK = false;
            }
        }
    }

    if (!OK) {
        if (confirm("份数为 0 或者不能除尽，将产生误差，并且金额不能小于 1 元。按“确定”重新输入，按“取消”自动更正为 1 份，请选择。")) {
            o_tb_Share.focus();
            return;
        }
        else {
            Share = 1;
            o_tb_Share.val(1); 
        }
    }

    o_tb_AssureShare.val("0");
    //o_tb_BuyShare.value = Share;
    if(o_tb_BuyShare.value>Share)
    {
        o_tb_BuyShare.value = 1;
    }
    CalcResult();
}

function CheckAssureShare() {
    var Share = StrToInt(o_tb_Share.val());
    var AssureShare = StrToInt(o_tb_AssureShare.val());
    var BuyShare = StrToInt(o_tb_BuyShare.val());

    o_tb_Share.val(Share);
    o_tb_AssureShare.val(AssureShare);
    o_tb_BuyShare.val(BuyShare);

    if (AssureShare < 0) {
        alert("输入的保底份数非法。");
        o_tb_AssureShare.val("0");
        CalcResult();
        return;
    }

    if ((Share == 1) && (AssureShare > 0)) {
        alert("此方案只分为 1 份，不能保底。");
        o_tb_AssureShare.val("0");
        CalcResult();
        return;
    }
    if (AssureShare > (Share - 1)) {
        var AutoAssureShare = Math.round(Share / 2);
        if ((AutoAssureShare + BuyShare) > Share)
            AutoAssureShare = Share - BuyShare;
        if (confirm("保底份数不能大于和等于总份数。按“确定”重新输入，按“取消”自动更正为 " + AutoAssureShare + " 份，请选择。")) {
            o_tb_AssureShare.focus();
            return;
        }
        else {
            o_tb_AssureShare.val(AutoAssureShare);
            AssureShare = AutoAssureShare;
        }
    }
    if ((BuyShare + AssureShare) > Share) {
        BuyShare = Share - AssureShare;
        alert("购买份数与保底份数和大于总份数，购买份数自动调整为 " + BuyShare + " 份。");
        o_tb_BuyShare.val(BuyShare);
    }

    CalcResult();
    return;
}

function CheckBuyShare() {
    var BuyShare = StrToInt(o_tb_BuyShare.val());
    var Share = StrToInt(o_tb_Share.val());
    var AssureShare = StrToInt(o_tb_AssureShare.val());

    o_tb_BuyShare.val(BuyShare);
    o_tb_Share.val(Share);
    o_tb_AssureShare.val(AssureShare);

    if ((BuyShare < 1) || (BuyShare > Share)) {
        if (confirm("购买份数不能为 0 以及大于总份数同时份数必须为整数。按“确定”重新输入，按“取消”自动更正为 " + Share + " 份，请选择。")) {
            o_tb_BuyShare.focus();
            return;
        }
        else {
            o_tb_BuyShare.value = Share;
            BuyShare = Share;
        }
    }

    if ((BuyShare + AssureShare) > Share) {
        AssureShare = Share - BuyShare;
        alert("购买和保底份数大于总份数，保底份数自动调整为 " + AssureShare + "。");
        o_tb_AssureShare.val(AssureShare);
    }

    CalcResult();
    return;
}


//此处为独立函数 
function ltrim(str) {
    var i;
    if (str != null) {
        for (i = 0; i < str.length; i++) {
            if ((str.charAt(i) != " ") && (str.charAt(i) != " ") && (str.charAt(i).charCodeAt() != 13) && (str.charAt(i).charCodeAt() != 10) && (str.charAt(i).charCodeAt() != 32))
                break;
        }
        str = str.substring(i, str.length);
    }
    return str;
}

function rtrim(str) {
    var i;
    if (str != null) {
        for (i = str.length - 1; i >= 0; i--) {
            if ((str.charAt(i) != " ") && (str.charAt(i) != " ") && (str.charAt(i).charCodeAt() != 13) && (str.charAt(i).charCodeAt() != 10) && (str.charAt(i).charCodeAt() != 32))
                break;
        }
        str = str.substring(0, i + 1);
    }
    return str;
}

function rtrimWithReturn(str) {
    var i;
    if (str != null) {
        for (i = str.length - 1; i >= 0; i--) {
            if (str.charAt(i) != " " && str.charAt(i) != " " && str.charAt(i) != "\n")
                break;
        }
        str = str.substring(0, i + 1);
    }
    return str;
}

function trim(str) {
    return ltrim(rtrim(str));
}

function DateToString(datetime) {
    return datetime.getYear() + "-" + (datetime.getMonth() + 1) + "-" + datetime.getDate() + " " + datetime.getHours() + ":" + datetime.getMinutes() + ":" + datetime.getSeconds();
}

function StrToInt(str) {
    str = trim(str);
    if (str == "")
        return 0;

    var i = parseInt(str, 10);
    if (isNaN(i))
        return 0;

    return i;
}

function CreateLogin(script) {
    if (Number(document.getElementById("Head1_hUserID").value) > 0) {
        eval(script);
        return true;
    } else {

        if (!confirm("请登录账户后进行投注！")) {
            return false;
        }
        window.location = "../UserLogin.aspx";
    }
}


function newBuy() {
    $("#tag0").addClass("selectTag");
    $("#tag1").removeClass();
    $("#tag2").removeClass();
    $("#tag3").removeClass();
    $("#tagContent0").css("display","block");
    $("#tagContent1").css("display","none");
    $("#tagContent2").css("display","none");
    $("#tagContent3").css("display","none");
    $("#tagContent4").css("display","block");
    $("#tagContent5").css("display","block");
    $("#tagContent6").css("display","block");
    resetPage();
}

function newCoBuy(lotteryID) {
    $("#tag0").removeClass();
    $("#tag1").addClass("selectTag");
    $("#tag2").removeClass();
    $("#tag3").removeClass();
    $("#tagContent0").css("display","none");
    $("#tagContent1").css("display","block");
    $("#tagContent2").css("display","none");
    $("#tagContent3").css("display","none");
    var maths = Math.random();
    var IsuseID = $("#HidIsuseID").val();
   iframeCoBuy.location.href = "../Home/Room/CoBuy.aspx?Radom=" + maths + "&LotteryID=" + lotteryID + "&IsuseID=" + IsuseID;

    $("#trShowJion").css("display","none");
    $("#tagContent4").css("display","none");
    $("#tagContent5").css("display","none");
    $("#tagContent6").css("display","none");
    resetPage();

}

function followScheme(lotteryID) {
    $("#tag0").removeClass();
    $("#tag1").removeClass();
    $("#tag2").addClass("selectTag");
    $("#tag3").removeClass();
    $("#tagContent0").css("display","none");
    $("#tagContent1").css("display","none");
    $("#tagContent2").css("display","block");
    $("#tagContent3").css("display","none");
    iframeFollowScheme.location.href = '../Home/Room/FollowScheme.aspx?LotteryID=' + lotteryID;
    $("#trGoon").css("display","none");
    $("#trShowJion").css("display","none");
    $("#tagContent4").css("display","none");
    $("#tagContent5").css("display","none");
    $("#tagContent6").css("display","none");
    resetPage();

}

function schemeAll(lotteryID) {
    $("#tag0").removeClass();
    $("#tag1").removeClass();
    $("#tag2").removeClass();
    $("#tag3").addClass("selectTag");
    $("#tagContent0").css("display","none");
    $("#tagContent1").css("display","none");
    $("#tagContent2").css("display","none");
    $("#tagContent3").css("display","block");
    var IsuseID = $("#HidIsuseID").val();
    iframeSchemeAll.location.href = "../Home/Room/SchemeAll.aspx?Radom=" + Math.random() + "&LotteryID=" + lotteryID + "&IsuseID=" + IsuseID;
    $("#trGoon").css("display","none");
    $("#trShowJion").css("display","none");
    $("#tagContent4").css("display","none");
    $("#tagContent5").css("display","none");
    $("#tagContent6").css("display","none");
    resetPage();

}