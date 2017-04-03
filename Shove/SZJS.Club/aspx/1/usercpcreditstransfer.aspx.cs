﻿using System;
using System.Data;
using System.Data.SqlClient;
using Discuz.Common;
using Discuz.Forum;
using Discuz.Web.UI;
using Discuz.Config;
using Discuz.Entity;

namespace Discuz.Web
{
    /// <summary>
    /// 金币转账
    /// </summary>
    public partial class usercpcreditstransfer : PageBase
    {
        #region 页面变量

        /// <summary>
        /// 具有兑换比率的可交易金币策略
        /// </summary>
        public DataTable extcreditspaylist;

        /// <summary>
        /// 交易税
        /// </summary>
        public float creditstax;

        /// <summary>
        /// 当前用户信息
        /// </summary>
        public UserInfo user = new UserInfo();

        /// <summary>
        /// 可用的金币名称列表
        /// </summary>
        public string[] score;

        #endregion

        protected override void ShowPage()
        {
            pagetitle = "用户控制面板";

            creditstax = Scoresets.GetCreditsTax();

            if (userid == -1)
            {
                AddErrLine("你尚未登录");

                return;
            }
            user = Discuz.Forum.Users.GetUserInfo(userid);

            if (DNTRequest.IsPost())
            {
                if (ForumUtils.IsCrossSitePost())
                {
                    AddErrLine("您的请求来路不正确，无法提交。如果您安装了某种默认屏蔽来路信息的个人防火墙软件(如 Norton Internet Security)，请设置其不要禁止来路信息后再试。");
                    return;
                }

                if (Utils.MD5(DNTRequest.GetString("password")) != password)
                {
                    AddErrLine("密码错误");
                    return;
                }

                int paynum = DNTRequest.GetInt("paynum", 0);
                if (paynum <= 0)
                {
                    AddErrLine("数量必须是大于等于0的整数");
                    return;
                }

                int fromto = Discuz.Forum.Users.GetUserID(DNTRequest.GetString("fromto").Trim());
                if (fromto == -1)
                {
                    AddErrLine("指定的转帐接受人不存在");
                    return;
                }

                int extcredits = DNTRequest.GetInt("extcredits", 0);
                if (extcredits < 1 || extcredits > 8)
                {
                    AddErrLine("请正确选择要转帐的金币类型!");
                    return;
                }

                //对转帐后的金币增减进行修改设置
                UserExtcreditsInfo extcreditsinfo = Scoresets.GetScoreSet(extcredits);
                if (extcreditsinfo.Name.Trim() == "")
                {
                    AddErrLine("错误的输入!");
                    return;
                }


                //UserInfo __userinfo = Discuz.Forum.Users.GetUserInfo(userid);
                if ((Discuz.Forum.Users.GetUserExtCredits(userid, extcredits) - paynum) < Scoresets.GetTransferMinCredits())
                {
                    AddErrLine(string.Format("抱歉, 您的 \"{0}\" 不足.系统当前规定转帐余额不得小于{1}", extcreditsinfo.Name, Scoresets.GetTransferMinCredits().ToString()));
                    return;
                }

                //计算并更新2个扩展金币的新值
                float topaynum = (float) Math.Round(paynum*(1 - creditstax), 2);
                Discuz.Forum.Users.UpdateUserExtCredits(userid, extcredits, paynum * -1);
                Discuz.Forum.Users.UpdateUserExtCredits(fromto, extcredits, topaynum);
                CreditsLogs.AddCreditsLog(userid, fromto, extcredits, extcredits, paynum, topaynum, Utils.GetDateTime(),
                                          2);

                SetUrl("usercpcreaditstransferlog.aspx");
                SetMetaRefresh();
                SetShowBackLink(false);
                AddMsgLine("金币转帐完毕, 正在返回金币兑换与转帐记录");
            }

            score = Scoresets.GetValidScoreName();
            extcreditspaylist = Scoresets.GetScorePaySet(1);
        }

        override protected void OnLoad(EventArgs e)
        {

            /* 
                This page was created by Discuz!NT Template Engine at 2008/10/13 15:54:06.
                本页面代码由Discuz!NT模板引擎生成于 2008/10/13 15:54:06. 
            */

            base.OnLoad(e);


            templateBuilder.Append("<!--header end-->\r\n");
            templateBuilder.Append("<div id=\"foruminfo\">\r\n");
            templateBuilder.Append("	<div id=\"nav\">\r\n");
            templateBuilder.Append("		<a href=\"" + config.Forumurl.ToString().Trim() + "\" class=\"home\">" + config.Forumtitle.ToString().Trim() + "</a>  &raquo; <a href=\"usercp.aspx\">用户中心</a>  &raquo; <strong>金币转帐</strong>\r\n");
            templateBuilder.Append("	</div>\r\n");
            templateBuilder.Append("	<div id=\"headsearch\">\r\n");
            templateBuilder.Append("		<div id=\"search\">\r\n");

            templateBuilder.Append("			<form method=\"post\" action=\"search.aspx\" target=\"_blank\" onsubmit=\"bind_keyword(this);\">\r\n");
            templateBuilder.Append("				<input type=\"hidden\" name=\"poster\" />\r\n");
            templateBuilder.Append("				<input type=\"hidden\" name=\"keyword\" />\r\n");
            templateBuilder.Append("				<input type=\"hidden\" name=\"type\" value=\"\" />\r\n");
            templateBuilder.Append("				<input id=\"keywordtype\" type=\"hidden\" name=\"keywordtype\" value=\"0\"/>\r\n");
            templateBuilder.Append("				<div id=\"searchbar\">\r\n");
            templateBuilder.Append("					<dl>\r\n");
            templateBuilder.Append("						<dt id=\"quicksearch\" class=\"s2\" onclick=\"showMenu(this.id, false);\" onmouseover=\"MouseCursor(this);\">帖子标题</dt>\r\n");
            templateBuilder.Append("						<dd class=\"textinput\"><input type=\"text\" name=\"keywordf\" value=\"\" class=\"text\"/></dd>\r\n");
            templateBuilder.Append("						<dd><input name=\"searchsubmit\" type=\"submit\" value=\"\" class=\"s3\"/></dd>\r\n");
            templateBuilder.Append("					</dl>\r\n");
            templateBuilder.Append("				</div>\r\n");
            templateBuilder.Append("			</form>\r\n");
            templateBuilder.Append("			<script type=\"text/javascript\">function bind_keyword(form){if(form.keywordtype.value=='8'){form.keyword.value='';form.poster.value=form.keywordf.value; } else { form.poster.value=''; form.keyword.value=form.keywordf.value;if(form.keywordtype.value == '2')form.type.value = 'spacepost';if(form.keywordtype.value == '3')form.type.value = 'album';}}</" + "script>\r\n");


            templateBuilder.Append("		</div>\r\n");
            templateBuilder.Append("	</div>\r\n");
            templateBuilder.Append("</div>\r\n");
            templateBuilder.Append("<!--主体-->\r\n");
            templateBuilder.Append("<div class=\"controlpannel\">\r\n");

            templateBuilder.Append("<div class=\"pannelmenu\">\r\n");

            if (userid > 0)
            {


                if (pagename == "usercptopic.aspx" || pagename == "usercppost.aspx" || pagename == "usercpdigest.aspx" || pagename == "usercpprofile.aspx"


                  || pagename == "usercpnewpassword.aspx" || pagename == "usercppreference.aspx")
                {

                    templateBuilder.Append("	   <a href=\"usercpprofile.aspx\" class=\"current\"><span>个人设置</span></a>\r\n");

                }
                else
                {

                    templateBuilder.Append("	   <a href=\"usercpprofile.aspx\">个人设置</a>\r\n");

                }	//end if


                if (pagename == "usercpinbox.aspx" || pagename == "usercpsentbox.aspx" || pagename == "usercpdraftbox.aspx" || pagename == "usercppostpm.aspx" || pagename == "usercpshowpm.aspx" || pagename == "usercppmset.aspx")
                {

                    templateBuilder.Append("	   <a href=\"usercpinbox.aspx\" class=\"current\"><span>短消息</span></a>\r\n");

                }
                else
                {

                    templateBuilder.Append("	   <a href=\"usercpinbox.aspx\">短消息</a>\r\n");

                }	//end if


                if (pagename == "usercpsubscribe.aspx")
                {

                    templateBuilder.Append("	   <a href=\"usercpsubscribe.aspx\" class=\"current\"><span>收藏夹</span></a>\r\n");

                }
                else
                {

                    templateBuilder.Append("	   <a href=\"usercpsubscribe.aspx\">收藏夹</a>\r\n");

                }	//end if


                if (pagename == "usercpcreditspay.aspx" || pagename == "usercpcreditstransfer.aspx" || pagename == "usercpcreditspayoutlog.aspx" || pagename == "usercpcreditspayinlog.aspx"


                   || pagename == "usercpcreaditstransferlog.aspx")
                {

                    templateBuilder.Append("       <a href=\"usercpcreditspay.aspx\" class=\"current\"><span>金币交易</span></a>\r\n");

                }
                else
                {

                    templateBuilder.Append("       <a href=\"usercpcreditspay.aspx\">金币交易</a>\r\n");

                }	//end if


                if (pagename == "usercpforumsetting.aspx")
                {

                    templateBuilder.Append("			<a href=\"usercpforumsetting.aspx\" class=\"current\"><span>论坛设置</span></a>\r\n");

                }
                else
                {

                    templateBuilder.Append("			<a href=\"usercpforumsetting.aspx\">论坛设置</a>\r\n");

                }	//end if
            }	//end if

            templateBuilder.Append("	</div>\r\n");


            templateBuilder.Append("	<div class=\"pannelcontent\">\r\n");
            templateBuilder.Append("		<div class=\"pcontent\">\r\n");
            templateBuilder.Append("			<div class=\"panneldetail\">\r\n");

            templateBuilder.Append("<div class=\"panneltabs\">\r\n");

            if (userid > 0)
            {

                templateBuilder.Append("	<a href=\"usercpcreditspay.aspx\"\r\n");

                if (pagename == "usercpcreditspay.aspx")
                {

                    templateBuilder.Append("		class=\"current\"\r\n");

                }	//end if

                templateBuilder.Append(">金币兑换</a>\r\n");
                templateBuilder.Append("	<a href=\"usercpcreditstransfer.aspx\"\r\n");

                if (pagename == "usercpcreditstransfer.aspx")
                {

                    templateBuilder.Append("		class=\"current\"\r\n");

                }	//end if

                templateBuilder.Append(">金币转帐</a>\r\n");
                templateBuilder.Append("	<a href=\"usercpcreditspayoutlog.aspx\"\r\n");

                if (pagename == "usercpcreditspayoutlog.aspx")
                {

                    templateBuilder.Append("		class=\"current\"\r\n");

                }	//end if

                templateBuilder.Append(">支出记录</a>\r\n");
                templateBuilder.Append("	<a href=\"usercpcreditspayinlog.aspx\"\r\n");

                if (pagename == "usercpcreditspayinlog.aspx")
                {

                    templateBuilder.Append("		class=\"current\"\r\n");

                }	//end if

                templateBuilder.Append(">收入记录</a>\r\n");
                templateBuilder.Append("	<a href=\"usercpcreaditstransferlog.aspx\"\r\n");

                if (pagename == "usercpcreaditstransferlog.aspx")
                {

                    templateBuilder.Append("		class=\"current\"\r\n");

                }	//end if

                templateBuilder.Append(">兑换与转帐记录</a>\r\n");

            }	//end if

            templateBuilder.Append("</div>	\r\n");


            templateBuilder.Append("				<div class=\"pannelbody\">\r\n");
            templateBuilder.Append("					<div class=\"pannellist\">\r\n");

            if (page_err == 0)
            {


                if (ispost)
                {


                    templateBuilder.Append("<div class=\"box message\">\r\n");
                    templateBuilder.Append("	<h1>彩友提示信息</h1>\r\n");
                    templateBuilder.Append("	<p>" + msgbox_text.ToString() + "</p>\r\n");

                    if (msgbox_url != "")
                    {

                        templateBuilder.Append("	<p><a href=\"" + msgbox_url.ToString() + "\">如果浏览器没有转向, 请点击这里.</a></p>\r\n");

                    }	//end if

                    templateBuilder.Append("</div>\r\n");
                    templateBuilder.Append("</div>\r\n");



                }
                else
                {

                    templateBuilder.Append("						<form action=\"\" method=\"post\" ID=\"Form1\">\r\n");
                    templateBuilder.Append("						<ul>\r\n");
                    templateBuilder.Append("							<li class=\"paychange\"><strong>当前帐户</strong></li>\r\n");
                    templateBuilder.Append("							<li class=\"paychange\">\r\n");

                    if (score[1].ToString().Trim() != "")
                    {

                        templateBuilder.Append("								" + score[1].ToString().Trim() + ": <em>" + user.Extcredits1.ToString().Trim() + "</em>&nbsp;&nbsp;\r\n");

                    }	//end if


                    if (score[2].ToString().Trim() != "")
                    {

                        templateBuilder.Append("								" + score[2].ToString().Trim() + ": <em>" + user.Extcredits2.ToString().Trim() + "</em>&nbsp;&nbsp;\r\n");

                    }	//end if


                    if (score[3].ToString().Trim() != "")
                    {

                        templateBuilder.Append("								" + score[3].ToString().Trim() + ": <em>" + user.Extcredits3.ToString().Trim() + "</em>&nbsp;&nbsp;\r\n");

                    }	//end if


                    if (score[4].ToString().Trim() != "")
                    {

                        templateBuilder.Append("								" + score[4].ToString().Trim() + ": <em>" + user.Extcredits4.ToString().Trim() + "</em>&nbsp;&nbsp;\r\n");

                    }	//end if


                    if (score[5].ToString().Trim() != "")
                    {

                        templateBuilder.Append("								" + score[5].ToString().Trim() + ": <em>" + user.Extcredits5.ToString().Trim() + "</em>&nbsp;&nbsp;\r\n");

                    }	//end if


                    if (score[6].ToString().Trim() != "")
                    {

                        templateBuilder.Append("								" + score[6].ToString().Trim() + ": <em>" + user.Extcredits6.ToString().Trim() + "</em>&nbsp;&nbsp;\r\n");

                    }	//end if


                    if (score[7].ToString().Trim() != "")
                    {

                        templateBuilder.Append("								" + score[7].ToString().Trim() + ": <em>" + user.Extcredits7.ToString().Trim() + "</em>&nbsp;&nbsp;\r\n");

                    }	//end if


                    if (score[8].ToString().Trim() != "")
                    {

                        templateBuilder.Append("								" + score[8].ToString().Trim() + ": <em>" + user.Extcredits8.ToString().Trim() + "</em>&nbsp;&nbsp;\r\n");

                    }	//end if

                    templateBuilder.Append("							</li>\r\n");
                    templateBuilder.Append("						</ul>\r\n");
                    templateBuilder.Append("						<label for=\"password\">用户密码:</label>\r\n");
                    templateBuilder.Append("						<input name=\"password\" type=\"password\" id=\"password\" size=\"20\"/>\r\n");
                    templateBuilder.Append("						<br/>\r\n");
                    templateBuilder.Append("						<label for=\"paynum\">将数量:</label>\r\n");
                    templateBuilder.Append("						<input name=\"paynum\" type=\"text\" id=\"paynum\" value=\"100\" size=\"10\" />&nbsp;&nbsp;的&nbsp;&nbsp;\r\n");
                    templateBuilder.Append("						<select name=\"extcredits\" id=\"extcredits\" class=\"colorblue\"  style=\"width:120px;\">\r\n");
                    templateBuilder.Append("						<option value=\"\">请选择</option>\r\n");

                    int extcredits__loop__id = 0;
                    foreach (DataRow extcredits in extcreditspaylist.Rows)
                    {
                        extcredits__loop__id++;

                        templateBuilder.Append("						<option value=\"" + extcredits["id"].ToString().Trim() + "\">" + extcredits["name"].ToString().Trim() + "</option>\r\n");

                    }	//end loop

                    templateBuilder.Append("						</select>\r\n");
                    templateBuilder.Append("						<br />\r\n");
                    templateBuilder.Append("						<label for=\"fromto\">转帐给用户:</label>\r\n");
                    templateBuilder.Append("						<input name=\"fromto\" type=\"text\" id=\"fromto\" size=\"20\" />\r\n");
                    templateBuilder.Append("						<div class=\"hintinfo\">转帐时将根据论坛当前设置(" + creditstax.ToString() + ")扣除交易税</div>\r\n");
                    templateBuilder.Append("						<input type=\"submit\" name=\"Submit\" value=\"确定\" ID=\"Submit1\"/>\r\n");
                    templateBuilder.Append("						&nbsp;&nbsp;\r\n");
                    templateBuilder.Append("						<input type=\"button\" name=\"sbutton\" value=\" 计 算 \" onclick=\"alert('接收者的所得为 '+this.form.extcredits.options[this.form.extcredits.selectedIndex].text + ':'+Math.round(this.form.paynum.value*(1-" + creditstax.ToString() + ")*100)/100)\" ID=\"Button1\" />\r\n");
                    templateBuilder.Append("						</form>\r\n");

                }	//end if

                templateBuilder.Append("						</div>\r\n");

            }
            else
            {


                templateBuilder.Append("<div class=\"box message\">\r\n");
                templateBuilder.Append("	<h1>错误显示</h1>\r\n");
                templateBuilder.Append("	<p>" + msgbox_text.ToString() + "</p>\r\n");
                templateBuilder.Append("	<p class=\"errorback\">\r\n");
                templateBuilder.Append("		<script type=\"text/javascript\">\r\n");
                templateBuilder.Append("			if(" + msgbox_showbacklink.ToString() + ")\r\n");
                templateBuilder.Append("			{\r\n");
                templateBuilder.Append("				document.write(\"<a href=\\\"" + msgbox_backlink.ToString() + "\\\">返回上一步</a> &nbsp; &nbsp;|  \");\r\n");
                templateBuilder.Append("			}\r\n");
                templateBuilder.Append("		</" + "script>\r\n");
                templateBuilder.Append("		&nbsp; &nbsp; <a href=\"forumindex.aspx\">论坛首页</a>\r\n");

                if (usergroupid == 7)
                {

                    templateBuilder.Append("		 |&nbsp; &nbsp; <a href=\"register.aspx\">注册</a>\r\n");

                }	//end if

                templateBuilder.Append("	</p>\r\n");
                templateBuilder.Append("</div>\r\n");



            }	//end if

            templateBuilder.Append("			  </div>\r\n");
            templateBuilder.Append("			</div>\r\n");
            templateBuilder.Append("		</div>\r\n");
            templateBuilder.Append("	</div>\r\n");
            templateBuilder.Append("</div>\r\n");
            templateBuilder.Append("<!--主体-->\r\n");
            templateBuilder.Append("</div>\r\n");


            if (footerad != "")
            {

                templateBuilder.Append("<!--底部广告显示-->\r\n");
                templateBuilder.Append("<div id=\"ad_footerbanner\">" + footerad.ToString() + "</div>\r\n");
                templateBuilder.Append("<!--底部广告结束-->\r\n");

            }	//end if

            templateBuilder.Append(Discuz.Web.UI.PageElement.Bottom);
            templateBuilder.Append("<ul class=\"popupmenu_popup headermenu_popup\" id=\"stats_menu\" style=\"display: none\">\r\n");
            templateBuilder.Append("	<li><a href=\"stats.aspx\">基本状况</a></li>\r\n");

            if (config.Statstatus == 1)
            {

                templateBuilder.Append("	<li><a href=\"stats.aspx?type=views\">流量统计</a></li>\r\n");
                templateBuilder.Append("	<li><a href=\"stats.aspx?type=client\">客户软件</a></li>\r\n");

            }	//end if

            templateBuilder.Append("	<li><a href=\"stats.aspx?type=posts\">发帖量记录</a></li>\r\n");
            templateBuilder.Append("	<li><a href=\"stats.aspx?type=forumsrank\">版块排行</a></li>\r\n");
            templateBuilder.Append("	<li><a href=\"stats.aspx?type=topicsrank\">主题排行</a></li>\r\n");
            templateBuilder.Append("	<li><a href=\"stats.aspx?type=postsrank\">发帖排行</a></li>\r\n");
            templateBuilder.Append("	<li><a href=\"stats.aspx?type=creditsrank\">金币排行</a></li>\r\n");

            if (config.Oltimespan > 0)
            {

                templateBuilder.Append("	<li><a href=\"stats.aspx?type=onlinetime\">在线时间</a></li>\r\n");

            }	//end if

            templateBuilder.Append("</ul>\r\n");
            templateBuilder.Append("<ul class=\"popupmenu_popup headermenu_popup\" id=\"my_menu\" style=\"display: none\">\r\n");
            templateBuilder.Append("	<li><a href=\"mytopics.aspx\">我的主题</a></li>\r\n");
            templateBuilder.Append("	<li><a href=\"myposts.aspx\">我的帖子</a></li>\r\n");
            templateBuilder.Append("	<li><a href=\"search.aspx?posterid=" + userid.ToString() + "&amp;type=digest\">我的精华</a></li>\r\n");
            templateBuilder.Append("	<li><a href=\"myattachment.aspx\">我的附件</a></li>\r\n");

            if (userid > 0)
            {

                templateBuilder.Append("	<li><a href=\"usercpsubscribe.aspx\">我的收藏</a></li>\r\n");

            }	//end if

            templateBuilder.Append("	<script type=\"text/javascript\" src=\"javascript/mymenu.js\"></" + "script>\r\n");
            templateBuilder.Append("</ul>\r\n");
            templateBuilder.Append("<ul class=\"popupmenu_popup\" id=\"viewpro_menu\" style=\"display: none\">\r\n");

            if (useravatar != "")
            {

                templateBuilder.Append("		<img src=\"" + useravatar.ToString() + "\"/>\r\n");

            }	//end if

            aspxrewriteurl = this.UserInfoAspxRewrite(userid);

            templateBuilder.Append("	<li class=\"popuser\"><a href=\"" + aspxrewriteurl.ToString() + "\">我的资料</a></li>\r\n");


            templateBuilder.Append("</ul>\r\n");
            templateBuilder.Append("<div id=\"quicksearch_menu\" class=\"searchmenu\" style=\"display: none;\">\r\n");
            templateBuilder.Append("	<div onclick=\"document.getElementById('keywordtype').value='0';document.getElementById('quicksearch').innerHTML='帖子标题';document.getElementById('quicksearch_menu').style.display='none';\" onmouseover=\"MouseCursor(this);\">帖子标题</div>\r\n");

            templateBuilder.Append("	<div onclick=\"document.getElementById('keywordtype').value='8';document.getElementById('quicksearch').innerHTML='作&nbsp;&nbsp;者';document.getElementById('quicksearch_menu').style.display='none';\" onmouseover=\"MouseCursor(this);\">作&nbsp;&nbsp;者</div>\r\n");
            templateBuilder.Append("</div>\r\n");



            templateBuilder.Append("</div>\r\n");
            templateBuilder.Append("</body>\r\n");
            templateBuilder.Append("</html>\r\n");



            Response.Write(templateBuilder.ToString());
        }
    } //class end
}