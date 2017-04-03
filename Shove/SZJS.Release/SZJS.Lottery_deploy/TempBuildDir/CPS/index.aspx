<%@ page language="C#" autoeventwireup="true" inherits="CPS_index, App_Web_k8mvz58m" enableEventValidation="false" %>

<%@ Register Assembly="Shove.Web.UI.4 For.NET 3.5" Namespace="Shove.Web.UI" TagPrefix="ShoveWebUI" %>
<%@ Register Src="UserControls/Foot.ascx" TagName="Foot" TagPrefix="uc1" %>
<%@ Register Src="UserControls/Head.ascx" TagName="Head" TagPrefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>百姓彩票网－兼职推广员联盟|兼职工作|联盟推广|广告联盟</title>
    <meta name="description" content="针对拥有用户访问流量的网站，分配一个指定的用户访问域名链接。网站负责推广此广告链接，联盟通过指定的域名链接产生的用户交易量给网站站长支付分润收益。我们称之为“流量合作分润系统”，以下简称“CPS联盟”。" />
    <meta name="keywords" content="兼职推广员联盟|兼职工作|联盟推广|广告联盟" />
    <link href="Style/jz.css" rel="stylesheet" type="text/css" />

    <script language="javascript" type="text/javascript">
           
 function document.onkeydown() {
        if (event.keyCode == 13)
        {
            event.returnValue = false;
            document.getElementById("btnLogin2").click();
        }
 }
    </script>

</head>
<body>
    <form id="form1" runat="server">
    <uc2:Head ID="Head1" runat="server" />
    <div class="swf">
        <ul>
            <li class="pleft">
                <img src="images/pleft.jpg"></li>
            <li class="pmid">
                <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0"
                    width="911" height="245">
                    <param name="movie" value="images/index.swf" />
                    <param name="quality" value="high" />
                    <param name="menu" value="false" />
                    <param name="wmode" value="transparent" />
                    <embed src="images/index.swf" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer"
                        type="application/x-shockwave-flash" width="911" height="245" />
                </object>
            </li>
            <li class="pright">
                <img src="images/pright.jpg"></li>
        </ul>
    </div>
    <div class="cent">
        <div class="left">
            <div class="login" id="NoLogin" runat="server">
                <div class="title">
                    推广员登录</div>
                <div class="main">
                    <p>
                        <label>
                            用户名:</label>
                        <input id="tbUserName" runat="server" type="text" class="input" /></p>
                    <p>
                        <label>
                            密码:</label>
                        <input id="tbPwd" runat="server" type="password" class="input" /></p>
                    <p>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:CheckBox ID="CheckBox1" Checked="true" runat="server" /><span>记住用户名</span><a
                            href="../UserForgetPassword.aspx">忘记密码</a></p>
                    <div class="xian">
                    </div>
                    <p>
                        <ShoveWebUI:ShoveConfirmButton ID="btnAdd" runat="server" Text="登录" CssClass="submit"
                            OnClick="btnAdd_Click" />
                        <asp:Button ID="btnLogin2" runat="server" OnClick="btnAdd_Click" Style="display: none" />
                        <a href="UserRegCPS.aspx">注册</a></p>
                </div>
            </div>
            <div class="login" id="Longining" runat="server" visible="false">
                <div class="title">
                    <asp:Label ID="lbUserName" runat="server" CssClass="red" Style="color:White"></asp:Label>,您好! 级别:<asp:Label
                        ID="lbUserType" runat="server" Text="推广员"></asp:Label></div>
                <div class="main">
                    <table width="80%" border="0" align="center" cellpadding="0" cellspacing="0" style="height: 100%;">
                        <tr align="center" runat="server" id="trCpsLogin" visible="false" valign="bottom">
                            <td>
                                <a target="_blank" href="Admin/Default.aspx">商家管理后台</a>
                            </td>
                            <td>
                                <a target="_blank" href="Admin/Default.aspx?SubPage=NewsLink.aspx">商家资料</a>
                            </td>
                        </tr>
                        <tr align="center" id="trSupperManager" runat="server" visible="false" valign="bottom">
                            <td colspan="2">
                                <a target="_blank" href="Administrator/Default.aspx">超级管理后台</a>
                            </td>
                        </tr>
                        <tr align="center" id="trApply" runat="server" visible="false" valign="bottom">
                            <td colspan="2">
                                <a target="_top" href="UserRegCPS.aspx">申请推广</a>
                            </td>
                        </tr>
                        <tr align="center" id="trCheck" runat="server" visible="false" valign="bottom">
                            <td colspan="2">
                                状态：审核中
                            </td>
                        </tr>
                        <tr align="center">
                            <td colspan="2" valign="middle">
                                <asp:ImageButton ID="imgbtnLogout" runat="server" ImageUrl="images/exit.gif" OnClick="imgbtnLogout_Click" />
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
            <div class="top10">
                <div class="gongshi">
                    <p>
                        公司名称：<%=_Site.Company%></p>
                    <p>
                        公司地址：<%=_Site.Address%><br />
                    </p>
                    <p>
                        邮政编码：<%=_Site.PostCode%>
                    </p>
                    <p>
                        联系电话：<%=_Site.Telephone%></p>
                    <p>
                        公司传真：<%=_Site.Fax%></p>
                    <p>
                        联系人：<%=_Site.ContactPerson%></p>
                </div>
            </div>
        </div>
        <div class="ce">
            <div class="top" style="height:219px;">
                <div class="tit">
                    <img src="images/about.jpg" /><a href="../Help/aboutus.aspx">更多</a></div>
                <div class="main" style="line-height: 27px; padding-left: 4px; height:165px">
                <p> 百姓彩（ http://www.baixingcai.com）是深圳久盛网络科技有限公司旗下的大型彩票服务网站，拥有一流的团队倾力打造将互联网电子商务和彩票资讯、购买、兑奖、娱乐等一体化服务相结合百姓彩网。为广大彩民提供互联网在线彩票资讯。将高科技的IT技术和网络技术应用到彩票领域，为广大彩民和彩票从业人士提供最新、最好的彩票专业服务。并以“创新、效率...
               
               </p>
 </div>
            </div>
            <div class="top matop" style="height:254px">
                <div class="tit">
                    <img src="images/Guide.jpg" /><a href="../SiteNews/News.aspx" target="_blank">更多</a></div>
                <div class="main" style="height:200px;">
                    <ul>
                        <asp:Repeater ID="RepNews" runat="server">
                            <ItemTemplate>
                                <li><a href="../SiteNews/NewDetail.aspx?id=<%#Eval("ID")%>&TypeName=<%#System.Web.HttpUtility.UrlEncode(Eval("TypeName").ToString())%>" target="_blank">
                                    <%#Shove._String.Cut(Eval("Title").ToString(), 25)%></a></li>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>
                </div>
            </div>
        </div>
        <div class="right">
            <div class="top" style="height:219px">
                <div class="tit">
                    <img src="images/News.jpg" /><a href="../SiteNews/News.aspx" target="_blank">更多</a></div>
                <div class="main" style="height:165px;">
                    <ul>
                        <asp:Repeater ID="RepZhi" runat="server">
                            <ItemTemplate>
                                <li><a href="../SiteNews/NewDetail.aspx?id=<%#Eval("ID")%>&TypeName=<%#System.Web.HttpUtility.UrlEncode(Eval("TypeName").ToString())%>" target="_blank">
                                    <%#Shove._String.Cut(Eval("Title").ToString(), 21)%></a></li>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>
                </div>
            </div>
            <div class="top matop" style="height:254px">
                <div class="tit" style="height: 0px;">
                </div>
                <div class="main" style="height:252px;">
                    <table>
                        <thead>
                            <tr>
                                <th colspan="3">
                                    推广员排名
                                </th>
                            </tr>
                            <tr>
                                <td>
                                    排名
                                </td>
                                <td>
                                    用户名
                                </td>
                                <td>
                                    佣金
                                </td>
                            </tr>
                        </thead>
                        <tbody>
                            <asp:Repeater ID="Repeater1" runat="server">
                                <ItemTemplate>
                                    <tr>
                                        <td>
                                            <%# Container.ItemIndex + 1%>
                                        </td>
                                        <td>
                                            <%#Eval("Name")%>
                                        </td>
                                        <td>
                                            <%#Eval("Bonus")%>
                                        </td>
                                    </tr>
                                </ItemTemplate>
                            </asp:Repeater>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <div style="clear: both">
    </div>
    <div class="fooder">
        <h1>
            申请流程：</h1>
        <span>1注册推广员</span><em></em> <span>2获取广告链接</span><em></em> <span>3选择广告样式</span><em></em>
        <span>4广告上线推广</span><em></em> <span>5查询佣金</span><em></em> <span>6提起佣金</span>
    </div>
    <uc1:Foot ID="Foot1" runat="server" />
    </form>
</body>
</html>
