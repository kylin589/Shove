<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Home_Room_OnlinePay_CardPassword_Default" %>

<%@ Register Assembly="Shove.Web.UI.4 For.NET 3.5" Namespace="Shove.Web.UI" TagPrefix="ShoveWebUI" %>
<%@ Register Src="../../../../UserControls/Head.ascx" TagName="Head" TagPrefix="uc1" %>
<%@ Register Src="../../UserControls/UserMyIcaile.ascx" TagName="UserMyIcaile" TagPrefix="uc2" %>
<%@ Register Src="../../UserControls/WebFoot.ascx" TagName="WebFoot" TagPrefix="uc3" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>激活卡密-<%=_Site.Name %>彩票网-买彩票，就上<%=_Site.Name %>彩票网！</title>
    <meta name="description" content="<%=_Site.Name %>彩票网彩票网是一家服务于中国彩民的互联网彩票合买代购交易平台，涉及中国彩票彩种最全的网站，包含双色球、时时乐、时时彩、足彩等众多彩种的实时开奖信息、图表走势、分析预测等。" />
    <meta name="keywords" content="<%=_Site.Name %>彩票网提供网银充值，卡密充值，支付宝支付，财付通支付" />
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
    <link href="../../Style/common.css" rel="stylesheet" type="text/css" />
    <link href="../../Style/StyleSheet.css" rel="stylesheet" type="text/css" />
    <link href="../../Style/home.css" rel="stylesheet" type="text/css" />
    <link rel="shortcut icon" href="../../../../favicon.ico" />

    <script src="../../../../JavaScript/jquery-1.4.js" type="text/javascript"></script>

</head>
<body>
    <form id="form1" runat="server">
    <uc1:Head ID="Head2" runat="server" />
    <div class="wrap">
    
    
        <uc2:UserMyIcaile ID="UserMyIcaile1" runat="server" />
    
    <div class="rights">

<div class="jilu padd" style="border:0px; margin-top:0px;">
<div id="con">
<ul id="tags">
  <li class="selectTag"><a onclick="selectTag('tagContent0',this)" 
  href="javascript:void(0)">激活卡密</a></li>
  <li ><a onclick="selectTag('tagContent1',this)" 
  href="javascript:void(0)">卡密消费记录</a></li>

  </ul>             
  
 	 	  	 	  	 	  
<div id="tagContent">
<div class="tagContent selectTag" id="tagContent0">
                    <table width="100%" border="0" cellspacing="1" cellpadding="0" bgcolor="#DDDDDD">
                        <tr>
                            <td height="30" colspan="2" align="left" bgcolor="#E9F1F8" class="black12" style="padding-left: 20px;">
                                您好，<span class="red12"><%=UserName%></span>！您当前帐户余额为：￥<span class="red12"><%= Balance%>
                                </span>元
                            </td>
                        </tr>
                    </table>
                    <br />
                    <table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#C0DBF9"
                        style="padding-left: 10px;" align="center">
                        <tr>
                            <td width="93" height="30" align="right" bgcolor="#FFFFFF" class="black12">
                                <span style="color: Red">*</span>输入卡密：
                            </td>
                            <td width="685" align="left" bgcolor="#FFFFFF" class="black12" style="padding-left: 10px;">
                                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                    <tr bgcolor="#C0DBF9">
                                        <td width="43%" align="left" bgcolor="#FFFFFF" class="black12">
                                            <label>
                                                <asp:TextBox ID="tbCardPassword" runat="server" Width="260px" MaxLength="20" CssClass="in_text"></asp:TextBox>
                                            </label>
                                        </td>
                                        <td width="57%" align="left" bgcolor="#FFFFFF" class="blue12_2">
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td height="30" align="right" valign="top" bgcolor="#FFFFFF" class="black12" style="padding-top: 10px;">
                                &nbsp;
                            </td>
                            <td height="30" align="left" valign="top" bgcolor="#FFFFFF" class="black12" style="padding: 10px 0px 10px 10px;">
                                <ShoveWebUI:ShoveConfirmButton ID="btnOK" runat="server" AlertText="确信输入的卡密无误，并立即充值吗？"
                                    OnClick="btnOK_Click" Style="border: 0px; background-color: #D6E9F5; background-image: url('../../images/zfb_bt_chongzhi.jpg');
                                    width: 91px; height: 28px;" />
                            </td>
                        </tr>
                        <tr>
                            <td height="30" align="right" valign="top" bgcolor="#FFFFFF" class="black12" style="padding-top: 10px;">
                                &nbsp;
                            </td>
                            <td height="30" align="left" valign="top" bgcolor="#FFFFFF" class="black12" style="padding: 10px 0px 10px 10px;">
                                <table width="98%" border="0" cellspacing="1" cellpadding="0" bgcolor="#FFCD33">
                                    <tr>
                                        <td bgcolor="#FFFFE1" class="red12" style="padding: 15px;">
                                            温馨提示：请小心输入您的卡密号码！3次输入错误的卡密号码，系统将会自动暂时锁定您的卡密充值功能30分钟！
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
</div>
<div class="tagContent" id="tagContent1">
                    <asp:DataGrid ID="gUserPay" runat="server" Width="100%" BorderStyle="None" AllowSorting="True"
                        AllowPaging="True" PageSize="8" AutoGenerateColumns="False" CellPadding="0" BackColor="#DDDDDD"
                        Font-Names="Tahoma" CellSpacing="1" GridLines="None" OnItemDataBound="gUserPay_ItemDataBound">
                        <SelectedItemStyle Font-Bold="True" ForeColor="#663399"></SelectedItemStyle>
                        <HeaderStyle HorizontalAlign="Center" BackColor="#ffede3" ForeColor="#0066BA" Height="30px"
                            CssClass="blue12_2"></HeaderStyle>
                        <AlternatingItemStyle BackColor="#F8F8F8" />
                        <ItemStyle BackColor="White" BorderStyle="None" Height="30px" HorizontalAlign="Center"
                            CssClass="black12" />
                        <Columns>
                            <asp:TemplateColumn HeaderText="序号">
                                <ItemStyle Width="25%" />
                                <ItemTemplate>
                                    <%# Container.ItemIndex + 1%>
                                </ItemTemplate>
                            </asp:TemplateColumn>
                            <asp:BoundColumn DataField="Money" HeaderText="金额" DataFormatString="{0:N}">
                                <ItemStyle Width="25%" />
                            </asp:BoundColumn>
                            <asp:BoundColumn DataField="DateTime" HeaderText="充值时间">
                                <ItemStyle Width="25%" />
                            </asp:BoundColumn>
                            <asp:BoundColumn HeaderText="卡号">
                                <ItemStyle Width="25%" />
                            </asp:BoundColumn>
                            <asp:BoundColumn DataField="ID" Visible="false"></asp:BoundColumn>
                            <asp:BoundColumn DataField="AgentID" Visible="false"></asp:BoundColumn>
                            <asp:BoundColumn DataField="PayNumber" Visible="false"></asp:BoundColumn>
                        </Columns>
                        <PagerStyle Visible="False" HorizontalAlign="Center" ForeColor="#330099" BackColor="#FFFFCC">
                        </PagerStyle>
                    </asp:DataGrid>
                    <ShoveWebUI:ShoveGridPager ID="gPagerUserPay" runat="server" Width="100%" PageSize="20"
                        ShowSelectColumn="False" DataGrid="gUserPay" AlternatingRowColor="#F8F8F8" GridColor="#E0E0E0"
                        HotColor="MistyRose" AllowShorting="true" RowCursorStyle="" OnPageWillChange="gPagerUserPay_PageWillChange"
                        OnSortBefore="gPagerUserPay_SortBefore" />
                    <table width="100%" border="0" cellspacing="1" cellpadding="0" bgcolor="#D8D8D8"
                        style="margin-top: 10px;">
                        <tr>
                            <td width="385" bgcolor="#F8F8F8" class="black12" style="padding: 5px 10px 5px 10px;">
                                充值金额合计： <span class="red12">
                                    <asp:Label ID="lblUserPayMoneys" runat="server" Text=""></asp:Label>
                                </span>
                            </td>
                        </tr>
                    </table>

<div class="clear"></div> 
<div class="divp">

<P>如有其他问题，请联系网站客服：<span><%= _Site.ServiceTelephone %>
</P>
</div>
</div>

</div></div>

  <script type="text/javascript">
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


      }
</script>

</div>
    
    
    
    </div>
        
    </div>
    <uc3:WebFoot ID="WebFoot1" runat="server" />
    </form>
</body>
</html>

<script language="javascript" type="text/javascript">
    function clicks(type) {
        if (type == 1) {
            document.getElementById("Cd_td1").background = "../../images/admin_qh_100_1.jpg";
            document.getElementById("Cd_td2").background = "../../images/admin_qh_100_2.jpg";
            document.getElementById("Cd_td1").style.fontWeight = "bold";
            document.getElementById("Cd_td2").style.fontWeight = "normal";
            document.getElementById("div1").style.display = "";
            document.getElementById("div2").style.display = "none";
        } else {
        document.getElementById("Cd_td2").background = "../../images/admin_qh_100_1.jpg";
        document.getElementById("Cd_td1").background = "../../images/admin_qh_100_2.jpg";
        document.getElementById("Cd_td2").style.fontWeight = "bold";
        document.getElementById("Cd_td1").style.fontWeight = "normal";
        document.getElementById("div2").style.display = "";
        document.getElementById("div1").style.display = "none";
        }
    }
</script>

