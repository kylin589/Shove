<%@ Control Language="C#" AutoEventWireup="true" CodeFile="WebFoot.ascx.cs" Inherits="Home_Room_UserControls_WebFoot" %>
<div class="foot_box" style="margin-top: 10px;">
    <div class="link_box">
        <div class="link_main">
            <p>
                <strong>战略合作伙伴：</strong>
                <asp:Repeater ID="dlFriendLinks" runat="server">
                    <ItemTemplate>
                        <a target="_blank" href='<%# Eval("Url")%>'>
                            <%# Eval("LinkName")%></a>
                    </ItemTemplate>
                </asp:Repeater>
            </p>
        </div>
    </div>
    <div class="about_box">
        <div class="about_left">
            <p class="about_link">
                <a href='<%=ResolveUrl("../../../Help/aboutus.aspx") %>'>关于我们</a>| <a href='<%=ResolveUrl("../../../UserReg.aspx") %>'>
                    用户注册</a>| <a href='<%=ResolveUrl("../../../Help/contact.aspx") %>'>联系我们</a>|
                <a href='<%=ResolveUrl("../../../Help/join.aspx") %>'>网站加盟</a>| <a href='<%=ResolveUrl("../../../Help/declare.aspx") %>'>
                    法律声明</a>| <a href='<%=ResolveUrl("../../../Help/sitemap.aspx") %>'>网站地图 </a>
            </p>
            <p>
                <a target="_blank" href="http://210.76.65.188/newwebsite/index.htm">
                    <img src='<%=ResolveUrl("../../../Images/about/police.gif") %>' /></a> <a target="_blank"
                        href="http://www.miibeian.gov.cn/">
                        <img src='<%=ResolveUrl("../../../Images/about/beian.gif") %>' /></a> <a target="_blank"
                            href="http://net.china.com.cn/index.htm">
                            <img src='<%=ResolveUrl("../../../Images/about/jb.gif") %>' /></a> <a target="_blank"
                                href="https://www.alipay.com/">
                                <img src='<%=ResolveUrl("../../../Images/about/alipay.gif") %>' /></a>
                <a target="_blank" href="http://www.yeepay.com/index.shtml">
                    <img src='<%=ResolveUrl("../../../Images/about/pay.gif") %>' /></a>
            </p>
        </div>
        <div class="about_right">
            <p>
                Copyright &copy; baixingcai.com Corporation. All rights reserved.</p>
            <p>
                <a href="http://<%=_Site.Url %>" target="_blank">
                    <%=_Site.Company %></a> <a target="_blank" href="http://www.miibeian.gov.cn">粤ICP备<%=_Site.ICPCert %>号</a></p>
            <p>
                提醒：购买彩票有风险，在线投注需谨慎，不向未满18周岁的青少年出售彩票！</p>
        </div>
        <div class="clear">
        </div>
    </div>
</div>
