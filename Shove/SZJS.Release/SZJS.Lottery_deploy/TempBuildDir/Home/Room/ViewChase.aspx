<%@ page language="C#" autoeventwireup="true" inherits="Home_Room_ViewChase, App_Web_y4qeesyo" enableEventValidation="false" %>

<%@ Register Assembly="Shove.Web.UI.4 For.NET 3.5" Namespace="Shove.Web.UI" TagPrefix="ShoveWebUI" %>
<%@ Register Src="../../UserControls/Head.ascx" TagName="Head" TagPrefix="uc1" %>
<%@ Register Src="UserControls/UserMyIcaile.ascx" TagName="UserMyIcaile" TagPrefix="uc2" %>
<%@ Register Src="UserControls/WebFoot.ascx" TagName="WebFoot" TagPrefix="uc3" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>我的购彩追号明细-我的购彩纪录-用户中心-<%=_Site.Name %>－买彩票，就上<%=_Site.Name %>
        ！</title>
    <meta name="description" content="<%=_Site.Name %>彩票网<%=_Site.Url %>是一家服务于中国彩民的互联网彩票合买代购交易平台，涉及中国彩票彩种最全的网站，包含双色球,大乐透,七星彩,3d,足彩等众多彩种的实时开奖信息,图表走势、分析预测以及开奖信息等!" />
    <meta name="keywords" content="双色球合买,体育彩票,福利彩票,双色球开奖信息." />
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
    <link href="Style/common.css" rel="stylesheet" type="text/css" />
    <link href="Style/StyleSheet.css" rel="stylesheet" type="text/css" />
    <link href="Style/home.css" rel="stylesheet" type="text/css" />
    <link rel="shortcut icon" href="../../favicon.ico" />

    <script src="../../JavaScript/jquery-1.4.js" type="text/javascript"></script>

    <script type="text/javascript" language="javascript">
       
        function mOver(obj, type) {
            if (type == 1) {
                obj.style.textDecoration = "underline";
                obj.style.color = "#FF0065";
            }
            else {
                obj.style.textDecoration = "none";
                obj.style.color = "#226699";


            }
        }
    </script>

</head>
<body>
    <form id="form1" runat="server">
    <uc1:Head ID="Head2" runat="server" />
    <div class="wrap">
        <uc2:UserMyIcaile ID="UserMyIcaile1" runat="server" />
        <div class="rights">

<div class="jilua">
<div id="con">
<ul id="tags">
  <li class="selectTag"><a  id="AtagContent0" onclick="selectTag('tagContent0',this)" 
  href="javascript:void(0)">我的追号</a></li>
  <li ><a id="AtagContent1" onclick="selectTag('tagContent1',this)" 
  href="javascript:void(0)">我的套餐</a></li>

  </ul>             
  
 	 	  	 	  	 	  
<div id="tagContent">
<div class="tagContent selectTag" id="tagContent0">
<table width="100%" border="0" cellspacing="0" cellpadding="0"  class="tbhead_bg">
<tbody><tr>
<td>
 起始日期：
                                            <asp:TextBox ID="txtStartDate" runat="server" Text="" size="12"></asp:TextBox>
                                            终止日期：
                                            <asp:TextBox ID="txtEndDate" runat="server" Text="" size="12"></asp:TextBox>
</td>
</tr>
</tbody></table>
<asp:DataGrid ID="g1" runat="server" Width="100%" BorderStyle="None" AllowPaging="True"
                        PageSize="30" AutoGenerateColumns="False" CellPadding="0" BackColor="#DDDDDD"
                        OnSortCommand="g1_SortCommand" Font-Names="Tahoma" OnItemDataBound="g1_ItemDataBound"
                        CellSpacing="0" GridLines="None">
                        <FooterStyle ForeColor="#330099" BackColor="#FFFFCC"></FooterStyle>
                        <SelectedItemStyle Font-Bold="True" ForeColor="#663399"></SelectedItemStyle>
                        <HeaderStyle HorizontalAlign="Center" BackColor="#ffede3" ForeColor="#0066BA" Height="30px"
                            CssClass="blue12_2"></HeaderStyle>
                        <AlternatingItemStyle BackColor="#F8F8F8" />
                        <ItemStyle BackColor="White" BorderStyle="None" Height="30px" HorizontalAlign="Center"
                            CssClass="black12" />
                        <Columns>
                            <asp:BoundColumn DataField="DateTime" HeaderText="发起时间" DataFormatString="{0:yyyy-MM-dd HH:mm:ss}">
                                <HeaderStyle HorizontalAlign="Center" Width="19%"></HeaderStyle>
                                <ItemStyle HorizontalAlign="Center"></ItemStyle>
                            </asp:BoundColumn>
                            <asp:BoundColumn DataField="LotteryName" HeaderText="彩种">
                                <HeaderStyle HorizontalAlign="Center" Width="10%"></HeaderStyle>
                                <ItemStyle HorizontalAlign="Center"></ItemStyle>
                            </asp:BoundColumn>
                            <asp:BoundColumn DataField="Title" HeaderText="标题">
                                <HeaderStyle HorizontalAlign="Center" Width="14%"></HeaderStyle>
                                <ItemStyle HorizontalAlign="Left"></ItemStyle>
                            </asp:BoundColumn>
                            <asp:BoundColumn DataField="SumMoney" HeaderText="总金额">
                                <HeaderStyle HorizontalAlign="Center" Width="8%"></HeaderStyle>
                                <ItemStyle HorizontalAlign="Right"></ItemStyle>
                            </asp:BoundColumn>
                            <asp:BoundColumn DataField="SumIsuseNum" HeaderText="总期数">
                                <HeaderStyle HorizontalAlign="Center" Width="8%"></HeaderStyle>
                                <ItemStyle HorizontalAlign="Center"></ItemStyle>
                            </asp:BoundColumn>
                            <asp:BoundColumn DataField="BuyedIsuseNum" HeaderText="完成期数">
                                <HeaderStyle HorizontalAlign="Center" Width="9%"></HeaderStyle>
                                <ItemStyle HorizontalAlign="Center"></ItemStyle>
                            </asp:BoundColumn>
                            <asp:BoundColumn DataField="QuashedIsuseNum" HeaderText="取消期数">
                                <HeaderStyle HorizontalAlign="Center" Width="9%"></HeaderStyle>
                                <ItemStyle HorizontalAlign="Center"></ItemStyle>
                            </asp:BoundColumn>
                            <asp:BoundColumn HeaderText="状态">
                                <HeaderStyle HorizontalAlign="Center" Width="7%"></HeaderStyle>
                                <ItemStyle HorizontalAlign="Center"></ItemStyle>
                            </asp:BoundColumn>
                            <asp:BoundColumn Visible="False" DataField="id" HeaderText="id"></asp:BoundColumn>
                        </Columns>
                        <PagerStyle Visible="False" HorizontalAlign="Center" ForeColor="#330099" BackColor="#FFFFCC">
                        </PagerStyle>
                    </asp:DataGrid>
<div class="p_a_select">
 <ShoveWebUI:ShoveGridPager ID="gPager1" runat="server" Width="100%" PageSize="30"
                                ShowSelectColumn="False" DataGrid="g1" AlternatingRowColor="#F8F8F8" GridColor="#E0E0E0"
                                HotColor="MistyRose" Visible="False" OnPageWillChange="gPager1_PageWillChange"
                                OnSortBefore="gPager1_SortBefore" RowCursorStyle="" AllowShorting="true" />
</div>
<div class="clear"></div> 
<div class="divp">
<table>
<tr>
<td><strong>本页认购金额总计： <span class="red"><asp:Label ID="lblPageBuyMoney" runat="server" Text=""></asp:Label></span></strong></td>
<td><strong>认购金额总计：<span class="red"><asp:Label ID="lblTotalBuyMoney" runat="server" Text="" /></span></strong></td></tr>
</table>
<P>
说明：<br />
1、您可以查询您的帐户在一段时间内的所有交易流水。<br />
2、如有其他问题，请联系网站客服：<%= _Site.ServiceTelephone %>。
</P>
</div>
</div>
<div class="tagContent" id="tagContent1">
<table width="100%" border="0" cellspacing="0" cellpadding="0"  class="tbhead_bg">
<tr>
<td>
 追号标题：
                                            <asp:TextBox ID="tbTitle" runat="server" Text="" size="12"></asp:TextBox>
                                            <asp:Button runat="server" ID="btnSearch" Text="查询" OnClick="btnSearch_Click" />
                                                </td>
                                            </tr>
                                        </table>
<asp:DataGrid ID="g2" runat="server" Width="100%" BorderStyle="None" AllowPaging="True"
                        PageSize="30" AutoGenerateColumns="False" CellPadding="0" BackColor="#DDDDDD"
                        OnSortCommand="g2_SortCommand" Font-Names="Tahoma" OnItemDataBound="g2_ItemDataBound"
                        CellSpacing="1" GridLines="None">
                        <FooterStyle ForeColor="#330099" BackColor="#FFFFCC"></FooterStyle>
                        <SelectedItemStyle Font-Bold="True" ForeColor="#663399"></SelectedItemStyle>
                        <HeaderStyle HorizontalAlign="Center" BackColor="#ffede3" ForeColor="#0066BA" Height="30px"
                           ></HeaderStyle>
                        <AlternatingItemStyle BackColor="#F8F8F8" />
                        <ItemStyle BackColor="White" BorderStyle="None" Height="30px" HorizontalAlign="Center"
                             />
                        <Columns>
                            <asp:BoundColumn DataField="DateTime" HeaderText="发起时间" DataFormatString="{0:yyyy-MM-dd HH:mm:ss}">
                                <HeaderStyle HorizontalAlign="Center" Width="19%"></HeaderStyle>
                                <ItemStyle HorizontalAlign="Center"></ItemStyle>
                            </asp:BoundColumn>
                            <asp:BoundColumn DataField="Name" HeaderText="彩种">
                                <HeaderStyle HorizontalAlign="Center" Width="10%"></HeaderStyle>
                                <ItemStyle HorizontalAlign="Center"></ItemStyle>
                            </asp:BoundColumn>
                            <asp:BoundColumn DataField="Title" HeaderText="标题">
                                <HeaderStyle HorizontalAlign="Center" Width="10%"></HeaderStyle>
                                <ItemStyle HorizontalAlign="Center"></ItemStyle>
                            </asp:BoundColumn>
                            <asp:BoundColumn DataField="SumMoney" HeaderText="总金额">
                                <HeaderStyle HorizontalAlign="Center" Width="8%"></HeaderStyle>
                                <ItemStyle HorizontalAlign="Right"></ItemStyle>
                            </asp:BoundColumn>
                            <asp:BoundColumn DataField="IsuseCount" HeaderText="总期数">
                                <HeaderStyle HorizontalAlign="Center" Width="8%"></HeaderStyle>
                                <ItemStyle HorizontalAlign="Center"></ItemStyle>
                            </asp:BoundColumn>
                            <asp:BoundColumn DataField="ExecutedCount" HeaderText="已执行期数">
                                <HeaderStyle HorizontalAlign="Center" Width="9%"></HeaderStyle>
                                <ItemStyle HorizontalAlign="Center"></ItemStyle>
                            </asp:BoundColumn>
                            <asp:BoundColumn DataField="NoExecutedCount" HeaderText="未执行期数">
                                <HeaderStyle HorizontalAlign="Center" Width="9%"></HeaderStyle>
                                <ItemStyle HorizontalAlign="Center"></ItemStyle>
                            </asp:BoundColumn>
                            <asp:BoundColumn HeaderText="状态" DataField="QuashStatus">
                                <HeaderStyle HorizontalAlign="Center" Width="7%"></HeaderStyle>
                                <ItemStyle HorizontalAlign="Center"></ItemStyle>
                            </asp:BoundColumn>
                            <asp:BoundColumn Visible="False" DataField="id" HeaderText="id"></asp:BoundColumn>
                            <asp:BoundColumn Visible="False" DataField="Money"></asp:BoundColumn>
                        </Columns>
                        <PagerStyle Visible="False" HorizontalAlign="Center" ForeColor="#330099" BackColor="#FFFFCC">
                        </PagerStyle>
                    </asp:DataGrid>
<div class="p_a_select">  <ShoveWebUI:ShoveGridPager ID="gPager2" runat="server" Width="100%" PageSize="30"
                                ShowSelectColumn="False" DataGrid="g2" AlternatingRowColor="#F8F8F8" GridColor="#E0E0E0"
                                HotColor="MistyRose" Visible="False" OnPageWillChange="gPager2_PageWillChange"
                                OnSortBefore="gPager2_SortBefore" RowCursorStyle="" AllowShorting="true" />  </div> 
<div class="clear"></div> 
<div class="divp">
<table>
<tr>
<td><strong> 套餐金额总计： <span class="red"> <asp:Label ID="lblTotalMoney" runat="server" Text="" /></asp:Label></span></strong></td></tr>
</table>
<input type="hidden" id="historySel" runat="server" value="AtagContent0" />
<P>
说明：<br />
1、您可以查询您的帐户在一段时间内的所有交易流水。<br />
2、如有其他问题，请联系网站客服：<%= _Site.ServiceTelephone %>。



</P>
</div>                                                   
</div>

</div></div>
  <script type="text/javascript">
   $(document).ready(function(){
    var historySels=document.getElementById("historySel").value;
    $("#"+historySels+"").click();
    });
      function selectTag(showContent, selfObj) {
          // 操作标签
          var tag = document.getElementById("tags").getElementsByTagName("li");
          var taglength = tag.length;
          for (i = 0; i < taglength; i++) {
              tag[i].className = "";
          }
          selfObj.parentNode.className = "selectTag";
          // 操作内容
          for (i = 0; j = document.getElementById("tagContent" + i); i++) {
              j.style.display = "none";
          }
          document.getElementById(showContent).style.display = "block";
          document.getElementById("historySel").value="A"+showContent;

      }
</script>
</div>
</div>
        
    </div>
    <uc3:WebFoot ID="WebFoot1" runat="server" />
    <asp:HiddenField ID="HidType" runat="server" Value="1" />
    </form>
</body>
</html>



