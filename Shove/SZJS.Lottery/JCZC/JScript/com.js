var $ = find, selectedColor = "td_click";
/*
VStable 对阵选择器
-------------------------------------------------------------------------------------------*/
var AutoClick = function() {
    if ((this.childNodes[0].tagName != undefined) && (this.childNodes[0].tagName.toLowerCase() == 'input')) return this.childNodes[0].click();
    this.childNodes[1].click();
};
var table_vs = {

    __hideCount: 0,
    PnShowTime: -1,

    init: function(tableID) {
        this.table = $(tableID);
        var list = this.table.rows;
        this.list = [];
        for (var i = list.length; i--; ) this.__setRow__(list[i]); //迭代设置check
    },

    __getChks__: function(tr) {
        var chks = $('INPUT', tr);
        var len = chks.length;
        if (len < 1) return false;
        var body = [];
        each(chks, function(i) {
            body.push(this)
        }, 1, -1);
        return {
            head: chks[0],
            options: body,
            allSelect: chks[len - 1]
        }
    },

    __updatePn__: function(tr, data) {
        var d = 0, t = 0, old = { win: attr(tr, 'win'), draw: attr(tr, 'draw'), lost: attr(tr, 'lost') };
        var view = {
            win: tr.options[0].nextSibling,
            draw: tr.options[1].nextSibling,
            lost: tr.options[2].nextSibling
        };

        for (var k in old) {
            d = data[k] - old[k];
            if (isNaN(parseInt(data[k]))) return;
            if (d != 0) {
                t = parseFloat(data[k]);
                view[k].innerHTML = t == 0 ? '' : (data[k] + (d > 0 ? '<span style="color:#F00;font-weight:normal;">↑</span>' : '<span style="color:#090;font-weight:normal;">↓<span>'));
                view[k]._data = t == 0 ? '' : data[k];
                view[k].title = (d > 0 ? '+' : '') + d.toFixed(2);
                attr(tr, k, data[k]);

                var Hz = this.PnShowTime;
                if (Hz != -1) {//上下箭头延时消失
                    (function(el, html) {
                        setTimeout(function() {
                            el.innerHTML = html;
                        }, Hz);
                    })(view[k], t == 0 ? '' : data[k])
                }

            }
        };
    },
    __setRow__: function(tr) {
        var chks = this.__getChks__(tr);
        if (!chks) return;

        var NS = this;
        this.list.push(tr);
        tr.hide = function() {//行隐藏
            this.style.display = 'none';
            NS.onHide(this, this.__hideCount++)
        };
        tr.show = function() {//行显示
            tr.style.display = '';
        };
        chks.head.onclick = function() {//隐藏[sender:chk,influence:tr]
            this.checked = true;
            tr.hide()
        };

        tr.onmouseover = function() {
            this.style.backgroundColor = "#87D1ED";
        }

        tr.onmouseout = function() {
            this.style.backgroundColor = "";
        }

        if (chks.options.length == 0) return;

        tr.options = chks.options;

        tr.zid = attr(tr, 'zid');
        tr.id = 'vs' + tr.zid;
        tr.rq = parseInt(attr(tr, 'rq'));

        tr.updatePn = function(data) {//更新折率
            NS.__updatePn__(this, data)
        };

        var opts = chks.options;
        for (var i = opts.length; i--; ) {//单选
            opts[i].onclick = function(e) {
                chks.allSelect.checked = NS.isAllSelect(opts);
                NS.onSelect(tr, this);
                e = e || window.event;
                if (e.preventDefault) e.stopPropagation();
            };
            opts[i].cancel = function() {//手动取消选择
                this.checked = false;
                chks.allSelect.checked = NS.isAllSelect(opts)
            }
            opts[i].parentNode.onclick = AutoClick;
        };
        chks.allSelect.parentNode.onclick = AutoClick;
        chks.allSelect.onclick = function(e) {//全选
            for (var i = opts.length; i--; ) {
                if (opts[i].checked != this.checked) {
                    opts[i].checked = this.checked;
                    NS.onSelect(tr, opts[i])
                }
            }
            e = e || window.event;
            if (e.preventDefault) e.stopPropagation(); //Firefox下事件冒泡
        }

    },

    __valToChk: [3, 2, 0, 1],

    setCheckBox: function(zid, spf) {//外部操作checkbox
        var tr = document.getElementById('vs' + zid);
        if (tr) {
            var chks = tr.getElementsByTagName('INPUT');
            var i = this.__valToChk[spf];
            chks[i].cancel()
            chks[i].parentNode.className = 'sp_bg';
        }
    },

    showAll: function() {//显示所有
        var list = this.list, el;
        for (var i = list.length; i--; ) {
            el = list[i];
            if (el.className.indexOf('end') != -1) {
                el.style.display = 'none';
                el.className = el.className.replace('end', '')//有的地方使用了end样式控制
            };
            if (el.style.display == 'none')
                el.style.display = ''
        }
        this.onHide()
    },

    showRQ: function(type, isShow) {//显示让球
        var list = this.list;
        var check = function(o) { return o.rq != 0 };
        if (type == 'nrq') { check = function(o) { return o.rq == 0 } };
        for (var i = list.length; i--; )
            if (check(list[i]))
            isShow ? list[i].show() : list[i].hide();
    },

    showByName: function(tName, isShow) {//显隐球队
        var list = this.list;
        var check = function(o) { return attr(o, 'lg') == tName };
        for (var i = list.length; i--; )
            if (check(list[i]))
            isShow ? list[i].show() : list[i].hide();
    },

    getHideCount: function() {//输出显示总数
        var list = this.list, count = 0;
        var check = function(o) { return o.style.display == 'none' };
        for (var i = list.length; i--; )
            if (check(list[i])) count++;
        this.__hideCount = count;
        return count
    },

    isAllSelect: function(chks) {//是否选项已全选
        for (var i = chks.length; i--; ) if (!chks[i].checked) return false;
        return true
    },

    onSelect: function(tr, chk) { },
    onHide: function(tr) { }

}
/*
SelTable
------------------------------------------------------------------------------------------*/
var selectTable = {
    __namePos: [3, 5], //名称位置
    __valToString: ['负', '平', '', '胜'],

    init: function(box, tpl) {
        this.box = $(box);
        this.tpl = $('tr', tpl)[0];
        this.result = {
            count: $('selCount'),
            cost: $('outMoney'),
            back: $('backMoney')
        }
    },

    del: function(tr, chk, map) {
        var mapTr = map || this.mapTr(tr, chk);
        var ns = this;
        if (mapTr) {
            mapTr.hide();
            //mapTr.edit.value=1;
            this.setMoney(mapTr);
        }
    },

    add: function(tr, chk) {
        if (this.mapTr(tr, chk)) return this.show(tr, chk);
        var newTr = this.getNewTr(tr, chk);
        var ns = this;
        this.box.appendChild(newTr);
        clearTimeout(this.batAddTimer);
        this.batAddTimer = setTimeout(function() {
            ns.reSort();
            ns.showMoneyInfo()
        }, 48);
    },

    __getPn__: function(tr, chk) {
        return parseFloat(attr(tr, ["lost", "draw", , "win"][chk.value])) || 2.00; //赔率
    },

    getNewTr: function(tr, chk) {
        var tmp = this.tpl.cloneNode(true), NS = this;
        var tds = tmp.getElementsByTagName('TD');
        tmp.id = 'sel' + tr.zid + '_' + chk.value;
        tmp.zid = attr(tr, 'zid'); //zid
        tmp.spf = chk.value; //310
        tmp.pn = this.__getPn__(tr, chk);
        tds[0].lastChild.innerHTML = this.unHTML(tr.cells[0].innerHTML);
        tds[0].firstChild.onclick = function() { this.checked = true; NS.hide(tmp) };
        tds[1].innerHTML = this.unHTML(tr.cells[this.__namePos[0]].innerHTML + ' vs ' + tr.cells[this.__namePos[1]].innerHTML);
        tds[2].innerHTML = (this.__valToString[tmp.spf]) + (tmp.pn - 2 > 0 ? '(' + tmp.pn.toFixed(2) + ')' : '');
        tmp.hide = function() { this.style.display = 'none' };
        tmp.show = function() { this.style.display = '' };
        /*
        tmp.edit=tds[3].firstChild;
        tmp.cost=tds[4];
        tmp.back=tds[5];
        tmp.back.innerHTML='￥'+tmp.pn.toFixed(2);
        intInputChange(tmp.edit,function (){
        NS.setMoney(tmp)
        });
        */
        return tmp
    },

    __order__: 1,

    __sort__: function() {
        var ord = this.__order__;
        return function(a, b) {
            var d1 = +new Date(a.date.replace(/-/g, '/'));
            var d2 = +new Date(b.date.replace(/-/g, '/'));
            if (d1 == d2) {
                return a.pname - b.pname
            } else {
                return d1 - d2
            };
        };
        /*return function (a,b){
        return a.zid!=b.zid?
        (a.zid-b.zid):
        ord*(b.spf-a.spf)
        }*/
    },

    reSort: function() {
        var all = [], NS = this;
        each($('tr', this.box), function(i) { all[i] = this }); //转换为数组
        all.sort(this.__sort__()); //定序
        this.box.style.display = 'none';
        each(all, function() { NS.box.appendChild(this) })//重插入
        this.box.style.display = '';
    },

    show: function(tr, chk) {//显示
        var mapTr = this.mapTr(tr, chk);
        var ns = this;
        mapTr.show();
        clearTimeout(ns.batAddTimer);
        ns.batAddTimer = setTimeout(function() {
            ns.reSort();
            ns.showMoneyInfo()
        }, 48);
    },

    mapTr: function(tr, chk) {
        return document.getElementById('sel' + tr.zid + '_' + chk.value);
    },

    hide: function(tr) {//隐藏
        this.del(null, null, tr);
        this.onHide(tr)
    },

    unHTML: function(html) {//去html
        return html.replace(/<\/?[^>]+>/g, '')
    },

    setMoney: function(tr) {//响应倍数改变
        if (tr) {
            /*
            var tpl=['￥','0.00','元'];
            var m=1,pn=tr.pn||2;
            tpl[1]=(m*2).toFixed(2);
            tr.cost.innerHTML=tpl.join('');
            tpl[1]=(m*pn).toFixed(2);
            tr.back.innerHTML=tpl.join('');
            */
        };
        var ns = this;
        clearTimeout(ns.batAddTimer);
        ns.batAddTimer = setTimeout(function() {
            ns.showMoneyInfo()
        }, 48);
    },

    getShowCount: function() {//合计可见行
        var i = 0;
        each($('tr', this.box), function() {
            if (this.style.display != 'none') i++
        });
        return i
    },

    showMoneyInfo: function() {//统计并显示投入回报数据
        var count = 0, cost = 0, back = 0, tmp = {}, m;
        each($('tr', this.box), function() {
            if (this.style.display == 'none') return;
            count++;
            var m = 1/*this.edit.value*/, pn = this.pn || 2;
            cost += m * 2;
            if (!(this.zid in tmp)) tmp[this.zid] = [];
            tmp[this.zid].push(pn * m);
        });
        var min = 0, max = 0;
        for (var k in tmp) {
            min += Math.min.apply(Math, tmp[k]);
            max += Math.max.apply(Math, tmp[k]);
        };
        back = min == max ? ('￥' + min.toFixed(2)) : (('￥' + min.toFixed(2)) + '-' + ('￥' + max.toFixed(2)));
        this.result.count.innerHTML = count;
        /*
        this.result.cost.innerHTML='￥'+cost.toFixed(2);
        this.result.back.innerHTML=back;
        */
    },
    onHide: function() { }
}
/*
IO Event
------------------------------------------------------------------------------------------*/
function setUserEvent(vs, sel) {
    var hideCount = $('hideCount'),
  showAll = $('showAllTeam'),
  showRq = $('showRq'),
  showNoRq = $('showNoRq'),
  lgList = $('lgList'),
  selectAllBtn = $('selectAllBtn'),
  selectOppBtn = $('selectOppBtn'),
  allMatch = $('input', 'lgList');
    vs.onHide = function(tr, count) {
        count = count || vs.getHideCount();
        hideCount.innerHTML = count;
        if (tr == undefined && showRq)
            showRq.checked = showNoRq.checked = true;
    };

    showAll.onclick = function() {//恢复
        vs.showAll();
        hideCount.innerHTML = 0;
        if (lgList) {
            each(lgList.getElementsByTagName('input'), function() {
                this.checked = true;
            });
        }
    };

    if (showRq)
        showRq.onclick = function() {//显隐让球
            vs.showRQ('rq', this.checked);
            hideCount.innerHTML = vs.getHideCount();
        };

    if (showNoRq)
        showNoRq.onclick = function() {//显隐非让球
            vs.showRQ('nrq', this.checked);
            hideCount.innerHTML = vs.getHideCount();
        };

    if (lgList)
        lgList.onclick = function(e) {//按赛事选
            e = fixEvent(e);
            var src = e.target;
            if (src.tagName.toLowerCase() != 'input') return;
            vs.showByName(attr(src, 'm'), src.checked)
        };

    if (selectAllBtn)
        selectAllBtn.onclick = function() {//全选
            for (var i = allMatch.length; i--; ) allMatch[i].checked = true;
            vs.showAll()
        };

    if (selectOppBtn)
        selectOppBtn.onclick = function() {//反选
            for (var i = allMatch.length; i--; ) {
                allMatch[i].checked = !allMatch[i].checked;
                vs.showByName(attr(allMatch[i], 'm'), allMatch[i].checked)
            }
        }

        var op_col = $('op_col'), vstable = $('table_vs');
        function colChange() {// 切换欧赔与平均列
            switch (this.value) {
                case '99家平均': updatePn.init('../xml/Average99.xml?t=' + ( new Date() ).getTime().toString(), 2000);  return;
                case '威廉希尔': updatePn.init('../xml/Willhill.xml?t=' + ( new Date() ).getTime().toString(), 2000); return;
                case '立博': updatePn.init('../xml/Lad.xml?t=' + ( new Date() ).getTime().toString(), 2000); return;
                case 'Bet365': updatePn.init('../xml/Bet365.xml?t=' + ( new Date() ).getTime().toString(), 2000); return;
                case '澳门彩票': updatePn.init('../xml/Macau.xml?t=' + ( new Date() ).getTime().toString(), 2000); return;
                default: return;
            }
        };
        if (op_col) {
            on(op_col, 'change', colChange);
        };
}
/*
auto update
*/
updatePn = {
    init: function(url, time) {
        var NS = this;
        http(url, function(h, x) {
            each($('m', x), function(i) {
                NS.parse(this)
            })
        })
    },
    parse: function(line) {
        var map = document.getElementById('vs' + attr(line, 'id'));
        if (map) {
            var New = [];
            New[0] = attr(line, 'win');
            New[1] = attr(line, 'draw');
            New[2] = attr(line, 'lost');
            attrinnerText(map, 'odds', New)
        }
    },
    onChange: function(vsTr, xmlNode) { }
};

/*

*/
function $CL(arr, n, noLC) {//从arr中取n个组合，然后
    var r = [], sum = 0;
    (function f(t, a, n) {
        if (n == 0) return r.push(t);
        for (var i = 0,
		l = a.length - n; i <= l; i++) {
            f(t.concat(a[i]), a.slice(i + 1), n - 1);
        }
    })([], arr, n);
    if (noLC) return r; //返回一个组合数组[[],[],[]]
    for (var i = r.length; i--; ) sum += get1(r[i]); //计算每个组合的连乘的和
    return sum;
};
function get1(arr) { return $Tran.apply(null, arr) || 0 }; //对数组进行连乘
function get2(arr) { return get1(arr) + $CL(arr, arr.length - 1) }; //一个基本串+(n-1)个串一[跳到CL进行拆分然后求单组的和]
function get3(arr) { return get2(arr) + $CL(arr, arr.length - 2) };
function get4(arr) { return get3(arr) + $CL(arr, arr.length - 3) };
function get5(arr) { return get4(arr) + $CL(arr, arr.length - 4) };
function get6(arr) { return $CL(arr, arr.length - 1) };
function get7(arr) { return $CL(arr, arr.length - 2) };
function get8(arr) { return $CL(arr, arr.length - 3) };
function get9(arr) { return $CL(arr, arr.length - 4) };
function get_puy_Count(arr/*intArray*/, ggType) {
    switch (ggType) {
        case '2串1': case '3串1': case '4串1': case '5串1': case '6串1': return get1(arr); //串1直接连乘
        case '3串4': case '4串5': case '5串6': case '6串7': return get2(arr);
        case '4串11': case '5串16': case '6串22': return get3(arr);
        case '5串26': case '6串42': return get4(arr);
        case '6串57': return get5(arr);
        case '3串3': case '4串4': case '5串5': case '6串6': return get6(arr);
        case '4串6': return get7(arr);
        case '5串10': case '6串20': return get8(arr);
        case '5串20': return get8(arr) + get7(arr);
        case '6串15': return get9(arr);
        case '6串35': return get8(arr) + get9(arr);
        case '6串50': return get8(arr) + get7(arr) + get9(arr);
        default: return 0;
    }
};
var typeMap = {
    //串1,n5
    '2串1': { '2串1': 1 },
    '3串1': { '3串1': 1 },
    '4串1': { '4串1': 1 },
    '5串1': { '5串1': 1 },
    '6串1': { '6串1': 1 },
    //n21
    '3串3': { '2串1': 3 },
    '3串4': { '3串1': 1, '2串1': 3 },
    '4串6': { '2串1': 6 },
    '4串11': { '4串1': 1, '3串1': 4, '2串1': 6 },
    '5串10': { '2串1': 10 },
    '5串20': { '2串1': 10, '3串1': 10 },
    '5串26': { '5串1': 1, '4串1': 5, '3串1': 10, '2串1': 10 },
    '6串15': { '2串1': 15 },
    '6串35': { '2串1': 15, '3串1': 20 },
    '6串50': { '2串1': 15, '3串1': 20, '4串1': 15 },
    '6串57': { '6串1': 1, '5串1': 6, '4串1': 15, '3串1': 20, '2串1': 15 },
    '4串4': { '3串1': 4 },
    '4串5': { '4串1': 1, '3串1': 4 },
    '5串16': { '5串1': 1, '4串1': 5, '3串1': 10 },
    '6串20': { '3串1': 20 },
    '6串42': { '6串1': 1, '5串1': 6, '4串1': 15, '3串1': 20 },
    '5串5': { '4串1': 5 },
    '5串6': { '5串1': 1, '4串1': 5 },
    '6串22': { '6串1': 1, '5串1': 6, '4串1': 15 },
    '6串6': { '5串1': 6 },
    '6串7': { '6串1': 1, '5串1': 6 }
};

/*
infoWin
*/
function showMoneyTable(who, sender) {
    var ini = who == 'max' ? ['MoneyTableMax', 'MoneyTableMin', 'changeMin', 'changeMax'] : ['MoneyTableMin', 'MoneyTableMax', 'changeMax', 'changeMin'];
    $(ini[0]).style.display = '';
    $(ini[1]).style.display = 'none';
    $(ini[2]).style.display = '';
    $(ini[3]).style.display = 'none';
};
infoWin = {
    tpl: [
    '<table border="0" cellspacing="0" cellpadding="0" class="yuce_tablebox"><tr class="trt"><th class="td_line">赛事编号</th><th class="td_line">比赛</th><th class="td_line">您的选择(奖金)</th><th class="td_line">最小奖金值</th><th class="td_line">最大奖金值</td></tr>{$body}<tr><td colspan=5 class="td_line td_line4">{$foot}</td></tr></table>',
    '<table border="0" cellspacing="0" cellpadding="0" class="yuce_tablebox"><tr class="trt"><td rowspan="2">命中场数</td><td colspan={$head2col}>中奖注数</td><td rowspan=2>倍数</td><td colspan=2>奖金范围</td></tr><tr class="trt">{$ggTypeSub}<td>最大奖金</td><td class="td_line">最小奖金</td></tr>{$body2}<tr><td colspan={$foot2col} class="td_line td_line4 red">注：奖金预测值为投注时即时奖金，最终奖金以出票时刻的奖金为准</td></tr></table>',
    '<table border="0" cellspacing="0" cellpadding="0" class="yuce_tablebox" id="MoneyTableMax"><tr class="trt"><td>过关方式</td><td>中奖注数</td><td>中{$n}场 最大奖金 中奖明细</td><td>奖金</td></tr>{$body3}<tr><td>合计</td><td>{$zs}注</td><td>&nbsp;</td><td class="td_line vcenter"><span class="bold">{$sumMoney}</span>元</td></tr></table>',
    '<table border="0" cellspacing="0" cellpadding="0" class="yuce_tablebox" style="margin:10px auto" id="MoneyTableMin" style="display:none"><tr class="trt"><td>过关方式</td><td>中奖注数</td><td>中{$n}场 最小奖金 中奖明细</td><td>奖金</td></tr>{$body4}<tr><td>合计</td><td>{$zs}注</td><td>&nbsp;</td><td class="td_line vcenter"><span class="bold">{$minMoney}</span>元</td></tr></table>',
  ],
    init: function(btn, win, title, body, moneyUI) {
        this.btn = $(btn);
        if (!this.btn) return;
        var ns = this;
        this.btn.onclick = function() {
            ns.onShow()
        };
        drag($(title), $(win));
        this.win = $(win);
        this.body = $(body);
        this.moneyUI = $(moneyUI)
    },
    getMaxPrice: function() {
        if (selectTable.getShowCount() < 2 || !ggAdmin.curType) return '￥0.00';
        var map = this.__pnMap, ns = this, cnmap = this.__pnTitle, maxSP = [];
        each(selectTable.box.rows, function() {//查找预选表
            if (this.style.display == 'none') return;
            var baseLine = $('vs' + this.zid), tmp = [], sp = [];

            each($('label', this), function(i) {//预选SP
                if (this.style.display != 'none') {
                    var tmpPn = ns.__getPn__(baseLine, map[i]);
                    sp.push(parseFloat(tmpPn || 2.00)); //最少2.0
                    tmp.push(cnmap[i] + '(' + tmpPn.toFixed(2) + ') ')
                }
            });
            var max = Math.max.apply(Math, sp);
            maxSP.push(max);
        });
        return '￥' + this.SP2Money(maxSP, ggAdmin.curType, $('buybs').value).val;
    },
    show: function(selector) {
        var pos = getClientSize();
        var x = parseInt((pos.width - 560) / 2) + 'px';
        var y = parseInt((pos.height - 560) / 3) + pos.y + 'px';
        this.win.style.display = '';
        this.win.style.top = y;
        this.win.style.left = x;
        var Html = this.getDetails(selector.box.rows);
        this.body.innerHTML = replace(this.tpl.join(''), Html);
    },
    __pnTitle: ['胜', '平', '负'],
    __pnMap: ['win', 'draw', 'lost'],
    __getPn__: function(tr, pnName) {
        return parseFloat(attr(tr, pnName)) || 2.00
    },
    getDetails: function(rows) {//生成明细数据
        var data = [], baseLine, tmp, map = this.__pnMap, cnmap = this.__pnTitle;
        var max = [], count = 0, maxSP = [], minSP = [], ns = this;
        each(rows, function() {//查找预选表
            if (this.style.display == 'none') return;
            count++; //场数
            baseLine = $('vs' + this.zid);
            tmp = [], sp = [];
            each($('label', this), function(i) {//预选SP
                if (this.style.display != 'none') {
                    var tmpPn = ns.__getPn__(baseLine, map[i]);
                    sp.push(parseFloat(tmpPn || 2.00)); //最少2.0
                    tmp.push(cnmap[i] + '(' + tmpPn.toFixed(2) + ') ')
                }
            });
            var min = Math.min.apply(Math, sp), max = Math.max.apply(Math, sp);
            minSP.push(min); //最小SP表
            maxSP.push(max); //最大SP表
            data.push('<tr><td>' + delHtml(this.cells[0].innerHTML)
					+ '</td><td>' + delHtml(baseLine.cells[1].innerHTML)
					+ '</td><td>' + tmp.join('') + '</td><td>' + parseFloat(min).toFixed(2) + '</td><td class="td_line">' + parseFloat(max).toFixed(2) + '</td></tr>');
        }); //查找结束
        var sub = typeMap[this.ggTypeSet];
        var subHtml = '', subZs = '';
        var len = 0;
        for (var k in sub) {
            len++;
            subHtml += '<td>' + k + '</td>';
            subZs += '<td>' + sub[k] + '</td>';
        };
        var minInfo = this.SP2Money(minSP, this.ggTypeSet, this.bs); //HTML and sum;
        var maxInfo = this.SP2Money(maxSP, this.ggTypeSet, this.bs);
        return {
            body: data.join('\n'), //表1
            foot: '过关方式：<font color=red>' + this.ggTypeSet + '</font> 倍数：<font color=red>' + this.bs + '倍</font> 方案总金额：<font color=red>' + this.moneyUI.innerHTML + '</font>元',
            ggTypeSub: subHtml, //表2
            head2col: len,
            body2: '<tr><td>' + count + '</td>' + subZs + '<td>'
				+ this.bs + '</td><td>'
				+ maxInfo.val + '元<span id="changeMax" style="display:none;color:#0066CC;cursor:pointer;" onclick="showMoneyTable(\'max\')">[明细]</span></td><td class="td_line">'
				+ minInfo.val + '元<span id="changeMin" style="color:#0066CC;;cursor:pointer;" onclick="showMoneyTable(\'min\')">[明细]</span></td></tr>',
            foot2col: len + 4,
            body3: maxInfo.html,
            body4: minInfo.html,
            sumMoney: maxInfo.val,
            minMoney: minInfo.val,
            n: count,
            zs: this.ggTypeSet.replace(/^.*?(\d+)$/g, '$1')
        };
        function delHtml(x) {
            return x.toString().replace(/<[^>]+>/g, '')
        }
    },
    SP2Money: function(SPArray, ggType, BS) {//计算最大或者最小奖金并构建详情表
        var type = typeMap[ggType], r, sum = 0, BS = BS || 1, Html = [];
        for (var k in type) {
            Html.push('<tr><td>' + k + '</td><td>' + type[k] + '注</td>')
            r = $CL(SPArray, parseInt(k), true);
            var dsum = 0, xsum = 0;
            Html.push('<td style="text-align:left;width:240px;padding-left:5px;"><p class="td_width">');
            for (var i = 0; i < r.length; i++) {
                xsum = $Tran.apply(null, r[i]);
                dsum += xsum;
                Html.push(r[i].join(' × ') + ' × ' + BS + '倍 × 2元= <b style="color:#0066CC">' + (xsum * BS).toFixedFix(2) * 2 + '</b> 元<br/>')
            };
            Html.push('</p></td><td class="td_line">' + (dsum * BS).toFixedFix(2) * 2 + '元</td></tr>')
            sum += dsum;
        }
        return { val: (sum * BS).toFixedFix(2) * 2, html: Html.join('') }
    },
    onShow: function() { }
};
/**/
ggAdmin = {
    ggType: ['r2c1', 'r3c1,r3c3,r3c4', 'r4c1,r4c4,r4c5,r4c6,r4c11', 'r5c1,r5c5,r5c6,r5c10,r5c16,r5c20,r5c26', 'r6c1,r6c6,r6c7,r6c15,r6c20,r6c22,r6c35,r6c42,r6c50,r6c57'],
    ggValue: eval('(' + ($('jsonggtype') == null ? '{}' : $('jsonggtype').value) + ')'),
    curType: false,
    vsData: [],

    init: function(typeListBox) {
        var list = $('input', typeListBox);
        this.typeList = [];
        for (var i = list.length; i--; )
            this.typeList.push(list[i]);
        var NS = this;
        each(this.typeList, function() {
            this.onclick = function() {//切换过关选择
                if (this.value == NS.curType) return;
                NS.curType = this.value;
                NS._onChange()
            }
        })
    },

    setGGType: function(n) {//显示可用过关方式
        this.curType = false;
        var useType = n < 2 ? '' : this.ggType.slice(n - 2, n - 1).join(',');
        each(this.typeList, function() {
            var use = useType.indexOf(this.id) + 1;
            this.parentNode.style.display = use ? '' : 'none';
            this.checked = use;
            if (use) this.click();
        })
    },

    update: function(data) {
        this.vsData = data;
        this._onChange()
    },

    _onChange: function() {
        this.data = this.vsData.length < 2 ? 0 : get_puy_Count(this.vsData, this.curType);
        this.onChange(this.data)
    },

    onChange: function() { }
};

function opendate(id) {
    try {
        if (document.getElementById('d_' + id).style.display == 'none') {
            document.getElementById('d_' + id).style.display = '';
            document.getElementById('img_' + id).className = 's_hidden';
            document.getElementById('img_' + id).innerHTML = '点击隐藏';
            document.getElementById('img_' + id).alt = '隐藏';
        } else {
            document.getElementById('d_' + id).style.display = 'none';
            document.getElementById('img_' + id).className = 's_add';
            document.getElementById('img_' + id).innerHTML = '点击展开';
            document.getElementById('img_' + id).alt = '展开';
        }
    } catch (e) { };
}

function openclose(id) {
    if (document.getElementById('pltr_' + id).style.display == 'none') {
        document.getElementById('pltr_' + id).style.display = '';
        document.getElementById('img_' + id).src = 'Images/btn_sp.gif';
        document.getElementById('img_' + id).alt = '隐藏选项';
    } else {
        document.getElementById('pltr_' + id).style.display = 'none';
        document.getElementById('img_' + id).src = 'Images/btn_spadd.gif';
        document.getElementById('img_' + id).alt = '展开选项';

    }
}
