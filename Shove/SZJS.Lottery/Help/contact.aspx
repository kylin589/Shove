<%@ Page Language="C#" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="Help_contact" %>

<%@ Register Src="../UserControls/Head.ascx" TagName="Head" TagPrefix="uc1" %>
<%@ Register Src="../Home/Room/UserControls/WebFoot.ascx" TagName="WebFoot" TagPrefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD Xhtml 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>联系我们 </title>
    <link href="help.css" rel="stylesheet" type="text/css" />
    <link href="../Home/Room/Style/common.css" rel="stylesheet" type="text/css" />
    <link href="../Home/Room/Style/zbuy.css" rel="stylesheet" type="text/css" />
    <link rel="shortcut icon" href="../favicon.ico" />

    <script src="../JavaScript/jquery-1.4.js" type="text/javascript"></script>

</head>
<body>
    <form id="form1" runat="server">
    <uc1:Head ID="Head1" runat="server" />
    <div class="helpContent">
        <img alt="" src="Images/ads.jpg" />
        <div class="helpLeft">
            <img alt="" src="Images/help_04.jpg" />
            <div class="helpCon-left">
                <ul>
                    <li><a href="aboutus.aspx">公司概况</a></li>
                    <li><a href="news.aspx">公司动态 </a></li>
                    <li><a href="declare.aspx">法律声明</a></li>
                    <li><a href="sitemap.aspx">网站地图 </a></li>
                    <li><a href="join.aspx">网站加盟</a></li>
                    <li><a style="color: #f00; font-weight: bold;" href="contact.aspx">联系我们</a></li>
                </ul>
            </div>
            <img alt="" src="Images/help_14.jpg" />
        </div>
        <div class="helpRight">
            <!--功能指引-->
            <div class="titleBg titt">
                <div class="titleLeftBg">
                    <div class="titleRightBg">
                        <h1 class="title">
                            <span>联系我们</span></h1>
                    </div>
                </div>
            </div>
            <div class="index_content">
                <div class="f12">
                    <p>
                    </p>
                    <p style="font-size: 12px;">
                        公司名称：深圳市久盛网络技术有限公司<br />
                        公司地址：深圳市宝安区民治大道展滔科技大厦703<br />
                        邮政编码：518133<br />
                        联系电话：0755-33370800<br />
                        公司传真：0755-33067477<br />
                        联系人：谭小姐<br />
                    </p>
                </div>
            </div>
        </div>
    </div>
    <div style="clear: both">
    </div>
    <uc1:WebFoot ID="WebFoot1" runat="server" />
    </form>
</body>
</html>
