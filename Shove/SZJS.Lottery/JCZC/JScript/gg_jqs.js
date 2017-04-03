table_vs.__updatePn__=function (tr,data){
    var d=0,t=0,old=attr(tr,'odds');
    if(old)old=old.split(',');
    each(this.__getChks__(tr).options,function (i){
        var span=getNext(this);
        if(!span)return;
        if(isNaN(parseInt(data[i])))return;
        var d=data[i]-old[i];
        if(d!=0){
            var t=parseFloat(data[i]);
            span.innerHTML=t==0?'':(data[i]+(d>0?'<span style="color:#F00;font-weight:normal;">↑</span>': '<span style="color:#090;font-weight:normal;">↓<span>'));
            span.title=(d>0?'+':'')+d.toFixed(2);
        }
    });
   attr(tr,'odds',data)
};
updatePn.parse=function (line){
    var map=document.getElementById('vs'+attr(line,'id'));
    if(map)
        map.updatePn([attr(line,'s0'),attr(line,'s1'),attr(line,'s2'),attr(line,'s3'),attr(line,'s4'),attr(line,'s5'),attr(line,'s6'),attr(line,'s7')])
};
/*
reover
*/
selectTable.max=6;
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
            each(tr.getElementsByTagName('INPUT'),function (){this.checked=false},1);
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
selectTable.__valToChkPos=[1,2,3,4,5,6,7,8];
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
//
infoWin.__pnTitle=[0,1,2,3,4,5,6,'7+'];
infoWin.__pnMap=[0,1,2,3,4,5,6,7];
infoWin.__getPn__=function (tr,index){
    var pn=attr(tr,'odds');
    if(pn){
        pn=pn.split(',')
    }else{
        return 2.00
    };
    return parseFloat(pn[index])
};
/*
begin
*/
function App(){
    table_vs.__valToChk=[1,2,3,4,5,6,7,8];
    table_vs.init('table_vs');
    setUserEvent(table_vs,selectTable);

    selectTable.__namePos=[3,4];
    selectTable.__valToString={"0":1, "1":2, "2":3, "3":4,"4":5, "5":6, "6":7, "7":8};
    selectTable.init('selectTeams','row_tpl')
    selectTable.onHide=function (tr,spf){
        table_vs.setCheckBox(tr.zid,spf);
    };

    table_vs.onSelect=function (tr,chk){
        chk.checked?selectTable.add(tr,chk):selectTable.del(tr,chk)
        chk.parentNode.className=chk.checked?selectedColor:'sp_bg';
    };

    ggAdmin.init('ggList');
    selectTable.onChange=function (data/*Array[int,int(1-3)]*/){
        var n=data.length;
        if(n!=ggAdmin.vsData.length)//如果队列数量有变,切换过关方式
            ggAdmin.setGGType(n);
        ggAdmin.update(data);
    };

    ggAdmin.onChange=function (data){//合计
       var bs=$('buybs').value;
       $('zhushu').value = $('showCount').innerHTML = data;
       $('beishu').value = $('showBS').innerHTML = bs;
       $('showMoney').innerHTML = '￥'+ ($('totalmoney').value = (data*bs*2).toFixed(2));
       $('MaxPrice').innerHTML = infoWin.getMaxPrice();
    };

    infoWin.init('lookDetails','popWindow','popWindowTitle','popContent','showMoney');
    infoWin.onShow=function (){
        if(selectTable.getShowCount()<2)return alert('请最少选择两场比赛!');
        if(!ggAdmin.curType)return alert('请选择过关方式!');
        this.ggTypeSet=ggAdmin.curType;
        this.bs=$('buybs').value;
        this.show(selectTable)
    }

    intInputChange($('buybs'),function (){//倍数输入框
        if(isNaN(ggAdmin.data))return;
        ggAdmin.onChange(ggAdmin.data)
    });

    if($('clearAllSelect') == null)return;
    $('clearAllSelect').onclick=function (){
        selectTable.hideAll()
    };
};
App();