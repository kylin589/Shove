<%@ page language="C#" autoeventwireup="true" inherits="Help_join, App_Web_85hasknr" enableEventValidation="false" %>

<%@ Register Src="../UserControls/Head.ascx" TagName="Head" TagPrefix="uc1" %>
<%@ Register Src="../Home/Room/UserControls/WebFoot.ascx" TagName="WebFoot" TagPrefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD Xhtml 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>网站加盟</title>
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
                    <li><a style="color: #f00; font-weight: bold;" href="join.aspx">网站加盟</a></li>
                    <li><a href="contact.aspx">联系我们</a></li>
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
                            <span>网站加盟</span></h1>
                    </div>
                </div>
            </div>
            <div class="index_content">
                <div class="f12">
                    <p style="font-size: 12px;">
                        百姓彩将遵循优势互补、协作共赢的原则，与各类伙伴合作建立强大的产品与 服务联盟，致力于为广大彩民用户提供专业化的产品、个性化的行业解决方案。百姓彩经过历时十年的发展，拥有彩票业内诸多核心技
                        术，是彩票软件行业的领跑者。深受彩民朋友的喜欢。我们愿与各界人士共同合作， 携手共同打造中国最强大的彩票合作联盟！
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
