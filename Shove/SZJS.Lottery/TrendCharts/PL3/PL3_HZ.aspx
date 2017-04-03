<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PL3_HZ.aspx.cs" Inherits="View_PL3_HZ" %>

<%@ Register Src="../../Home/Room/UserControls/WebFoot.ascx" TagName="WebFoot" TagPrefix="uc1" %>
<%@ Register Src="../../UserControls/Head.ascx" TagName="Head" TagPrefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>排列三开奖号码和值分布图</title>
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
<h1>排列三&nbsp;&nbsp;和值分布图</h1>
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
                                        align="center" CellPadding="0" OnRowCreated="GridView1_RowCreated">
                                        <Columns>
                                            <asp:BoundField DataField="Isuse" HeaderText="期　数">
                                                <ItemStyle Width='50px' />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="LotteryNumber" HeaderText="开奖号">
                                                <ItemStyle Width='30px' Font-Bold="True" ForeColor='Blue' />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="H_Z" HeaderText="H_Z">
                                                <ItemStyle Width='20px' Font-Bold="True" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="H_100" HeaderText="H_100">
                                                <ItemStyle Width='2px' BackColor='#CCCCCC' />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="H_0" HeaderText="H_0">
                                                <ItemStyle Width='12px' ForeColor='#D7D7D7' />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="H_1" HeaderText="H_1">
                                                <ItemStyle Width='12px' ForeColor='#D7D7D7' />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="H_2" HeaderText="H_2">
                                                <ItemStyle Width='12px' ForeColor='#D7D7D7' />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="H_3" HeaderText="H_3">
                                                <ItemStyle Width='12px' ForeColor='#D7D7D7' />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="H_4" HeaderText="H_4">
                                                <ItemStyle Width='12px' ForeColor='#D7D7D7' />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="H_5" HeaderText="H_5">
                                                <ItemStyle Width='12px' ForeColor='#D7D7D7' />
                                            </asp:BoundField>
                                            <asp:BoundField HeaderText="H_6" DataField="H_6">
                                                <ItemStyle Width='12px' ForeColor='#D7D7D7' />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="H_101" HeaderText="H_101">
                                                <ItemStyle Width='2px' BackColor='#CCCCCC' />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="H_7" HeaderText="H_7">
                                                <ItemStyle Width='12px' ForeColor='#D7D7D7' />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="H_8" HeaderText="H_8">
                                                <ItemStyle Width='12px' ForeColor='#D7D7D7' />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="H_9" HeaderText="H_9">
                                                <ItemStyle Width='12px' ForeColor='#D7D7D7' />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="H_10" HeaderText="H_10">
                                                <ItemStyle Width='12px' ForeColor='#D7D7D7' />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="H_11" HeaderText="H_11">
                                                <ItemStyle Width='12px' ForeColor='#D7D7D7' />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="H_12" HeaderText="H_12">
                                                <ItemStyle Width='12px' ForeColor='#D7D7D7' />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="H_13" HeaderText="H_13">
                                                <ItemStyle Width='12px' ForeColor='#D7D7D7' />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="H_102" HeaderText="H_102">
                                                <ItemStyle Width='2px' BackColor='#CCCCCC' />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="H_14" HeaderText="H_14">
                                                <ItemStyle Width='12px' ForeColor='#D7D7D7' />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="H_15" HeaderText="H_15">
                                                <ItemStyle Width='12px' ForeColor='#D7D7D7' />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="H_16" HeaderText="H_16">
                                                <ItemStyle Width='12px' ForeColor='#D7D7D7' />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="H_17" HeaderText="H_17">
                                                <ItemStyle Width='12px' ForeColor='#D7D7D7' />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="H_18" HeaderText="H_18">
                                                <ItemStyle Width='12px' ForeColor='#D7D7D7' />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="H_19" HeaderText="H_19">
                                                <ItemStyle Width='12px' ForeColor='#D7D7D7' />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="H_20" HeaderText="H_20">
                                                <ItemStyle Width='12px' ForeColor='#D7D7D7' />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="H_103" HeaderText="H_103">
                                                <ItemStyle Width='2px' BackColor='#CCCCCC' />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="H_21" HeaderText="H_21">
                                                <ItemStyle Width='12px' ForeColor='#D7D7D7' />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="H_22" HeaderText="H_22">
                                                <ItemStyle Width='12px' ForeColor='#D7D7D7' />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="H_23" HeaderText="H_23">
                                                <ItemStyle Width='12px' ForeColor='#D7D7D7' />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="H_24" HeaderText="H_24">
                                                <ItemStyle Width='12px' ForeColor='#D7D7D7' />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="H_25" HeaderText="H_25">
                                                <ItemStyle Width='12px' ForeColor='#D7D7D7' />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="H_26" HeaderText="H_26">
                                                <ItemStyle Width='12px' ForeColor='#D7D7D7' />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="H_27" HeaderText="H_27">
                                                <ItemStyle Width='12px' ForeColor='#D7D7D7' />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="H_104" HeaderText="H_1O4">
                                                <ItemStyle Width='2px' BackColor='#CCCCCC' />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="Z_0" HeaderText="Z_0">
                                                <ItemStyle Width='12px' BackColor='#E3F4E3' ForeColor='Silver' />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="Z_1" HeaderText="Z_1">
                                                <ItemStyle Width='12px' BackColor='#E3F4E3' ForeColor='Silver' />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="Z_2" HeaderText="Z_2">
                                                <ItemStyle Width='12px' BackColor='#E3F4E3' ForeColor='Silver' />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="Z_3" HeaderText="Z_3">
                                                <ItemStyle Width='12px' BackColor='#E3F4E3' ForeColor='Silver' />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="Z_4" HeaderText="Z_4">
                                                <ItemStyle Width='12px' BackColor='#E3F4E3' ForeColor='Silver' />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="Z_5" HeaderText="Z_5">
                                                <ItemStyle Width='12px' BackColor='#E3F4E3' ForeColor='Silver' />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="Z_6" HeaderText="Z_6">
                                                <ItemStyle Width='12px' BackColor='#E3F4E3' ForeColor='Silver' />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="Z_7" HeaderText="Z_7">
                                                <ItemStyle Width='12px' BackColor='#E3F4E3' ForeColor='Silver' />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="Z_8" HeaderText="Z_8">
                                                <ItemStyle Width='12px' BackColor='#E3F4E3' ForeColor='Silver' />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="Z_9" HeaderText="Z_9">
                                                <ItemStyle Width='12px' BackColor='#E3F4E3' ForeColor='Silver' />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="H_105" HeaderText="H_105">
                                                <ItemStyle Width='2px' BackColor='#CCCCCC' />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="J_0" HeaderText="J_0">
                                                <ItemStyle Width='12px' ForeColor='White' />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="O_0" HeaderText="O_0">
                                                <ItemStyle Width='12px' ForeColor='White' />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="H_106" HeaderText="H_106">
                                                <ItemStyle Width='2px' BackColor='#CCCCCC' />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="D_0" HeaderText="D_0">
                                                <ItemStyle Width='12px' ForeColor='White' />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="X_0" HeaderText="X_0">
                                                <ItemStyle Width='12px' ForeColor='White' />
                                            </asp:BoundField>
                                        </Columns>
                                    </asp:GridView>
</div>
        <uc1:WebFoot ID="WebFoot1" runat="server" />

    </form>
</body>
</html>
