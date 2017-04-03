<%@ control language="C#" autoeventwireup="true" inherits="CPS_UserControls_Foot, App_Web_euv2hyal" %>
<link href="../Style/jz.css" rel="stylesheet" type="text/css" />
<div class="dibu">
    <p>
        <a href='<%=ResolveUrl("../UserRegCPS.aspx") %>'>用户注册</a><span>|</span> <a href='<%=ResolveUrl("../../Help/aboutus.aspx") %>'>
            关于我们</a><span>|</span><a href='<%=ResolveUrl("../../Help/contact.aspx") %>'> 联系我们</a><span>|</span>
        <a href='<%=ResolveUrl("../../Help/join.aspx") %>'>网站加盟</a><span>|</span> <a href='<%=ResolveUrl("../../Help/sitemap.aspx") %>'>
            站点地图</a><span>|</span> <a href='<%=ResolveUrl("../../Help/declare.aspx") %>'>法律声明</a>
    </p>
    <p>
        版权所有：<%=_Site.Company %>
        增值电信业务经营许可证：粤B1-20070214 ICP备案：粤ICP备<%=_Site.ICPCert %>号<br />
        公司地址：<%=_Site.Address %>
        客服热线：<%=_Site.Telephone %>
        邮政编码：<%=_Site.PostCode %>
        <br />
        提醒：购买彩票有风险，在线投注需谨慎，不向未满18周岁的青少年出售彩票！
    </p>
</div>
