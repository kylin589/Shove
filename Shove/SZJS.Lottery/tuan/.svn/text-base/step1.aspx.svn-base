<%@ Page Language="C#" AutoEventWireup="true" CodeFile="step1.aspx.cs" Inherits="tuan_step1" %>

<%@ Register Assembly="Shove.Web.UI.4 For.NET 3.5" Namespace="Shove.Web.UI" TagPrefix="ShoveWebUI" %>
<%@ Register Src="../UserControls/Head.ascx" TagName="Head" TagPrefix="uc1" %>
<%@ Register Src="../Home/Room/UserControls/WebFoot.ascx" TagName="WebFoot" TagPrefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>
        <%=_Site.Name %>-彩票网 -- 优惠券兑换购彩体验金</title>
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
    <meta name="Keywords" content=",彩票,彩票合买,足彩,足球彩票,体彩,体育彩票,福彩,双色球彩票,时时乐,时时彩,福利彩票,开奖信息,中奖查询,足球资讯,彩票软件,超级双色球,排列3,排列5,双色球,29选7,22选5,36选7,足彩胜负,足彩进球,足球单场,福彩3d,七乐彩,彩票论坛,即时比分,过关统计" />
    <meta name="Description" content="-彩票网（www.baixingcai.com）是一家服务于中国彩民的互联网彩票合买代购交易平台，是当前中国彩票互联网交易行业的领导者。-彩票网以服务中国彩民为己任，为彩民提供全国各大联销型彩票的在线合买、代购和彩票软件开发。覆盖了足球彩票，体育彩票，福利彩票等各类彩票." />
    <link href="../Home/Room/Style/common.css" rel="stylesheet" type="text/css" />
    <link href="../Home/Room/Style/StyleSheet.css" rel="stylesheet" type="text/css" />
    <link href="../Home/Room/Style/tuangou.css" rel="stylesheet" type="text/css" />

    <script src="../JavaScript/jquery-1.4.js" type="text/javascript"></script>

    <script type="text/javascript">
        $(document).ready(function() {
            $("#changeImg").click(function() {
                $("#changeImg").attr("src", "../Drawing/Codeimgs.aspx?randomNum=" + parseInt(Math.random() * 10));
            });

            $("#txtUser").blur(function() {
                var userName = $(this).val();
                if (userName.replace(/(^\s*)|(\s*$)/, "").trim() == "") {
                    $("#emUsers").html("<font style='color:red;'>用户名不能为空!</font>");
                } else {
                    var result = tuan_step1.CheckUserName("<%= _Site.ID%>", userName).value;
                    if (Number(result) < 0) {
                        if (Number(result) == -1) {
                            $("#emUsers").html("<font color='red'>对不起用户名中含有禁止使用的字符。</font>");

                        }

                        if (Number(result) == -2) {
                            $("#emUsers").html("<font color='red'>用户名 <font color='green;'>" + userName + "</font> 已被占用，请重新输入一个。</font>");

                        }

                        if (Number(result) == -3) {
                            $("#emUsers").html("<font color='red'>用户名长度在 5-16 个英文字符或数字、中文 3-8 之间。</font>");

                        }
                    }
                    else {
                        $("#emUsers").html("<font color='green'>用户名 <font color='red'>" + userName + "</font> 可以使用。</font>");

                    }

                }
            });
            $("#txtPwdOne").blur(function() {
                if ($(this).val().trim() == "") {
                    $("#emPwdOne").html("<font style='color:red;'>密码不能为空!</font>");
                } else {
                    $("#emPwdOne").html("<font style='color:green;'>密码输入正确!</font>");
                }
            });

            $("#txtPwdTwo").blur(function() {
                if ($(this).val().trim() == "") {
                    $("#emPwdTwo").html("<font style='color:red;'>确认密码不能为空!</font>");
                } else {
                    if ($(this).val() != $("#txtPwdOne").val()) {
                        $("#emPwdTwo").html("<font style='color:red;'>两次密码输入不一致，请仔细检查。</font>");
                    } else {
                        $("#emPwdTwo").html("<font style='color:green;'>确认密码输入正确!</font>");
                    }
                }
            });

            $("#txtPhone").blur(function() {
                var vtbUserMobile = $(this).val();
                if (vtbUserMobile.trim() == "") {
                    $("#emPhone").html("手机号码不能为空!");

                } else {
                    var regMobile = /1[3|5][0-9]\d{8}/;
                    if (!vtbUserMobile.match(regMobile)) {
                        $("#emPhone").html("手机号码格式输入不正确!");
                    }else {
                       $("#emPhone").html("<font style='color:green;'>手机号码输入正确!</font>");
                    }

                }
            });

            $("#txtEmail").blur(function() {
                if ($(this).val().trim() == "") {
                    $("#emEmail").html("<font style='color:red;'>邮箱不能为空!</font>");
                } else {
                    var reg = /\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*/;
                    if (!$(this).val().match(reg)) {
                        $("#emEmail").html("<font style='color:red;'>邮箱格式输入错误!</font>");
                    } else {
                        $("#emEmail").html("<font style='color:green;'>邮箱输入正确!</font>");
                    }
                }
            });
            $("#txtCode").blur(function() {
                if ($(this).val().trim() == "") {
                    $("#emCode").html("验证码不能为空!");
                } else {
                    $("#emCode").html("");
                }
            });

        });



        function checkReg() {
            var userName = document.getElementById("txtUser").value;
            var password = document.getElementById("txtPwdOne").value;
            var password2 = document.getElementById("txtPwdTwo").value;

            var email = document.getElementById("txtEmail").value;
            var phone = document.getElementById("txtPhone").value;
            var CheckCode = document.getElementById("txtCode");

            if (userName.trim() == "") {
                $("#txtUser").val("");
                alert("用户名不能为空!");
                return false;
            } else {
                var result = tuan_step1.CheckUserName("<%= _Site.ID%>", userName).value;
                if (Number(result) < 0) {
                    if (Number(result) == -1) {
                        alert("对不起用户名中含有禁止使用的字符。");

                    }

                    if (Number(result) == -2) {
                        alert("用户名 " + userName + "已被占用，请重新输入一个。");

                    }

                    if (Number(result) == -3) {
                        alert("用户名长度在 5-16 个英文字符或数字、中文 3-8 之间。");

                    }
                    return false;
                }

            }

            if (password.trim() == "") {
                $("#txtPwdOne").val("");
                alert("密码不能为空!");
                return false;
            }

            if (password2.trim() == "") {
                $("#txtPwdTwo").val("");
                alert("确认密码不能为空!");
                return false;
            }

            if (password != password2) {
                $("#txtPwdTwo").val("");
                alert("两次密码输入不一致，请仔细检查!");
                return false;
            }

            if (phone.trim() == "") {
                var vtbUserMobile = $("#txtPhone").val();
                if (vtbUserMobile.trim() == "") {
                    alert("手机号码不能为空!");
                    return false;   
                } else {
                    var regMobile = /1[3|5][0-9]\d{8}/;
                    if (!vtbUserMobile.match(regMobile)) {
                        alert("手机号码格式输入不正确!");
                        return false;
                    }

                }
            }
            if (email.trim() == "") {
                $("#txtEmail").val("");
                alert("邮箱不能为空!");
                return false;
            } else {
                var reg = /\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*/;
                if (!$("#txtEmail").val().match(reg)) {
                    alert("邮箱格式输入错误!");
                    return false;
                }
            }

            if (CheckCode != null && CheckCode.value.trim() == "") {
                alert("请输入验证码！");
                return false;
            }
           
            return true;
        }

        
        
function tbValidPassword_onclick() {

}

    </script>

</head>
<body>
    <form id="form1" runat="server">
    <uc1:Head ID="Head2" runat="server" />
    <div class="wrap">
        <div class="cenimg">
            <img src="images/cenlogo.jpg" />
        </div>
        <div class="tuangou">
            <div class="yuan">
                <div class="fooder">
                    <img src="images/t2_03.gif" />
                </div>
            </div>
            <div class="yuancen">
                <p class="zhongjian">
                    兑换码有效，激活账户</p>
                <p class="lie">
                    <span>用户名：</span><input type="text" id="txtUser" maxlength="16" runat="server" /><em
                        id="emUsers">*</em>
                </p>
                <p class="lie">
                    <span>密码：</span><input type="password" id="txtPwdOne" maxlength="20" runat="server" /><em
                        id="emPwdOne">*</em>
                </p>
                <p class="lie">
                    <span>再次输入密码：</span><input type="password" id="txtPwdTwo" maxlength="20" runat="server" /><em
                        id="emPwdTwo">*</em>
                </p>
                <p class="lie">
                    <span>手机号码：</span><input type="text" id="txtPhone" maxlength="11" runat="server" />&nbsp;<ShoveWebUI:ShoveConfirmButton
                        ID="btnMobileValid" runat="server" Width="80" Text="立即验证" AlertText="确信要立即验证您的手机吗？"
                        OnClick="btnMobileValid_Click" /><em id="emPhone">*必填</em>
                </p>
                <p class="lie">
                    <span>验证密码：</span><input type="text"   runat="server"   id="tbValidPassword" maxlength="11" onclick="return tbValidPassword_onclick()"/><em
                         id="time" runat="server">
                        60
                    </em>秒

                <p class="lie" id="Label1" runat="server" visible="false">
                    <div style="font-size: 12px; color: Red">
                        您好，系统已经发送一串验证密码到你的手机，请将接收到的字串输入到验证密码框内完成验证。</div>
                </p>
                <p class="lie">
                    <span>邮箱：</span><input type="text" id="txtEmail" maxlength="50" runat="server" /><em
                        id="emEmail">*</em>
                </p>
                <p class="lie">
                    <span>验证码：</span><input type="text" id="txtCode" maxlength="4" runat="server" /><img
                        id="changeImg" src="../Drawing/Codeimgs.aspx" /><em id="emCode"></em>
                </p>
                <p class="lie" style="text-align: center;">
                    <asp:Button ID="Button2" runat="server" Text="Button" CssClass="button" OnClientClick="if(!checkReg()){return false}"
                        OnClick="Button2_Click" />
                </p>
                <p class="cen">
                    输入您获得的兑换码，就能获得价值9元的百姓彩账户充值券<br />
                    本次兑换完全免费，兑换码仅在活动期内有效！
                </p>
                <br />
                <br />
                <p class="botm">
                    <span>兑换码使用说明：</span><br />
                    1.本次活动仅针对通过本兑换页面提交个人信息并通过手机号新激活百姓彩账户的用户
                    <br />
                    2.每个用户、每个兑换码、每个手机号限兑换一次,已在百姓彩网站验证过的手机号不能重复使用<br />
                    3.本活动兑换的账户充值卷充值后仅用于用户购买彩票，有效为充值成功后15天，过期不用将回收<br />
                    4.本活动最终解释权归百姓彩及合作方共同所有
                </p>
            </div>
            <div class="yuanbottom">
            </div>
        </div>
    </div>
    <uc2:WebFoot ID="WebFoot1" runat="server" />
    <div id="IDTime" runat="server">
    </div>
    </form>
</body>
</html>
