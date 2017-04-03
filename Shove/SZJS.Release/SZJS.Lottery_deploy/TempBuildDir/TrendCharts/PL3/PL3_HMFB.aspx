<%@ page language="C#" autoeventwireup="true" inherits="View_PL3_HMFB, App_Web_-s1no05i" enableEventValidation="false" %>

<%@ Register Src="../../Home/Room/UserControls/WebFoot.ascx" TagName="WebFoot" TagPrefix="uc1" %>
<%@ Register Src="../../UserControls/Head.ascx" TagName="Head" TagPrefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>排列三开奖号码大小分布图</title>
    <link href="../../Home/Room/Style/common.css" rel="stylesheet" type="text/css" />
    <link href="../../Home/Room/Style/StyleSheet.css" rel="stylesheet" type="text/css" />
    <link href="../../Home/Room/Style/zbuy.css" rel="stylesheet" type="text/css" />
    <link rel="shortcut icon" href="../../favicon.ico" />
 <link href="../../Home/Room/Style/zst.css" rel="stylesheet" type="text/css" />
    <script src="../../JavaScript/jquery-1.4.js" type="text/javascript"></script>

    <script type="text/javascript" language="javascript">

function Style(obj,statcolor,color)
{

 if(obj.style.backgroundColor=="")
 {
	obj.style.backgroundColor=statcolor;
	obj.style.color="#FFFFFF";
  }
	else
	{
	obj.style.backgroundColor="";
	obj.style.color=color;
	}
}
    </script>

</head>
<body>
    <form id="form1" runat="server">
    <uc2:Head ID="Head2" runat="server" />
    <div class="wrap">
<div class="zst_top">
<h1>排列三开奖号码大小分布图</h1>
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
                                        <asp:BoundField DataField="ID" HeaderText="序号" SortExpression="desc">
                                            <ItemStyle Width='25px' />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="Isuse" HeaderText="期数">
                                            <ItemStyle Width='60px' />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="LotteryNumber" HeaderText="开奖号">
                                            <ItemStyle Width='40px' BackColor='#CAD9E8' ForeColor='#EE0000' Font-Bold='True' />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="B_0" HeaderText="B_0">
                                            <ItemStyle Width='13px' ForeColor='Silver' />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="B_1" HeaderText="B_1">
                                            <ItemStyle Width='13px' ForeColor='Silver' />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="B_2" HeaderText="B_2">
                                            <ItemStyle Width='13px' ForeColor='Silver' />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="B_3" HeaderText="B_3">
                                            <ItemStyle Width='13px' ForeColor='Silver' />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="B_4" HeaderText="B_4">
                                            <ItemStyle Width='13px' ForeColor='Silver' />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="B_5" HeaderText="B_5">
                                            <ItemStyle Width='13px' ForeColor='Silver' />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="B_6" HeaderText="B_6">
                                            <ItemStyle Width='13px' ForeColor='Silver' />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="B_7" HeaderText="B_7">
                                            <ItemStyle Width='13px' ForeColor='Silver' />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="B_8" HeaderText="B_8">
                                            <ItemStyle Width='13px' ForeColor='Silver' />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="B_9" HeaderText="B_9">
                                            <ItemStyle Width='13px' ForeColor='Silver' />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="S_0" HeaderText="S_0">
                                            <ItemStyle Width='13px' BackColor='#D0E6F7' ForeColor='Silver' />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="S_1" HeaderText="S_1">
                                            <ItemStyle Width='13px' BackColor='#D0E6F7' ForeColor='Silver' />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="S_2" HeaderText="S_2">
                                            <ItemStyle Width='13px' BackColor='#D0E6F7' ForeColor='Silver' />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="S_3" HeaderText="S_3">
                                            <ItemStyle Width='13px' BackColor='#D0E6F7' ForeColor='Silver' />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="S_4" HeaderText="S_4">
                                            <ItemStyle Width='13px' BackColor='#D0E6F7' ForeColor='Silver' />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="S_5" HeaderText="S_5">
                                            <ItemStyle Width='13px' BackColor='#D0E6F7' ForeColor='Silver' />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="S_6" HeaderText="S_6">
                                            <ItemStyle Width='13px' BackColor='#D0E6F7' ForeColor='Silver' />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="S_7" HeaderText="S_7">
                                            <ItemStyle Width='13px' BackColor='#D0E6F7' ForeColor='Silver' />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="S_8" HeaderText="S_8">
                                            <ItemStyle Width='13px' BackColor='#D0E6F7' ForeColor='Silver' />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="S_9" HeaderText="S_9">
                                            <ItemStyle Width='13px' BackColor='#D0E6F7' ForeColor='Silver' />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="G_0" HeaderText="G_0">
                                            <ItemStyle Width='13px' ForeColor='Silver' />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="G_1" HeaderText="G_1">
                                            <ItemStyle Width='13px' ForeColor='Silver' />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="G_2" HeaderText="G_2">
                                            <ItemStyle Width='13px' ForeColor='Silver' />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="G_3" HeaderText="G_3">
                                            <ItemStyle Width='13px' ForeColor='Silver' />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="G_4" HeaderText="G_4">
                                            <ItemStyle Width='13px' ForeColor='Silver' />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="G_5" HeaderText="G_5">
                                            <ItemStyle Width='13px' ForeColor='Silver' />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="G_6" HeaderText="G_6">
                                            <ItemStyle Width='13px' ForeColor='Silver' />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="G_7" HeaderText="G_7">
                                            <ItemStyle Width='13px' ForeColor='Silver' />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="G_8" HeaderText="G_8">
                                            <ItemStyle Width='13px' ForeColor='Silver' />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="G_9" HeaderText="G_9">
                                            <ItemStyle Width='13px' ForeColor='Silver' />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="H_Z" HeaderText="H_Z">
                                            <ItemStyle Width='15px' BackColor='#FFD7EB' />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="J_O" HeaderText="J_O">
                                            <ItemStyle Width='20px' BackColor='#DFF0F0' />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="D_X" HeaderText="D_X">
                                            <ItemStyle Width='20px' BackColor='#FFF1D9' />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="K_0" HeaderText="K_0">
                                            <ItemStyle Width='13px' BackColor='#E6F2FB' ForeColor='Silver' />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="K_1" HeaderText="K_1">
                                            <ItemStyle Width='13px' BackColor='#E6F2FB' ForeColor='Silver' />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="K_2" HeaderText="K_2">
                                            <ItemStyle Width='13px' BackColor='#E6F2FB' ForeColor='Silver' />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="K_3" HeaderText="K_3">
                                            <ItemStyle Width='13px' BackColor='#E6F2FB' ForeColor='Silver' />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="K_4" HeaderText="K_4">
                                            <ItemStyle Width='13px' BackColor='#E6F2FB' ForeColor='Silver' />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="K_5" HeaderText="K_5">
                                            <ItemStyle Width='13px' BackColor='#E6F2FB' ForeColor='Silver' />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="K_6" HeaderText="K_6">
                                            <ItemStyle Width='13px' BackColor='#E6F2FB' ForeColor='Silver' />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="K_7" HeaderText="K_7">
                                            <ItemStyle Width='13px' BackColor='#E6F2FB' ForeColor='Silver' />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="K_8" HeaderText="K_8">
                                            <ItemStyle Width='13px' BackColor='#E6F2FB' ForeColor='Silver' />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="K_9" HeaderText="K_9">
                                            <ItemStyle Width='13px' BackColor='#E6F2FB' ForeColor='Silver' />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="H_0" HeaderText="H_0">
                                            <ItemStyle Width='13px' ForeColor='Silver' />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="H_1" HeaderText="H_1">
                                            <ItemStyle Width='13px' ForeColor='Silver' />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="H_2" HeaderText="H_2">
                                            <ItemStyle Width='13px' ForeColor='Silver' />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="H_3" HeaderText="H_3">
                                            <ItemStyle Width='13px' ForeColor='Silver' />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="H_4" HeaderText="H_4">
                                            <ItemStyle Width='13px' ForeColor='Silver' />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="H_5" HeaderText="H_5">
                                            <ItemStyle Width='13px' ForeColor='Silver' />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="H_6" HeaderText="H_6">
                                            <ItemStyle Width='13px' ForeColor='Silver' />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="H_7" HeaderText="H_7">
                                            <ItemStyle Width='13px' ForeColor='Silver' />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="H_8" HeaderText="H_8">
                                            <ItemStyle Width='13px' ForeColor='Silver' />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="H_9" HeaderText="H_9">
                                            <ItemStyle Width='13px' ForeColor='Silver' />
                                        </asp:BoundField>
                                    </Columns>
                                </asp:GridView>
    </div>
    <uc1:WebFoot ID="WebFoot1" runat="server" />
    </form>
</body>
</html>
