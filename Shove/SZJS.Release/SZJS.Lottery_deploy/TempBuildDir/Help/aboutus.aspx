<%@ page language="C#" autoeventwireup="true" inherits="Help_aboutus, App_Web_85hasknr" enableEventValidation="false" %>

<%@ Register Src="../UserControls/Head.ascx" TagName="Head" TagPrefix="uc1" %>
<%@ Register Src="../Home/Room/UserControls/WebFoot.ascx" TagName="WebFoot" TagPrefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD Xhtml 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>关于我们 </title>
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
                    <li><a style="color: #f00; font-weight: bold;" href="aboutus.aspx">公司概况</a></li>
                    <li><a href="news.aspx">公司动态 </a></li>
                    <li><a href="declare.aspx">法律声明</a></li>
                    <li><a href="sitemap.aspx">网站地图 </a></li>
                    <li><a href="join.aspx">网站加盟</a></li>
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
                            <span>关于我们</span></h1>
                    </div>
                </div>
            </div>
            <div class="index_content">
                <div class="f12">
                    <h1>
                        关于百姓彩</h1>
                    <p style="font-size: 12px;">
                       百姓彩（ <a href="http://www.baixingcai.com">http://www.baixingcai.com</a>）是深圳久盛网络科技有限公司旗下的大型彩票服务网站，拥有一流的团队倾力打造将互联网电子商务和彩票资讯、购买、兑奖、娱乐等一体化服务相结合百姓彩网。为广大彩民提供互联网在线彩票资讯、网络游戏等项目。将高科技的IT技术和网络技术应用到彩票领域，为广大彩民和彩票从业人士提供最新、最好的彩票专业服务。并以“创新、效率、合作、诚信、服务至上”为核心价值观，支持中国体育和福利彩票事业的健康、快速、持续发展为主要业务。。
                    </p>
                    <h1>
                        关于百姓彩开发团队</h1>
                    <p style="font-size: 12px;">
                        百姓彩是一家全新的公司，正蓄力发展，以先进的互联网技术，完善的经营理念，人性化的管理，及国内外多年的彩票运营及管理经验，将创新的技术与传统的彩票产业相结合，全心全意为用户提供专业、诚信、安全、优质的购彩服务，全力打造全国最好的彩票门户网站。久盛网络是一支充满朝气的年轻团队，正处于快速发展时期。公司需要一大批优秀的人才加入团队，共同努力打造更完好的博彩平台。<br /></p>
                    <h1>
                        百姓彩发展理念</h1>
                    <p style="font-size: 12px;">
                        凭借互联网理念和领先的技术，形成了合理的彩种结构和完善的产品线，为广大彩民提供了便捷、安全、愉悦的购彩体验，未来，百姓彩将继续坚持以彩民为本的原则，为广大彩民提供更专业、更优质的彩票服务，与广大彩民携手共进，促进中国彩票事业的持续、快速、健康发展！<br />
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
