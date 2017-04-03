<%@ page language="C#" autoeventwireup="true" inherits="UserRegemail, App_Web_dv99xhvn" enableEventValidation="false" %>
<%@Register  Src="~/UserControls/Head.ascx" TagName="RegTop" TagPrefix="TOP"%>
<%@Register  Src="~/Home/Room/UserControls/WebFoot.ascx" TagName="RegFoot" TagPrefix="Foot"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <title>邮件激活 -
        <%=_Site.Name %>－双色球开奖/双色球走势图查询-买彩票，就上<%=_Site.Name %></title>
    <meta name="description" content="会员注册，<%=_Site.Name %>彩票网是一家服务于中国彩民的互联网彩票合买代购交易平台，涉及中国彩票彩种最全的网站，包含双色球、时时乐、时时彩、足彩等众多彩种的实时开奖信息、图表走势、分析预测等。" />
    <meta name="keywords" content="会员注册，双色球开奖，双色球走势图，3d走势图，福彩3d，时时彩" />
    <link href="Home/Room/Style/common.css" rel="stylesheet" type="text/css" />
    <link href="Home/Room/Style/index.css" rel="stylesheet" type="text/css" />
    <link href="Home/Room/Style/StyleSheet.css" rel="stylesheet" type="text/css" />

<style type="text/css">
         .fullbg
        {
            position:absolute;
            cursor:pointer;
            background-color: Gray;
            display: none;
            z-index: 0;
            left: 0px;
            top: 0px;
            filter: Alpha(Opacity=60);
            -moz-opacity: 0.4;
            opacity: 0.4;
        }

</style>
    <script src="JavaScript/jquery-1.4.js" type="text/javascript"></script>
    <script  language="javascript" type="text/javascript">
        $(document).ready(function() {
            $("#emailUpdateA").click(function() {
                var bH = $(document).height();
                var bW = $(document).width();
                $("#fullbg").css({ width: bW, height: bH, display: "block" });
                var o = $("#EmailDiv");
                var itop = (document.documentElement.clientHeight - o.height()) / 2 + document.documentElement.scrollTop;
                var ileft = (document.documentElement.clientWidth - o.width()) / 2 + document.documentElement.scrollLeft;
                o.css({
                    position: "absolute",
                    top: itop + "px",
                    left: ileft + "px",
                    index_z: 999
                }).css("display", "block");
            });

            $("#btn_Cancel").click(function() {
                $("#fullbg").css("display", "none");
                $("#EmailDiv").css("display", "none");

            });
            $("#btn_Sure").click(function() {
                var email = $("#User_Email").val();
                var vid = UserRegemail.EmailUpdate("<%=_Site.ID %>", "<%=_User.Name%>", email).value;

                if (vid < 0) {
                    if (vid == -1) {
                        alert("邮箱不能为空！");
                    }
                    if (vid == -2) {
                        alert("邮箱格式不正确！");
                    }
                    if (vid == -3) {
                        alert("邮箱修改成功！");
                        $("#userEmialEM").html(email);
                        $("#fullbg").css("display", "none");
                        $("#EmailDiv").css("display", "none");
                    }

                } else {
                    alert("用户不存在！");
                }


            });
      

        });
 

    </script>




</head>
<body>
    <form id="form1" runat="server">
   <TOP:RegTop runat="server" ID="Top" />

   <div class="wrap">
<div class="register_jr">
        <div class="reg_top_jr">会员注册</div>
        <div class="reg_content_jr" style="padding-bottom:100px;">
            <table border="0" width="100%">
                <tbody><tr class="tdunderline_jr"><td width="139"></td><td><div class="step3_2_jr"></div></td></tr>
                <tr><td colspan="2" class="reg_space02_jr">&nbsp;</td></tr>
                <tr><td class="normal_jr" colspan="2" align="center"><em class="fcolor_orange03_jr">注册提交成功！</em>请到您注册时填写的&nbsp;<em class="fcolor_blue_jr" id="userEmialEM"><%=_User==null?"":_User.Email %></em>&nbsp;收信，进行邮箱验证并激活账号。</td></tr>
                <tr><td colspan="2" class="reg_space04_jr">&nbsp;</td></tr>
                  
                <tr><td colspan="2" align="center">
                    <asp:Button ID="emailActivate" runat="server" class="orangebtn02_jr" 
                        onclick="emailActivate_Click" /></td></tr>
                <tr><td colspan="2" class="reg_space05_jr">&nbsp;</td></tr>
                
                <tr><td colspan="2"><div class="reg_remarks_jr">
                    <table width="80%">
                        <tbody><tr>
                            <td><div class="reg_remarks_items_jr">如果5分钟后还没有收到验证邮件，您可以<asp:LinkButton 
                                    ID="LinkButton1" class="acolor_orange_jr"  runat="server" onclick="LinkButton1_Click">再发一次</asp:LinkButton>，以最新的验证邮件为准。</div></td>
                        </tr>
                        <tr>
                            <td><div class="reg_remarks_items_jr">如果您的邮箱输入有误，请<a class="acolor_orange_jr" href="javascript:void(0);" id="emailUpdateA">点此修改</a>，修改后原邮件失效。</div></td>
                        </tr>

                        <tr>
                            <td><div class="reg_remarks_items_jr">如果遇到问题，请联系&nbsp;<input type="button" class="orangebtn03_jr" /></div></td>
                        </tr>
                    </tbody></table></div></td></tr>
                
            </tbody></table>
        </div>
    </div>
    </div>
    <div id="EmailDiv" style="display:none;width:350px;  text-align:center; background-color:Gray;  height:100px; z-index:100; position:absolute; " runat="server">
         <table style="width:320px; height: 94px;">
         <tr>
         <td style=" font-family:@Adobe 楷体 Std R; font-size:large; width:100px; text-align:right;" >用户名： </td>
         <td align="left" > <em><%=_User==null?"":_User.Name %></em></td>
        </tr>
         <tr>
         <td style=" font-family:@Adobe 楷体 Std R; font-size:large; width:100px; text-align:right;" >修改邮箱： </td>
         <td align="left"> <input type="text" style=" width:200px;" id="User_Email"  name="User_Email" runat="server"   /></td>
        </tr>
         <tr align="center" >
         <td  colspan="2"><input type="button" value="确定" id="btn_Sure" runat="server" /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <input type="button" id="btn_Cancel" value="取消" runat="server" /></td>
        </tr>
        </table>
    </div>
     <div id="fullbg" class="fullbg">
    </div>
    <Foot:RegFoot runat="server" ID="Foot" />
    </form>
</body>
</html>
