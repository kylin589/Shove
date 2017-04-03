<%@ page language="C#" autoeventwireup="true" inherits="TC22X5_22X5_HMLR, App_Web_tazlual8" enableEventValidation="false" %>

<%@ Register Src="../../Home/Room/UserControls/WebFoot.ascx" TagName="WebFoot" TagPrefix="uc1" %>
<%@ Register Src="../../UserControls/Head.ascx" TagName="Head" TagPrefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>22选5全部号码全历史冷热图</title>
    <link href="../../Home/Room/Style/common.css" rel="stylesheet" type="text/css" />
    <link href="../../Home/Room/Style/StyleSheet.css" rel="stylesheet" type="text/css" />
    <link href="../../Home/Room/Style/zbuy.css" rel="stylesheet" type="text/css" />
    <link rel="shortcut icon" href="../../favicon.ico" />
    <link href="../../Home/Room/Style/zst.css" rel="stylesheet" type="text/css" />

    <script src="../../JavaScript/jquery-1.4.js" type="text/javascript"></script>

</head>
<body>
    <form id="form1" runat="server">
    <uc2:Head ID="Head2" runat="server" />
    <div class="wrap">
        <div class="zst_top">
            <h1>
                22选5&nbsp;&nbsp;冷热分布图</h1>
            <ul>
                <li><span>起始期数：</span>
                    <asp:RadioButton ID="RadioButton5" runat="server" Text="10期" AutoPostBack="True"
                        GroupName="group" OnCheckedChanged="RadioButton5_CheckedChanged1" />
                    <asp:RadioButton ID="RadioButton4" runat="server" Text="20期" AutoPostBack="True"
                        GroupName="group" OnCheckedChanged="RadioButton4_CheckedChanged1" />
                    <asp:RadioButton ID="RadioButton3" runat="server" Text="30期" AutoPostBack="True"
                        Checked="true" OnCheckedChanged="RadioButton3_CheckedChanged" GroupName="group" />
                    <asp:RadioButton ID="RadioButton2" runat="server" Text="50期" AutoPostBack="True"
                        OnCheckedChanged="RadioButton2_CheckedChanged" GroupName="group" />
                    <asp:RadioButton ID="RadioButton1" runat="server" Text="100期" AutoPostBack="True"
                        GroupName="group" OnCheckedChanged="RadioButton1_CheckedChanged1" />
                </li>
                <div class="clear">
                </div>
            </ul>
        </div>
    </div>
    <div class="wrap">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" UseAccessibleHeader="False"
            OnRowCreated="GridView1_RowCreated" ShowFooter="True" Width="100%" bordercolorlight="#CCCCCC"
            ShowHeader="false" bordercolordark="#FFFFFF" align="center" CellPadding="0" Font-Size="12px">
            <Columns>
                <asp:BoundField DataField="LotteryNumber" HeaderText="出现次数">
                    <ItemStyle BackColor="#F7F7F7" Width='68px' />
                </asp:BoundField>
                <asp:BoundField DataField="B_1" HeaderText="B_1">
                    <ItemStyle Width="28px" />
                </asp:BoundField>
                <asp:BoundField DataField="B_2" HeaderText="B_2">
                    <ItemStyle Width="28px" />
                </asp:BoundField>
                <asp:BoundField DataField="B_3" HeaderText="B_3">
                    <ItemStyle Width="28px" />
                </asp:BoundField>
                <asp:BoundField DataField="B_4" HeaderText="B_4">
                    <ItemStyle Width="28px" />
                </asp:BoundField>
                <asp:BoundField DataField="B_5" HeaderText="B_5">
                    <ItemStyle Width="28px" />
                </asp:BoundField>
                <asp:BoundField DataField="B_6" HeaderText="B_6">
                    <ItemStyle Width="28px" />
                </asp:BoundField>
                <asp:BoundField DataField="B_7" HeaderText="B_7">
                    <ItemStyle Width="28px" />
                </asp:BoundField>
                <asp:BoundField DataField="B_8" HeaderText="B_8">
                    <ItemStyle Width="28px" />
                </asp:BoundField>
                <asp:BoundField DataField="B_9" HeaderText="B_9">
                    <ItemStyle Width="28px" />
                </asp:BoundField>
                <asp:BoundField DataField="B_10" HeaderText="B_10">
                    <ItemStyle Width="28px" />
                </asp:BoundField>
                <asp:BoundField DataField="B_11" HeaderText="B_11">
                    <ItemStyle Width="28px" />
                </asp:BoundField>
                <asp:BoundField DataField="B_12" HeaderText="B_12">
                    <ItemStyle Width="28px" />
                </asp:BoundField>
                <asp:BoundField DataField="B_13" HeaderText="B_13">
                    <ItemStyle Width="28px" />
                </asp:BoundField>
                <asp:BoundField DataField="B_14" HeaderText="B_14">
                    <ItemStyle Width="28px" />
                </asp:BoundField>
                <asp:BoundField DataField="B_15" HeaderText="B_15">
                    <ItemStyle Width="28px" />
                </asp:BoundField>
                <asp:BoundField DataField="B_16" HeaderText="B_16">
                    <ItemStyle Width="28px" />
                </asp:BoundField>
                <asp:BoundField DataField="B_17" HeaderText="B_17">
                    <ItemStyle Width="28px" />
                </asp:BoundField>
                <asp:BoundField DataField="B_18" HeaderText="B_18">
                    <ItemStyle Width="28px" />
                </asp:BoundField>
                <asp:BoundField DataField="B_19" HeaderText="B_19">
                    <ItemStyle Width="28px" />
                </asp:BoundField>
                <asp:BoundField DataField="B_20" HeaderText="B_20">
                    <ItemStyle Width="28px" />
                </asp:BoundField>
                <asp:BoundField DataField="B_21" HeaderText="B_21">
                    <ItemStyle Width="28px" />
                </asp:BoundField>
                <asp:BoundField DataField="B_22" HeaderText="B_22">
                    <ItemStyle Width="28px" />
                </asp:BoundField>
            </Columns>
        </asp:GridView>
        <asp:GridView ID="GridView2" runat="server" ShowHeader="false" OnRowCreated="GridView2_RowCreate"
            bordercolordark="#FFFFFF" align="center" CellPadding="0" bordercolorlight="#CCCCCC"
            CellSpacing="0" AutoGenerateColumns="False" Font-Size="12px" Width="100%">
            <Columns>
                <asp:BoundField>
                    <ItemStyle Height="0px" />
                </asp:BoundField>
            </Columns>
            <RowStyle Height="0px" Width="0px" />
        </asp:GridView>
    </div>
    <uc1:WebFoot ID="WebFoot1" runat="server" />
    </form>
</body>
</html>
