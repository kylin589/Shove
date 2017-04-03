<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ExpertsReg.aspx.cs" Inherits="Home_Room_ExpertsReg" %>

<%@ Register Assembly="Shove.Web.UI.4 For.NET 3.5" Namespace="Shove.Web.UI" TagPrefix="ShoveWebUI" %>
<%@ Register Src="../../UserControls/Head.ascx" TagName="Head" TagPrefix="uc1" %>
<%@ Register Src="UserControls/UserMyIcaile.ascx" TagName="UserMyIcaile" TagPrefix="uc2" %>
<%@ Register Src="UserControls/WebFoot.ascx" TagName="WebFoot" TagPrefix="uc3" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>
        <%=_Site.Name %>中专家申请-我的资料-用户中心-<%=_Site.Name %>－买彩票，就上<%=_Site.Name %>
        ！</title>
    <meta name="description" content="<%=_Site.Name %>彩票网<%=_Site.Url %>是一家服务于中国彩民的互联网彩票合买代购交易平台，涉及中国彩票彩种最全的网站，包含双色球,大乐透,七星彩,3d,足彩等众多彩种的实时开奖信息,图表走势、分析预测以及开奖信息等!" />
    <meta name="keywords" content="双色球合买,体育彩票,福利彩票,双色球开奖信息." />
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
    <link href="Style/common.css" rel="stylesheet" type="text/css" />
    <link href="Style/StyleSheet.css" rel="stylesheet" type="text/css" />
    <link href="Style/home.css" rel="stylesheet" type="text/css" />
    <link rel="shortcut icon" href="../../favicon.ico" />

    <script src="../../JavaScript/jquery-1.4.js" type="text/javascript"></script>

    <script type="text/javascript">
        function clickTabMenu1(obj, backgroundImage, id) {
            var tabMenu = obj.offsetParent.cells;
            var tabId = document.getElementById(id);
            for (var i = 0; i < tabMenu.length; i++) {
                if (obj == tabMenu[i]) {
                    obj.style.backgroundImage = backgroundImage;
                    tabId.style.display = "";
                }
                else {
                    tabMenu[i].style.backgroundImage = "";
                    tabId.style.display = "none";
                }
            }
        }
        function ShowOrHiddenDiv1(id) {
            switch (id) {
                case 'ZC':
                    ZC.style.display = "block";
                    FC.style.display = "none";
                    document.getElementById("hdCurDiv").value = "ZC";
                    break;
                case 'FC':
                    FC.style.display = "block";
                    ZC.style.display = "none";
                    document.getElementById("hdCurDiv").value = "FC";
                    break;
                default:
                    ZC.style.display = "block";
                    FC.style.display = "none";
                    document.getElementById("hdCurDiv").value = "ZC";
                    break;
            }
        }
        function mOver1(obj, type) {
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

<div class="jilu padd" style="border:0px; margin-top:0px;">
<div id="con">
<ul id="tags">
  <li class="selectTag"><a onclick="selectTag('tagContent0',this)" 
  href="javascript:void(0)">足彩专家申请</a></li>
  <li ><a onclick="selectTag('tagContent1',this)" 
  href="javascript:void(0)">福彩专家申请</a></li>

  </ul>             
  
 	 	  	 	  	 	  
<div id="tagContent">
<div class="tagContent selectTag" id="tagContent0">
<table width="100%" >
<tr>
 <td >选择彩种：</td>
<td><asp:CheckBoxList ID="cblLotteryListZC" runat="server" RepeatDirection="Horizontal"
                                                    RepeatLayout="Flow" CssClass="black12">
                                                </asp:CheckBoxList>     
                                        </td>
                                    </tr>
                                </table>
</div>
<div class="tagContent" id="tagContent1">
<table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="#9FC8EA">
                                    <tr>
                                        <td height="30" align="right" bgcolor="f7f7f7" class="black12" style="width: 100px;">
                                            选择彩种：
                                        </td>
                                        <td align="left" bgcolor="#FFFFFF" class="black12" style="padding-left: 15px;">
                  
                                                <asp:CheckBoxList ID="cblLotteryListFC" runat="server" RepeatDirection="Horizontal"
                                                    RepeatLayout="Flow">
                                                </asp:CheckBoxList>                                     
                                        </td>
                                    </tr>
                                </table>

<div class="clear"></div> 
<div class="divp">

<P>如有其他问题，请联系网站客服：<span><%= _Site.ServiceTelephone %>
</P>
</div>
</div>
<table style="margin-left:20px;">
<tr>
 <td style="width:100px;">专家简介：<br />(300字以内) </td>
<td><asp:TextBox ID="tbDescription" runat="server" TextMode="MultiLine" Rows="10" MaxLength="300"
                                                    Width="550"></asp:TextBox>
  </td>
</tr>
                                    <tr>
 <td align="center" colspan="2"> 
                                            <ShoveWebUI:ShoveConfirmButton ID="btnOK" runat="server" Height="25" Style="cursor: pointer;"
                                                Text="确定申请" OnClick="btnOK_Click" />
                                        </td>
                                    </tr>
                                    <tr>
                                    <td colspan="2"></td>
                                    </tr>
                                </table>
                                <div class="clear">如有其他问题，请联系网站客服：<span class="red14"><%= _Site.ServiceTelephone %></div> 





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
    <input type="hidden" id="hdCurDiv" runat="server" value="ZC" />
    </form>
</body>
</html>



