<%@ page language="C#" autoeventwireup="true" inherits="View_PL3_DZX, App_Web_-s1no05i" enableEventValidation="false" %>

<%@ Register Src="../../Home/Room/UserControls/WebFoot.ascx" TagName="WebFoot" TagPrefix="uc1" %>
<%@ Register Src="../../UserControls/Head.ascx" TagName="Head" TagPrefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>排列三开奖号码大中小分布图</title>
    <link href="../../Home/Room/Style/common.css" rel="stylesheet" type="text/css" />
    <link href="../../Home/Room/Style/StyleSheet.css" rel="stylesheet" type="text/css" />
    <link href="../../Home/Room/Style/zbuy.css" rel="stylesheet" type="text/css" />
    <link rel="shortcut icon" href="../../favicon.ico" />
 <link href="../../Home/Room/Style/zst.css" rel="stylesheet" type="text/css" />
    <script src="../../JavaScript/jquery-1.4.js" type="text/javascript"></script>

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

</head>
<body>
    <form id="form1" runat="server">
    <uc2:Head ID="Head2" runat="server" />
 <div class="wrap">
<div class="zst_top">
<h1>排列三&nbsp;&nbsp;大中小分布图</h1>
<ul>
<li> <span>起始期数：</span>
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
<div class="clear"></div>
<li>
<asp:Label ID="lbAd" runat="server"></asp:Label> <asp:Label ID="lbAd1" runat="server"></asp:Label> <asp:Label ID="lbAd2" runat="server"></asp:Label>
 </li>

</ul>
</div> 
</div>
    <div class="wrap">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" UseAccessibleHeader="False"
                                        ShowFooter="True" Width="100%" bordercolorlight="#808080" bordercolordark="#FFFFFF"
                                        OnRowCreated="GridView1_RowCreated" align="center" CellPadding="0">
                                        <Columns>
                                            <asp:BoundField DataField="Isuse" HeaderText="期 数">
                                                <ItemStyle Width="50" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="LotteryNumber" HeaderText="开奖号码">
                                                <ItemStyle Width="50" Font-Bold="true" ForeColor="#0000FF" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="B_0" HeaderText="B_0">
                                                <ItemStyle Width="16" BackColor="#FCDFC5" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="B_1" HeaderText="B_1">
                                                <ItemStyle Width="16" BackColor="#FCDFC5" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="B_2" HeaderText="B_2">
                                                <ItemStyle Width="16" BackColor="#FCDFC5" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="B_3" HeaderText="B_3">
                                                <ItemStyle Width="16" BackColor="#FCDFC5" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="B_4" HeaderText="B_4">
                                                <ItemStyle Width="16" BackColor="#FCDFC5" />
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
                                            <asp:BoundField DataField="Z_0" HeaderText="Z_0">
                                                <ItemStyle Width="14" BackColor="#FFCC33" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="Z_1" HeaderText="Z_1">
                                                <ItemStyle Width="14" BackColor="#FFCC33" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="Z_2" HeaderText="Z_2">
                                                <ItemStyle Width="14" BackColor="#FFCC33" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="Z_3" HeaderText="Z_3">
                                                <ItemStyle Width="14" BackColor="#FFCC33" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="D_0" HeaderText="D_0">
                                                <ItemStyle Width="14" BackColor="#FFFFFF" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="D_1" HeaderText="D_1">
                                                <ItemStyle Width="14" BackColor="#FFFFFF" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="D_2" HeaderText="D_2">
                                                <ItemStyle Width="14" BackColor="#FFFFFF" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="D_3" HeaderText="D_3">
                                                <ItemStyle Width="14" BackColor="#FFFFFF" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="L_0" HeaderText="L_0">
                                                <ItemStyle Width="14" BackColor="#A6D7C1" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="L_1" HeaderText="L_1">
                                                <ItemStyle Width="14" BackColor="#A6D7C1" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="L_2" HeaderText="L_2">
                                                <ItemStyle Width="14" BackColor="#A6D7C1" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="L_3" HeaderText="L_3">
                                                <ItemStyle Width="14" BackColor="#A6D7C1" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="A" HeaderText="A">
                                                <ItemStyle Width="14" BackColor="#FFFFFF" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="bb" HeaderText="B">
                                                <ItemStyle Width="14" BackColor="#FFFFFF" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="C" HeaderText="C">
                                                <ItemStyle Width="14" BackColor="#FFFFFF" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="D" HeaderText="D">
                                                <ItemStyle Width="14" BackColor="#FFFFFF" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="E" HeaderText="E">
                                                <ItemStyle Width="14" BackColor="#FFFFFF" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="F" HeaderText="F">
                                                <ItemStyle Width="14" BackColor="#FFFFFF" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="gg" HeaderText="G">
                                                <ItemStyle Width="14" BackColor="#FFFFFF" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="H" HeaderText="H">
                                                <ItemStyle Width="14" BackColor="#FFFFFF" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="I" HeaderText="I">
                                                <ItemStyle Width="14" BackColor="#FFFFFF" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="J" HeaderText="J">
                                                <ItemStyle Width="14" BackColor="#FFFFFF" />
                                            </asp:BoundField>
                                        </Columns>
                                    </asp:GridView>
    </div>
    <uc1:WebFoot ID="WebFoot1" runat="server" />
    </form>
</body>
</html>
