<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserRegCPS.aspx.cs" Inherits="CPS_UserRegCPS" %>

<%@ Register TagPrefix="ShoveWebUI" Namespace="Shove.Web.UI" Assembly="Shove.Web.UI.4 For.NET 3.5" %>
<%@ Register Src="UserControls/Head.ascx" TagName="Head" TagPrefix="uc1" %>
<%@ Register Src="UserControls/Foot.ascx" TagName="Foot" TagPrefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>百姓彩票网－兼职推广员联盟|兼职工作|联盟推广|广告联盟</title>
    <meta name="description" content="针对拥有用户访问流量的网站，分配一个指定的用户访问域名链接。网站负责推广此广告链接，联盟通过指定的域名链接产生的用户交易量给网站站长支付分润收益。我们称之为“流量合作分润系统”，以下简称“CPS联盟”。" />
    <meta name="keywords" content="兼职推广员联盟|兼职工作|联盟推广|广告联盟" />
    <link href="Style/jz.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <uc1:Head ID="Head1" runat="server" />
    <div class="daohang2">
        您现在位置:兼职推广首页 >><span id="spanType" runat="server"></span> 推广员注册</div>
    <div class="daohang3">
        <a href="UserRegCPS.aspx">注册推广员 </a><a href="UserRegCPS.aspx?type=2">注册代理商 </a><a
            href="Login.aspx">推广员登录 </a><a target="_blank" href="CpsRegAgree.aspx">注册协议</a>
    </div>
    <div class="denglu tui2">
        <div class="delu" id="tdCpsApply" runat="server">
            <p class="title">
                <span id="spanCommender">推广员，是指一定流量的个人站长，在线申请，无需审核，直接开通，可获得2%的交易量返点。</span> <span
                    id="spanAgent" style="display: none">代理商，是指具有大量下属站长资源的广告站长联盟，在线申请，审核通过获得CPS广告代理权，获得超过2.0%的交易返点。</span></p>
            <p>
                <label>
                    CPS模式：</label>
                <asp:DropDownList ID="ddlCpsType" runat="server" onchange="SelectChange()">
                    <asp:ListItem Value="1">推广员</asp:ListItem>
                    <asp:ListItem Value="2">代理商</asp:ListItem>
                </asp:DropDownList>
                <span class="red">*</span>
            </p>
            <div id="tbUser1" runat="server">
                <p>
                    <label>
                        用户名:</label>
                    <td class="input">
                        <input type="text" class="input" id="tbUserName" runat="server" />
                        <span class="red">*</span>
                    </td>
                    <td width="192" height="30">
                        <input id="btnCheckUserName" type="button" value="检测用户名是否可用" onclick="return checkUserName();" />
                    </td>
                </p>
                <p>
                    <label>
                    </label>
                    <span class="red" id="spCheckResult">用户名长度在 5-16 个英文字符或数字、中文 3-8 之间。</span></p>
                <p>
                    <label>
                        密码:</label>
                    <input type="password" class="input" id="tbPassword" runat="server" /></p>
                <p>
                    <label>
                    </label>
                    <span class="red">你的密码长度在6—16位之间.</span></p>
                <p>
                    <label>
                        真实姓名：</label>
                    <input type="text" class="input" id="tbRealyName" runat="server" /><span class="span"></span></p>
            </div>
            <p>
                <label>
                </label>
                <span class="red">非常重要，这是您提款的重要依据，必须与提款银行卡户名一致。真实姓名一旦提交将不可更改</span></p>
            <p>
                <label>
                    网站名称:</label>
                <input type="text" class="input" id="tbSiteName" runat="server" disabled="disabled" /></p>
            <p>
                <label>
                    网址:</label>
                <input type="text" class="input" id="tbWebUrl" runat="server" disabled="disabled" /></p>
            <p id="trMD5" runat="server">
                <label>
                    MD5校验码：</label>
                <input type="text" class="input" id="tbMD5" runat="server" disabled="disabled" />
                <span class="red">调用接口的密钥</span>
            </p>
            <p>
                <label>
                    手机号码:</label>
                <input type="text" class="input" id="tbPhone" runat="server" />
                <span class="red">*</span>
            </p>
            <p>
                <label>
                    电子邮箱:</label>
                <input type="text" class="input" id="tbEmail" runat="server" />
                <span class="red">*</span>
             </p>
            <p>
                <label>
                    QQ:</label>
                <input type="text" class="input" id="tbQQ" runat="server" /></p>
            <div id="CheckCode" runat="server">
                <p>
                    <label>
                        验证码:</label>
                    <input type="text" class="input input2" name="verify" id="Verify" runat="server"
                        style="vertical-align: middle" />
                    <img id="ImageCheckAdmin" runat="server" src="~/Drawing/Codeimgs.aspx" style="cursor: hand;
                        vertical-align: middle" width="77" height="24" onclick="javascript:ChangeCodeImg('ImageCheckAdmin');"
                        title="点击更换验证码图片!" /></p>
                <p>
                    <input type="checkbox" class="check" id="cbAgree" runat="server" checked="true" /><span><a
                        href="CpsRegAgree.aspx"> 同意广告商家注册协议</a> </span>
                </p>
                <p>
                    <ShoveWebUI:ShoveConfirmButton ID="btnReg" Text="注册" runat="server" BorderStyle="None"
                        CausesValidation="False" OnClientClick="if(!checkReg()){return false};" OnClick="btnReg_Click"
                        CssClass="submit" />
                </p>
            </div>
        </div>
    </div>
    <uc2:Foot ID="Foot1" runat="server" />
    <asp:HiddenField ID="hUserID" runat="server" Value="-1" />
    <asp:HiddenField ID="hType" runat="server" Value="1" />
    </form>
</body>
</html>

<script type="text/javascript" language="javascript">
        function checkUserName() {

            var userName = document.getElementById("tbUserName").value;
            var result = CPS_UserRegCPS.CheckUserName(userName).value;

            if (userName.trim() == "") {
                spCheckResult.innerHTML = "用户名不能为空";
                document.getElementById("tbUserName").value = "";
                alert(spCheckResult.innerHTML);
                return false;
            }

            if (Number(result) < 0) {
                if (Number(result) == -1) {
                    spCheckResult.innerHTML = "<font color='red'>对不起用户名中含有禁止使用的字符</font>";
                    alert("对不起用户名中含有禁止使用的字符");
                    return false;
                }

                if (Number(result) == -2) {
                    spCheckResult.innerHTML = "<font color='red'>用户名 " + userName + " 已被占用，请重新输入一个</font>";
                    alert("用户名 " + userName + " 已被占用，请重新输入一个");
                    return false;
                }

                if (Number(result) == -3) {
                    spCheckResult.innerHTML = "<font color='red'>用户名长度在 5-16 个英文字符或数字、中文 3-8 之间。</font>";
                    alert("用户名长度在 5-16 个英文字符或数字、中文 3-8 之间。");
                    return false;
                }
            }
            else {
                spCheckResult.innerHTML = "<font color='green'>用户名 <font color='red'>" + userName + "</font> 可以使用</font>";

                return true;
            }
        }

        function checkReg() {
            var realyName = "";
            var password = "";
            var md5 = "";
            var userName = "";
            var phone = document.getElementById('tbPhone').value;
            var email = document.getElementById('tbEmail').value;
            var siteName = document.getElementById('tbSiteName').value;
            var webUrl = document.getElementById('tbWebUrl').value;
           
            
            var userid = parseInt(document.getElementById("hUserID").value);
            if(userid < 1)
            {
            userName = document.getElementById("tbUserName").value;
            password = document.getElementById("tbPassword").value;
            realyName = document.getElementById("tbRealyName").value;
            if (userName.trim() == "") {
                document.getElementById("tbUserName").value = "";
                alert("用户名不能为空。");
                document.getElementById('tbUserName').focus();

                return false;
            }

            if (password.trim() == "") {
                document.getElementById("tbPassword").value = "";
                alert("密码不能为空。");
                document.getElementById('tbPassword').focus();

                return false;
            }
            
             if (realyName.trim() == "") {
                document.getElementById("tbRealyName").value = "";
                alert("真实姓名不能为空。");
                document.getElementById('tbRealyName').focus();

                return false;
            }
            }

            if (siteName.trim() == "") {
                document.getElementById('tbSiteName').value = "";
                alert("请输入网站名称!");
                document.getElementById('tbSiteName').focus();
                return false;
            }
            if (webUrl.trim() == "") {
                document.getElementById('tbWebUrl').value = "";
                alert("请输入网址!");
                document.getElementById('tbWebUrl').focus();
                return false;
            }
            
            if (document.getElementById("trMD5").style.display != "none") {
                 
                 md5 = document.getElementById('tbMD5').value;
                
                if (md5.trim() == "") {
                    document.getElementById('tbMD5').value = "";
                    alert("请输入校验码!");
                    document.getElementById('tbMD5').focus();
                    return false;
                }
            }

            if (phone.trim() == "") {
                document.getElementById('tbPhone').value = "";
                alert("请输入联系电话!");
                document.getElementById('tbPhone').focus();
                return false;
            }

            if (email.trim() == "") {
                document.getElementById('tbEmail').value = "";
                alert("请输入电子信箱！");
                document.getElementById('tbEmail').focus();
                return false;
            }

            if (!document.getElementById("cbAgree").checked) {
                alert("必须同意注册协议！");

                return false;
            }
           
            if (userid < 1 && !checkUserName()) {
                return false;
            }

            var result = CPS_UserRegCPS.CheckReg(userName, password,realyName, siteName, webUrl, phone, email,userid.toString()).value;
           
            if (result != "") {
                alert(result);
                return false;
            }

            return true;
        }

        function SelectChange() {
            var ddlChange = document.getElementById("ddlCpsType");
            if (ddlChange.options[ddlChange.selectedIndex].value == "1") {
                document.getElementById("spanType").innerHTML = "注册推广员";
                document.getElementById("spanCommender").style.display = "";
                document.getElementById("spanAgent").style.display = "none";
                document.getElementById("trMD5").style.display = "none";
            }
            else {
                document.getElementById("spanType").innerHTML = "注册代理商";
                document.getElementById("spanCommender").style.display = "none";
                document.getElementById("spanAgent").style.display = "";
                document.getElementById("trMD5").style.display = "";
            }
        }

        if (document.getElementById("hType").value == "2") {
            if (document.getElementById("ddlCpsType")!=null) {
                document.getElementById("ddlCpsType").value = "2";
            }
            if (document.getElementById("spanCommender") != null) {
                document.getElementById("spanCommender").style.display = "none";
            }
            if (document.getElementById("spanAgent") != null) {
                document.getElementById("spanAgent").style.display = "";
            }
            if (document.getElementById("trMD5") != null) {
                document.getElementById("trMD5").style.display = "";
            }
        }
        
        function clears()
        {
            var controls = document.getElementsByTagName("input");
            
            for(var i=0;i<controls.length;i++)
            {
                if(controls[i].type == "text")
                {
                    controls[i].value = "";
                }
            }
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

