<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Head.ascx.cs" Inherits="CPS_UserControls_Head" %>
<link href="../Style/jz.css" rel="stylesheet" type="text/css" />
<link href="../Style/home.css" rel="stylesheet" type="text/css" />

<script language="javascript" type="text/javascript">
  function setFavorite(){
        var url=location.href;
        var title=document.title;
        window.external.AddFavorite(url, title);
    }
</script>

<div class="header">
    <a href="#" onclick="setFavorite()">加入收藏</a>|<a href="#" onclick="this.style.behavior='url(#default#homepage)';this.setHomePage('<%=LiuYi.PublicFunction.GetCurrentUrl() %>');">设为首页</a>
</div>
<div class="logo">
    <p class="lo">
        <img src="../Images/logo.gif" id="logo" runat="server" />
    </p>
    <p class="jz">
        <img src="../Images/jzggtg.gif" id="logo1" runat="server" /><br />
        <span>流量马上变现金</span></p>
    <p class="phone">
        <img src="../Images/phone.jpg" id="logo2" runat="server" /></p>
</div>
<div class="daohang">
    <a href='<%=ResolveUrl("../index.aspx") %>' id="a">推广首页</a> <a href='<%=ResolveUrl("../../SiteNews/News.aspx") %>'
        target="_blank">新闻公告</a> <a href='<%=ResolveUrl("../UserRegCPS.aspx") %>'>申请推广</a>
    <a href='<%=ResolveUrl("../Admin/ImageCode.aspx")%>'>广告样式</a> <a href='<%=ResolveUrl("../Admin/Default.aspx") %>'>
        推广中心</a> <a href='<%=ResolveUrl("../../Help/contact.aspx") %>' target="_blank">联系我们</a>
</div>
