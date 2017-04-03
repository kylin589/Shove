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
updatePn.keyToIndex={'aa':0,'ac':1,'ab':2,'ca':3,'cc':4,'cb':5,'ba':6,'bc':7,'bb':8};
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
selectTable.__valToChkPos={'33':1,'31':2,'30':3,'13':4,'11':5,'10':6,'03':7,'01':8,'00':9};
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

*/
ggAdmin={

    ggType:['r2c1','r3c1,r3c4','r4c1,r4c5,r4c11','r5c1,r5c6,r5c16,r5c26','r6c1,r6c7,r6c22,r6c42,r6c57'],
    
    ggValue:eval('('+$('jsonggtype').value+')'),
    curType:false,
    vsData:[],

    init:function (typeListBox){
        var list=$('input',typeListBox);
        this.typeList=[];
        for(var i=list.length;i--;)
            this.typeList.push(list[i]);
        var NS=this;
        each(this.typeList,function (){
            this.onclick=function (){//切换过关选择
                if(this.value==NS.curType)return;
                NS.curType=this.value;
                NS._onChange()
            }
        })
    },
    
    setGGType:function (n){//显示可用过关方式
        this.curType=false;
        var useType=n<2?'':this.ggType.slice(n-2,n-1).join(',');
        each(this.typeList, function(){
          var use=useType.indexOf(this.id)+1;
          this.parentNode.style.display=use?'':'none';
          this.checked = use;
          if(use)this.click();
        })
    },

    update:function (data){
       this.vsData=data;
       this._onChange()
    },

    _onChange:function (){
        this.data=this.vsData.length<2?0:get_puy_Count(this.vsData,this.curType);
        this.onChange(this.data)
    },

    onChange:function (){}
};
//
infoWin.__pnTitle=['胜-胜','胜-平','胜-负','平-胜','平-平','平-负','负-胜','负-平', '负-负'];
infoWin.__pnMap=[0,1,2,3,4,5,6,7,8,9];
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
    table_vs.__valToChk={'33':1,'31':2,'30':3,'13':4,'11':5,'10':6,'03':7,'01':8,'00':9};
    table_vs.init('table_vs');
    setUserEvent(table_vs,selectTable);

    selectTable.__namePos=[3,4];
    selectTable.__valToString={
        '33':'胜-胜',
        '31':'胜-平',
        '30':'胜-负',
        '13':'平-胜',
        '11':'平-平',
        '10':'平-负',
        '03':'负-胜',
        '01':'负-平',
        '00':'负-负'
    };
    selectTable.__valToCodes={
        '33':'3-3',
        '31':'3-1',
        '30':'3-0',
        '13':'1-3',
        '11':'1-1',
        '10':'1-0',
        '03':'0-3',
        '01':'0-1',
        '00':'0-0'
    };
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
        ggAdmin.update(data);
    };

    ggAdmin._onChange = ggAdmin.onChange=function (data){//合计
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
};
App();