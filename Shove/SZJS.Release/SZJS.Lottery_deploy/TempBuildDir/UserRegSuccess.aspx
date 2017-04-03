<%@ page language="C#" autoeventwireup="true" inherits="UserRegSuccess, App_Web_dv99xhvn" enableEventValidation="false" %>

<%@ Register Src="~/UserControls/Head.ascx" TagName="RegTop" TagPrefix="TOP" %>
<%@ Register Src="~/Home/Room/UserControls/WebFoot.ascx" TagName="RegFoot" TagPrefix="Foot" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>会员注册成功 -
        <%=_Site.Name %>－双色球开奖/双色球走势图查询-买彩票，就上<%=_Site.Name %></title>
    <meta name="description" content="会员注册，<%=_Site.Name %>彩票网是一家服务于中国彩民的互联网彩票合买代购交易平台，涉及中国彩票彩种最全的网站，包含双色球、时时乐、时时彩、足彩等众多彩种的实时开奖信息、图表走势、分析预测等。" />
    <meta name="keywords" content="会员注册，双色球开奖，双色球走势图，3d走势图，福彩3d，时时彩" />
    <link href="Home/Room/Style/common.css" rel="stylesheet" type="text/css" />
    <link href="Home/Room/Style/index.css" rel="stylesheet" type="text/css" />
    <link href="Home/Room/Style/StyleSheet.css" rel="stylesheet" type="text/css" />

    <script src="JavaScript/jquery-1.4.js" type="text/javascript"></script>

    <script type="text/javascript">
     function UsersCenter()
    {
     window.location="Home/Room/UserEdit.aspx";
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
                <table width="100%">
                    <tbody>
                        <tr class="tdunderline_jr">
                            <td width="139">
                            </td>
                            <td>
                                <div class="step3_3_jr">
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" class="reg_space02_jr">
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td class="normal_jr" colspan="2" align="center">
                                <em class="fcolor_orange03_jr">恭喜&nbsp;<%=_User==null?null:_User.Email %>&nbsp;完成激活，注册成功！</em>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" class="reg_space03_jr">
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td class="fcolor_gray03_jr" colspan="2" align="center">
                                <span><a style="font-size: 12px; color: Red; text-decoration: none;" href="Home/Room/OnlinePay/Default.aspx"
                                    target="_parent">点击充值</a>，<em class="fcolor_green_jr"><%=_Site.Name %>更多服务请...</em>&nbsp;</span><span>
                                        <input type="button" class="orangebtn04_jr" onclick="UsersCenter()"></span>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <Foot:RegFoot ID="Foot" runat="server" />
    </form>
</body>
</html>
