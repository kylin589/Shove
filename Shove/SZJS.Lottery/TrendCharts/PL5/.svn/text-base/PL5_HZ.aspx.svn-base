<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PL5_HZ.aspx.cs" Inherits="PL5_PL5_HZ" %>

<%@ Register Src="../../Home/Room/UserControls/WebFoot.ascx" TagName="WebFoot" TagPrefix="uc1" %>
<%@ Register Src="../../UserControls/Head.ascx" TagName="Head" TagPrefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>排列五开奖号码和值分布图</title>
    <link href="../../Home/Room/Style/common.css" rel="stylesheet" type="text/css" />
    <link href="../../Home/Room/Style/StyleSheet.css" rel="stylesheet" type="text/css" />
    <link href="../../Home/Room/Style/zbuy.css" rel="stylesheet" type="text/css" />
    <link rel="shortcut icon" href="../../favicon.ico" />
 <link href="../../Home/Room/Style/zst.css" rel="stylesheet" type="text/css" />
    <script src="../../JavaScript/jquery-1.4.js" type="text/javascript"></script>
 <link href="../../Home/Room/Style/zst.css" rel="stylesheet" type="text/css" />
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
<h1>排列五开奖号码和值分布图</h1>
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
    <div class ="wrap">
 
                                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" UseAccessibleHeader="False"
                                        ShowFooter="True" Width="100%" bordercolorlight="#808080" bordercolordark="#FFFFFF"
                                        OnRowCreated="GridView1_RowCreated" align="center" CellPadding="0">
                                        <Columns>
                                            <asp:BoundField DataField="Isuse" HeaderText="期  数">
                                                <ItemStyle Width="50" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="LotteryNumber" HeaderText=" 开奖号码">
                                                <ItemStyle Width="50" Font-Bold="true" ForeColor="#0000FF" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="H_Z" HeaderText="和值">
                                                <ItemStyle Width="20" Font-Bold="true" ForeColor="#000000" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="B_10" HeaderText="B_10">
                                                <ItemStyle Width="14" ForeColor="#C0C0C0" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="B_11" HeaderText="B_11">
                                                <ItemStyle Width="14" ForeColor="#C0C0C0" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="B_12" HeaderText="B_12">
                                                <ItemStyle Width="14" ForeColor="#C0C0C0" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="B_13" HeaderText="B_13">
                                                <ItemStyle Width="14" ForeColor="#C0C0C0" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="B_14" HeaderText="B_14">
                                                <ItemStyle Width="14" ForeColor="#C0C0C0" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="B_15" HeaderText="B_15">
                                                <ItemStyle Width="14" ForeColor="#C0C0C0" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="B_16" HeaderText="B_16">
                                                <ItemStyle Width="14" ForeColor="#C0C0C0" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="B_17" HeaderText="B_17">
                                                <ItemStyle Width="14" ForeColor="#C0C0C0" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="B_18" HeaderText="B_18">
                                                <ItemStyle Width="14" ForeColor="#C0C0C0" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="B_19" HeaderText="B_19">
                                                <ItemStyle Width="14" ForeColor="#C0C0C0" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="B_20" HeaderText="B_20">
                                                <ItemStyle Width="14" ForeColor="#C0C0C0" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="B_21" HeaderText="B_21">
                                                <ItemStyle Width="14" ForeColor="#C0C0C0" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="B_22" HeaderText="B_22">
                                                <ItemStyle Width="14" ForeColor="#C0C0C0" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="B_23" HeaderText="B_23">
                                                <ItemStyle Width="14" ForeColor="#C0C0C0" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="B_24" HeaderText="B_24">
                                                <ItemStyle Width="14" ForeColor="#C0C0C0" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="B_25" HeaderText="B_25">
                                                <ItemStyle Width="14" ForeColor="#C0C0C0" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="B_26" HeaderText="B_26">
                                                <ItemStyle Width="14" ForeColor="#C0C0C0" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="B_27" HeaderText="B_27">
                                                <ItemStyle Width="14" ForeColor="#C0C0C0" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="B_28" HeaderText="B_28">
                                                <ItemStyle Width="14" ForeColor="#C0C0C0" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="B_29" HeaderText="B_29">
                                                <ItemStyle Width="14" ForeColor="#C0C0C0" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="B_30" HeaderText="B_30">
                                                <ItemStyle Width="14" ForeColor="#C0C0C0" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="B_31" HeaderText="B_31">
                                                <ItemStyle Width="14" ForeColor="#C0C0C0" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="B_32" HeaderText="B_32">
                                                <ItemStyle Width="14" ForeColor="#C0C0C0" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="B_33" HeaderText="B_33">
                                                <ItemStyle Width="14" ForeColor="#C0C0C0" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="B_34" HeaderText="B_34">
                                                <ItemStyle Width="14" ForeColor="#C0C0C0" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="B_35" HeaderText="B_35">
                                                <ItemStyle Width="14" ForeColor="#C0C0C0" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="B_36" HeaderText="B_36">
                                                <ItemStyle Width="14" ForeColor="#C0C0C0" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="B_37" HeaderText="B_37">
                                                <ItemStyle Width="14" ForeColor="#C0C0C0" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="S_0" HeaderText="S_0">
                                                <ItemStyle Width="14" ForeColor="#C0C0C0" BackColor="#E3F4E3" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="S_1" HeaderText="S_1">
                                                <ItemStyle Width="14" ForeColor="#C0C0C0" BackColor="#E3F4E3" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="S_2" HeaderText="S_2">
                                                <ItemStyle Width="14" ForeColor="#C0C0C0" BackColor="#E3F4E3" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="S_3" HeaderText="S_3">
                                                <ItemStyle Width="14" ForeColor="#C0C0C0" BackColor="#E3F4E3" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="S_4" HeaderText="S_4">
                                                <ItemStyle Width="14" ForeColor="#C0C0C0" BackColor="#E3F4E3" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="S_5" HeaderText="S_5">
                                                <ItemStyle Width="14" ForeColor="#C0C0C0" BackColor="#E3F4E3" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="S_6" HeaderText="S_6">
                                                <ItemStyle Width="14" ForeColor="#C0C0C0" BackColor="#E3F4E3" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="S_7" HeaderText="S_7">
                                                <ItemStyle Width="14" ForeColor="#C0C0C0" BackColor="#E3F4E3" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="S_8" HeaderText="S_8">
                                                <ItemStyle Width="14" ForeColor="#C0C0C0" BackColor="#E3F4E3" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="S_9" HeaderText="S_9">
                                                <ItemStyle Width="14" ForeColor="#C0C0C0" BackColor="#E3F4E3" />
                                            </asp:BoundField>
                                        </Columns>
                                    </asp:GridView>
                               
    </div>
    <uc1:WebFoot ID="WebFoot1" runat="server" />
    </form>
</body>
</html>
