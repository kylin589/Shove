table_vs.__updatePn__=function (tr,data){
    var d=0,t=0,old=attr(tr,'odds');//13+5+13
    if(!old)return;
    old=old.split(',');
    var New=old.slice();
    for(var k in data){// copy to New Array
        var i=updatePn.keyToIndex[k];
        if(old[i]!=data[k])New[i]=data[k]
    };
    each(this.__getChks__(tr).options,function (i){
        var span=getNext(this);
        if(span){span=getNext(span)};
        if(!span)return;
        if(isNaN(parseInt(data[i])))return;
        var d=New[i]-old[i];
        if(d!=0){
            var t=parseFloat(New[i]);
            span.innerHTML=t==0?'':(New[i]+(d>0?'<span style="color:#F00;font-weight:normal;">↑</span>': '<span style="color:#090;font-weight:normal;">↓<span>'));
            span.title=(d>0?'+':'')+d.toFixed(2);
        }
    });
   attr(tr,'odds',New)
};
updatePn.keyToIndex={"aother":13,"a10":1,"a20":2,"a21":3,"a30":4,"a31":5,"a32":6,"a40":7,"a41":8,"a42":9,"a50":10,"a51":11,"a52":12,"cother":18,"c00":14,"c11":15,"c22":16,"c33":17,"bother":31,"b10":19,"b20":20,"b21":21,"b30":22,"b31":23,"b32":24,"b40":25,"b41":26,"b42":27,"b50":28,"b51":29,"b52":30};
updatePn.parse=function (line){
    var map=document.getElementById('vs'+attr(line,'id'));
    var attrs=line.attributes;
    var keys={};
    for(var i=0,l=attrs.length;i<l;i++){
        var key=attrs[i].name;
        if(key in updatePn.keyToIndex)
            keys[key]=attrs[i].value
    };
    if(map)
        map.updatePn(keys)
};
table_vs.__getChks__=function (tr){
    var zid=attr(tr,'mid');
    if(!zid)return;//not main line
    var header=$('input',tr)[0];
    var pnTable=$('pltr_'+zid);
    if(!pnTable)return {head:header,opts:[]};
    tr.pnTr=pnTable;
    var opts=[],all=[];
    each($('tr',pnTable),function (){
        var chks=$('INPUT',this);
        var len=chks.length;
        if(len<1)return false;
        var body=[];
        each(chks,function (i){
            body.push(this)
        },0,-1);
        all=all.concat(body);
        opts.push( {
            options:body,
            allSelect:chks[len-1]
        })
    });
    return {
        head:header,
        opts:opts,
        options:all
    }
};
table_vs.__optionsCount__=0;
table_vs.__setRow__=function (tr){
    var chks=this.__getChks__(tr);
    if(!chks)return;

    var NS=this;
    this.list.push(tr);
    tr.hide=function (){//行隐藏
        this.style.display='none';
        if(this.pnTr){
            this.pnTr.style.display='none';
            $('img_'+tr.zid).src = '/images/trade/btn_spadd.gif'
        };
        NS.onHide(this,this.__hideCount++)
    };
    tr.show=function (){//行显示
        tr.style.display=''
    };
    chks.head.onclick=function (){//隐藏[sender:chk,influence:tr]
        this.checked=true;
        tr.hide()
    };

    if(chks.opts.length==0)return;// 过期比赛

    tr.options=chks.opts;
    tr.zid=attr(tr, 'mid');
    tr.id='vs'+tr.zid;

    tr.updatePn=function (data){//更新折率
        NS.__updatePn__(this,data)
    };

    each(chks.opts,function (i,item){//三行
        var opts=this.options;//单行选项
        var allOpt=this.allSelect;
        for(var i=opts.length;i--;){//单选
            opts[i].onclick=function(e){
               if (this.checked && NS.__optionsCount__>NS.maxOptions-1){//单选时超过62场
                   this.checked=false;
                   return NS.overFlowerror()
               }
               allOpt.checked=NS.isAllSelect(opts);
               NS.onSelect(tr,this)
               e = e || window.event;
               if(e.preventDefault)e.stopPropagation();
               NS.getCount()
            };
            opts[i].cancel=function (){//手动取消选择
                this.checked=false;
                allOpt.checked=NS.isAllSelect(opts);
                 NS.getCount()
            }
            opts[i].parentNode.onclick = AutoClick;
        };
        allOpt.parentNode.onclick = AutoClick;
        allOpt.onclick=function (e){//全选(末项)
          for(var i=opts.length;i--;){
            if( opts[i].checked!=this.checked){
               if (this.checked && NS.__optionsCount__>NS.maxOptions-1){//全选时超过62场
                   NS.overFlowerror();
                   this.checked=false;
                   break
               }
              opts[i].checked=this.checked;
              NS.onSelect(tr,opts[i]);
              NS.getCount()
            }
          }
          e = e || window.event;
          if(e.preventDefault)e.stopPropagation();//Firefox下事件冒泡
        }
    })

};
table_vs.setCheckBox=function (zid,spf){//外部操作checkbox
    var tr=$('pltr_'+zid);
    if(tr){
        var chks=tr.getElementsByTagName('INPUT');
        each($('input',tr),function (){
            if(this.value==spf){
                this.cancel();
                this.parentNode.style.backgroundColor='';
                return false
            }
        })
    }
};
/*
reover
*/
selectTable.max=3;
selectTable.mapTr=function (tr,chk){
    return document.getElementById('sel'+tr.zid)
};
selectTable.del=function (tr,chk){
    var mapTr=this.mapTr(tr,chk);
    if(mapTr){
        var chks=mapTr.getElementsByTagName('INPUT');
       this.showCheckBox(chks,chk.value,false);
       if(this.isAllCancel(mapTr))mapTr.hide();
       this._onChange()
    }
};
selectTable.add=function (tr,chk){
    var mapTr=this.mapTr(tr,chk);//映射行
   if(this.getShowCount()==this.max){
       if(!mapTr||mapTr.style.display=='none'){
            each(tr.pnTr.getElementsByTagName('INPUT'),function (){this.checked=false},1);
            return alert('单个方案最多只能选择'+this.max+'场比赛进行投注');
       }
    };
    var newTr=this.getNewTr(tr,chk,mapTr);
    this.box.appendChild(newTr);
    this.reSort();
    this._onChange()
};
selectTable.getNewTr=function (tr,chk,node){//添加行
    var tmp=node,NS=this;
    if(!node){
        tmp=this.tpl.cloneNode(true)
        var tds=tmp.getElementsByTagName('TD');
        tmp.id='sel'+tr.zid;
        tmp.zid=attr(tr,'zid');//zid
        tmp.spf=parseInt(chk.value);//310
        tmp.preFix = attr(tr, 'mid');
        tmp.date = attr(tr, 'pdate');
        tmp.pname =attr(tr,'pname');       
        tmp.pn=parseFloat(attr(tr,["lost","draw","","win"][tmp.spf]))||0;//赔率
        tmp.style.display='';
        tds[0].lastChild.innerHTML=this.unHTML(tr.cells[0].innerHTML);
        tds[1].innerHTML=this.unHTML(tr.cells[this.__namePos[0]].innerHTML+' vs '+tr.cells[this.__namePos[1]].innerHTML);
        tmp.hide=function (){this.style.display='none'};
        tmp.show=function (){this.style.display=''};
    }else{
        this.show(tr,chk)
    };
    var chks=tmp.getElementsByTagName('INPUT');
    this.showCheckBox(chks,chk.value,true)
    chks[0].onclick=function (){//隐藏行
       each(tmp.getElementsByTagName('INPUT'),function (){
           this.onclick()
       },1);
       this.checked=true;
       tmp.hide();
    };
    each(chks,function (i){//check事件
        this.onclick=function (){
            this.parentNode.style.display='none';
            NS.onHide(tmp,this.value);
            if(NS.isAllCancel(tmp))tmp.hide();
            NS._onChange()//发起onchange事件
        }
    },1);
    return tmp
};
selectTable.__valToChkPos = { "3A": 13, "10": 1, "20": 2, "21": 3, "30": 4, "31": 5, "32": 6, "40": 7, "41": 8, "42": 9, "50": 10, "51": 11, "52": 12, "1A": 18, "00": 14, "11": 15, "22": 16, "33": 17, "0A": 31, "01": 19, "02": 20, "12": 21, "03": 22, "13": 23, "23": 24, "04": 25, "14": 26, "24": 27, "05": 28, "15": 29, "25": 30 };
selectTable.showCheckBox=function (chks,value,checked){//显示胜平负
    var index=this.__valToChkPos[value],o=chks[index];
    o.checked=checked;
    o.parentNode.style.display=checked?'':'none';
};
selectTable.isAllCancel=function (tr){
    var test=true;
    each(tr.getElementsByTagName('INPUT'),function(){if(this.parentNode.style.display!='none')return test=false},1,0);
    return test
};
selectTable.hideAll=function (){//全部关闭
    each($('tr',this.box),function (){
        if(this.style.display!='none'){
            this.getElementsByTagName('INPUT')[0].onclick()
        }
    });
};
selectTable.getData=function (){
    var data=[];
    each($('tr',this.box),function (){
        if(this.style.display=='none')return;
        var t=0;
        each(this.getElementsByTagName('LABEL'),function (){
            if(this.style.display!='none')t++
        });
        data.push(t)
    });
    this.data=data;
    return data
};
selectTable.showMoneyInfo=function(){};
selectTable._onChange=function(){
   var NS=this;
   clearTimeout(NS.timer);
   NS.timer=setTimeout(function (){NS.onChange(NS.getData())},10);//连续变化只保留最后一次有效
};
selectTable.onChange=function(){};
/*
begin
*/
function App(){
    table_vs.__valToChk=[1,2,3,4,5,6,7,8];
    table_vs.init('table_vs');
    setUserEvent(table_vs,selectTable);

    selectTable.__namePos=[3,4];
    selectTable.__valToString={"3A":13,"10":1,"20":2,"21":3,"30":4,"31":5,"32":6,"40":7,"41":8,"42":9,"50":10,"51":11,"52":12,"1A":18,"00":14,"11":15,"22":16,"33":17,"0A":31,"01":19,"02":20,"12":21,"03":22,"13":23,"23":24,"04":25,"14":26,"24":27,"05":28,"15":29,"25":30};
    selectTable.init('selectTeams','row_tpl')
    selectTable.onHide=function (tr,spf){
        table_vs.setCheckBox(tr.zid,spf);
    };

    table_vs.onSelect=function (tr,chk){
        chk.checked?selectTable.add(tr,chk):selectTable.del(tr,chk)
        chk.parentNode.style.backgroundColor=chk.checked?'#FDD59A':'';
    };

    table_vs.maxOptions=62;//最多项
    table_vs.getCount=function (){//记录项数
        var data=selectTable.getData(),sum=0;
        if (data.length!=0) {
            sum=eval(data.join('+'))
        }
        this.__optionsCount__=sum;
    }
    table_vs.overFlowerror=function (){//超出警告
        alert('对不起，您的投注选项已超出62个，如需投注更多请另行发起方案!');
    }
    ggAdmin.init('ggList');
    selectTable.onChange=function (data/*Array[int,int(1-3)]*/){
        var n=data.length;
        if(n!=ggAdmin.vsData.length)//如果队列数量有变,切换过关方式
            ggAdmin.setGGType(n);
        ggAdmin.update(data);
    };

    ggAdmin._onChange = ggAdmin.onChange = function (data){//合计
       data = data || eval(this.vsData.join('+')) || 0;
       this.data = data;
       var bs=$('buybs').value;
       $('zhushu').value = $('showCount').innerHTML=data;
       $('beishu').value = $('showBS').innerHTML=bs;
       $('showMoney').innerHTML='￥'+($('totalmoney').value = (data*bs*2).toFixed(2));
       $('selectMatchNum').innerHTML = this.vsData.length;
    };

    intInputChange($('buybs'),function (){//倍数输入框
        if(isNaN(ggAdmin.data))return;
        ggAdmin.onChange(ggAdmin.data)
    });

    if($('clearAllSelect') == null)return;
    $('clearAllSelect').onclick=function (){
        selectTable.hideAll()
    };
    //updatePn.init('/static/public/jczq/xml/live/3_1.xml',2000);
};
App();