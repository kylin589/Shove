<%@ Control Language="C#" AutoEventWireup="true" CodeFile="UserMyIcaile.ascx.cs"
    Inherits="Home_Room_UserControls_UserMyIcaile" %>

<script type="text/javascript">
    var lastCheckMenu = null;

    function mOver(obj, styleClass) {
        if (obj != lastCheckMenu) {
            obj.className = styleClass;
        }
    }

    function mOut(obj, styleClass) {
        if (obj != lastCheckMenu) {
            obj.className = styleClass;
        }
    }
    function isLoginsas() {
        if (Home_Room_UserControls_UserMyIcaile.isLoginsas().value == null) {
            return false;
        }
        else {
            return true;
        }
    }

    function GetBackUrl(url) {
        return Home_Room_UserControls_UserMyIcaile.GetBackUrl(url).value;
    }



    function mClick(obj, url, styleClass, isNeedLogin) {
        var result;

        if (!isLoginsas()) {
            if (url == "") {
                if (lastCheckMenu != null) {
                    lastCheckMenu.className = "mOut";
                }

                obj.className = styleClass;
                lastCheckMenu = obj;
            }
            else {
                if (isNeedLogin) {
                    location.href = "/UserLogin.aspx?Rollback=" + GetBackUrl(url);
                }

                if (result || isNeedLogin == false) {
                    if (lastCheckMenu != null) {
                        lastCheckMenu.className = "mOut";
                    }

                    obj.className = styleClass;
                    lastCheckMenu = obj;
                }
            }
        }
        else {
            if (url == "") {
                if (lastCheckMenu != null) {
                    lastCheckMenu.className = "mOut";
                }

                obj.className = styleClass;
                lastCheckMenu = obj;
            }
            else {

                if (isNeedLogin) {
                    //登陆后..
                    result = CreateLogin("document.mainFrame.location.href='" + url + "';");
                }

                if (result || isNeedLogin == false) {
                    if (lastCheckMenu != null) {
                        lastCheckMenu.className = "mOut";
                    }

                    obj.className = styleClass;
                    lastCheckMenu = obj;
                    //登陆后..
                    document.getElementById("mainFrame").src = url;
                }
            }
        }

    }


    function mOver(obj, type) {
        if (type == 1) {
            obj.style.textDecoration = "none";
            obj.style.color = "#FF0065";
        }
        else {
            obj.style.textDecoration = "none";
            obj.style.color = "#226699";


        }
    }

    function clickTabMenu(obj, backgroundImage, tabId) {
        var tabMenu = obj.offsetParent.cells;
        var tabContent = document.getElementById(tabId).cells;
        for (var i = 0; i < tabMenu.length; i++) {
            if (obj == tabMenu[i]) {
                obj.style.backgroundImage = backgroundImage;
                tabContent[i].style.display = "";
            }
            else {
                tabMenu[i].style.backgroundImage = "";
                tabContent[i].style.display = "none";
            }
        }
    }
    
    
</script>

<div class="lefts">
    <ul>
        <li>
            <h1>
                我的账户</h1>
        </li>
        <li><a href="<%=ResolveUrl("../OnlinePay/Default.aspx") %>" target="_parent">帐户充值</a></li>
        <li><a href="<%=ResolveUrl("~/Home/Room/Distill.aspx") %>" target="_parent">我要提款</a></li>
        <li><a href="<%=ResolveUrl("~/Home/Room/ViewAccount.aspx") %>" target="_parent">账户全览</a></li>
        <li><a href="<%=ResolveUrl("~/Home/Room/AccountDetail.aspx") %>" target="_parent">账户交易明细</a></li>
        <li>
            <h1>
                我的彩票记录</h1>
        </li>
        <li><a href="<%=ResolveUrl("~/Home/Room/Invest.aspx") %>" target="_parent">中奖查询</a></li>
        <li><a href="<%=ResolveUrl("~/Home/Room/FollowSchemeHistory.aspx") %>" target="_parent">
            我的自动跟单</a></li>
        <li><a href="<%=ResolveUrl("~/Home/Room/ViewChase.aspx") %>" target="_parent">我的追号</a></li>
        <li><a href="<%=ResolveUrl("~/Home/Room/Message.aspx") %>" target="_parent">我的站内信</a></li>
        <li>
            <h1>
                我的积分</h1>
        </li>
        <li><a href="<%=ResolveUrl("~/Home/Room/ScoringDetail.aspx") %>" target="_parent">我的积分明细</a></li>
        <li><a href="<%=ResolveUrl("~/Home/Room/ScoringChange.aspx") %>" target="_parent">积分兑换</a></li>
        <li><a href="<%=ResolveUrl("~/Home/Room/Commend.aspx") %>" target="_parent">推荐好友获取积分</a></li>
        <li>
            <h1>
                我的资料</h1>
        </li>
        <li><a href="<%=ResolveUrl("~/Home/Room/UserEdit.aspx") %>" target="_parent">修改基本资料</a></li>
        <li><a href="<%=ResolveUrl("~/Home/Room/UserMobileBind.aspx") %>" target="_parent">手机验证</a></li>
        <li><a href="<%=ResolveUrl("~/Home/Room/UserEmailBind.aspx") %>" target="_parent">邮箱激活</a></li>
        <li><a href="<%=ResolveUrl("~/Home/Room/EditPassWord.aspx") %>" target="_parent">修改密码</a></li>
        <li><a href="<%=ResolveUrl("~/Home/Room/SafeSet.aspx") %>?FromUrl='UserEdit.aspx'" target="_parent">设置安全问题</a></li>
        <li><a href="<%=ResolveUrl("~/Home/Room/BindBankCard.aspx") %>" target="_parent">绑定银行卡</a></li>
        <li><a href="<%=ResolveUrl("~/Home/Room/BindAlipay.aspx") %>" target="_parent">绑定支付宝</a></li>
        <li><a href="<%=ResolveUrl("~/Home/Room/UserQQBind.aspx") %>" target="_parent">绑定QQ号码</a></li>
        <li><a href="<%=ResolveUrl("~/Home/Room/ExpertsReg.aspx") %>" target="_parent">专家申请</a></li>
        <li id="Exper1" runat="server" visible="false"><a href="<%=ResolveUrl("~/Home/Room/ExpertsCommendsAdd.aspx") %>"
            target="_parent">发表推荐号码</a></li>
        <li id="Exper2" runat="server" visible="false"><a href="<%=ResolveUrl("~/Home/Room/ExpertsCommendsList.aspx") %>"
            target="_parent">我的荐号列表</a></li>
        <li id="Exper3" runat="server" visible="false"><a href="<%=ResolveUrl("~/Home/Room/ExpertsListSelf.aspx") %>"
            target="_parent">我的专家列表</a></li>
        <li><a href="<%=ResolveUrl("~/Home/Room/OnlinePay/CardPassword/Default.aspx") %>"
            target="_parent">卡密(电子优惠券)</a></li>
        <br />
        <br />
    </ul>
    <div class="lefts" id="lefts">
    </div>
</div>
