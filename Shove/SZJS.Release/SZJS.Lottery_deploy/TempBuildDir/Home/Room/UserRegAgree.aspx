<%@ page language="C#" autoeventwireup="true" inherits="Home_Room_UserRegAgree, App_Web_y4qeesyo" enableEventValidation="false" %>

<%@ Register Src="~/UserControls/Head.ascx" TagName="RegTop" TagPrefix="TOP" %>
<%@ Register Src="~/Home/Room/UserControls/WebFoot.ascx" TagName="RegFoot" TagPrefix="Foot" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>用户注册协议</title>
    <link href="Style/common.css" rel="stylesheet" type="text/css" />
    <link href="Style/index.css" rel="stylesheet" type="text/css" />
    <link href="Style/StyleSheet.css" rel="stylesheet" type="text/css" />
</head>

<script src="../../JavaScript/jquery-1.4.js" type="text/javascript"></script>

<body>
    <form id="form1" runat="server">
    <TOP:RegTop runat="server" ID="Top" />
    <div class="wrap">
        <div class="register_jr">
            <div class="reg_top_jr">
                注册协议</div>
            <div class="reg_content_jr" style="padding-bottom: 100px;">
                <div style="height: 100%; width: 100%; line-height: 26px;">
                    <asp:Label ID="labAgreement" runat="server" EnableViewState="false"></asp:Label>
                </div>
            </div>
        </div>
    </div>
    <Foot:RegFoot ID="Foot" runat="server" />
    </form>
</body>
</html>
