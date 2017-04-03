<%@ page language="C#" autoeventwireup="true" inherits="Home_Room_Scheme, App_Web_y4qeesyo" enableEventValidation="false" %>

<%@ Register Assembly="Shove.Web.UI.4 For.NET 3.5" Namespace="Shove.Web.UI" TagPrefix="ShoveWebUI" %>
<%@ Register Src="UserControls/WebFoot.ascx" TagName="WebFoot" TagPrefix="uc1" %>
<%@ Register Src="../../UserControls/Head.ascx" TagName="Head" TagPrefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>彩票购买方案-<%=_Site.Name %>-买彩票，就上<%=_Site.Name %>！</title>
    <meta name="description" content="<%=_Site.Name %>彩票网是一家服务于中国彩民的互联网彩票合买代购交易平台，涉及中国彩票彩种最全的网站，包含双色球、时时乐、时时彩、足彩等众多彩种的实时开奖信息、图表走势、分析预测等。" />
    <meta name="keywords" content="双色球开奖，双色球走势图，3d走势图，福彩3d，时时彩" />
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
    <link href="Style/common.css" rel="stylesheet" type="text/css" />
    <link href="Style/StyleSheet.css" rel="stylesheet" type="text/css" />
    <link href="Style/zbuy.css" rel="stylesheet" type="text/css" />
    <link rel="shortcut icon" href="../../favicon.ico" />

    <script src="../../JavaScript/jquery-1.4.js" type="text/javascript"></script>

    <style type="text/css">
        .hemai tr td
        {
            border: 1px solid #CCCCCC;
            text-align: left;
        }
        .hemai thead tr td
        {
            border: 1px solid #CCCCCC;
            text-align: center;
        }
        table strong
        {
            text-align: center;
            display: block;
            background-color: #f0f0f0;
        }
        #trUserListDetail
        {
            margin-top: -1px;
            margin-bottom: -1px;
        }
        #tbgcjl
        {
            margin-bottom: -1px;
        }
        #trUserListDetail td, #tbgcjl td
        {
            text-indent: 10px;
        }
    </style>

    <script type="text/javascript">
        <!--
        var o_labBalance;
        var o_labShare;
        var o_labShareMoney;
        var o_tbShare;
        var o_labSumMoney;
        var o_btnOK;
        var o_labWinNumber;
        var o_labReward;

        function Init() {
            o_labBalance = document.getElementById("<%=labBalance.ClientID%>");
            o_labShare = document.getElementById("<%=labShare.ClientID%>");
            o_labShareMoney = document.getElementById("<%=labShareMoney.ClientID%>");
            o_tbShare = document.getElementById("<%=tbShare.ClientID%>");
            o_labSumMoney = document.getElementById("<%=labSumMoney.ClientID%>");
            o_btnOK = document.getElementById("<%=btnOK.ClientID%>");
            o_labWinNumber = document.getElementById("<%=lbWinNumber.ClientID%>");
            o_labReward = document.getElementById("<%=lbReward.ClientID%>");

            var o_trWinNumber = document.getElementById("trWinNumber");

            if (o_labWinNumber.innerHTML != "") {
                trWinNumber.style.display = "";
            }
            else {
                trWinNumber.style.display = "none";
            }

            var o_trReward = document.getElementById("trReward");
            
            if(o_trReward)
            {
                if (o_labReward.innerHTML != "") {
                    trReward.style.display = "";
                }
                else {
                    trReward.style.display = "none";
                }
            }
        }

        function SetbtnOKFocus() {
            return true;
        }

        function onUserListClick() {
            var obj1 = document.getElementById("trUserListDetail");

            if (obj1.style.display == "none") {
                obj1.style.display = "";
            }
            else {
                obj1.style.display = "none";
            }
        }

        function InputMask_Number() {
            if (window.event.keyCode < 48 || window.event.keyCode > 57)
                return false;
            return true;
        }

        function CheckShare(sender) {
            var BuyShare = StrToInt(sender.value);
            var SpareShare = StrToInt(o_labShare.innerText);

            if ((BuyShare < 1) || (BuyShare > SpareShare)) {
                if (confirm("份数不正确，按“确定”重新输入，按“取消”自动更正为 " + SpareShare + " 份，请选择。")) {
                    sender.focus();
                    return;
                }
                else {
                    BuyShare = SpareShare;
                    sender.value = SpareShare;
                }
            }

            o_labSumMoney.innerText = Round(BuyShare * StrToFloat(o_labShareMoney.innerText), 2);

            SetbtnOKFocus();
        }
        
        function CreateLogin(script) {
         if (Number(document.getElementById("Head1_hUserID").value) > 0) {
               eval(script);
                return true;
           }else{
           
             if (!confirm("请登录账户后进行投注！"))
             {
                 return false;
             }
             window.location="../../UserLogin.aspx";
           }
        }

        function btnOKClick() {

            var BuyShare = StrToInt(o_tbShare.value);
            var SpareShare = StrToInt(o_labShare.innerText);
            var SumMoney = StrToFloat(o_labSumMoney.innerText);

            if ((BuyShare < 1) || (BuyShare > SpareShare)) {
                alert("请输入正确的认购份数。");

                o_tbShare.focus();
                return false;
            }
            if (SumMoney < 0) {
                alert("输入有错误。");
                return false;
            }
            o_labBalance.innerText = Home_Room_Scheme.GetUserBalance().value;
            var Balance = StrToFloat(o_labBalance.innerText);
            if (Balance < SumMoney) {
                if (confirm("您的账户余额不足，请先充值，谢谢。您要立即在线购买吗？"))
                    window.document.location.href = "MyIcaile.aspx?SubPage=OnlinePay/Default.aspx";
                return false;
            }

            var TipStr = "您要入伙此合买方案，详细内容：\n\n";
            TipStr += "　　份　数：　" + BuyShare + " 份\n";
            TipStr += "　　每　份：　" + o_labShareMoney.innerText + " 元\n";
            TipStr += "　　总金额：　" + SumMoney + " 元\n\n";

            if (!confirm(TipStr + "按“确定”即表示您已阅读《用户投注协议》并立即参与合买方案，确定要入伙吗？"))
                return false;

            __doPostBack("btnOK", "");
        }
        -->
    </script>

</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:HiddenField ID="HidSchedule" runat="server" />
        <asp:HiddenField ID="hfID" runat="server" />
        <uc2:Head ID="Head1" runat="server" />
        <div class="wrap">
            <table style="line-height: 25px; width: 984px;">
                <tr>
                    <td>
                        <asp:Image ID="ImageLogo" runat="server" />
                    </td>
                    <td>
                        第<span><asp:Label ID="labTitle" runat="server" Text=""></asp:Label></span>期
                        <asp:TextBox ID="tbIsuseID" runat="server" Width="30px" Visible="False"></asp:TextBox><asp:TextBox
                            ID="tbLotteryID" runat="server" Width="30px" Visible="False"></asp:TextBox><asp:TextBox
                                ID="tbSchemeID" runat="server" Width="30px" Visible="False"></asp:TextBox><asp:TextBox
                                    ID="tbStop" runat="server" Width="30px" Visible="False"></asp:TextBox>
                    </td>
                    <td>
                        认购开始时间：
                        <asp:Label ID="labStartTime" runat="server" ForeColor="Red"></asp:Label>
                        认购截止时间：
                        <asp:Label ID="labEndTime" runat="server" ForeColor="Red"></asp:Label>
                    </td>
                </tr>
            </table>
            <table id="Table2" style="line-height: 25px; width: 984px;" class="hemai">
                </tr>
                <tr>
                    <td colspan="2">
                        <strong>方案基本信息</strong>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: right; background-color: #F6F9FE">
                        方案发起人：
                    </td>
                    <td>
                        <div style="float: left; width: 70%">
                            &nbsp;&nbsp;
                            <asp:Label ID="labInitiateUser" runat="server"></asp:Label>
                            &nbsp;&nbsp;
                            <ShoveWebUI:ShoveConfirmButton ID="btnQuashScheme" BackgroupImage="../images/btnBack02.gif"
                                Style="font-size: 9pt; cursor: hand; border-top-style: none; font-family: Tahoma;
                                border-right-style: none; border-left-style: none; border-bottom-style: none"
                                runat="server" Height="20px" Width="84px" Text="我要撤消方案" Visible="False" CommandName="QuashIsuse"
                                AlertText="确信要撤消此方案吗？" OnClick="btnQuashScheme_Click" onblur="return SetbtnOKFocus();" />
                            &nbsp;
                            <asp:CheckBox ID="cbAtTopApplication" runat="server" Text="申请置顶" AutoPostBack="True"
                                Visible="False" OnCheckedChanged="cbAtTopApplication_CheckedChanged"></asp:CheckBox>
                            <span class="red">
                                <asp:Label ID="labAtTop" runat="server" Visible="False">方案已置顶</asp:Label></span>
                            &nbsp;&nbsp;</div>
                        <div style="float: left; text-align: right; color: Red;">
                            <asp:Label ID="Label3" runat="server"></asp:Label></div>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: right; background-color: #F6F9FE">
                        方案状态：
                    </td>
                    <td style="padding-left: 12px;">
                        <span class="red">
                            <asp:Label ID="labState" runat="server"></asp:Label></span>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: right; background-color: #F6F9FE">
                        投注内容：
                    </td>
                    <td align="left" bgcolor="#FFFFFF" style="padding-right: 2px; padding-left: 12px;
                        padding-bottom: 2px; padding-top: 2px">
                        <asp:Label ID="labLotteryNumber" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr id="trWinNumber">
                    <td style="text-align: right; background-color: #F6F9FE">
                        开奖号码：
                    </td>
                    <td align="left" bgcolor="#FFFFFF" id="td2" style="padding-left: 12px;">
                        <span class="red">
                            <asp:Label ID="lbWinNumber" runat="server" Font-Bold="true"></asp:Label></span>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: right; background-color: #F6F9FE">
                        投注倍数：
                    </td>
                    <td align="left" bgcolor="#FFFFFF" style="padding-left: 12px;">
                        <asp:Label ID="labMultiple" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: right; background-color: #F6F9FE">
                        方案编号：
                    </td>
                    <td align="left" bgcolor="#FFFFFF" style="padding-left: 12px;">
                        <asp:Label ID="labSchemeNumber" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr id="trBonusScale" runat="server" visible="false">
                    <td style="text-align: right; background-color: #F6F9FE">
                        佣金比例：
                    </td>
                    <td align="left" bgcolor="#FFFFFF" style="padding-left: 12px;">
                        <asp:Label ID="lbSchemeBonus" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: right; background-color: #F6F9FE">
                        方案发起时间：
                    </td>
                    <td align="left" bgcolor="#FFFFFF" style="padding-left: 12px;">
                        <asp:Label ID="labSchemeDateTime" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: right; background-color: #F6F9FE">
                        方案总金额：
                    </td>
                    <td align="left" bgcolor="#FFFFFF" style="padding-left: 12px;">
                        <asp:Label ID="labSchemeMoney" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" bgcolor="#E9F1F8">
                        <strong>方案投注信息</strong>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: right; background-color: #F6F9FE">
                        方案标题：
                    </td>
                    <td align="left" bgcolor="#FFFFFF" style="padding-left: 12px;">
                        <asp:Label ID="labSchemeTitle" runat="server" Style="word-break: break-all; word-wrap: break-word"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: right; background-color: #F6F9FE">
                        方案描述：
                    </td>
                    <td align="left" valign="top" bgcolor="#FFFFFF" style="padding-left: 12px;">
                        <asp:Label ID="labSchemeDescription" runat="server" Style="word-break: break-all;
                            word-wrap: break-word"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: right; background-color: #F6F9FE">
                        广告地址：
                    </td>
                    <td align="left" valign="top" bgcolor="#FFFFFF" style="padding-left: 12px;">
                        <asp:Label ID="labSchemeADUrl" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: right; background-color: #F6F9FE">
                        方案详细情况：
                    </td>
                    <td align="left" bgcolor="#FFFFFF" style="padding-left: 12px;">
                        <asp:Label ID="labSchemeDetail" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: right; background-color: #F6F9FE">
                        保底金额：
                    </td>
                    <td align="left" bgcolor="#FFFFFF" style="padding-left: 12px;">
                        <asp:Label ID="labAssureMoney" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: right; background-color: #F6F9FE">
                        我要认购：
                    </td>
                    <td align="left" bgcolor="#FFF2F2" style="padding-left: 12px;">
                        <asp:Label ID="labCannotBuyTip" runat="server" Visible="False"></asp:Label><asp:Panel
                            ID="pBuy" runat="server" Visible="False" Width="100%">
                            我的账户余额
                            <asp:Label ID="labBalance" runat="server" ForeColor="Red">0.00</asp:Label>&nbsp;,此方案还有
                            <asp:Label ID="labShare" runat="server" ForeColor="Red">0</asp:Label>&nbsp;份可以认购,每份
                            <asp:Label ID="labShareMoney" runat="server" ForeColor="Red">0.00</asp:Label>&nbsp;元,我想认购&nbsp;
                            <asp:TextBox onkeypress="return InputMask_Number();" class="in_text_hui" ID="tbShare"
                                onblur="return CheckShare(this);" runat="server" Width="64px"></asp:TextBox>&nbsp;份,总金额
                            <asp:Label ID="labSumMoney" runat="server" ForeColor="Red">0.00</asp:Label>&nbsp;元</asp:Panel>
                        【<a href="OnlinePay/Default.aspx" target="_blank">用户充值</a>】【<a href="AccountDetail.aspx"
                            target="_blank">账户明细</a>】
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center; background-color: #FFFFFF" id="divOK" runat="server"
                        colspan="2">
                        <asp:Panel ID="panelInvestPassword" runat="server" Width="250px">
                            请输入投注密码：
                            <asp:TextBox ID="tbInvestPassword" runat="server" Width="100px" TextMode="Password"
                                onblur="return SetbtnOKFocus();"></asp:TextBox></asp:Panel>
                        <ShoveWebUI:ShoveConfirmButton ID="btnOK" BackgroupImage="images/button_qxgm.jpg"
                            runat="server" Style="cursor: pointer;" Height="38" Width="127" OnClick="btnOK_Click"
                            OnClientClick="return CreateLogin('btnOKClick()');" />
                    </td>
                </tr>
                <tr>
                    <td class="red" style="text-align: center; background-color: #ffffff;" id="divqueding"
                        runat="server" colspan="2">
                        【注】点击的“确定购买”按钮即表示您已阅读了《用户投注协议》并同意其中条款。
                    </td>
                </tr>
                <tr>
                    <td colspan="2" bgcolor="#E9F1F8">
                        <strong>方案认购信息</strong>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: right; background-color: #F6F9FE;">
                        参与用户列表：
                    </td>
                    <td align="left" bgcolor="#FFFFFF" style="padding-left: 12px;">
                        <asp:Label ID="labUserList" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
            <div id="trUserListDetail">
                <table class="hemai" style="line-height: 25px; width: 984px;">
                    <asp:Repeater ID="gUserList" runat="server">
                        <ItemTemplate>
                            <tr>
                                <td style="text-align: right; background-color: #F6F9FE; width: 126px">
                                    <%# Eval("Name")%>：
                                </td>
                                <td style="width: 70px;">
                                    <font color="red">
                                        <%# Eval("Share")%>
                                    </font>份
                                </td>
                                <td style="width: 105px;">
                                    <font color="red">
                                        <%# double.Parse(Eval("DetailMoney").ToString()).ToString("N")%>
                                    </font>元
                                </td>
                                <td>
                                    <%# Eval("DateTime")%>
                                </td>
                            </tr>
                        </ItemTemplate>
                    </asp:Repeater>
                </table>
            </div>
            <table id="tbgcjl" style="line-height: 25px; width: 984px;" class="hemai">
                <tr>
                    <td style="text-align: right; background-color: #F6F9FE; width: 126px; border-right: 0px;">
                        我的认购记录：
                    </td>
                    <td style="border: 0px;">
                        <asp:Label ID="labMyBuy" runat="server"></asp:Label>
                        <asp:DataGrid ID="g" runat="server" Width="100%" AutoGenerateColumns="False" GridLines="None"
                            ShowHeader="False" OnItemCommand="g_ItemCommand" OnItemDataBound="g_ItemDataBound">
                            <Columns>
                                <asp:BoundColumn DataField="Share">
                                    <HeaderStyle Width="5%"></HeaderStyle>
                                    <ItemStyle HorizontalAlign="Left"></ItemStyle>
                                </asp:BoundColumn>
                                <asp:BoundColumn DataField="DetailMoney">
                                    <HeaderStyle Width="10%"></HeaderStyle>
                                    <ItemStyle HorizontalAlign="Left"></ItemStyle>
                                </asp:BoundColumn>
                                <asp:BoundColumn>
                                    <HeaderStyle Width="35%"></HeaderStyle>
                                    <ItemStyle HorizontalAlign="Left"></ItemStyle>
                                </asp:BoundColumn>
                                <asp:BoundColumn DataField="DateTime">
                                    <HeaderStyle Width="20%"></HeaderStyle>
                                    <ItemStyle HorizontalAlign="Left"></ItemStyle>
                                </asp:BoundColumn>
                                <asp:BoundColumn>
                                    <HeaderStyle Width="10%"></HeaderStyle>
                                </asp:BoundColumn>
                                <asp:TemplateColumn>
                                    <HeaderStyle Width="20%"></HeaderStyle>
                                    <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                    <ItemTemplate>
                                        <ShoveWebUI:ShoveConfirmButton ID="btnQuashBuy" BackgroupImage="images/btnBack02.gif"
                                            Style="font-size: 9pt; cursor: hand; border-top-style: none; font-family: Tahoma;
                                            border-right-style: none; border-left-style: none; border-bottom-style: none"
                                            runat="server" Height="20px" Width="84px" Text="我要撤消" CommandName="QuashBuy"
                                            AlertText="确信要撤消此认购记录吗？" onblur="return SetbtnOKFocus();" />
                                    </ItemTemplate>
                                </asp:TemplateColumn>
                                <asp:BoundColumn Visible="False" DataField="QuashStatus">
                                    <HeaderStyle Width="0px"></HeaderStyle>
                                </asp:BoundColumn>
                                <asp:BoundColumn Visible="False" DataField="Buyed">
                                    <HeaderStyle Width="0px"></HeaderStyle>
                                </asp:BoundColumn>
                                <asp:BoundColumn Visible="False" DataField="IsuseID"></asp:BoundColumn>
                                <asp:BoundColumn Visible="False" DataField="Code"></asp:BoundColumn>
                                <asp:BoundColumn Visible="False" DataField="BuyedShare"></asp:BoundColumn>
                                <asp:BoundColumn Visible="False" DataField="Schedule"></asp:BoundColumn>
                                <asp:BoundColumn Visible="False" DataField="id"></asp:BoundColumn>
                                <asp:BoundColumn Visible="False" DataField="isWhenInitiate"></asp:BoundColumn>
                                <asp:BoundColumn Visible="False" DataField="SchemeShare"></asp:BoundColumn>
                            </Columns>
                        </asp:DataGrid>
                    </td>
                </tr>
            </table>
            <table style="line-height: 25px; width: 984px;" class="hemai">
                <tr>
                    <td colspan="2" bgcolor="#E9F1F8">
                        <strong>方案中奖信息</strong>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: right; background-color: #F6F9FE; width: 126px;">
                        中奖情况：
                    </td>
                    <td align="left" valign="top" bgcolor="#FFFFFF" style="padding-left: 12px; color: Red">
                        <asp:Label ID="labWin" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr id="trReward" runat="server">
                    <td style="text-align: right; background-color: #F6F9FE; width: 120px;">
                        我的奖金：
                    </td>
                    <td align="left" valign="top" bgcolor="#FFFFFF" id="td6" style="padding-left: 12px;
                        color: Red;">
                        <asp:Label ID="lbReward" runat="server" ForeColor="red"></asp:Label>
                        元
                    </td>
                </tr>
            </table>
            <div style='display: none; width: 630px; background-color: #ccc; padding: 1px; position: absolute;
                margin-top: 47px; margin-left: 50px; z-index: 100; border: #ffede3 1px solid;'
                id="Div_Zc">
                <asp:Label ID="tbZCDZ" runat="server" Text="Label"></asp:Label>
            </div>
        </div>
        <uc1:WebFoot ID="WebFoot1" runat="server" />
    </div>
    </form>
</body>
</html>

<script src="JavaScript/Public.js" type="text/javascript"></script>

<script language="javascript" type="text/javascript">
    Init();

    function displayBall(i, N, r) {

        document.getElementById("Div_Zc").style.display = "none";
        
        for (var b = 1; b <= N; b++) {
            for (var a = 1; a <= r; a++) {
                var id = "Xhfz_" + String(100 * b + a);

                if (i == b) {
                    document.getElementById(id).style.display = "";
                }
                else {
                    document.getElementById(id).style.display = "none";
                }
            }
        }

        document.getElementById("Div_Zc").style.display = "";
        document.getElementById("Div_Zc").style.top = event.clientY - 30;
        document.getElementById("Div_Zc").style.left = event.clientX - 30;
    }

</script>

