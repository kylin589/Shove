<%@ page language="C#" autoeventwireup="true" inherits="UserReg, App_Web_dv99xhvn" enableEventValidation="false" %>

<%@ Register TagPrefix="ShoveWebUI" Namespace="Shove.Web.UI" Assembly="Shove.Web.UI.4 For.NET 3.5" %>
<%@ Register Src="~/UserControls/Head.ascx" TagName="RegTop" TagPrefix="TOP" %>
<%@ Register Src="~/Home/Room/UserControls/WebFoot.ascx" TagName="RegFoot" TagPrefix="Foot" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>会员注册 -
        <%=_Site.Name %>－双色球开奖/双色球走势图查询-买彩票，就上<%=_Site.Name %></title>
    <meta name="description" content="会员注册，<%=_Site.Name %>彩票网是一家服务于中国彩民的互联网彩票合买代购交易平台，涉及中国彩票彩种最全的网站，包含双色球、时时乐、时时彩、足彩等众多彩种的实时开奖信息、图表走势、分析预测等。" />
    <meta name="keywords" content="会员注册，双色球开奖，双色球走势图，3d走势图，福彩3d，时时彩" />
    <link href="Home/Room/Style/common.css" rel="stylesheet" type="text/css" />
    <link href="Home/Room/Style/StyleSheet.css" rel="stylesheet" type="text/css" />
    <link href="Home/Room/Style/index.css" rel="stylesheet" type="text/css" />

    <script src="JavaScript/jquery-1.4.js" type="text/javascript"></script>

    <script src="JavaScript/Public.js" type="text/javascript"></script>

    <script language="javascript" type="text/javascript">
        //判断输入密码的类型  
        function CharMode(iN) {
            if (iN >= 48 && iN <= 57) //数字  
                return 1;
            if (iN >= 65 && iN <= 90) //大写  
                return 2;
            if (iN >= 97 && iN <= 122) //小写  
                return 4;
            else
                return 8;
        }
        
        //计算密码模式  
        function bitTotal(num) {
            modes = 0;
            for (i = 0; i < 4; i++) {
                if (num & 1) modes++;
                num >>>= 1;
            }
            return modes;
        }
        //返回强度级别  
        function checkStrong(sPW) {
            if (sPW.length <= 4)
                return 0; //密码太短  
            Modes = 0;
            for (i = 0; i < sPW.length; i++) {
                //密码模式  
                Modes |= CharMode(sPW.charCodeAt(i));
            }
            return bitTotal(Modes);
        }

         
        $(document).ready(function() {
            //图片切换
            $("#changeImg").click(function() {
              $("#YZMimg").attr("src", "Drawing/Codeimgs.aspx?randomNum=" + parseInt(Math.random() * 10));
            });

            $("#userName").blur(function() {
                var userName = $(this).val();
                if (userName.replace(/(^\s*)|(\s*$)/, "").trim() == "") {
                    $("#tipUserName").html("<span style='color:red;'>用户名不能为空!</span>");
                } else {
                    var result = UserReg.CheckUserName("<%= _Site.ID%>", userName).value;
                    if (Number(result) < 0) {
                        if (Number(result) == -1) {
                            $("#tipUserName").html("<font color='red'>对不起用户名中含有禁止使用的字符</font>");

                        }

                        if (Number(result) == -2) {
                            $("#tipUserName").html("<font color='red'>用户名 " + userName + " 已被占用，请重新输入一个</font>");

                        }

                        if (Number(result) == -3) {
                            $("#tipUserName").html("<font color='red'>用户名长度在 5-16 个英文字符或数字、中文 3-8 之间。</font>");

                        }
                    }
                    else {
                        $("#tipUserName").html("<font color='green'>用户名 <font color='red'>" + userName + "</font> 可以使用</font>");

                    }

                }
            });

            $("#passwordOne").keyup(function() {
                var S_level = checkStrong($(this).val());

                switch (S_level) {
                    case 0:
                        $(".pwdstr01_jr").css("background-color", "#95c62e").css("width", "25px").html("弱");
                        break;
                    case 1:
                        $(".pwdstr01_jr").css("background-color", "#FF9900").css("width", "50px").html("中");
                        break;
                    case 2:
                        $(".pwdstr01_jr").css("background-color", "#33CC00").css("width", "75px").html("强");
                        break;
                    default:
                        $(".pwdstr01_jr").css("background-color", "#95c62e").css("width", "0px").html("弱");
                }


            });
            $("#passwordOne").blur(function() {
                if ($(this).val().trim() == "") {
                    $("#tipPassword").html("<span style='color:red;'>密码不能为空!</span>");
                } else {
                    $("#tipPassword").html("<span style='color:green;'>密码输入正确!</span>");
                }
            });

            $("#passwordTwo").blur(function() {
                if ($(this).val().trim() == "") {
                    $("#tipRePassword").html("<span style='color:red;'>确认密码不能为空!</span>");
                } else {
                    if ($(this).val() != $("#passwordOne").val()) {
                        $("#tipRePassword").html("<span style='color:red;'>两次密码输入不一致，请仔细检查。</span>");
                    } else {
                    $("#tipRePassword").html("<span style='color:green;'>确认密码输入正确!</span>");
                    }
                }
            });

            $("#email").blur(function() {
                if ($(this).val().trim() == "") {
                    $("#emailTip").html("<span style='color:red;'>邮箱不能为空!</span>");
                } else {
                    var reg = /\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*/;
                    if (!$(this).val().match(reg)) {
                        $("#emailTip").html("<span style='color:red;'>邮箱格式输入错误!</span>");
                    } else {
                        $("#emailTip").html("<span style='color:green;'>邮箱输入正确!</span>");
                    }
                }
            });

            $("#YZMcode").blur(function() {
                if ($(this).val().trim() == "") {
                    $("#VeriftyTip").html("<span style='color:red;'>验证码不能为空!</span>");
                }
            });


        });


        function checkReg() {
            var userName = document.getElementById("userName").value;
            var password = document.getElementById("passwordOne").value;
            var password2 = document.getElementById("passwordTwo").value;
            var email = document.getElementById("email").value;
            var CheckCode = document.getElementById("YZMcode");
            var IsAgree = document.getElementById("ckbAgree").checked;

            if (!IsAgree) {
                alert("必须同意注册协议才能注册！");
                return false;
            }

            if (userName.trim() == "") {
                $("#userName").val("");
                alert("用户名不能为空!");
                return false;
            }

            if (password.trim() == "") {
                $("#passwordOne").val("");
                alert("密码不能为空!");
                return false;
            }

            if (password2.trim() == "") {
                $("#passwordTwo").val("");
                alert("确认密码不能为空!");
                return false;
            }

            if (password != password2) {
                $("#passwordTwo").val("");
                alert("两次密码输入不一致，请仔细检查!");
                return false;
            }

            if (email.trim() == "") {
                $("#email").val("");
                alert("邮箱不能为空!");

                return false;
            }

            if (CheckCode != null && CheckCode.value.trim() == "") {
                alert("请输入验证码！");
                return false;
            }
            var result = UserReg.CheckReg(userName, password, password2, email).value;
            if (result != "") {
                alert(result);
                return false;
            }
            return true;
        }




    </script>

</head>
<body>
    <form id="form1" runat="server">
    <TOP:RegTop runat="server" ID="RegTop" />
    <div class="wrap">
        <div class="register_jr">
            <div class="reg_top_jr">
                会员注册</div>
            <div class="reg_content_jr" style="padding-bottom: 100px;">
                <table border="0" style="width: 700px" cellpadding="0" cellspacing="0">
                    <tbody>
                        <tr>
                            <td>
                            </td>
                            <td>
                            </td>
                            <td>
                            </td>
                        </tr>
                        <tr class="tdunderline_jr">
                            <td>
                            </td>
                            <td colspan="2">
                                <div class="step3_1_jr">
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3">
                                带<em class="fcolor_orange01_jr">*</em>为必填项
                            </td>
                        </tr>
                        <tr>
                            <td class="edititem_jr" width="127">
                                用户名<em class="fcolor_orange_jr">*</em>
                            </td>
                            <td width="232">
                                <input id="userName" type="text" tabindex="1" class="input228_26_blue_jr" runat="server" />
                            </td>
                            <td width="341">
                                <div id="tipUserName" class="onShow">
                                    用户名注册后不能修改</div>
                            </td>
                        </tr>
                        <tr class="line01_jr">
                            <td class="imaccount_jr">
                                （小财神账号）
                            </td>
                            <td colspan="2">
                            </td>
                        </tr>
                        <tr>
                            <td class="edititem_jr">
                                密码<em class="fcolor_orange_jr">*</em>
                            </td>
                            <td>
                                <input type="password" id="passwordOne" class="input228_26_blue_jr" tabindex="2"
                                    runat="server" />
                            </td>
                            <td>
                                <div id="tipPassword" class="onShow">
                                    请输入密码</div>
                            </td>
                        </tr>
                        <tr class="pwdstr_jr">
                            <td>
                            </td>
                            <td class="pwdstrength_jr">
                                <div class="lblpwdstr_jr">
                                    密码强度：</div>
                                <div class="pwdstr03_jr">
                                    <div class="pwdstr02_jr">
                                        <div class="pwdstr01_jr">
                                        </div>
                                    </div>
                                </div>
                            </td>
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td class="edititem_jr">
                                再次输入密码<em class="fcolor_orange_jr">*</em>
                            </td>
                            <td>
                                <input id="passwordTwo" type="password" tabindex="3" class="input228_26_blue_jr"
                                    runat="server" />
                            </td>
                            <td>
                                <div id="tipRePassword" class="onShow">
                                    请输入密码</div>
                            </td>
                        </tr>
                        <tr>
                            <td class="edititem_jr">
                                电子邮箱<em class="fcolor_orange_jr">*</em>
                            </td>
                            <td>
                                <input type="text" id="email" tabindex="5" class="input228_26_blue_jr" runat="server" />
                            </td>
                            <td>
                                <div id="emailTip" class="onShow">
                                    请输入您的邮箱</div>
                            </td>
                        </tr>
                        <tr>
                            <td class="edititem_jr">
                                验证码<em class="fcolor_orange_jr">*</em>
                            </td>
                            <td>
                                <span class="indent_align_jr">
                                    <input type="text" id="YZMcode" maxlength="4" tabindex="24" class="input80_24_jr"
                                        runat="server" /></span><span class="indent_align_jr">
                                            <img id="YZMimg" src="Drawing/Codeimgs.aspx" /></span><span class="indent_align_r_jr"><a
                                                href="javascript:void(0)" id="changeImg">换一张？</a></span>
                            </td>
                            <td>
                                <div id="VeriftyTip" class="onShow">
                                    请输入图片中的文字</div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                            </td>
                            <td>
                                <input id="ckbAgree" type="checkbox" checked="checked" runat="server" /><a class="acolor_gray_jr"
                                    href="Home/Room/UserRegAgree.aspx" target="_blank">点击阅读服务条款</a>
                            </td>
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3" class="reg_space01_jr">
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td>
                            </td>
                            <td colspan="2">
                                <ShoveWebUI:ShoveConfirmButton ID="btnReg" Style="cursor: pointer;" runat="server"
                                    class="bluebtn02_jr" CausesValidation="False" Text="提交注册" BorderStyle="None"
                                    OnClick="btnReg_Click" OnClientClick="if(!checkReg()){return false}" />
                                <asp:Button ID="btnReg2" runat="server" Text="登录" OnClick="btnReg_Click" Style="display: none" />
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <Foot:RegFoot runat="server" ID="Foot" />
    </form>
</body>
</html>
