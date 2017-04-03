<%@ page language="C#" autoeventwireup="true" inherits="Home_Web_Score, App_Web_pdoa-q3k" enableEventValidation="false" %>

<%@ Register TagPrefix="ShoveWebUI" Namespace="Shove.Web.UI" Assembly="Shove.Web.UI.4 For.NET 3.5" %>
<%@ Register Src="../Room/UserControls/WebFoot.ascx" TagName="WebFoot" TagPrefix="uc1" %>
<%@ Register Src="../../UserControls/Head.ascx" TagName="Head" TagPrefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>历史战绩方案-<%=_Site.Name %>-买彩票，就上<%=_Site.Name %>！</title>
    <meta name="description" content="<%=_Site.Name %>彩票网是一家服务于中国彩民的互联网彩票合买代购交易平台，涉及中国彩票彩种最全的网站，包含双色球、时时乐、时时彩、足彩等众多彩种的实时开奖信息、图表走势、分析预测等。" />
    <meta name="keywords" content="双色球开奖，双色球走势图，3d走势图，福彩3d，时时彩" />
    <link href="../Room/Style/common.css" rel="stylesheet" type="text/css" />
    <link href="../Room/Style/StyleSheet.css" rel="stylesheet" type="text/css" />
    <link href="../Room/Style/zbuy.css" rel="stylesheet" type="text/css" />
    <link href="../Room/Style/home.css" rel="stylesheet" type="text/css" />
    <link rel="shortcut icon" href="../../favicon.ico" />
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
    </style>

    <script src="../../JavaScript/jquery-1.4.js" type="text/javascript"></script>

    <script type="text/javascript">
        var lotteryID = "<%=LotteryID %>";
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
        function ShowOrHiddenDiv(id,rb) {
            var checkedName = "";
            var arrCells = new Array("tdFC", "tdGP", "tdZC", "tdTC");
            for (var i = 0; i < arrCells.length; i++) {
                if (arrCells[i] == id) {
                    document.getElementById(arrCells[i]).style.fontWeight = "bold";
                    document.getElementById(id).style.color = "#FF0065";
                    document.getElementById("table" + arrCells[i].substring(2)).style.display = "block";
                }
                else {
                    document.getElementById(arrCells[i]).style.fontWeight = "normal";
                    document.getElementById(id).style.color = "#226699";
                    document.getElementById("table" + arrCells[i].substring(2)).style.display = "none";
                }
            }
            if (rb != undefined&&rb.length>2) {
                document.getElementById(rb).checked = true;
                return;
            }
            else {
                if (id == "tdTC") {
                    document.getElementById("rb39").checked = true;
                    __doPostBack("rb39");
                    return;
                }
                if (id == "tdGP") {
                    document.getElementById("rb29").checked = true;
                    __doPostBack("rb29");
                    return;
                }
                if (id == "tdZC") {
                    document.getElementById("rb74").checked = true;
                    __doPostBack("rb74");
                    return;
                }
                else {
                    document.getElementById("rb5").checked = true;
                    __doPostBack("rb5");
                }
            }

        }
        function __doPostBack(eventTarget, eventArgument) {
            var theform = document.form1;
            theform.__EVENTTARGET.value = eventTarget;
            theform.__EVENTARGUMENT.value = eventArgument;
            theform.submit();
        }
        function clickTabMenu(obj, backgroundImage) {
            if (obj == undefined) {
                obj = document.getElementById("tdFC");
            }
            var tabMenu = obj.offsetParent.cells;
            for (var i = 0; i < tabMenu.length; i++) {
                if (obj == tabMenu[i]) {
                    obj.style.backgroundImage = backgroundImage;
                }
                else {
                    tabMenu[i].style.backgroundImage = "";
                }
            }
        }
        function load() {
            var temp = document.getElementById("td"+document.getElementById("rb" + lotteryID).parentNode.parentNode.parentNode.parentNode.id.substring(5));
            clickTabMenu(temp, 'url(../Room/images/admin_qh_100_1.jpg)');
            ShowOrHiddenDiv(temp.id, "rb" + lotteryID);
        }
    </script>

</head>
<body>
    <form id="form1" runat="server">
    <uc2:Head ID="Head1" runat="server" />
    <div class="wrap">
        <table width="100%" align="center" bgcolor="#ffffff" border="1" style="border-right: 0px;
            border-bottom: 0px;">
            <tr style="height: 35px;">
                <td>
                    用户类型：
                    <asp:Label ID="labUserType" runat="server" ForeColor="Red"></asp:Label>
                    用户注册时间：
                    <asp:Label ID="labUserRegisterTime" runat="server" ForeColor="Red"></asp:Label>&nbsp;&nbsp;&nbsp;
                    发起人：
                    <asp:Label ID="labUserName" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>的历史战绩&nbsp;&nbsp;
                    <asp:CheckBox ID="cbShowWin" Text="&nbsp;隐藏中奖方案" runat="server" AutoPostBack="True" OnCheckedChanged="cbShowWin_CheckedChanged"
                        Checked="false" />
                </td>
            </tr>
            <tr>
                <td>
                    <table id="myIcaileTab" width="100%" border="0" cellspacing="0" cellpadding="0" background="../Room/images/zfb_left_bg_2.jpg"
                        style="margin-top: 10px;">
                        <tr>
                            <td width="20" height="29" align="left">
                                &nbsp;
                            </td>
                            <td width="100" id="tdFC" align="center" background="../Room/images/admin_qh_100_2.jpg"
                                onmouseover="mOver(this,1);" onmouseout="mOver(this,2)" onclick="clickTabMenu(this,'url(../Room/images/admin_qh_100_1.jpg)');ShowOrHiddenDiv('tdFC');"
                                style="cursor: pointer; font-size: 14px;">
                                福彩
                            </td>
                            <td width="6">
                                &nbsp;
                            </td>
                            <td width="100" id="tdTC" onclick="clickTabMenu(this,'url(../Room/images/admin_qh_100_1.jpg)');ShowOrHiddenDiv('tdTC');"
                                onmouseover="mOver(this,1)" onmouseout="mOver(this,2)" align="center" background="../Room/images/admin_qh_100_2.jpg"
                                style="cursor: pointer; font-size: 14px;">
                                体彩
                            </td>
                            <td width="6">
                                &nbsp;
                            </td>
                            <td width="100" id="tdGP" onclick="clickTabMenu(this,'url(../Room/images/admin_qh_100_1.jpg)');ShowOrHiddenDiv('tdGP');"
                                onmouseover="mOver(this,1)" onmouseout="mOver(this,2)" align="center" background="../room/images/admin_qh_100_2.jpg"
                                style="cursor: pointer; font-size: 14px;">
                                高频彩种
                            </td>
                            <td width="6">
                                &nbsp;
                            </td>
                            <td width="100" id="tdZC" onclick="clickTabMenu(this,'url(../Room/images/admin_qh_100_1.jpg)');ShowOrHiddenDiv('tdZC');"
                                onmouseover="mOver(this,1)" onmouseout="mOver(this,2)" align="center" background="../Room/images/admin_qh_100_2.jpg"
                                style="cursor: pointer; font-size: 14px;">
                                足彩
                            </td>
                            <td style="width: auto">
                                &nbsp;
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>
                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                            <td height="1" colspan="9" bgcolor="#FFFFFF">
                            </td>
                        </tr>
                        <tr>
                            <td height="2" colspan="9" bgcolor="#ffede3">
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td id="LotteryList">
                    <asp:Panel ID="rbList" runat="server">
                        <table style="width: 100%; display: none;" id="tableFC">
                            <tr style="height: 30px;">
                                <td width="20px">
                                </td>
                                <td width="70px">
                                    <asp:RadioButton ID="rb5" runat="server" GroupName="rbLottery" Text="双色球" AutoPostBack="True" />
                                </td>
                                <td width="70px">
                                    <asp:RadioButton ID="rb59" runat="server" GroupName="rbLottery" Text="15选5" AutoPostBack="True" />
                                </td>
                                <td width="80px">
                                    <asp:RadioButton ID="rb58" runat="server" GroupName="rbLottery" Text="东方6+1" AutoPostBack="True" />
                                </td>
                                <td width="70px">
                                    <asp:RadioButton ID="rb6" runat="server" GroupName="rbLottery" Text="福彩3D" AutoPostBack="True" />
                                </td>
                                <td width="70px">
                                    <asp:RadioButton ID="rb13" runat="server" GroupName="rbLottery" Text="七乐彩" AutoPostBack="True" />
                                </td>
                                <td>
                                </td>
                            </tr>
                        </table>
                        <table style="width: 100%; display: none;" id="tableZC">
                            <tr style="height: 30px;">
                                <td width="20px">
                                </td>
                                <td width="70px">
                                    <asp:RadioButton ID="rb74" runat="server" GroupName="rbLottery" Text="胜负彩" AutoPostBack="True" />
                                </td>
                                <td width="100px">
                                    <asp:RadioButton ID="rb75" runat="server" GroupName="rbLottery" Text="任九场" AutoPostBack="True" />
                                </td>
                                <td width="100px">
                                    <asp:RadioButton ID="rb15" runat="server" GroupName="rbLottery" Text="六场半全场" AutoPostBack="True" />
                                </td>
                                <td width="100px">
                                    <asp:RadioButton ID="rb2" runat="server" GroupName="rbLottery" Text="四场进球彩" AutoPostBack="True" />
                                </td>
                                <td>
                                </td>
                            </tr>
                        </table>
                        <table style="width: 100%; display: none;" id="tableGP">
                            <tr style="height: 30px;">
                                <td width="20px">
                                </td>
                                <td width="70px">
                                    <asp:RadioButton ID="rb29" runat="server" GroupName="rbLottery" Text="时时乐" AutoPostBack="True" />
                                </td>
                                <td width="70px">
                                    <asp:RadioButton ID="rb61" runat="server" GroupName="rbLottery" Text="时时彩" AutoPostBack="True" />
                                </td>
                                <td width="100px">
                                    <asp:RadioButton ID="rb62" runat="server" GroupName="rbLottery" Text="十一运夺金" AutoPostBack="True" />
                                </td>
                                <td>
                                </td>
                            </tr>
                        </table>
                        <table style="width: 100%; display: none;" id="tableTC">
                            <tr style="height: 30px;">
                                <td width="20px">
                                </td>
                                <td width="100px">
                                    <asp:RadioButton ID="rb39" runat="server" GroupName="rbLottery" Text="超级大乐透" AutoPostBack="True" />
                                </td>
                                <td width="70px">
                                    <asp:RadioButton ID="rb3" runat="server" GroupName="rbLottery" Text="七星彩" AutoPostBack="True" />
                                </td>
                                <td width="80px">
                                    <asp:RadioButton ID="rb9" runat="server" GroupName="rbLottery" Text="22选5" AutoPostBack="True" />
                                </td>
                                <td width="70px">
                                    <asp:RadioButton ID="rb63" runat="server" GroupName="rbLottery" Text="排列3" AutoPostBack="True" />
                                </td>
                                <td width="70px">
                                    <asp:RadioButton ID="rb64" runat="server" GroupName="rbLottery" Text="排列5" AutoPostBack="True" />
                                </td>
                                <td width="70px">
                                    <asp:RadioButton ID="rb65" runat="server" GroupName="rbLottery" Text="31选7" AutoPostBack="True" />
                                </td>
                                <td>
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>
                </td>
            </tr>
            <tr>
                <td valign="top" align="center">
                    <asp:DataGrid ID="g" runat="server" Width="100%" BorderStyle="None" AllowSorting="True"
                        CssClass="hemai" AllowPaging="True" PageSize="30" AutoGenerateColumns="False"
                        CellPadding="4" BackColor="#9FC8EA" Font-Names="Tahoma" OnItemDataBound="g_ItemDataBound"
                        CellSpacing="1" GridLines="None" BorderColor="#E0E0E0" BorderWidth="2px">
                        <FooterStyle ForeColor="#330099" BackColor="#FFFFCC"></FooterStyle>
                        <SelectedItemStyle Font-Bold="True" ForeColor="#663399"></SelectedItemStyle>
                        <HeaderStyle HorizontalAlign="Center" ForeColor="RoyalBlue" VerticalAlign="Middle"
                            BackColor="#ffede3" Height="30px"></HeaderStyle>
                        <ItemStyle Height="25px"></ItemStyle>
                        <Columns>
                            <asp:BoundColumn DataField="IsuseName" HeaderText="期号">
                                <HeaderStyle HorizontalAlign="Center" Width="100px"></HeaderStyle>
                                <ItemStyle HorizontalAlign="Center"></ItemStyle>
                            </asp:BoundColumn>
                            <asp:BoundColumn DataField="SchemeNumber" HeaderText="方案号">
                                <HeaderStyle HorizontalAlign="Center" Width="120px"></HeaderStyle>
                                <ItemStyle HorizontalAlign="Center" ForeColor="Blue"></ItemStyle>
                            </asp:BoundColumn>
                            <asp:BoundColumn DataField="PlayTypeName" HeaderText="方案类型">
                                <HeaderStyle HorizontalAlign="Center" Width="140px"></HeaderStyle>
                                <ItemStyle HorizontalAlign="Center"></ItemStyle>
                            </asp:BoundColumn>
                            <asp:BoundColumn DataField="Title" HeaderText="方案标题">
                                <HeaderStyle HorizontalAlign="Center" Width="220px"></HeaderStyle>
                                <ItemStyle HorizontalAlign="Left"></ItemStyle>
                            </asp:BoundColumn>
                            <asp:BoundColumn DataField="Money" HeaderText="方案金额">
                                <HeaderStyle HorizontalAlign="Center" Width="80px"></HeaderStyle>
                                <ItemStyle HorizontalAlign="Right"></ItemStyle>
                            </asp:BoundColumn>
                            <asp:BoundColumn DataField="WinMoney" HeaderText="税前奖金">
                                <HeaderStyle HorizontalAlign="Center" Width="80px"></HeaderStyle>
                                <ItemStyle HorizontalAlign="Right"></ItemStyle>
                            </asp:BoundColumn>
                            <asp:BoundColumn HeaderText="是否成功">
                                <HeaderStyle HorizontalAlign="Center" Width="80px"></HeaderStyle>
                                <ItemStyle HorizontalAlign="Center"></ItemStyle>
                            </asp:BoundColumn>
                            <asp:BoundColumn Visible="False" DataField="QuashStatus"></asp:BoundColumn>
                            <asp:BoundColumn Visible="False" DataField="Buyed"></asp:BoundColumn>
                            <asp:BoundColumn Visible="False" DataField="Schedule"></asp:BoundColumn>
                            <asp:BoundColumn Visible="False" DataField="id"></asp:BoundColumn>
                            <asp:BoundColumn DataField="Source" Visible="False"></asp:BoundColumn>
                        </Columns>
                        <PagerStyle Visible="False" HorizontalAlign="Center" ForeColor="#330099" BackColor="#FFFFCC">
                        </PagerStyle>
                    </asp:DataGrid>
                </td>
            </tr>
            <tr>
                <td style="text-align: left;">
                    <ShoveWebUI:ShoveGridPager ID="gPager" runat="server" Width="100%" PageSize="30"
                        ShowSelectColumn="False" DataGrid="g" AlternatingRowColor="#F7FEFA" GridColor="#E0E0E0"
                        HotColor="MistyRose" Visible="False" OnPageWillChange="gPager_PageWillChange"
                        OnSortBefore="gPager_SortBefore" RowCursorStyle="" />
                </td>
            </tr>
            <tr>
                <td align="center" height="50">
                    【<a onclick="window.close();" href="#">关闭窗口</a>】
                </td>
            </tr>
        </table>
    </div>
    <uc1:WebFoot ID="WebFoot1" runat="server" />
    </form>
</body>
</html>

<script language="javascript" type="text/javascript">load();</script>

