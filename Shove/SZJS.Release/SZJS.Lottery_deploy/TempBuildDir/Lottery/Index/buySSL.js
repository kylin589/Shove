function GetRandNumber(Number) {
    return Math.ceil(Math.random() * Number);
}

function LotteryNum(obj)
{   
    var arry=new Array();
    var objj=$Id(obj.id).value;
    var NumberLottery="";
    for(var i = 1; i < 4; i++)
    {
       if(obj.id !="tdLuckNumber"+i.toString())
       {
         var ob=$Id("tdLuckNumber" + i.toString()).value;
         arry[i]=ob;
       }
       NumberLottery +=" "+$Id("tdLuckNumber" + i.toString()).value;
    }
    if(objj< 0||objj>=10)
    {
       $Id(obj.id).value="";
    }
    else if($Id(obj.id).value!="")
    {
      btn_ClearClick();
  var customOptions = document.createElement("OPTION");
      customOptions.text =NumberLottery;
      customOptions.value = "0";
      $Id("list_LotteryNumber").add(customOptions,$Id("list_LotteryNumber").length);
    }
}

//定时读取最近的开奖信息的定时器
var time_GetServerTime = null;
//获取服务器时间
function GetServerTime(lotteryID) {
    currentLotteryID = lotteryID;
    try {
        Lottery_Index_BuySSL.GetSysTime(GetServerTime_callback);
    }
    catch (e) {
        //如果失败了，就继续读取
        time_GetServerTime = setTimeout("GetServerTime(" + lotteryID + ");", 2000);
    }
}
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
    var IsuseEndTime = new Date($Id("HidIsuseEndTime").value.replace(new RegExp("-", "g"), "/"));
    var TimePoor = new Date(serverTime.replace(new RegExp("-", "g"), "/")).getTime() - new Date().getTime();
    var to = IsuseEndTime.getTime() - new Date(serverTime.replace(new RegExp("-", "g"), "/")).getTime();
    var d = Math.floor(to / (1000 * 60 * 60 * 24));
    var h = Math.floor(to / (1000 * 60 * 60)) % 24;
    var m = Math.floor(to / (1000 * 60)) % 60;
    var s = Math.floor(to / 1000) % 60;

    if (!isNaN(d)) {
        if (d < 0) {
            $Id("toCurrIsuseEndTime").innerHTML = "本期已截止投注";
            var lottery = setTimeout("loadLottery(" + currentLotteryID + ");", 20000);
            return;
        }
        else {
            clearTimeout(lottery);
            $Id("toCurrIsuseEndTime").innerHTML = (d > 0 ? ((d > 9 ? String(d) : "0" + String(d)) + "天") : "") + ((h > 0 || d > 0) ? ((h > 9 ? String(h) : "0" + String(h)) + "时") : "") + ((m > 9 ? String(m) : "0" + String(m)) + "分") + ((s > 9 ? String(s) : "0" + String(s)) + "秒");
        }
    }
    setTimeout("showIsuseTime(" + IsuseEndTime.getTime() + ", " + TimePoor + ", " + 1000 + "," + currentLotteryID + ")", 1000);

}

//显示当前期的投注时间
var lockIsuseTime = null;
function showIsuseTime(eTime, tPoor, goTime, lotteryID) {

    if (goTime >= 300000)//5分钟
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
            //当计时结束，要2秒后重新启动彩种加载函数
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

//获取当前投注奖期信息，及追号奖期，及时服务器时间
var time_GetIsuseInfo = null;
function GetIsuseInfo(lotteryID) {
    currentLotteryID = lotteryID;
    try {
        Lottery_Index_BuySSL.GetIsuseInfo(lotteryID, GetIsuseInfo_callback);
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
    if (arrInfo.length != 2) {
        return;
    }
    var currIsuse = arrInfo[0];
    var chaseIsuse = arrInfo[1];

    var arrcurrIsuse = currIsuse.split(',');
    
    $Id("HidIsuseID").value = arrcurrIsuse[0];
    currIsuseName.innerText = "第"+arrcurrIsuse[1]+"期";
    $Id("HidIsuseEndTime").value = arrcurrIsuse[2];
    //获取服务器时间
    GetServerTime(currentLotteryID);
}

function $Id(id)
{
    return document.getElementById(id);
}

var moving;
var number;
var isMove = true;
function GetLuckNumber(lotteryID) {
    var v = Lottery_Index_BuySSL.GenerateLuckLotteryNumber(lotteryID).value;
    if (v.split("|").length < 2) {
    } else {
        number = v.split("|")[1].split(" ");
        moving = setInterval("BallMoving()", 50);
        setTimeout("BindLuckNumber()", 1000);
        isMove = true;
    }
}

//球滚动
function BallMoving() {
    if (isMove) {
        for (var i = 1; i < number.length; i++) {
            $Id("tdLuckNumber" + i.toString()).value = number[GetRandNumber(number.length-1)];
        }
    }
}

function BindLuckNumber() {
    clearInterval(moving);
    isMove = false;
    var Num="";
    for (var i = 1; i < number.length; i++) {
        $Id("tdLuckNumber" + i.toString()).value = number[i];
        Num+=" "+number[i];
    }
      var customOptions = document.createElement("OPTION");
        customOptions.text =Num;
        customOptions.value = "0";
        $Id("list_LotteryNumber").add(customOptions,Num.length);
    
}

  function btn_2_RandManyClick(n) {     
  
    for (var j = 1; j <= n; j++) {  
    var str2="" 
       for (var i = 0; i < 3; i++) {
            var col = GetRandNumber(10) - 1;
              str2 += " "+String(col);
       }
        var customOptions = parent.document.createElement("OPTION");
            customOptions.text = str2;
            customOptions.value = j;
            $Id("list_LotteryNumber").add(customOptions,$Id("list_LotteryNumber").length);
    }       
 }
 
function btn_ClearSelectClick() {

    var o_list_LotteryNumber= $Id("list_LotteryNumber");
    if (o_list_LotteryNumber.length < 1) {
        alert("您还没有输入投注内容。");
        return true;
    }
    var SelectNum = 0;
    var i = 0;
    for (i = 0; i < o_list_LotteryNumber.length; i++) {
        if (o_list_LotteryNumber.options[i].selected)
            SelectNum++;
    }
    if (SelectNum < 1) {
        alert("请选择要删除的投注内容(按住 Ctrl 键可以多选)。");
        return true;
    }
    for (i = o_list_LotteryNumber.length - 1; i >= 0; i--) {
        if (o_list_LotteryNumber.options[i].selected) {
            var Num = parseInt(o_list_LotteryNumber.options[i].value, 10);
            o_list_LotteryNumber.remove(i);
        }
    }
    return true;
}

function btn_ClearClick() {
    try {
        while ($Id("list_LotteryNumber").length > 0) {
            $Id("list_LotteryNumber").remove(0);
        }
        return true;
    }
    catch (e) {
        return false;
    }
}
function CreateLogin(script) {
   if (Number(document.getElementById("hUserID").value) > 0) {
       eval(script);
        return true;
   }else{
   
     if (!confirm("请登录账户后进行投注！"))
     {
         return false;
     }
     parent.window.location="../../UserLogin.aspx";
   }
}

function btn_OKClick() {

     if ($Id("toCurrIsuseEndTime").innerHTML == "本期已截止投注" < 0)
      {
        alert("本期投注已截止，谢谢。");
        return false;
      }
      
      var o_list_LotteryNumber= $Id("list_LotteryNumber");
       if (o_list_LotteryNumber.length < 1) 
        {
          alert("您还没有输入投注内容。");
          return false;
        }
      
       var o_tb_LotteryNumber="";
       
       for (i = 0; i < o_list_LotteryNumber.length; i++)
       {
           o_tb_LotteryNumber += (o_list_LotteryNumber.options[i].text + "\n");
       }
       
       var tb_Multiple=$Id("tb_Multiple").value;
       if(tb_Multiple=="")
       {
          tb_Multiple="1";
       }
       $Id("tb_LotteryNumber").value=o_tb_LotteryNumber;
       $Id("tb_Share").value=o_list_LotteryNumber.length;
       $Id("tb_BuyShare").value=o_list_LotteryNumber.length;
       $Id("Multiple").value=tb_Multiple;
        
        var TipStr = '您要发起时时乐单式方案，详细内容：\n\n';
        TipStr += "　　注　数：　"+o_list_LotteryNumber.length+"\n";
        TipStr += "　　倍　数：　"+tb_Multiple+"\n";
        TipStr += "　　总金额：　"+o_list_LotteryNumber.length*2+" 元\n\n";
        TipStr += "　　总份数：　"+o_list_LotteryNumber.length+" 份\n";
        TipStr += "　　每　份：　2 元\n\n";
        TipStr += "　　保　底：　0 份，0 元\n";
        TipStr += "　　购　买：　"+o_list_LotteryNumber.length+" 份，"+o_list_LotteryNumber.length*2+" 元\n\n";

        if (!confirm(TipStr + "按“确定”即表示您已阅读《时时乐投注协议》并立即提交方案，确定要提交方案吗？"))
        {
           return false;
        }
        __doPostBack('btn_OK', '');
    
}
//加载彩票信息
function loadLottery(lotteryID) {
    //获取当前投注奖期信息
    GetIsuseInfo(lotteryID);
        //获取投注时间信息
    GetServerTime(lotteryID);
}

//页面加载的时候，加载相应的数据
function Page_load(lotteryId) {
    //初始化彩种信息
    currentLotteryID = lotteryId
    //第一步（加载彩种）
    loadLottery(currentLotteryID);

}