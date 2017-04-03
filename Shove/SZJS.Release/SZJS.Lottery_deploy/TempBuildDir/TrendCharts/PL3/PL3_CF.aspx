<%@ page language="C#" autoeventwireup="true" inherits="View_PL3_CF, App_Web_-s1no05i" enableEventValidation="false" %>

<%@ Register Src="../../Home/Room/UserControls/WebFoot.ascx" TagName="WebFoot" TagPrefix="uc1" %>
<%@ Register Src="../../UserControls/Head.ascx" TagName="Head" TagPrefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>排列3走势图</title>
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
<h1>排列三&nbsp;&nbsp;重复分布图</h1>
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
</div> 
</div>
      <div class="wrap">
      <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" UseAccessibleHeader="False"
                                        OnRowCreated="GridView1_RowCreated" ShowFooter="True" Width="100%" bordercolorlight="#808080"
                                        bordercolordark="#FFFFFF" align="center" CellPadding="0" CellSpacing="0">
                                        <Columns>
                                            <asp:BoundField DataField="Isuse" HeaderText="期  数">
                                                <ItemStyle Width="15%" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="LotteryNumber" HeaderText="开奖号码">
                                                <ItemStyle Width="35%" Font-Bold="true" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="C_0" HeaderText="0">
                                                <HeaderStyle ForeColor="Red" Width="5%" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="C_1" HeaderText="1">
                                                <HeaderStyle ForeColor="Red" Width="5%" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="C_2" HeaderText="2">
                                                <HeaderStyle ForeColor="Red" Width="5%" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="C_3" HeaderText="3">
                                                <HeaderStyle ForeColor="Red" Width="5%" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="C_4" HeaderText="4">
                                                <HeaderStyle ForeColor="Red" Width="5%" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="C_5" HeaderText="5">
                                                <HeaderStyle ForeColor="Red" Width="5%" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="C_6" HeaderText="6">
                                                <HeaderStyle ForeColor="Red" Width="5%" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="C_7" HeaderText="7">
                                                <HeaderStyle ForeColor="Red" Width="5%" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="C_8" HeaderText="8">
                                                <HeaderStyle ForeColor="Red" Width="5%" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="C_9" HeaderText="9">
                                                <HeaderStyle ForeColor="Red" Width="5%" />
                                            </asp:BoundField>
                                        </Columns>
                                    </asp:GridView>
      </div>  
        <uc1:WebFoot ID="WebFoot1" runat="server" />

    </form>
</body>
</html>
