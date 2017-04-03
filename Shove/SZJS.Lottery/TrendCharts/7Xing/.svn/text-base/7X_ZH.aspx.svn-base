<%@ Page Language="C#" AutoEventWireup="true" CodeFile="7X_ZH.aspx.cs" Inherits="_7Xing_7X_ZH" %>

<%@ Register Src="../../Home/Room/UserControls/WebFoot.ascx" TagName="WebFoot" TagPrefix="uc1" %>
<%@ Register Src="../../UserControls/Head.ascx" TagName="Head" TagPrefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>七星彩质合分布图</title>
    <link href="../../Home/Room/Style/common.css" rel="stylesheet" type="text/css" />
    <link href="../../Home/Room/Style/StyleSheet.css" rel="stylesheet" type="text/css" />
    <link href="../../Home/Room/Style/zbuy.css" rel="stylesheet" type="text/css" />
    <link rel="shortcut icon" href="../../favicon.ico" />

    <script src="../../JavaScript/jquery-1.4.js" type="text/javascript"></script>
<link href="../../Home/Room/Style/zst.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" language="javascript">

        function Style(obj, statcolor, color) {

            if (obj.style.backgroundColor == "") {
                obj.style.backgroundColor = statcolor;
                obj.style.color = "#FFFFFF";
            }
            else {
                obj.style.backgroundColor = "";
                obj.style.color = color;
            }
        }
    </script>

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
            <h1>七星彩&nbsp;&nbsp;质合分布图</h1>
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
                            ShowHeader="true" ShowFooter="True" Width="100%" bordercolorlight="#808080" bordercolordark="#FFFFFF"
                            OnRowCreated="GridView1_RowCreated" align="center" CellPadding="0">
                            <Columns>
                                <asp:BoundField DataField="Isuse" HeaderText="期数">
                                    <ItemStyle Width="50" />
                                </asp:BoundField>
                                <asp:BoundField DataField="LotteryNumber" HeaderText="开奖号码">
                                    <ItemStyle Width="50" Font-Bold="true" ForeColor="#0000FF" />
                                </asp:BoundField>
                                <asp:BoundField DataField="A_0" HeaderText="A_0">
                                    <ItemStyle Width="16" BackColor="#FCDFC5" />
                                </asp:BoundField>
                                <asp:BoundField DataField="A_1" HeaderText="A_1">
                                    <ItemStyle Width="16" BackColor="#FCDFC5" />
                                </asp:BoundField>
                                <asp:BoundField DataField="A_2" HeaderText="A_2">
                                    <ItemStyle Width="16" BackColor="#FCDFC5" />
                                </asp:BoundField>
                                <asp:BoundField DataField="A_3" HeaderText="A_3">
                                    <ItemStyle Width="16" BackColor="#FCDFC5" />
                                </asp:BoundField>
                                <asp:BoundField DataField="A_4" HeaderText="A_4">
                                    <ItemStyle Width="16" BackColor="#FCDFC5" />
                                </asp:BoundField>
                                <asp:BoundField DataField="C_0" HeaderText="C_0">
                                    <ItemStyle Width="16" BackColor="#DDFFE6" />
                                </asp:BoundField>
                                <asp:BoundField DataField="C_1" HeaderText="C_1">
                                    <ItemStyle Width="16" BackColor="#DDFFE6" />
                                </asp:BoundField>
                                <asp:BoundField DataField="C_2" HeaderText="C_2">
                                    <ItemStyle Width="16" BackColor="#DDFFE6" />
                                </asp:BoundField>
                                <asp:BoundField DataField="C_3" HeaderText="C_3">
                                    <ItemStyle Width="16" BackColor="#DDFFE6" />
                                </asp:BoundField>
                                <asp:BoundField DataField="C_4" HeaderText="C_4">
                                    <ItemStyle Width="16" BackColor="#DDFFE6" />
                                </asp:BoundField>
                                <asp:BoundField DataField="W_0" HeaderText="W_0">
                                    <ItemStyle Width="16" BackColor="#C1E7FF" />
                                </asp:BoundField>
                                <asp:BoundField DataField="W_1" HeaderText="W_1">
                                    <ItemStyle Width="16" BackColor="#C1E7FF" />
                                </asp:BoundField>
                                <asp:BoundField DataField="W_2" HeaderText="W_2">
                                    <ItemStyle Width="16" BackColor="#C1E7FF" />
                                </asp:BoundField>
                                <asp:BoundField DataField="W_3" HeaderText="W_3">
                                    <ItemStyle Width="16" BackColor="#C1E7FF" />
                                </asp:BoundField>
                                <asp:BoundField DataField="W_4" HeaderText="W_4">
                                    <ItemStyle Width="16" BackColor="#C1E7FF" />
                                </asp:BoundField>
                                <asp:BoundField DataField="Q_0" HeaderText="Q_0">
                                    <ItemStyle Width="16" BackColor="#DDFFE6" />
                                </asp:BoundField>
                                <asp:BoundField DataField="Q_1" HeaderText="Q_1">
                                    <ItemStyle Width="16" BackColor="#DDFFE6" />
                                </asp:BoundField>
                                <asp:BoundField DataField="Q_2" HeaderText="Q_2">
                                    <ItemStyle Width="16" BackColor="#DDFFE6" />
                                </asp:BoundField>
                                <asp:BoundField DataField="Q_3" HeaderText="Q_3">
                                    <ItemStyle Width="16" BackColor="#DDFFE6" />
                                </asp:BoundField>
                                <asp:BoundField DataField="Q_4" HeaderText="Q_4">
                                    <ItemStyle Width="16" BackColor="#DDFFE6" />
                                </asp:BoundField>
                                <asp:BoundField DataField="B_0" HeaderText="B_0">
                                    <ItemStyle Width="16" BackColor="#C1E7FF" />
                                </asp:BoundField>
                                <asp:BoundField DataField="B_1" HeaderText="B_1">
                                    <ItemStyle Width="16" BackColor="#C1E7FF" />
                                </asp:BoundField>
                                <asp:BoundField DataField="B_2" HeaderText="B_2">
                                    <ItemStyle Width="16" BackColor="#C1E7FF" />
                                </asp:BoundField>
                                <asp:BoundField DataField="B_3" HeaderText="B_3">
                                    <ItemStyle Width="16" BackColor="#C1E7FF" />
                                </asp:BoundField>
                                <asp:BoundField DataField="B_4" HeaderText="B_4">
                                    <ItemStyle Width="16" BackColor="#C1E7FF" />
                                </asp:BoundField>
                                <asp:BoundField DataField="S_0" HeaderText="S_0">
                                    <ItemStyle Width="16" BackColor="#DDFFE6" />
                                </asp:BoundField>
                                <asp:BoundField DataField="S_1" HeaderText="S_1">
                                    <ItemStyle Width="16" BackColor="#DDFFE6" />
                                </asp:BoundField>
                                <asp:BoundField DataField="S_2" HeaderText="S_2">
                                    <ItemStyle Width="16" BackColor="#DDFFE6" />
                                </asp:BoundField>
                                <asp:BoundField DataField="S_3" HeaderText="S_3">
                                    <ItemStyle Width="16" BackColor="#DDFFE6" />
                                </asp:BoundField>
                                <asp:BoundField DataField="S_4" HeaderText="S_4">
                                    <ItemStyle Width="16" BackColor="#DDFFE6" />
                                </asp:BoundField>
                                <asp:BoundField DataField="G_0" HeaderText="G_0">
                                    <ItemStyle Width="16" BackColor="#C1E7FF" />
                                </asp:BoundField>
                                <asp:BoundField DataField="G_1" HeaderText="G_1">
                                    <ItemStyle Width="16" BackColor="#C1E7FF" />
                                </asp:BoundField>
                                <asp:BoundField DataField="G_2" HeaderText="G_2">
                                    <ItemStyle Width="16" BackColor="#C1E7FF" />
                                </asp:BoundField>
                                <asp:BoundField DataField="G_3" HeaderText="G_3">
                                    <ItemStyle Width="16" BackColor="#C1E7FF" />
                                </asp:BoundField>
                                <asp:BoundField DataField="G_4" HeaderText="G_4">
                                    <ItemStyle Width="16" BackColor="#C1E7FF" />
                                </asp:BoundField>
                            </Columns>
                        </asp:GridView>
 </div>
    <uc1:WebFoot ID="WebFoot1" runat="server" />
    </form>
</body>
</html>
