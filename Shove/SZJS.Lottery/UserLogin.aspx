<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserLogin.aspx.cs" Inherits="UserLogin" %>

<%@ Register Assembly="Shove.Web.UI.4 For.NET 3.5" Namespace="Shove.Web.UI" TagPrefix="ShoveWebUI" %>
<%@ Register Src="UserControls/Head.ascx" TagName="Head" TagPrefix="uc1" %>
<%@ Register Src="Home/Room/UserControls/WebFoot.ascx" TagName="WebFoot" TagPrefix="uc3" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>会员登录 -
        <%=_Site.Name %>－双色球开奖/双色球走势图查询-买彩票，就上<%=_Site.Name %></title>
    <meta name="description" content="会员注册，<%=_Site.Name %>彩票网是一家服务于中国彩民的互联网彩票合买代购交易平台，涉及中国彩票彩种最全的网站，包含双色球、时时乐、时时彩、足彩等众多彩种的实时开奖信息、图表走势、分析预测等。" />
    <meta name="keywords" content="会员注册，双色球开奖，双色球走势图，3d走势图，福彩3d，时时彩" />
    <link rel="shortcut icon" href="favicon.ico" />
    <link href="Home/Room/Style/StyleSheet.css" rel="stylesheet" type="text/css" />
    <link href="Home/Room/Style/common.css" rel="stylesheet" type="text/css" />
    <link href="Home/Room/Style/index.css" rel="stylesheet" type="text/css" />

    <script src="JavaScript/jquery-1.4.js" type="text/javascript"></script>

    <script type="text/javascript">
         String.prototype.trim = function() {
                return this.replace(/(^\s*)|(\s*$)/g, "");
                }
                
        function rnd() {
            rnd.seed = (rnd.seed * 9301 + 49297) % 233280;
            return rnd.seed / (233280.0);
        }
        rnd.today = new Date();
        rnd.seed = rnd.today.getTime();
        function rand(number) {
            return Math.ceil(rnd() * number);
        }
        function ChangeCodeImg(img) {
            var a = document.getElementById(img);
            a.src = "Drawing/Codeimgs.aspx?" + rand(10000000);
        }
        function CheckTrue()
        {
            if($("#UserName").val().trim()=="")
            {
                alert("用户名不能为空！");
                document.getElementById("UserName").focus();
                return false;
            }
            if($("#PassWord").val().trim()=="")
            {
                alert("密码不能为空！");
                document.getElementById("PassWord").focus();
                return false;
            }
            if($("#IsCode").html()!="")
            {
                 if($("#Verify").val().trim()=="")
                {
                    alert("验证码不能为空！");
                    document.getElementById("Verify").focus();
                    return false;
                }
            }
            return true;
        }
    </script>

</head>
<body>
    <form id="form1" runat="server">
    <uc1:Head ID="Head1" runat="server" />
    <div class="wrap">
        <div class="register_jr">
            <div class="reg_top_jr">
                会员登录<span name="iscode" id="IsCode" style="display: none;" runat="server"></span>
            </div>
            <div style="margin-top: 50px; margin-left: 50px; margin-right: 50px;">
                <div class="left" style="float: left">
                    <dl>
                        <dt>
                            <img src="Images/DefaultNew.jpg" />
                        </dt>
                    </dl>
                </div>
                <div class="right" style="background-position: right; float: right">
                    <div id="index_login" class="login hidden">
                        <table id="tbLogin" cellpadding="0" cellspacing="0" border="0" width="100%" runat="server">
                            <tr>
                                <td colspan="2">
                                    <h1>
                                        会员登录a
                                    </h1>
                                </td>
                            </tr>
                            <tr>
                                <td class="t">
                                    用户名：
                                </td>
                                <td>
                                    <input type="text" class="text" name="username" id="UserName" runat="server" />
                                </td>
                            </tr>
                            <tr>
                                <td class="t">
                                    密 &nbsp;&nbsp;码：
                                </td>
                                <td>
                                    <input type="password" class="text" name="passwd" id="PassWord" runat="server" />
                                </td>
                            </tr>
                            <tr id="Code">
                                <td class="t">
                                    验证码：
                                </td>
                                <td>
                                    <input type="text" class="text imgcode" name="verify" id="Verify" runat="server" />
                                    <img id="ImageCheckAdmin" runat="server" src="~/Drawing/Codeimgs.aspx" style="cursor: hand"
                                        width="77" height="24" onclick="javascript:ChangeCodeImg('ImageCheckAdmin');"
                                        title="点击更换验证码图片!" />
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" align="center" valign="top" class="width">
                                    <asp:Button ID="Button1" class="submit" runat="server" Text=" " OnClientClick="if(!CheckTrue()){return false;}"
                                        OnClick="Login_Click" />
                                    <%--  <asp:Button ID="btnLogin2" runat="server" Text="登录" OnClick="btnLogin_Click" Style="display: none" />--%>
                                    <a href="Home/Room/Login.aspx" target="_blank" class="alipay_quick_small"></a>
                                    <div class="clear">
                                    </div>
                                    <div class="baidu_login">
                                        <a href="UserForgetPassword.aspx">忘记密码</a>
                                        <%--<a
                                        href="Home/Room/TencentLogin.aspx" target="_blank" style="background: url(Images/qq_03.jpg) no-repeat;
                                        display: inline-block; height: 21px; width: 82px; margin-top:3px; display:none;"></a>--%>
                                    </div>
                                </td>
                            </tr>
                        </table>
                        <div class="btn">
                            <a href="UserReg.aspx" class="regbtn"></a>
                            <div class="clear">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <uc3:WebFoot ID="WebFoot1" runat="server" />
&nbsp;</form>
</body>
</html>
