window.onload = function() {
    var oDiv = document.getElementById("tab","tbs");
    var oLi = oDiv.getElementsByTagName("div")[0].getElementsByTagName("li");
    var aCon = oDiv.getElementsByTagName("div")[1].getElementsByTagName("div");
    var timer = null;
    for (var i = 0; i < oLi.length; i++) {
        oLi[i].index = i;
        oLi[i].onclick = function() {
            show(this.index);
        }
    }
    function show(a) {
        index = a;
        var alpha = 0;
        for (var j = 0; j < oLi.length; j++) {
            oLi[j].className = "";
            aCon[j].className = "";
            aCon[j].style.opacity = 0;
            aCon[j].style.filter = "alpha(opacity=0)";
        }
        oLi[index].className = "cur";
        clearInterval(timer);
        timer = setInterval(function() {
            alpha += 2;
            alpha > 100 && (alpha = 100);
            aCon[index].style.opacity = alpha / 100;
            aCon[index].style.filter = "alpha(opacity=" + alpha + ")";
            alpha == 100 && clearInterval(timer);
        },
        5)
    }
}


function nTabs(thisObj, Num) {
    if (thisObj.className == "active") return;
    var tabObj = thisObj.parentNode.id;
    var tabList = document.getElementById(tabObj).getElementsByTagName("li");
    for (i = 0; i < tabList.length; i++) {
        if (i == Num) {
            thisObj.className = "active";
            document.getElementById(tabObj + "_Content" + i).style.display = "block";
        } else {
            tabList[i].className = "normal";
            document.getElementById(tabObj + "_Content" + i).style.display = "none";
        }
    }
}


//奖金增减

window.onload = function () {
    var input = document.getElementById('text');
    var button1 = document.getElementById('add');
    var button2 = document.getElementById('sub');

    button1.onclick = function () {
        var value = input.value;
        //alert(isNaN(value));
        if (value != '' && !isNaN(value)) {
            input.value = value * 1 + 1;
        } else {
            alert('请输入正整数！');
            input.value = '';
        }
    }
    button2.onclick = function () {
        var value = input.value;
        //alert(isNaN(value));
        if (value != '' && !isNaN(value)) {
            input.value = value * 1 - 1;
        } else {
            alert('请输入正整数！');
            input.value = '';
        }
    }
}







