﻿<%@ page language="C#" autoeventwireup="true" inherits="Help_play2, App_Web_85hasknr" enableEventValidation="false" %>

<%@ Register Src="../UserControls/Head.ascx" TagName="Head" TagPrefix="uc1" %>
<%@ Register Src="../Home/Room/UserControls/WebFoot.ascx" TagName="WebFoot" TagPrefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD Xhtml 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>福彩3D玩法规则</title>
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
            <a href="help.aspx">
                <img alt="" src="Images/help_03.jpg" /></a>
            <div class="helpCon-left">
                <ul>
                    <li><a href="faq.aspx">常见问题解答</a></li>
                    <li><a href="hemai.aspx">合买跟单 </a></li>
                    <li><a href="zhuce.aspx">注册登录</a></li>
                    <li><a style="color: #f00; font-weight: bold;" href="play.aspx">彩种玩法</a></li>
                    <li><a href="fukuang.aspx">预存付款</a></li>
                    <li><a href="zhifu.aspx">网上支付</a></li>
                    <li><a href="zhuihao.aspx">追号功能 </a></li>
                    <li><a href="pj.aspx">如何派奖</a></li>
                    <li><a href="tk.aspx">如何提款</a></li>
                    <li><a href="bd.aspx">方案保底</a></li>
                    <li><a href="zd.aspx">方案置顶</a></li>
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
                            <span>福彩3D玩法规则</span></h1>
                    </div>
                </div>
            </div>
            <div class="index_content">
                <div class="f12">
                    <p>
                        <strong>第一章&nbsp; 总则</strong></p>
                    <p>
                        第一条：根据中国福利彩票发行中心颁发的《中国福利彩票发行规则》草案，结合计算机网络技术和数字型彩票的特点，制定本细则。</p>
                    <p>
                        第二条：“中国福利彩票”由中国福利彩票发行中心（以下简称中彩中心）统一发行。</p>
                    <p>
                        第三条：经中彩中心授权，福彩3D采用计算机网络系统发行销售，定期开奖。</p>
                    <p>
                        第四条：福彩3D实行自愿购买，凡投注者均被视为同意遵守本细则。</p>
                    <p>
                        <strong></strong>&nbsp;</p>
                    <p>
                        <strong>第二章&nbsp; 发行</strong></p>
                    <p>
                        第五条：中国福利彩票(福彩3D)的发行权属中彩中心，主要包括：中国福利彩票名称及标识的专有权，各地发行额度的分配权和调控权、各项资金比例的确定和调整权，投注单和彩票专用纸的监制权等。</p>
                    <p>
                        第六条：福利彩票发行中心按照中彩中心“统一玩法规则、统一硬件标准、统一运行软件、统一管理模式、统一实时监控”的原则，建立电脑彩票销售系统，接受中彩中心的监控。</p>
                    <p>
                        第七条：福利彩票发行中心在承销区域内统一设置投注站，并核发销售许可证。投注站由福利彩票发行中心所辖区县设立的管理处管理，按统一制式标准建设，展示销售许可证，接受公众监督。</p>
                    <p>
                        <strong></strong>&nbsp;</p>
                    <p>
                        <strong>第三章&nbsp; 投注</strong></p>
                    <p>
                        第八条：“福彩3D”彩票是以一个3位自然数为投注号码的彩票，投注者从000到999的范围内选择一个3位数进行投注。所中奖金采用固定奖金结构。</p>
                    <p>
                        第九条：投注站投注为有纸投注，投注号码经投注机打印为对奖凭证，交投注者保存，此对奖凭证即为“福彩3D”彩票；电话投注为无纸投注，投注者通过电话进行投注，投注方法另行规定。</p>
                    <p>
                        第十条：自选号码投注即将投注者选定的号码输入投注机进行投注；机选号码投注即由投注机随机产生投注号码进行投注。</p>
                    <p>
                        第十一条：当期投注是指只购买当期彩票；多期投注是指购买从当期起连续若干期的彩票。</p>
                    <p>
                        第十二条：“福彩3D”每注投注金额为人民币2元。每张投注单设5个投注区，每个投注区填写一个投注号码，每个投注号码的投注注数可选择1、2、3、4、5、10、20和50注。销售期号以开奖日界定，按日历年度编排。</p>
                    <p>
                        第十三条：“福彩3D”每期的每个号码的投注注数，根据市场销售情况限量发行，由福利彩票发行中心根据实际情况确定具体的限额。</p>
                    <p>
                        第十四条：“福彩3D”彩票可以通过投注站投注和电话投注，投注方式分为当期投注和多期投注，单选投注和组选投注。</p>
                    <p>
                        第十五条：单选投注是将一组投注号码以唯一的排列方式进行单注投注。第十六条：组选投注是将投注号码的所有排列方式只作为一注投注号码进行的单注投注。“福彩3D”投注时，如果一注组选号码的3个数字各不相同，则有6种不同的排列方式，因而就有6个中奖机会，这种组选投注方式简称“组选6”；如果一注组选号码的3个数字有两个数字相同，则有3种不同的排列方式，因而就有3个中奖机会，这种组选投注方式简称“3D”。</p>
                    <p>
                        “福彩3D”投注类型举例如下：<br />
                    </p>
                    <p class="f_center">
                        <img alt="3D游戏规则" src="http://img4.cache.netease.com/help/2010/9/26/201009261421574d918.png" /><br />
                    </p>
                    <p class="f_center">
                        <br />
                        &nbsp;</p>
                    <p>
                        第十七条：未成年人不得参与投注。</p>
                    <p>
                        <strong></strong>&nbsp;</p>
                    <p>
                        <strong>第四章&nbsp; 设奖</strong></p>
                    <p>
                        第十八条：“福彩3D”的奖金占彩票销售总额的50%（其中：当期奖金49%；调节基金1%）。</p>
                    <p>
                        第十九条：“福彩3D”设置奖池，奖池基金由调节基金、设奖奖金与实际中出奖金的差额和弃奖奖金等组成。奖池用于补充支付中奖差额，设置特别奖，支付因不可抗力等意外原因造成的奖金损失。当期中出奖金未达设奖金额时，设奖奖金余额进入奖池；当期中出奖金超出设奖金额时，差额由奖池补充，若奖池总额不够时，可暂由发行费垫付。</p>
                    <p>
                        第二十条：奖池余额定期向社会公布，不得挪作它用。</p>
                    <p>
                        第二十一条“福彩3D”当期奖金设“单选”、“3D”、“组选6”三个奖等，各奖等中奖奖金额按固定奖金结构设置，规定如下：</p>
                    <p>
                        “单选”投注：中奖金额为每注1000元；</p>
                    <p>
                        “3D”投注：中奖金额为每注333元；</p>
                    <p>
                        “组选6”投注：中奖金额为每注166元。</p>
                    <p>
                        <strong></strong>&nbsp;</p>
                    <p>
                        <strong>第五章&nbsp; 开奖</strong></p>
                    <p>
                        第二十一条：“福彩3D”每天开奖一次，摇奖过程在公证人员监督下进行。</p>
                    <p>
                        第二十二条：“福彩3D”通过摇奖确定中奖号码。摇奖使用中国福利彩票发行中心指定的专用摇奖器摇出。</p>
                    <p>
                        第二十三条：“福彩3D”摇奖时，摇出一个3位数的号码，构成“福彩3D”彩票的中奖号码。摇奖程序详见《中国福利彩票（福彩3D）摇奖办法》。</p>
                    <p>
                        第二十四条：摇奖结束前，当期投注的全部数据刻入不可改写的光盘中。</p>
                    <p>
                        第二十五条：每期开奖后，将当期销售总额、中奖号码和中奖注数及奖额，通过新闻媒体及时向社会公布，并在各投注站张贴开奖公告。</p>
                    <p>
                        <strong></strong>&nbsp;</p>
                    <p>
                        <strong>第六章&nbsp; 中奖</strong></p>
                    <p>
                        第二十六条：根据投注者所持“福彩3D”彩票上的投注号码与当期公布的中奖号码相符情况，确定相应中奖资格：</p>
                    <p>
                        “单选”奖：投注号码与当期公布的中奖号码的3位数按顺序全部相同，即中得单选奖。</p>
                    <p>
                        “3D”奖：当期摇出的三位中奖号码中有任意两位数字相同，且投注号码中三个数字与当期公布的中奖号码的三个数字相同，顺序不限，即中得“3D”奖。</p>
                    <p>
                        “组选6”奖：当期摇出的三位中奖号码中3位数字各不相同，且投注号码的三个数字与当期公布的中奖号码的三个数字相同，顺序不限，即中得“组选6”奖。</p>
                    <p>
                        <strong></strong>&nbsp;</p>
                    <p>
                        <strong>第七章&nbsp; 兑奖</strong></p>
                    <p>
                        第二十七条：“福彩3D”兑奖当期有效。中奖彩票是兑奖凭证，中奖彩票因玷污、损坏等原因而不能正确识别的，不能兑奖。</p>
                    <p>
                        第二十八条：每期开奖次日起15天为兑奖期，逾期未领奖者视为弃奖，弃奖奖金进入奖池基金。</p>
                    <p>
                        第二十九条：中奖奖金在2000元（含2000元）以上的中奖者,须持中奖彩票和本人有效身份证件,在兑奖期限内到福利彩票发行中心登记兑奖。中奖奖金在2000元以下的中奖者，须持中奖彩票可以在全市任何一个投注站兑奖。具体兑奖办法详见《中国福利彩票（福彩3D）兑奖办法》。</p>
                    <p>
                        第三十条：中奖金额在一万元以上中奖者须依法缴纳个人所得税，由兑奖机构依法代扣代缴。</p>
                    <p>
                        第三十一条：兑奖机构有权查验中奖者的中奖彩票及有效身份证件，兑奖者应予配合。凡伪造中奖彩票冒领奖金者，送交司法机关追究法律责任。</p>
                    <p>
                        第三十二条：中奖者若在兑奖有效期内死亡，奖金由其法定继承人兑取。</p>
                    <p>
                        <strong></strong>&nbsp;</p>
                    <p>
                        <strong>第八章&nbsp; 监督</strong></p>
                    <p>
                        第三十三条：“福彩3D”彩票的发行、销售活动，遵守公开、公平、公正的原则，接受社会监督。</p>
                    <p>
                        第三十四条：“福彩3D”彩票销售中的财务和纳税管理，接受中彩中心的指导和监控。</p>
                    <p>
                        <strong></strong>&nbsp;</p>
                    <p>
                        <strong>第九章&nbsp; 附则</strong></p>
                    <p>
                        第三十五条：本细则由福利彩票发行中心解释。</p>
                    <p>
                        第三十六条：本细则从发布之日起执行。</p>
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
