<%@ page language="C#" autoeventwireup="true" inherits="_7Xing_7X_YS, App_Web_1lgzyc3s" enableEventValidation="false" %>

<%@ Register Src="../../Home/Room/UserControls/WebFoot.ascx" TagName="WebFoot" TagPrefix="uc1" %>
<%@ Register Src="../../UserControls/Head.ascx" TagName="Head" TagPrefix="uc2" %>
<%@ Register Assembly="Shove.Web.UI.4 For.NET 3.5" Namespace="Shove.Web.UI" TagPrefix="ShoveWebUI" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>七星彩余数走试图</title>
    <link href="../../Home/Room/Style/common.css" rel="stylesheet" type="text/css" />
    <link href="../../Home/Room/Style/StyleSheet.css" rel="stylesheet" type="text/css" />
    <link href="../../Home/Room/Style/zbuy.css" rel="stylesheet" type="text/css" />
    <link rel="shortcut icon" href="../../favicon.ico" />
<link href="../../Home/Room/Style/zst.css" rel="stylesheet" type="text/css" />
    <script src="../../JavaScript/jquery-1.4.js" type="text/javascript"></script>

    <style type="text/css">
        input
        {
            margin-left: 10px;
            margin-top: -4px;
        }
        table tr td a
        {
            margin-right: 20px;
        }
        #GridView1
        {
            border: 0px;
        }
        #GridView1 tr td
        {
            text-align: center;
            line-height: 20px;
            border: solid 1px #ccc;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <uc2:Head ID="Head2" runat="server" />
<div class="wrap">
        <div class="zst_top">
            <h1>七星彩&nbsp;&nbsp;余数分布图</h1>
            <ul>
                <li><span>起始期数：</span>
                         <asp:RadioButton ID="RadioButton1" runat="server" Text="100期" AutoPostBack="True"
                            GroupName="group" OnCheckedChanged="RadioButton1_CheckedChanged1" />
                        <asp:RadioButton ID="RadioButton2" runat="server" Text="50期" AutoPostBack="True"
                            OnCheckedChanged="RadioButton2_CheckedChanged" GroupName="group" />
                        <asp:RadioButton ID="RadioButton3" runat="server" Text="30期" AutoPostBack="True"
                            Checked="true" OnCheckedChanged="RadioButton3_CheckedChanged" GroupName="group" />
                        <asp:RadioButton ID="RadioButton4" runat="server" Text="20期" AutoPostBack="True"
                            GroupName="group" OnCheckedChanged="RadioButton4_CheckedChanged1" />
                        <asp:RadioButton ID="RadioButton5" runat="server" Text="10期" AutoPostBack="True"
                            GroupName="group" OnCheckedChanged="RadioButton5_CheckedChanged1" />
                </li>
            </ul>
        </div>
    </div>
    <div class="wrap">
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" UseAccessibleHeader="False"
                            OnRowCreated="GridView1_RowCreated" ShowFooter="True" Width="100%" bordercolorlight="#808080"
                            bordercolordark="#FFFFFF" align="center" CellPadding="0" CellSpacing="0">
                            <Columns>
                                <asp:BoundField DataField="Isuse" HeaderText="期 数">
                                    <ItemStyle Width="60px" Font-Names="宋体" />
                                </asp:BoundField>
                                <asp:BoundField DataField="LotteryNumber" HeaderText="开奖号码">
                                    <ItemStyle Width="100px" Font-Bold="True" Font-Names="宋体" />
                                </asp:BoundField>
                                <asp:BoundField DataField="C_7_0" HeaderText="0">
                                    <ItemStyle Width="16px" />
                                </asp:BoundField>
                                <asp:BoundField DataField="C_7_1" HeaderText="1">
                                    <ItemStyle Width="16px" />
                                </asp:BoundField>
                                <asp:BoundField DataField="C_7_2" HeaderText="2">
                                    <ItemStyle Width="16px" />
                                </asp:BoundField>
                                <asp:BoundField DataField="C_7_3" HeaderText="3">
                                    <ItemStyle Width="16px" />
                                </asp:BoundField>
                                <asp:BoundField DataField="C_7_4" HeaderText="4">
                                    <ItemStyle Width="16px" />
                                </asp:BoundField>
                                <asp:BoundField DataField="C_7_5" HeaderText="5">
                                    <ItemStyle Width="16px" />
                                </asp:BoundField>
                                <asp:BoundField DataField="C_7_6" HeaderText="6">
                                    <ItemStyle Width="16px" />
                                </asp:BoundField>
                                <asp:BoundField DataField="C_5_0" HeaderText="0">
                                    <ItemStyle Width="16px" />
                                </asp:BoundField>
                                <asp:BoundField DataField="C_5_1" HeaderText="1">
                                    <ItemStyle Width="16px" />
                                </asp:BoundField>
                                <asp:BoundField DataField="C_5_2" HeaderText="2">
                                    <ItemStyle Width="16px" />
                                </asp:BoundField>
                                <asp:BoundField DataField="C_5_3" HeaderText="3">
                                    <ItemStyle Width="16px" />
                                </asp:BoundField>
                                <asp:BoundField DataField="C_5_4" HeaderText="4">
                                    <ItemStyle Width="16px" />
                                </asp:BoundField>
                                <asp:BoundField DataField="C_3_0" HeaderText="0">
                                    <ItemStyle Width="16px" />
                                </asp:BoundField>
                                <asp:BoundField DataField="C_3_1" HeaderText="1">
                                    <ItemStyle Width="16px" />
                                </asp:BoundField>
                                <asp:BoundField DataField="C_3_2" HeaderText="2">
                                    <ItemStyle Width="16px" />
                                </asp:BoundField>
                            </Columns>
                        </asp:GridView>
</div>
    <uc1:WebFoot ID="WebFoot1" runat="server" />
    </form>
</body>
</html>
