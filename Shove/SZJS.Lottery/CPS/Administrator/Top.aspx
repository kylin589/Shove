<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Top.aspx.cs" Inherits="CPS_Administrator_Top" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<link href="style/style01.css" rel="stylesheet" type="text/css" />
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Top</title>
</head>
<body class="topbody">
    <form id="form1" runat="server">
    <div class="main">
        <ul class="topmenu">
            <li class="logo">
                <img src="style/images/logo.jpg" border="0" /></li>
            <li class="companyName">
                <img src="style/images/companyName.jpg" border="0" />
            </li>
            <li class="line">
                <img src="style/images/line.jpg" border="0" /></li>
            <li class="systemName">
                <img src="style/images/systemName.jpg" border="0" /></li>
            <li class="quick">
                <div class="quickpanel">
                    <div class="quickl">
                    </div>
                    <div class="quickb">
                        <dl class="quicklist">
                            <dd>
                                <a href="Main.aspx" target="BoardList">
                                    <img src="style/images/ico1.gif" border="0" /><br />
                                    管理平台</a></dd>
                            <dd>
                                <a href="../../Index.aspx" target="_blank">
                                    <img src="style/images/ico2.gif" border="0" /><br />
                                    购彩首页</a></dd>
                            <dd>
                                <a onclick="return confirm('确定退出后台管理系统?');" href="../Login.aspx" target="_parent">
                                    <img src="style/images/ico3.gif" border="0" /><br />
                                    安全退出</a></dd>
                        </dl>
                    </div>
                    <div class="quickr">
                    </div>
                </div>
            </li>
        </ul>
    </div>
    <div style="margin-top: 5px; font-weight: bold; color: White">
        &nbsp;&nbsp;&nbsp; 欢迎&nbsp;<asp:Label ID="labUserName" runat="server"></asp:Label>&nbsp;登录网站管理后台！
    </div>
    </form>
</body>
</html>
