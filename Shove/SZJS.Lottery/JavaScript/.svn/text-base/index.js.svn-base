

  function rnd() {
            rnd.seed = (rnd.seed * 9301 + 49297) % 233280;
            return rnd.seed / (233280.0);

        }
        rnd.today = new Date();
        rnd.seed = rnd.today.getTime();

        function rand(number) {
            return Math.ceil(rnd() * number);

        }
        function ChangeCodeImg(img) {
            var a = document.getElementById(img);
            a.src = "Drawing/Codeimgs.aspx?" + rand(10000000);
        }
        
        function WinNumberLotteryList(obj1,obj2,obj3,aa)
        {
          document.getElementById(obj1).style.display="";
          document.getElementById(obj2).style.display="none";
          document.getElementById(obj3).style.display="none";
         var obj=document.getElementById("Listli").getElementsByTagName("li");
             for(var i=0;i<obj.length;i++)
             {
                 if(obj[i].id==aa)
                 {
                    obj[i].className="on";
                 }else{
                    obj[i].className="";
                 }
             }
        }
        
       function JoinBuyList(obj1,obj2,obj3,aa)
        {
          document.getElementById(obj1).style.display="";
          document.getElementById(obj2).style.display="none";
          document.getElementById(obj3).style.display="none";
         var obj=document.getElementById("Listli2").getElementsByTagName("li");
             for(var i=0;i<obj.length;i++)
             {
                 if(obj[i].id==aa)
                 {
                    obj[i].className="on";
                 }else{
                    obj[i].className="";
                 }
             }
        }
        
 function document.onkeydown() {
        if (event.keyCode == 13)
        {
            event.returnValue = false;
            $Id("btnLogin2").click();
        }
 }

function GetRandNumber(Number) {
    return Math.ceil(Math.random() * Number);
}

function $Id(id)
{
    return document.getElementById(id);
}

function clickPlayType(t) {
       
        switch (t) {
        case "3":
            document.getElementById('zc_tab_bqc').className = 'zc_tab zc_curtab';
           // document.getElementById('zc_tab_sfr9').className = 'zc_tab';
            document.getElementById('zc_tab_sfc').className = 'zc_tab';
            iframe_playtypes.location.href = 'Lottery/Index/BuySSL.aspx';
            break;

        case "2":
             document.getElementById('zc_tab_bqc').className = 'zc_tab';
            //document.getElementById('zc_tab_sfr9').className = 'zc_tab zc_curtab';
            document.getElementById('zc_tab_sfc').className = 'zc_tab';
            iframe_playtypes.location.href = 'Lottery/Index/BuyCQSSC.aspx';
            break;

        case "1":
            document.getElementById('zc_tab_bqc').className = 'zc_tab';
           // document.getElementById('zc_tab_sfr9').className = 'zc_tab';
            document.getElementById('zc_tab_sfc').className = 'zc_tab zc_curtab';
            iframe_playtypes.location.href =  'Lottery/Index/BuyJX11X5.aspx';
            break;
         }
}

var moving;
var number;
var isMove = true;
function GetLuckNumber(lotteryID) {
    var v = Index.GenerateLuckLotteryNumber(lotteryID).value;
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
        for (var i = 0; i < number.length; i++) {
            document.getElementById("tdLuckNumber" + i.toString()).value = number[GetRandNumber(number.length - 1)];
        }
    }
}

function BindLuckNumber() {
    clearInterval(moving);
    isMove = false;
    for (var i = 0; i < number.length; i++) {
        document.getElementById("tdLuckNumber" + i.toString()).value = number[i];
    }
}
//清除选号
function clear_all_ball()
{
 for(var i = 0; i < 7; i++) {
        document.getElementById("tdLuckNumber" + i.toString()).value ="";
    }
}

function LotteryNum(obj)
{   
    var arry=new Array();
    var objj=$Id(obj.id).value;
    for(var i = 0; i < 5; i++) {
       if(obj.id !="tdLuckNumber"+i.toString())
       {
         var ob=document.getElementById("tdLuckNumber" + i.toString()).value;
         arry[i]=ob;
       }
    }
    if(objj<=0||objj>=34)
    {
       $Id(obj.id).value="";
    }
    for(var j=0;j<arry.length;j++)
    {
       if(objj==arry[j])
       {
          $Id(obj.id).value="";
       }
    }
}
function LotteryNum6()
{
   var obj=$Id("tdLuckNumber6").value;
   if(obj<=0||obj>=17)
   {
      $Id("tdLuckNumber6").value="";
   }     
}

//定时读取最近的开奖信息的定时器
var time_GetServerTime = null;
//获取服务器时间
function GetServerTime(lotteryID) {

    currentLotteryID = lotteryID;

    try {
        Index.GetSysTime(GetServerTime_callback);
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
        Index.GetIsuseInfo(lotteryID, GetIsuseInfo_callback);
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
    
    var arrcurrIsuse = currIsuse.split(',');
    $Id("HidIsuseID").value = arrcurrIsuse[0];
    currIsuseName.innerText ="第"+arrcurrIsuse[1]+"期";
    $Id("HidIsuseEndTime").value = arrcurrIsuse[2];
}


function CreateLogin(script) {
   if (Number(document.getElementById("WebHead1_hUserID").value) > 0) {
       eval(script);
        return true;
   }else{
   
     if (!confirm("请登录账户后进行投注！"))
     {
         return false;
     }
     window.location="UserLogin.aspx";
   }
}


function btn_OKClick() {

     if ($Id("toCurrIsuseEndTime").innerHTML == "本期已截止投注" < 0)
      {
        alert("本期投注已截止，谢谢。");
        return false;
      }
      
        var o_tb_LotteryNumber="";
        for (i = 0; i < 6; i++)
        {
            o_tb_LotteryNumber +=" "+$Id("tdLuckNumber"+i.toString()).value;
        }
        o_tb_LotteryNumber +=" + "+$Id("tdLuckNumber6").value;
        
        $Id("tb_LotteryNumber").value=o_tb_LotteryNumber;
        
        var TipStr = '您要发起双色球单式方案，详细内容：\n\n';
        TipStr += "　　注　数：　1\n";
        TipStr += "　　倍　数：　1\n";
        TipStr += "　　总金额：　2 元\n\n";
        TipStr += "　　总份数：　1 份\n";
        TipStr += "　　每　份：　2 元\n\n";
        TipStr += "　　保　底：　0 份，0 元\n";
        TipStr += "　　购　买：　1 份，2 元\n\n";

     if (!confirm(TipStr + "按“确定”即表示您已阅读《双色球投注协议》并立即提交方案，确定要提交方案吗？"))
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
