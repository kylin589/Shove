<%@ page language="C#" autoeventwireup="true" inherits="CPS_Login, App_Web_k8mvz58m" enableEventValidation="false" %>

<%@ Register TagPrefix="ShoveWebUI" Namespace="Shove.Web.UI" Assembly="Shove.Web.UI.4 For.NET 3.5" %>
<%@ Register Src="UserControls/Head.ascx" TagName="Head" TagPrefix="uc1" %>
<%@ Register Src="UserControls/Foot.ascx" TagName="Foot" TagPrefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Style/jz.css" rel="stylesheet" type="text/css" />
    <title>百姓彩票网－兼职推广员联盟|兼职工作|联盟推广|广告联盟</title>
    <meta name="description" content="针对拥有用户访问流量的网站，分配一个指定的用户访问域名链接。网站负责推广此广告链接，联盟通过指定的域名链接产生的用户交易量给网站站长支付分润收益。我们称之为“流量合作分润系统”，以下简称“CPS联盟”。" />
    <meta name="keywords" content="兼职推广员联盟|兼职工作|联盟推广|广告联盟" />
</head>
<body>
    <form id="form1" runat="server">
    <uc1:Head ID="Head1" runat="server" />
    <div class="daohang2">
        您现在位置:兼职推广首页 >> 推广员登录</div><span name="iscode" id="IsCode" style="display: none;" runat="server"></span>
    <div class="denglu">
        <div class="delu">
            <table width="100%" id="tbLogin1" runat="server">
                <tr>
                    <td>
                        <p class="title">
                            推广员，是指一定流量的个人站长，在线申请，无需审核，直接开通，可获得2%的交易量返点。</p>
                    </td>
                </tr>
                <tr>
                    <td>
                        <p>
                            <label>
                                用户名:</label>
                            <input type="text" class="input" id="tbUserName" runat="server" />
                        </p>
                    </td>
                </tr>
                <tr>
                    <td>
                        <p>
                            <label>
                                密码:</label>
                            <input type="password" class="input" id="tbPwd" runat="server" /></p>
                    </td>
                </tr>
                <tr>
                    <td>
                        <p id="textCheckCodeHidden" visible="false" runat="server">
                            <label>
                                验证码:</label>
                            <input type="text" class="input input2" id="textCheckCode" runat="server" style="vertical-align:middle"  />
                           <img id="ImageCheckAdmin" runat="server" src="~/Drawing/Codeimgs.aspx" style="cursor: hand; vertical-align:middle"
                           width="77" height="24" onclick="javascript:ChangeCodeImg('ImageCheckAdmin');"
                           title="点击更换验证码图片!" />
                        </p>
                    </td>
                </tr>
                <tr>
                    <td>
                        <p>
                            <input id="Checkbox1" type="checkbox" class="check" checked="true" /><span>记住用户名</span><a
                                href="../UserForgetPassword.aspx">忘记密码</a></p>
                    </td>
                </tr>
                <tr>
                    <td>
                        <p>
                            <asp:Button ID="btnOK" runat="server" type="submit" Text="登录" class="submit"  OnClick="btnOK_Click" />
                            <a href="UserRegCPS.aspx">注册</a></p>
                    </td>
                </tr>
            </table>
        </div>
    </div>
    <uc2:Foot ID="Foot1" runat="server" />
    </form>
</body>
</html>
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
           a.src ='<%=ResolveUrl("../Drawing/Codeimgs.aspx?") %>' + rand(10000000);
        }
        
</script>
