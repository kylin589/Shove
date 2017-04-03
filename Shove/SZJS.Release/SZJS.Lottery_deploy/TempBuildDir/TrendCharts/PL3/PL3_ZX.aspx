<%@ page language="C#" autoeventwireup="true" inherits="View_PL3_ZX, App_Web_-s1no05i" enableEventValidation="false" %>

<%@ Register Src="../../Home/Room/UserControls/WebFoot.ascx" TagName="WebFoot" TagPrefix="uc1" %>
<%@ Register Src="../../UserControls/Head.ascx" TagName="Head" TagPrefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>排列三开奖号码组选分析图</title>
     <link href="../../Home/Room/Style/common.css" rel="stylesheet" type="text/css" />
    <link href="../../Home/Room/Style/StyleSheet.css" rel="stylesheet" type="text/css" />
    <link href="../../Home/Room/Style/zbuy.css" rel="stylesheet" type="text/css" />
    <link rel="shortcut icon" href="../../favicon.ico" />

    <script src="../../JavaScript/jquery-1.4.js" type="text/javascript"></script>

    <link href="../../Home/Room/Style/zst.css" rel="stylesheet" type="text/css" />

    <script type="text/javascript" language="javascript">

    <script type="text/javascript" language="javascript">

        function Style(obj, statcolor, color, text) {

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

</head>
<body>
    <form id="form1" runat="server">
     <uc2:Head ID="Head2" runat="server" />
    <div class="wrap">
        <div class="zst_top">
            <h1>
                排列三开奖号码组选分析图</h1>
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
                <li>
                    <asp:Label ID="lbAd" runat="server"></asp:Label>
                    <asp:Label ID="lbAd1" runat="server"></asp:Label>
                    <asp:Label ID="lbAd2" runat="server"></asp:Label>
                </li>
            </ul>
        </div>
    </div>
    <div class="wrap">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" UseAccessibleHeader="False"
            ShowFooter="True" Width="100%" bordercolorlight="#808080" bordercolordark="#FFFFFF"
            OnRowCreated="GridView1_RowCreated" align="center" CellPadding="0">
            <Columns>
                <asp:BoundField DataField="Isuse" HeaderText="期数">
                    <ItemStyle Width="60" />
                </asp:BoundField>
                <asp:BoundField DataField="LotteryNumber" HeaderText="开奖号码">
                    <ItemStyle Width="60" Font-Bold="true" ForeColor="#0000FF" />
                </asp:BoundField>
                <asp:BoundField DataField="A_5" HeaderText="A_5">
                    <ItemStyle Width="15" />
                </asp:BoundField>
                <asp:BoundField DataField="A_6" HeaderText="A_6">
                    <ItemStyle Width="15" />
                </asp:BoundField>
                <asp:BoundField DataField="A_7" HeaderText="A_7">
                    <ItemStyle Width="15" />
                </asp:BoundField>
                <asp:BoundField DataField="A_8" HeaderText="A_8">
                    <ItemStyle Width="15" />
                </asp:BoundField>
                <asp:BoundField DataField="A_9" HeaderText="A_9">
                    <ItemStyle Width="15" />
                </asp:BoundField>
                <asp:BoundField DataField="C_0" HeaderText="C_0">
                    <ItemStyle Width="15" />
                </asp:BoundField>
                <asp:BoundField DataField="C_1" HeaderText="C_1">
                    <ItemStyle Width="15" />
                </asp:BoundField>
                <asp:BoundField DataField="C_2" HeaderText="C_2">
                    <ItemStyle Width="15" />
                </asp:BoundField>
                <asp:BoundField DataField="C_3" HeaderText="C_3">
                    <ItemStyle Width="15" />
                </asp:BoundField>
                <asp:BoundField DataField="C_4" HeaderText="C_4">
                    <ItemStyle Width="15" />
                </asp:BoundField>
                <asp:BoundField DataField="C_5" HeaderText="C_5">
                    <ItemStyle Width="15" />
                </asp:BoundField>
                <asp:BoundField DataField="C_6" HeaderText="C_6">
                    <ItemStyle Width="15" />
                </asp:BoundField>
                <asp:BoundField DataField="C_7" HeaderText="C_7">
                    <ItemStyle Width="15" />
                </asp:BoundField>
                <asp:BoundField DataField="C_8" HeaderText="C_8">
                    <ItemStyle Width="15" />
                </asp:BoundField>
                <asp:BoundField DataField="C_9" HeaderText="C_9">
                    <ItemStyle Width="15" />
                </asp:BoundField>
                <asp:BoundField DataField="A_0" HeaderText="A_0">
                    <ItemStyle Width="15" />
                </asp:BoundField>
                <asp:BoundField DataField="A_1" HeaderText="A_1">
                    <ItemStyle Width="15" />
                </asp:BoundField>
                <asp:BoundField DataField="A_2" HeaderText="A_2">
                    <ItemStyle Width="15" />
                </asp:BoundField>
                <asp:BoundField DataField="A_3" HeaderText="A_3">
                    <ItemStyle Width="15" />
                </asp:BoundField>
                <asp:BoundField DataField="A_4" HeaderText="A_4">
                    <ItemStyle Width="15" />
                </asp:BoundField>
            </Columns>
        </asp:GridView>
    </div>
   <uc1:WebFoot ID="WebFoot1" runat="server" />
    </form>
</body>
</html>
