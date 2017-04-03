setTimeout(function() {
    //  var config = /^.+project_fq_(.+?)(d|g)g\.aspx.*$/ig.exec(location.href);
    //  if(config == null)return;
    var playid = $("playid").value;
    var lotType = ({						//mr=mathResult
        "7201": ["spf"],
        "7203": ["zjq"],
        "7202": ["bf"],
        "7204": ["bqc"]
    })[playid], C = 2;
    function getV(v) {
        if (lotType == 'bf') return selectTable.__valToString[v];
        if (lotType == 'bqc') return table_vs.__valToChk[v];
        if (lotType == 'spf') return selectTable.__valToChkSFC[v];
        if (lotType == 'zjq') return selectTable.__valToString[v];
        return +v;
    }

    //ajax提交
    function submitByAjax(form) {
        var json = {
            type: "ajax",
            url: form.getAttribute("ajax"),
            form: form,
            onsuccess: function() {
                alert("提交成功！");
            },
            onfail: function() {
                alert("提交失败！");
            }
        };

        request(json);
    }

    //AJAX类,默认post异步
    request = function(json) {
        var isPost = json.method != "get";
        var arg = json.arg || {};
        json.form && merge(arg, getForm(json.form));
        if (isPost) {
            arg = add("", arg).slice(1);
        } else {
            json.url = add(json.url, arg);
        }
        var xmlHTTP = xmlHttp();
        xmlHTTP.open("post", json.url, true);
        if (isPost) {
            xmlHTTP.setRequestHeader("Content-Length", arg.length);
            xmlHTTP.setRequestHeader("Content-Type", "application/x-www-form-urlencoded" + (json.charset ? ";charset=" + json.charset : ""));
        }
        xmlHTTP.onreadystatechange = onStateChange(xmlHTTP, json.onsuccess, json.onfail);
        xmlHTTP.send(isPost ? arg : null);
    }

    //状态改变时
    onStateChange = function(xmlHTTP, success, fail) {
        return function() {
            if (xmlHTTP.readyState != 4) return;
            var o = result(xmlHTTP);
            if (o.success && success) {
                alert("您的方案已经提交成功，谢谢！");
                location.reload();
            }
            else if (!o.success && fail) {
                alert(o.text);
                $('dgBtn').disabled = false;

                if (o.text == "您的余额不足，请充值后再投注！") {
                    window.document.location.href = "../Home/Room/OnlinePay/Alipay02/Send_Default.aspx";

                    return;
                }
            }
        }
    }

    //返回结果时
    result = function(xmlHTTP) {
        if ((xmlHTTP.status == 0 || xmlHTTP.status == 200) && xmlHTTP.responseText == "true") {
            var txt = xmlHTTP.responseBody;
            return { success: true, text: txt };
        }

        return { success: false, text: xmlHTTP.responseText };
    }

    merge = function(o1, o2) {
        for (var i in o2) {
            o1[i] = o2[i];
        }
        return o1;
    }

    getForm = function(form) {
        form = typeof (form) == "string" ? document.forms[form] : form;
        var o = {}, t;
        for (var i = 0, l = form.elements.length; i < l; i++) {
            t = form.elements[i];
            t.name != "" && (o[t.name] = t.type == "radio" ? getRadio(t.name) : t.value);
        }
        return o;
    }

    getRadio = function(name) {
        var o = getName(name);
        for (var i = o.length - 1; i > -1 && !o[i].checked; i--);
        return i > -1 ? o[i].value : false;
    }

    getName = function(name) {
        return document.getElementsByName(name);
    }

    add = function(u, o) {
        var a = [];
        for (var i in o) {
            if (i == "lotid" || i == "playid" || i == "ggtypeid" || i == "codes" || i == "zhushu" || i == "beishu" || i == "totalmoney") {
                a.push(i + "=" + o[i]);
            }
        }
        return u + "?" + a.join("&");
    }

    xmlHttp = function() {
        var xmlHttpRequest = null; //这里是大家都常用的IE，firefox中取得XMLHttpRequest对象的方法
        try {

            xmlHttpRequest = new XMLHttpRequest();
        }
        catch (e) {
            try {
                xmlHttpRequest = new ActiveXObject("Msxml2.XMLHTTP");
            }
            catch (e) {
                xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");

            }
        }

        return xmlHttpRequest;
    }

    function getCodes(l) {
        var res = [];
        each(l, function() {
            if (this.style.display != 'none') res.push(getV(this.firstChild.value));
        });
        return '(' + res.join(',') + ')';
    }
    if (!$('dgBtn')) return;
    $('dgBtn').onclick = function() {
        if (!CreateLogin('')) {
            return;
        }
        var bs = +$('beishu').value, zs = +$('zhushu').value;
        if (isNaN(zs) || zs < 1) return alert('请至少选择' + C + '场以上的比赛!');
        if (isNaN(bs) || bs < 1) return alert('倍数填写不正确!');
        if (parseInt($('totalmoney').value, 10) > 20000) return alert('方案总金额不能超过20000!\n请修改投注内容后重试.');
        this.disabled = true;
        if ($('selectMatchNum') == null) $('ggtypeid').value = ggAdmin.ggValue[ggAdmin.curType]; //过关页面设置过关类型
        var res = [];
        each(selectTable.box.rows, function(i) {
            if (this.style.display != 'none') {
                res.push({
                    preFix: this.preFix,
                    date: +new Date(this.date.replace(/-/g, '/')),
                    pname: parseInt(this.pname),
                    code: getCodes(this.cells[2].getElementsByTagName('label'))
                })
            }
        });

        var TipStr = '您要发起' + $("playname").value + '方案，详细内容：\n\n';
        TipStr += "　　注　数：　" + zs + "\n";
        TipStr += "　　倍　数：　" + bs + "\n";
        TipStr += "　　总金额：　" + $('totalmoney').value + " 元\n\n";

        if (!confirm(TipStr + "按“确定”即表示立即提交方案，确定要提交方案吗？")) {
            this.disabled = false;
            return false;
        }

        res.sort(function(a, b) {
            if (a.date == b.date) {
                return a.preFix - b.preFix
            } else {
                return a.date - b.date
            };
        });
        var map = [];
        each(res, function() {
            map.push(this.preFix + this.code)
        });
        $('codes').value = $('playid').value + ';[' + map.join('|') + '];[' + $('ggtypeid').value + $('beishu').value + "]";

        var form = document.buy_form;
        submitByAjax(form);
    }
    var c = cookie('jczq_info');
    if (c == null || c == '') return;
    var info = false;
    try {
        info = eval('(' + c + ')');
    } catch (e) { return; }
    $('buybs').value = $('beishu').value = info.beishu;
    $('ggtypeid').value = info.sgtype;
    cookie('jczq_info', '', { time: -10 });
    c = info.codes.split('/');
    var r = /^(\d+?)\|\d+\[(.+?)\]$/i, s, m, n, j, k, map = {
        'spf': { '3': 1, '1': 2, '0': 3 },
        'jqs': { '0': 1, '1': 2, '2': 3, '3': 4, '4': 5, '5': 6, '6': 7, '7': 8 },
        'bf': [
      { '胜其它': 13, '1:0': 1, '2:0': 2, '2:1': 3, '3:0': 4, '3:1': 5, '3:2': 6, '4:0': 7, '4:1': 8, '4:2': 9, '5:0': 10, '5:1': 11, '5:2': 12 },
      { '平其它': 18, '0:0': 14, '1:1': 15, '2:2': 16, '3:3': 17 },
      { '负其它': 31, '0:1': 19, '0:2': 20, '1:2': 21, '0:3': 22, '1:3': 23, '2:3': 24, '0:4': 25, '1:4': 26, '2:4': 27, '0:5': 28, '1:5': 29, '2:5': 30 }
    ],
        'bqc': { '0-0': 9, '0-1': 8, '0-3': 7, '1-0': 6, '1-1': 5, '1-3': 4, '3-0': 3, '3-1': 2, '3-3': 1 }
}[lotType];

        for (var i = c.length; i--; ) {//重现选择的场次
            s = r.exec(c[i]);
            if (s == null) continue;
            m = $('vs' + s[1]) || $('pltr_' + s[1]);
            if (m == null) continue;
            if (m.parentNode.style.display == 'none') opendate(m.parentNode.id.split('_')[1]);
            if (lotType == 'bf') openclose(s[1]);
            n = s[2].split(',');
            each(n, function(a) {
                if (lotType != 'bf') {
                    m.options[map[n[a]]].click();
                } else {
                    k = 0;
                    if (map[1][n[a]] != undefined) k = 1;
                    if (map[2][n[a]] != undefined) k = 2;
                    m.options[k].options[map[k][n[a]]].click();
                }
            });
        }
        if ($('selectMatchNum') != null) return;
        setTimeout(function() {
            for (var t in ggAdmin.ggValue) {//重现选择的玩法
                if (ggAdmin.ggValue[t] == info.sgtype) {
                    $('r' + t.replace(/串/g, 'c')).click();
                    break;
                }
            }
        }, 20);
    }, 50);