<%@ Page Language="C#" AutoEventWireup="true" EnableEventValidation="false" CodeFile="JoinAllBuy.aspx.cs" Inherits="JoinUs_JoinAllBuy" %>

<%@ Register Assembly="Shove.Web.UI.4 For.NET 3.5" Namespace="Shove.Web.UI" TagPrefix="ShoveWebUI" %>
<%@ Register Src="../Home/Room/UserControls/WebFoot.ascx" TagName="WebFoot" TagPrefix="uc2" %>
<%@ Register Src="../UserControls/Head.ascx" TagName="Head" TagPrefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>彩票|合买|合买跟单|福彩|体彩|足彩|竞彩|快开彩|一起买彩票、彩票合买代购交易平台－<%=_Site.Name %>－买彩票，就上<%=_Site.Name %></title>
    <meta name="keywords" content="买彩票,彩票合买" />
    <meta name="description" content="<%=_Site.Name %>为广大彩民提供互联网彩票合买代购交易平台。" />
    <link href="../Home/Room/Style/common.css" rel="stylesheet" type="text/css" />
    <link href="../Home/Room/Style/StyleSheet.css" rel="stylesheet" type="text/css" />
    <link href="../Home/Room/Style/zbuy.css" rel="stylesheet" type="text/css" />

    <script src="../JavaScript/jquery-1.4.js" type="text/javascript"></script>

    <script type="text/javascript">
    function CreateLogin() {
    
       if (Number(document.getElementById("Head2_hUserID").value) > 0) {
            return true;
       }else{
         if (!confirm("请登录账户后进行投注！"))
         {
             return false;
         }
       }
    }
    </script>

    <style type="text/css">
        .hemai
        {
            width: 100%;
        }
        .hemai tr td
        {
            border: 1px solid #f4f4f4;
            text-align: center;
        }
        .hemai thead tr td
        {
            border: 1px solid #CCCCCC;
            text-align: center;
        }
        table strong
        {
            text-align: center;
            display: block;
            background-color: #f0f0f0;
        }
        .wrap
        {
            width: 990px;
            
        }
        #tou tr td
        {
            border: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <uc1:Head ID="Head2" runat="server" />
    <div class="wrap">
        <div class="tab-callcai">
          <table>
            <tr class="tr-bj1">
            <td width="112" class="cai-tittle">全部彩种</td>
            <td><a href="#">双色球</a></td>
            <td><a href="#">福彩3D</a></td>
            <td><a href="#">7乐彩</a></td>
            <td colspan="5" class="bj-no"></td>
            <td width="38" class="bj-no"></td>
            </tr>
          
           <tr class="tr-bj2">
            <td class="cai-tittle">高频彩</td>
            <td><a href="#">江西时时彩</a></td>
            <td><a href="#">时时彩</a></td>
            <td><a href="#">十一运夺彩</a></td>
            <td><a href="#">时时乐</a></td>
            <td><a href="#">幸运赛车</a></td>
            <td><a href="#">11选5</a></td>
            <td><a href="#">8选3</a></td>
            <td><a href="#">快3</a></td>
            <td class="bj-no"></td>
            </tr>


             <tr class="tr-bj1">
            <td></td>
            <td><a href="#">天津快乐十分</a></td>
            <td><a href="#">广西快乐十分</a></td>
            <td><a href="#">重庆快乐十分</a></td>
            <td><a href="#">湖南快乐十分</a></td>
            <td><a href="#">PK10</a></td>
            <td colspan="3" class="bj-no"></td>
            <td class="bj-no"></td>
            </tr>

             <tr class="tr-bj2">
            <td class="cai-tittle">体彩</td>
            <td><a href="#">超级大乐透</a></td>
            <td><a href="#">七星彩</a></td>
            <td><a href="#">排列3</a></td>
            <td><a href="#">排列5</a></td>
            <td><a href="#">33选7</a></td>
            <td><a href="#">22选5</a></td>
            <td colspan="2" class="bj-no" ></td>
            <td class="bj-no"></td>
            </tr>


             <tr class="tr-bj1">
            <td class="cai-tittle">足彩</td>
            <td><a href="#">六场半全场</a></td>
            <td><a href="#">14场胜负彩</a></td>
            <td><a href="#">4场进球彩</a></td>
            <td><a href="#">任选9场</a></td>
            <td><a href="#">竞技足球</a></td>
            <td><a href="#">足球单关</a></td>
            <td><a href="#">竞彩篮球</a></td>
            <td><a href="#">篮球单关</a></td>
            <td class="bj-no"></td>
            </tr>
          </table>
          <div class="clear"></div>
        </div>

<div class="kind">
<div class="kind-left pull-left">
<div class="hemai-name">
<h3>合买名人</h3>
<table>
<tr>
<td width="20"></td>
<td>船长</td>
<td>老板02</td>
<td>船长</td>
<td>船长</td>
<td>船长</td>
</tr>
<tr>
<td></td>
<td>船长</td>
<td>船长</td>
<td>船长</td>
<td>船长</td>
<td>船长</td>
</tr>
<tr>
<td></td>
<td>船长</td>
<td>船长</td>
<td>船长</td>
<td>船长</td>
<td>船长</td>
</tr>




</table>
<div class="clear"></div>
</div>
<div class="hot-case">
<h3>热门案例</h3>
<form>
<select>
<option>未满员</option>
<option>未满员</option>
<option>未满员</option>
</select>

<select>
<option>不限佣金</option>
<option>不限佣金</option>
<option>不限佣金</option>
</select>

<select>
<option>不限保底</option>
<option>不限保底</option>
<option>不限保底</option>
</select>

<input type="text" value="发起人昵称"class="btn-text"/> <a href="#"><input type="button" value="搜索" class="btn-search" /></a> 
</form>

<table width="750" border="0">
  <tr class="tr-bj1">
   <td width="5"></td>
    <td>序号</td>
    <td>彩种</td>
    <td>发起人</td>
    <td>战绩</td>
    <td>方案金额</td>
    <td>每份</td>
    <td>方案|提成</td>
    <td>进度</td>
    <td>份数</td>
    <td>入伙</td>
  </tr>
  <tr>
   <td></td>
    <td>01</td>
    <td>双色球</td>
    <td>船长</td>
    <td></td>
    <td>&yen;888.00</td>
    <td>&yen;2.00</td>
    <td><a class="color-two" href="#">详情</a>| 5%</td> 
    <td><div><span class="color-one">80%+</span>20%（保底)</div>
        <div class=" Progress">
          <div class="Progress-pct-1"></div>
        </div>
    </td>
    <td><input class="btn-box" type="text" value="请输入"  /></td>
    <td><input class="btn-search" type="button" value="购买" /></td>
  </tr>
  <tr>
   <td></td>
    <td>02</td>
    <td>超级大乐透</td>
    <td>船长</td>
    <td>&nbsp;</td>
    <td>&yen;888.00</td>
    <td>&yen;2.00</td>
   <td><a class="color-two" href="#">详情</a>| 5%</td> 
  <td><div><span class="color-one">70%+</span>20%（保底)</div>
        <div class=" Progress">
          <div class="Progress-pct-2"></div>
        </div>
    </td>
    <td><input class="btn-box" type="text" value="请输入"  /></td>
    <td><input class="btn-search" type="button" value="购买" /></td>
  </tr>
  <tr>
   <td></td>
    <td>03</td>
    <td>竞彩足球</td>
    <td>船长</td>
    <td>&nbsp;</td>
    <td>&yen;888.00</td>
    <td>&yen;2.00</td>
    <td><a class="color-two" href="#">详情</a>| 5%</td> 
    <td><div><span class="color-one">60%+</span>20%（保底)</div>
        <div class=" Progress">
          <div class="Progress-pct-3"></div>
        </div>
    </td>
    <td><input class="btn-box" type="text" value="请输入"  /></td>
    <td><input class="btn-search" type="button" value="购买" /></td>
  </tr>
</table>

</div>
</div>
<div class="kind-right pull-right">
 <h3>中将排行榜</h3>
 <table>

  <tr>
 
  <td width="10"></td>
  <td>用户名</td>
  <td width="30"></td>
  <td>中奖金额(万)</td>
  <td>跟单</td>
  <td width="5"></td>
  </tr>
 
 
 <tr>

 <td></td>
 <td>船长</td>
 <td></td>
 <td class="color-one">&yen;8888.00</td>
 <td class="color-two">定制</td>
 <td></td>
 </tr>

 <tr>

 <td></td>
 <td>道之出口</td>
 <td></td>
 <td class="color-one">&yen;668.00</td>
 <td class="color-two">定制</td>
 <td></td>
 </tr>

 <tr>

 <td></td>
 <td>幸运海豚</td>
 <td></td>
 <td class="color-one">&yen;588.00</td>
 <td class="color-two">定制</td>
 <td></td>
 </tr>

 <tr>

 <td></td>
 <td>大展彩图</td>
 <td></td>
 <td class="color-one">&yen;388.00</td>
 <td class="color-two">定制</td>
 <td></td>
 </tr>

 <tr>
 <td></td>
 <td>大展彩图</td>
 <td></td>
 <td class="color-one">&yen;388.00</td>
 <td class="color-two">定制</td>
 <td></td>
 </tr>

 <tr>
 <td></td>
 <td>大展彩图</td>
 <td></td>
 <td class="color-one">&yen;388.00</td>
 <td class="color-two">定制</td>
 <td></td>
 </tr>

 <tr>
 <td></td>
 <td>大展彩图</td>
 <td></td>
 <td class="color-one">&yen;388.00</td>
 <td class="color-two">定制</td>
 <td></td>
 </tr>

 <tr>
 <td></td>
 <td>大展彩图</td>
 <td></td>
 <td class="color-one">&yen;388.00</td>
 <td class="color-two">定制</td>
 <td></td>
 </tr>

 <tr>
 <td></td>
 <td>大展彩图</td>
 <td></td>
 <td class="color-one">&yen;388.00</td>
 <td class="color-two">定制</td>
 <td></td>
 </tr>

 <tr>
 <td height="5"></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 </tr>
 </table>

 <table style="margin-top:15px;">
 <tr class="tr-bj1 tit-fo">
 <td width="5"></td>
 <td colspan="4">奖牌战绩规则说明</td>
 <td></td>
 </tr>

 <tr>
 <td></td>
 <td height="10"></td>
 <td></td>
 <td width="45"></td>
 <td></td>
 <td width="5"></td>
 </tr>
 
 <tr>
 <td></td>
 <td><b>金皇冠：</b></td>
 <td><img src="../Home/Room/Images/huangguan-pic/images/jh.jpg" alt="" /></td>
 <td></td>
 <td>1金皇冠=10金冠</td>
 <td></td>
 </tr>

 <tr>
 <td></td>
 <td><b>金 冠:</b></td>
 <td><img src="../Home/Room/Images/huangguan-pic/images/jg.jpg" alt="" /></td>
 <td></td>
 <td>1金冠=10金钻</td>
 <td></td>
 </tr>
 
 <tr>
 <td></td>
 <td><b>金 钻:</b></td>
 <td><img src="../Home/Room/Images/huangguan-pic/images/jz.jpg" alt="" /></td>
 <td></td>
 <td>1金钻=10金星</td>
 <td></td>
 </tr>
 
 <tr>
 <td></td>
 <td><b>金 星:</b></td>
 <td><img src="../Home/Room/Images/huangguan-pic/images/jx.jpg" alt="" /></td>
 <td></td>
 <td></td>
 <td></td>
 </tr>

<tr>
 <td></td>
 <td valign="top">1金星:</td>
 <td class="line-gao" colspan="3">成功方案盈利≥2000或盈利≥<br />500且回报≥10倍</td>
 <td></td>
</tr>

<tr>
<td colspan="6" height="50"></td>
</tr>

<tr>
<td></td>
<td colspan="4"><p  class="line-gao"><span class="color-three">大额赢利奖励：</span><br />1 金钻：5万≤成功方案盈利＜50万； <br />1 金冠：成功方案盈利≥50万</p></td>
<td></td>
</tr>


<tr>
<td colspan="6" height="5"></td>

</tr>
 </table>

</div>

 <div class="clear"></div>
</div>



       <!-- <table width="100%" class="hemai" id="tou">
            <thead>
                <tr>
                    <td>
                        发起人：<asp:TextBox ID="tbName" size="15" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="btnSearch" runat="server" Text="搜索" Height="28" Width="60" OnClick="btnSearch_Click" />
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlLottery" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlLottery_SelectedIndexChanged">
                            <asp:ListItem Value="-1">全部方案</asp:ListItem>
                            <asp:ListItem Value="5">双色球</asp:ListItem>
                            <asp:ListItem Value="6">3D</asp:ListItem>
                            <asp:ListItem Value="1">胜负彩</asp:ListItem>
                            <asp:ListItem Value="19">任九场</asp:ListItem>
                            <asp:ListItem Value="39">超级大乐透</asp:ListItem>
                            <asp:ListItem Value="63">排列三</asp:ListItem>
                            <asp:ListItem Value="29">时时乐</asp:ListItem>
                            <asp:ListItem Value="0">其他彩种</asp:ListItem>
                        </asp:DropDownList>
                        &nbsp;&nbsp;
                        <asp:DropDownList ID="ddlMoney" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlMoney_SelectedIndexChanged">
                            <asp:ListItem Value="-1">方案金额</asp:ListItem>
                            <asp:ListItem Value="Money<100">100元以下</asp:ListItem>
                            <asp:ListItem Value="Money>=100 and Money<=500">100-500元</asp:ListItem>
                            <asp:ListItem Value="Money>=500 and Money<=1000">500-1000元</asp:ListItem>
                            <asp:ListItem Value="Money>1000">1000元以上</asp:ListItem>
                        </asp:DropDownList>
                        &nbsp;&nbsp;
                        <asp:DropDownList ID="ddlBonus" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlBonus_SelectedIndexChanged">
                            <asp:ListItem Value="-1">佣金</asp:ListItem>
                            <asp:ListItem Value="0.01">&lt;=1</asp:ListItem>
                            <asp:ListItem Value="0.02">&lt;=2</asp:ListItem>
                            <asp:ListItem Value="0.03">&lt;=3</asp:ListItem>
                            <asp:ListItem Value="0.04">&lt;=4</asp:ListItem>
                            <asp:ListItem Value="0.05">&lt;=5</asp:ListItem>
                            <asp:ListItem Value="0.06">&lt;=6</asp:ListItem>
                            <asp:ListItem Value="0.07">&lt;=7</asp:ListItem>
                            <asp:ListItem Value="0.08">&lt;=8</asp:ListItem>
                            <asp:ListItem Value="0.09">&lt;=9</asp:ListItem>
                        </asp:DropDownList>
                        %&nbsp;&nbsp;
                        <asp:DropDownList ID="ddlCondition" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlCondition_SelectedIndexChanged">
                            <asp:ListItem Value="-1">全部</asp:ListItem>
                            <asp:ListItem Value="QuashStatus=0 and ResShare>0">未满员</asp:ListItem>
                            <asp:ListItem Value="QuashStatus=0 and ResShare<=0">已满员</asp:ListItem>
                            <asp:ListItem Value="QuashStatus<>0">已撤单</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                        &nbsp;
                    </td>
                </tr>
            </thead>
        </table>
        <asp:DataGrid ID="g" runat="server" Width="100%" BorderStyle="None" AllowSorting="True"
            CssClass="hemai" AllowPaging="True" AutoGenerateColumns="False" BackColor="#CCCCCC"
            OnItemDataBound="g_ItemDataBound" CellSpacing="1" GridLines="None" OnItemCommand="g_ItemCommand">
            <HeaderStyle HorizontalAlign="Center" Height="28px"  BackColor="#EFEFEF">
            </HeaderStyle>
            <ItemStyle Height="28px" HorizontalAlign="Center"></ItemStyle>
            <Columns>
                <asp:BoundColumn DataField="Count" HeaderText="NO">
                    <HeaderStyle HorizontalAlign="Center" Width="4%"></HeaderStyle>
                    <ItemStyle Width="4%" ></ItemStyle>
                </asp:BoundColumn>
                <asp:BoundColumn DataField="LotteryName" HeaderText="彩种">
                    <HeaderStyle Width="13%"></HeaderStyle>
                    <ItemStyle Width="13%" ></ItemStyle>
                </asp:BoundColumn>
                <asp:BoundColumn DataField="InitiateName" HeaderText="发起人">
                    <HeaderStyle Width="13%"></HeaderStyle>
                    <ItemStyle Width="13%" ></ItemStyle>
                </asp:BoundColumn>
                <asp:BoundColumn DataField="Level" HeaderText="战绩" SortExpression="Level">
                    <HeaderStyle Width="10%"></HeaderStyle>
                    <ItemStyle Width="10%"></ItemStyle>
                </asp:BoundColumn>
                <asp:BoundColumn DataField="Title" HeaderText="方案标题" SortExpression="Title">
                    <HeaderStyle Width="21%"></HeaderStyle>
                    <ItemStyle Width="21%" ></ItemStyle>
                </asp:BoundColumn>
                <asp:BoundColumn DataField="Money" HeaderText="方案金额" SortExpression="Money" DataFormatString="{0:N}">
                    <HeaderStyle Width="10%"></HeaderStyle>
                    <ItemStyle Width="10%" ></ItemStyle>
                </asp:BoundColumn>
                <asp:BoundColumn HeaderText="每份" DataField="ShareMoney" SortExpression="ShareMoney"
                    DataFormatString="{0:N}">
                    <HeaderStyle Width="7%"></HeaderStyle>
                    <ItemStyle Width="7%" ></ItemStyle>
                </asp:BoundColumn>
                <asp:BoundColumn DataField="Schedule" HeaderText="进度" SortExpression="Schedule">
                    <HeaderStyle Width="7%"></HeaderStyle>
                    <ItemStyle Width="7%" ></ItemStyle>
                </asp:BoundColumn>
                <asp:BoundColumn DataField="ResShare" HeaderText="剩余份数" SortExpression="ResShare"
                    Visible="false"></asp:BoundColumn>
                <asp:TemplateColumn HeaderText="认购(份)">
                    <HeaderStyle Width="8%"></HeaderStyle>
                    <ItemStyle Width="8%"></ItemStyle>
                    <ItemTemplate>
                        <asp:TextBox ID="tbShare" runat="server" Style="text-align: center;" Width="40" Text="1"
                            onkeypress="return InputMask_Number();"></asp:TextBox>
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:TemplateColumn HeaderText="入伙">
                    <HeaderStyle Width="7%"></HeaderStyle>
                    <ItemStyle Width="7%"></ItemStyle>
                    <ItemTemplate>
                        <asp:LinkButton ID="btnBuy" runat="server" Text="购买" CommandName="Buy" OnClientClick="return CreateLogin();"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:BoundColumn Visible="False" DataField="AssureMoney"></asp:BoundColumn>
                <asp:BoundColumn Visible="False" DataField="ID"></asp:BoundColumn>
                <asp:BoundColumn Visible="False" DataField="QuashStatus"></asp:BoundColumn>
                <asp:BoundColumn Visible="False" DataField="EndTime"></asp:BoundColumn>
                <asp:BoundColumn Visible="False" DataField="IsuseID"></asp:BoundColumn>
                <asp:BoundColumn Visible="False" DataField="PlayTypeID"></asp:BoundColumn>
            </Columns>
        </asp:DataGrid>
        <ShoveWebUI:ShoveGridPager ID="gPager" runat="server" Width="100%" PageSize="30"
            ShowSelectColumn="False" DataGrid="g" AlternatingRowColor="#FFFFE6" HotColor="MistyRose"
            OnPageWillChange="gPager_PageWillChange" OnSortBefore="gPager_SortBefore" RowCursorStyle=""
            RowColor="#FFFFFF" />-->
    </div>

<article class="article">
 <div class="article-main">
  <p><b>合买：</b>合买是指由多人共同出资购买彩票，发起人将购彩方案分成若干份，参与者认购至少一份，  当进度达到100%时出票。若当期截期前方案未被认购完毕，系统将自动撤单，所有合买资金将由系统自动返还到合买者支付宝账号中。 <p><b>保底：</b>当合买截期而方案尚未满员时，会使用保底金额帮助合买方案满员。保底由发起人额外支付。</p> <p><b>奖金分配：</b>方案盈利时，发起人按约定比例提取净盈利中的部分作为佣金，余下奖金系统根据参与份额按比例分配；方案不盈利时，发起人不提取佣金。</p> <p><b>定制跟单：</b>您可以提前订购某位用户发起的合买，当该用户发起方案后，系统将为您自动跟单。去看看</p> <p><b>置顶规则：</b>置顶合买需满足发起人战绩不低于排长，自行认购不低于10%，方案金额不低于500元。竞技彩新增二项：方案金额《用户该彩种历史成功合买方案本金之和或用户该彩种历史成功合买方案中奖金额之和（取两个数据中金额较大的）；方案进度》=70%。所有符合条件的合买按返奖率高低排序，取前5名置顶，且每位用户24小时内只能被置顶一次。</p> <p><b>黑名单规则：</b><span class="color-three">发起人需合理合法使用合买功能，如发现有广告推广（包括QQ群、微信群等）、
涉及政治类不当言论或对其他合买用户人身攻击等不良引导等影响平台环境的情节，将永久取消合买置顶，合买红人，合买大厅方案搜索展现资格。</span>
 </p></div>
 </article>

    <uc2:WebFoot ID="WebFoot1" runat="server" />
    </form>
</body>
</html>

<script type="text/javascript">
    function InputMask_Number() {
        if (window.event.keyCode < 48 || window.event.keyCode > 57)
            return false;
        return true;
    }
    <%=script %>
</script>

