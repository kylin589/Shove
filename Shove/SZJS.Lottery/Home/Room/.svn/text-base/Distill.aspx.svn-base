<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Distill.aspx.cs" Inherits="Home_Room_Distill" %>

<%@ Register Assembly="Shove.Web.UI.4 For.NET 3.5" Namespace="Shove.Web.UI" TagPrefix="ShoveWebUI" %>
<%@ Register Src="../../UserControls/Head.ascx" TagName="Head" TagPrefix="uc1" %>
<%@ Register Src="UserControls/UserMyIcaile.ascx" TagName="UserMyIcaile" TagPrefix="uc2" %>
<%@ Register Src="UserControls/WebFoot.ascx" TagName="WebFoot" TagPrefix="uc3" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>
        <%=_Site.Name %>中奖奖金提款-我的账户-用户中心-<%=_Site.Name %>－买彩票，就上<%=_Site.Name %>
        ！</title>
    <meta name="description" content="<%=_Site.Name %>彩票网<%=_Site.Url %>是一家服务于中国彩民的互联网彩票合买代购交易平台，涉及中国彩票彩种最全的网站，包含双色球,大乐透,七星彩,3d,足彩等众多彩种的实时开奖信息,图表走势、分析预测以及开奖信息等!" />
    <meta name="keywords" content="双色球合买,体育彩票,福利彩票,双色球开奖信息." />
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
    <link href="Style/common.css" rel="stylesheet" type="text/css" />
    <link href="Style/StyleSheet.css" rel="stylesheet" type="text/css" />
    <link href="Style/home.css" rel="stylesheet" type="text/css" />
    <link rel="shortcut icon" href="../../favicon.ico" />
    <style type="text/css">
        .red142
        {
            font-size: 14px;
            color: #cc0000;
            font-family: "tahoma";
            line-height: 22px;
        }
        .red142 A:link
        {
            font-family: "tahoma";
            color: #cc0000;
            text-decoration: underline;
        }
        .red142 A:active
        {
            font-family: "tahoma";
            color: #cc0000;
            text-decoration: none;
        }
        .red142 A:visited
        {
            font-family: "tahoma";
            color: #cc0000;
            text-decoration: none;
        }
        .red142 A:hover
        {
            font-family: "tahoma";
            color: #cc0000;
            text-decoration: none;
        }
    </style>

    <script src="../../JavaScript/jquery-1.4.js" type="text/javascript"></script>

    <script type="text/javascript" language="javascript" src="JavaScript/Public.js"></script>

    <script language="javascript" type="text/javascript">
        function clickLottery(obj) {

            ChangeBackgroundImg();

            switch (obj.id) {
                case 'PayByAlipay':
                    document.getElementById("PayByAlipay").className = 'blue12';
                    document.getElementById("PayByAlipay").style.fontWeight = "bold";
                    document.getElementById("PayByAlipay").style.backgroundImage = "url('images/admin_qh_100_1.jpg')";
                    if (document.getElementById("hdStep").value == "3") {
                        distillFrame.location.href = "DistillByAlipay.aspx?Step=3&IsCps=<%=IsCps %>";
                    }
                    else {
                        distillFrame.location.href = "DistillByAlipay.aspx?IsCps=<%=IsCps %>";
                    }
                    break;
                case 'PayByBank':
                    document.getElementById("PayByBank").className = 'blue12';
                    document.getElementById("PayByBank").style.fontWeight = "bold";
                    document.getElementById("PayByBank").style.backgroundImage = "url('images/admin_qh_100_1.jpg')";
                    if (document.getElementById("hdStep").value == "3") {
                        distillFrame.location.href = "DistillBybank.aspx?Step=3&IsCps=<%=IsCps %>";
                    }
                    else {
                        distillFrame.location.href = "DistillBybank.aspx?IsCps=<%=IsCps %>";
                    }
                    break;
                case 'PayFee':
                    document.getElementById("PayFee").className = 'blue12';
                    document.getElementById("PayFee").style.fontWeight = "bold";
                    document.getElementById("PayFee").style.backgroundImage = "url('images/admin_qh_100_1.jpg')";
                    distillFrame.location.href = "DistillFee.aspx";
                    break;
                case 'PayDistill':
                    document.getElementById("PayDistill").className = 'blue12';
                    document.getElementById("PayDistill").style.fontWeight = "bold";
                    document.getElementById("PayDistill").style.backgroundImage = "url('images/admin_qh_100_1.jpg')";
                    distillFrame.location.href = "DistillDetail.aspx";
                    break;

            }
            try {
                handleOnLoad();
            } catch (e) { }
        }

        function ChangeBackgroundImg() {
            var arrCells = new Array('PayByAlipay', 'PayByBank', 'PayFee', 'PayDistill');
            var length = arrCells.length;

            for (var i = 0; i < length; i++) {
                document.getElementById(arrCells[i]).style.backgroundImage = "url('images/admin_qh_100_2.jpg')";
                document.getElementById(arrCells[i]).className = 'blue12';
                document.getElementById(arrCells[i]).style.fontWeight = "normal";
            }
        }

        function handleOnLoad() {

                          document.getElementById("<%=distillFrame.ClientID%>").style.height = distillFrame.document.body.scrollHeight;
        }

        function mOver(obj, type) {
            if (type == 1) {
                obj.style.textDecoration = "underline";
                obj.style.color = "#FF0065";
            }
            else {
                obj.style.textDecoration = "none";
                obj.style.color = "#226699";


            }
        }
    </script>

</head>
<body>
    <form id="form1" runat="server">
    <uc1:Head ID="Head2" runat="server" />
    <div class="wrap">
        <uc2:UserMyIcaile ID="UserMyIcaile1" runat="server" />
        <div class="rights">
            <div class="jilu">
                <table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#9FC8EA">
                    <tr>
                        <td valign="top" bgcolor="#FFFFFF">
                            <table width="100%" border="0" cellpadding="0" cellspacing="0">
                                <tr>
                                    <td height="30">
                                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                            <tr>
                                                <td width="40" height="30" align="right" valign="middle" class="red14">
                                                    <img src="images/icon_5.gif" width="19" height="20" runat="server" id="imgDistill" />
                                                </td>
                                                <td valign="middle" style="font-size: 16px; color: #cc0000; font-family: Tahoma;
                                                    line-height: 20px; font-weight: bold; padding-left: 10px;" runat="server" id="tdDistill">
                                                    我的账户
                                                </td>
                                                <td width="11">
                                                    &nbsp;
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                            <table width="100%" border="0" cellspacing="0" cellpadding="0" background="images/zfb_left_bg_2.jpg"
                                style="margin-top: 10px;">
                                <tr>
                                    <td width="20" height="29" align="left">
                                        &nbsp;
                                    </td>
                                    <td id="PayByAlipay" style="cursor: pointer;" width="100" align="center" onmouseover="mOver(this,1)"
                                        class="blue12" onmouseout="mOver(this,2)" onclick="clickLottery(this)">
                                        支付宝提款
                                    </td>
                                    <td width="6">
                                        &nbsp;
                                    </td>
                                    <td id="PayByBank" style="cursor: pointer;" width="100" align="center" class="blue12"
                                        onmouseover="mOver(this,1)" onmouseout="mOver(this,2)" onclick="clickLottery(this)">
                                        银行卡提款
                                    </td>
                                    <td width="6">
                                        &nbsp;
                                    </td>
                                    <td id="PayFee" style="cursor: pointer;" width="100" align="center" onmouseover="mOver(this,1)"
                                        class="blue12" onmouseout="mOver(this,2)" onclick="clickLottery(this)">
                                        资费标准
                                    </td>
                                    <td width="6">
                                        &nbsp;
                                    </td>
                                    <td id="PayDistill" style="cursor: pointer;" width="100" align="center" onmouseover="mOver(this,1)"
                                        class="blue12" onmouseout="mOver(this,2)" onclick="clickLottery(this)">
                                        提款明细
                                    </td>
                                    <td width="6">
                                        &nbsp;
                                    </td>
                                    <td align="center" class="blue14">
                                        &nbsp;
                                    </td>
                                </tr>
                                <tr>
                                    <td height="1" colspan="13" bgcolor="#FFFFFF">
                                    </td>
                                </tr>
                            </table>
                            <table id="myIcaileTab" runat="server" width="100%" border="0" cellpadding="0" cellspacing="0">
                                <tr>
                                    <td>
                                        <table id="tb_mains" width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="#DDDDDD">
                                            <tbody id="td_Tips">
                                                <tr>
                                                    <td height="30" colspan="2" align="left" bgcolor="#F8F8F8" class="black12" style="padding: 5px 10px 5px 10px;">
                                                        尊敬的会员 <span class="red12">
                                                            <%=_User.Name%>
                                                        </span>，为了您的提款能及时安全到帐，请如实填写以下资料进行核实：
                                                    </td>
                                                </tr>
                                            </tbody>
                                            <tr>
                                                <td height="30" colspan="2" align="center" bgcolor="#FFFFFF" class="black12">
                                                    <iframe id="distillFrame" name="distillFrame" runat="server" border="0" frameborder="0"
                                                        marginwidth="0" noresize scrolling="no" width="100%"></iframe>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
                <table width="100%" border="0" cellspacing="0" cellpadding="0" style="margin-top: 10px;"
                    id="tb_times">
                    <tr>
                        <td width="24">
                            <img src="images/icon_taihao.gif" width="18" height="18" />
                        </td>
                        <td width="754" class="black12">
                            提款处理需知：<span class="red12">（周一至周日每日处理提款，除法定节日）</span>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;
                        </td>
                        <td class="black12">
                            <p>
                                <span class="blue12">&#9733;</span> 当日16点前申请提款：当日处理 <span class="blue12">&#9733;</span>
                                当日16点后申请提款：次日处理
                            </p>
                        </td>
                    </tr>
                </table>
                <table width="100%" border="0" cellspacing="1" cellpadding="0" bgcolor="#D8D8D8"
                    style="margin-top: 10px;" id="tb_remind">
                    <tr>
                        <td bgcolor="#FFFEDF" class="black12" style="padding: 5px 10px 5px 10px;">
                            <span class="red12">温馨提醒：</span><br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 为了保障您的资金安全，您的提款申请成功，并经核对无误后，将通过人工处理到银行及第三方支付平台再汇到您的账户：<br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1.针对用户正常提款申请，根据不同银行或者第三方支付平台处理情况，请1-5个工作日后查询。<br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2.针对极个别用户的异常提款申请，请15个工作日后查询。<br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3.如果账户资金低于10元，仍需提款，请一次性提清。
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
    <uc3:WebFoot ID="WebFoot1" runat="server" />
    <input type="hidden" id="hdStep" runat="server" value="PayFee" />
    </form>
</body>
</html>

<script type="text/javascript" language="javascript">
        var fromUrl = location.search.toString();
        var index = fromUrl.indexOf("Type") + 5;
        var type = fromUrl.substring(index, index + 1);
        if (type == "2") {
            document.getElementById("hdStep").value = "3";
            clickLottery(document.getElementById('PayByBank'));
        }
        else if (type == "1") {
            document.getElementById("hdStep").value = "3";
            clickLottery(document.getElementById('PayFee'));
        }
        else {
            clickLottery(document.getElementById('PayFee'));
        }
       alert("百姓彩就本次QQ团购的几点说明：\r\n      凡是通过本次QQ团购活动来网站消费的用户，您充值30元后，百姓彩官网奖励的9元的购彩金方可使用，用户账户购彩金总计39元只能用于购彩不能立即提现。但是用户在百姓彩使用购彩金购买彩票中奖后的奖金用户可以随时提款。用户提款所产生的手续费是由用户持卡银行收取，百姓彩不收取任何手续费！");
</script>

