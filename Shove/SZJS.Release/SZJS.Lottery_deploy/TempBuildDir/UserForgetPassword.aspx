<%@ page language="C#" autoeventwireup="true" inherits="UserForgetPassword, App_Web_dv99xhvn" enableEventValidation="false" %>
<%@ Register Assembly="Shove.Web.UI.4 For.NET 3.5" Namespace="Shove.Web.UI" TagPrefix="ShoveWebUI" %>
<%@ Register Src="~/UserControls/Head.ascx" TagName="RegTop" TagPrefix="TOP" %>
<%@ Register Src="~/Home/Room/UserControls/WebFoot.ascx" TagName="RegFoot" TagPrefix="Foot" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>找回密码 -
        <%=_Site.Name %>－双色球开奖/双色球走势图查询-买彩票，就上<%=_Site.Name %></title>
    <meta name="description" content="会员注册，<%=_Site.Name %>彩票网是一家服务于中国彩民的互联网彩票合买代购交易平台，涉及中国彩票彩种最全的网站，包含双色球、时时乐、时时彩、足彩等众多彩种的实时开奖信息、图表走势、分析预测等。" />
    <meta name="keywords" content="会员注册，双色球开奖，双色球走势图，3d走势图，福彩3d，时时彩" />
  <link href="Home/Room/Style/common.css" rel="stylesheet" type="text/css" />
    <link href="Home/Room/Style/StyleSheet.css" rel="stylesheet" type="text/css" />
    <link href="Home/Room/Style/index.css" rel="stylesheet" type="text/css" />

    <script src="JavaScript/jquery-1.4.js" type="text/javascript"></script>

    <script src="JavaScript/Public.js" type="text/javascript"></script>
    
    <script language="javascript" type="text/javascript">
        $(document).ready(function() {

            $("#tbUserName").blur(function() {
                var userName = $(this).val();
                if (userName.replace(/(^\s*)|(\s*$)/, "").trim() == "") {
                    $("#SpanUserName").html("<span style='color:red;'>用户名不能为空!</span>");
                } else {
                    var result = UserForgetPassword.CheckUserName("<%= _Site.ID%>", userName).value;
                    if (Number(result) < 0) {
                        if (Number(result) == -1) {
                            $("#SpanUserName").html("<font color='red'>对不起用户名中含有禁止使用的字符!</font>");

                        }

                        if (Number(result) == -2) {
                            $("#SpanUserName").html("<font color='green'>用户名 " + userName + " 正确!</font>");

                        }

                    }
                    else {
                        $("#SpanUserName").html("<font color='red'>用户名 <font >" + userName + "</font> 不存在!</font>");

                    }

                }
            });

            $("input:radio[name='yanzheng']").click(function() {
                if ($("#chkEmail").attr("checked")) {
                    $("#trEmail").show();
                    $("#trPhone").hide();
                    $("#chekID").val($("#chkEmail").val());
                } else {
                    $("#trEmail").hide();
                    $("#trPhone").show();

                }

                if ($("#chkPhone").attr("checked")) {
                    $("#trEmail").hide();
                    $("#trPhone").show();
                    $("#chekID").val($("#chkPhone").val());
                } else {
                    $("#trEmail").show();
                    $("#trPhone").hide();

                }


            });

            $("#tbUserName").blur(function() {
                var strQuery = UserForgetPassword.BindQuestion("<%= _Site.ID%>", $("#ddlQuestion").val(), $("#tbUserName").val()).value;
                if (strQuery != null) {
                    $("#tbAnswer").attr("title", "问题提示：" + strQuery);
                }
            });

            $("#ddlQuestion").change(function() {
                var strQuery = UserForgetPassword.BindQuestion("<%= _Site.ID%>", $(this).val(), $("#tbUserName").val()).value;
                if (strQuery != null) {
                    $("#tbAnswer").attr("title", "问题提示：" + strQuery);
                }
            });



        });

        function btnOk() {
            var vtbUserName = $("#tbUserName").val();
            if (vtbUserName.trim() == "") {
                alert("用户名不能为空!");
                return false;
            }
            var vTrueName = $("#TrueName").val();
            var vtbAnswer = $("#tbAnswer").val();
            var vcardNO = $("#cardNO").val();
            if (vTrueName.trim() == "" && vtbAnswer.trim() == "" && vcardNO.trim() == "") {
                alert("真实姓名、问题答案、省份证号码至少填一项！");
                return false;
            }
            if ($("#chkEmail").attr("checked")) {
                var vEmailAccounts = $("#EmailAccounts").val();
                if (vEmailAccounts.trim() == "") {
                    alert("邮箱不能为空！");
                    return false;
                } else {
                  var reg = /\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*/;
                  if (!vEmailAccounts.match(reg)) {
                      alert("邮箱格式输入错误!");
                      return false;
                  }
                }
            }
            if ($("#chkPhone").attr("checked")) {

                var vtbUserMobile = $("#tbUserMobile").val();

                if (vtbUserMobile.trim() == "") {
                    alert("手机号码不能为空！");
                    return false;
                } else {
                    var regMobile = /1[3|5][0-9]\d{8}/;
                    if (!vtbUserMobile.match(regMobile)) {
                        alert("手机号码输入不正确！");
                        return false;
                    }

                }
            }

            return true;
        }
    
    </script>

    <style type="text/css">
        .style2
        {
            width: 532px;
        }
        .style5
        {
            width: 352px;
        }
        </style>

</head>

<body>
    <form id="form1" runat="server">
    <TOP:RegTop runat="server" ID="RegTop" />
     <input id="chekID" name="chekID" value="1" type="hidden" />
    <div class="wrap">
        <div class="register_jr">
            <div class="reg_top_jr">
                找回密码</div>
            <div class="reg_content_jr" style="padding-bottom: 50px;">
                <table border="0">
                    <tbody>

                        <tr class="tdunderline_jr">
                            <td class="style2" colspan="2">
                                带<em class="fcolor_orange01_jr">*</em>为必填项
                            </td>
                        </tr>
                        <tr style="background-color: White;">
                            <td valign="middle" style="text-align: right" class="style5">
                                　用户名：
                            </td>
                            <td style="text-align: left" class="style2">
                                &nbsp;<asp:TextBox ID="tbUserName" runat="server" Width="150px"></asp:TextBox><span id="SpanUserName" class="onShow"><em class="fcolor_orange01_jr">*</em><em style="color:Green;">检测用户名</em></span>
                             </td>
                        </tr>
                        
                          <tr>
                             <td width="80%" align="center" colspan="2" bgcolor="f7f7f7">
                              <input name="yanzheng" id="chkEmail" checked="checked"  type="radio"/>：邮箱验证 &nbsp;&nbsp;<input name="yanzheng" id="chkPhone" type="radio"/>：手机验证
                            </td>
                         
                        </tr>
                        <tr>
                              <td valign="middle" style="text-align: right" class="style5">
                               真实姓名：
                            </td>
                            <td style="text-align: left">
                                &nbsp;<asp:TextBox ID="TrueName" runat="server" Width="150px"></asp:TextBox><span id="SpanName" class="onShow"><em class="fcolor_orange01_jr">*</em></span></td>
                        </tr>
                        <tr>
                            <td height="30" align="right" bgcolor="f7f7f7" class="style5">
                                安全问题：
                            </td>
                            <td align="left" class="style2" style="padding-left: 5px;" bgcolor="f7f7f7">
                                <asp:DropDownList ID="ddlQuestion" runat="server" AutoPostBack="false" 
                                    Width="154px">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td align="right" class="style5">
                                问题答案：
                            </td>
                            <td align="left" bgcolor="#FFFFFF" style="padding-left: 5px;">
                                <asp:TextBox runat="server" ID="tbAnswer" Width="150px" />
                                <span id="SpanAnswer" class="onShow"><em class="fcolor_orange01_jr">*</em></span></td>
                        </tr>
                        <tr >
                                 <td align="right" bgcolor="f7f7f7" class="style5">
                                身份证号码：
                            </td>
                            <td align="left"  style="padding-left: 5px;" bgcolor="f7f7f7">
                                <asp:TextBox runat="server" ID="cardNO" Width="150px" />
                                <span id="SpanCardNO" class="onShow"><em class="fcolor_orange01_jr">*</em></span></td>
                        </tr>
        
                        <tr id="trPhone" style="background-color: White; display:none;">
                             <td style="text-align: right" class="style5" >
                               手机号码：
                            </td>
                            <td style="text-align:left " >
                              &nbsp;<asp:TextBox ID="tbUserMobile" title="请填写您已绑定的手机号码，如果手机没有绑定，请联系客服人员帮你解决，谢谢合作。" runat="server" MaxLength="11" Width="150px"></asp:TextBox>&nbsp;<span id="SpanUserMobile" class="onShow"><em class="fcolor_orange01_jr">*</em></span>&nbsp;&nbsp;<a id="phoneCode" href="javascript:void(0);">输入手机绑定的号码</a></td>
                        </tr>
             
                        <tr id="trEmail">
                          <td style="text-align: right" class="style5" >
                            邮箱帐号：
                            </td>
                          <td style="text-align:left " >
                               &nbsp;<asp:TextBox ID="EmailAccounts" title="请填写您已激活的邮箱地址，如果邮箱没有激活，请联系客服人员帮你解决，谢谢合作。" runat="server" Width="150px"></asp:TextBox>&nbsp;<span id="SpanEmailAccounts" class="onShow"><em class="fcolor_orange01_jr">*</em></span>&nbsp;&nbsp;<a id="emailCode" 
                                   href="javascript:void(0);">输入绑定的邮箱帐号</a></td>
                        </tr>
                  

                        <tr>
                            <td></td>
                            <td style="text-align:left ">
                                     <ShoveWebUI:ShoveConfirmButton ID="btnPwd" Style="cursor: pointer;" runat="server"
                                    class="bluebtn01_jr" OnClientClick="if(!btnOk()){return false}" 
                                          CausesValidation="False" BorderStyle="None" onclick="btnPwd_Click"  />
                            </td>
                        </tr>
                    </tbody>
                </table>
          
            </div>
        </div>
    </div>
    <div class="clear">
    </div>
    <Foot:RegFoot runat="server" ID="Foot" />
    </form>
</body>
</html>
