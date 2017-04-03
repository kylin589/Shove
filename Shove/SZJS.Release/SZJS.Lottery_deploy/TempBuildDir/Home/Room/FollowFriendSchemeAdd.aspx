<%@ page language="C#" autoeventwireup="true" inherits="Home_Room_FollowFriendSchemeAdd, App_Web_y4qeesyo" enableEventValidation="false" %>

<%@ Register Assembly="Shove.Web.UI.4 For.NET 3.5" Namespace="Shove.Web.UI" TagPrefix="ShoveWebUI" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>无标题页</title>
    <link href="Style/common.css" rel="stylesheet" type="text/css" />
    <link href="Style/StyleSheet.css" rel="stylesheet" type="text/css" />

    <script src="../../javaScript/Public.js" type="text/javascript"></script>

    <script language="javascript" type="text/javascript">

        function InputMask_Number()
        {
	        if (window.event.keyCode < 48 || window.event.keyCode > 57)
		        return false;
	        return true;
        }

        function CheckMultiple(sender)
        {
            var multiple = StrToInt(sender.value);
            
            sender.value = multiple;
            
            if (multiple < 1)
            {
	            if (confirm("输入不正确，按“确定”重新输入，按“取消”自动更正为 1 ，请选择。"))
	            {
		            sender.focus();
		            return;
	            }
	            else
	            {
		            multiple = 1;
		            sender.value = 1;
	            }
            }
        }
    </script>
<style type="text/css">
   .gendan
   {
   	width:680px;
   	} 
   	  .gendan tr td
   	  {
   	  	border:solid 1px #cccccc;
   	  	text-align:left;
   	  	line-height:30px;
   	  	padding-right:5px;
   	  	text-indent:5px;
   	  	} 
     </style>

    <base target="_self" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#9FC8EA">
            <tr>
                <td valign="top" bgcolor="#FFFFFF">
                    <table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#ffede3"
                        style="border-left: 1px solid #DDDDDD; border-right: 1px solid #DDDDDD;">
                        <tr>
                            <td height="29">
                                <table >
                                    <tr>
                                        <td>
                                            <img src="images/jiantou_5.gif" width="12" height="8" />
                                        </td>
                                        <td >
                                            定制自动跟单
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                   
                    <div>
                        <table class="gendan">
                            <tr>
                               <td style="text-align: right; background-color:#f5f5f5">
                                    好友用户名
                                </td>
                                <td>
                                    <asp:Label ID="lbUserName" runat="server" Text=""></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align: right; background-color:#f5f5f5">
                                    定制自动跟单玩法
                                </td>
                                <td>
                                    <asp:DropDownList ID="ddlLotteries" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlLotteries_SelectedIndexChanged">
                                    </asp:DropDownList>
                                    <asp:DropDownList ID="ddlPlayTypes" runat="server">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align: right; background-color:#f5f5f5">
                                    跟单金额范围
                                </td>
                                <td>
                                    <asp:TextBox ID="tbMinMoney" runat="server" Width="50px" onkeypress="return InputMask_Number();"
                                        onblur="CheckMultiple(this);" Text="1"></asp:TextBox>
                                    至
                                    <asp:TextBox ID="tbMaxMoney" Text="10" runat="server" Width="50px" onkeypress="return InputMask_Number();"
                                        onblur="CheckMultiple(this);"></asp:TextBox>&nbsp;元
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align: right; background-color:#f5f5f5">
                                    每次认购份数
                                </td>
                                <td>
                                    <asp:TextBox ID="tbBuyShareStart" runat="server" Width="50px" onkeypress="return InputMask_Number();"
                                        onblur="CheckMultiple(this);" Text="1"></asp:TextBox>
                                    至
                                    <asp:TextBox ID="tbBuyShareEnd" runat="server" Width="50px" onkeypress="return InputMask_Number();"
                                        Text="10" onblur="CheckMultiple(this);"></asp:TextBox>&nbsp;份
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align: right; background-color:#f5f5f5">
                                </td>
                                <td>
                                    <ShoveWebUI:ShoveConfirmButton ID="btn_OK" runat="server" Text=" 确定 " OnClick="btn_OK_Click"
                                        AlertText="您确认输入无误并定制跟单吗?" />
                                    <span style="margin-left: 100px;"></span>
                                    <asp:Button ID="btnCancel" runat="server" Text=" 取消 " OnClick="btnCancel_Click" />
                                </td>
                            </tr>
                        </table>
                    </div>
                </td>
            </tr>
        </table>
        <br />
        <table class="gendan">
            <tr>
                <td height="28" colspan="6" bgcolor="#E7F1FA" style="padding-left: 15px;">
                    <strong>总跟单人次排行TOP10</strong>
                </td>
            </tr>
            <tr>
                <td width="8%" height="28" align="center" bgcolor="#ffede3" >
                    排名
                </td>
                <td width="30%" height="28" align="center" bgcolor="#ffede3" >
                    发起人
                </td>
                <td width="11%" align="center" bgcolor="#ffede3" >
                    被定制人气
                </td>
                <td width="22%" align="center" bgcolor="#ffede3" >
                    跟单总金额
                </td>
                <td width="20%" align="center" bgcolor="#ffede3" >
                    当前期方案
                </td>
                <td width="9%" align="center" bgcolor="#ffede3" >
                    自动跟单
                </td>
            </tr>
            <tbody id="tbFollowList" runat="server">
            </tbody>
        </table>
    </div>
    <asp:HiddenField ID="HidFollowUserID" runat="server" />
    <asp:HiddenField ID="HidNumber" runat="server" />
    </form>
</body>
</html>

<script type="text/javascript" language="javascript">
    parent.document.getElementById('iframeFollowScheme').style.height = parent.iframeFollowScheme.document.body.scrollHeight;
</script>

