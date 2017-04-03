<%@ page language="C#" autoeventwireup="true" inherits="View_PL3_WH, App_Web_-s1no05i" enableEventValidation="false" %>
<%@ Register Src="../../Home/Room/UserControls/WebFoot.ascx" TagName="WebFoot" TagPrefix="uc1" %>
<%@ Register Src="../../UserControls/Head.ascx" TagName="Head" TagPrefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>排列三开奖号码位和分布图</title>
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
<h1>排列三&nbsp;&nbsp;位和分布图</h1>
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
<%--<a href="<%= _Site.Url %>" target="_blank"><%=_Site.Name %>首页</a> 
<a href="<%= ResolveUrl("~/Lottery/Buy_PL3.aspx") %>" target="_blank">排列三投注/合买</a>
<a href="<%= ResolveUrl("~/WinQuery/63-0-0.aspx") %>" target="_blank">排列三中奖查询</a>--%>
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
                                        <asp:BoundField DataField="Isuse" HeaderText="期  数">
                                            <ItemStyle Width='50px' />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="LotteryNumber" HeaderText="开奖号码">
                                            <ItemStyle Width='30px' Font-Bold="true" ForeColor='#0000FF' />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="H_Z" HeaderText="H_Z">
                                            <ItemStyle Width='20px' Font-Bold="true" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="B_0" HeaderText="B_0">
                                            <ItemStyle Width='12px' BackColor='#E3EAF9' ForeColor='#C0C0C0' />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="B_1" HeaderText="B_1">
                                            <ItemStyle Width='12px' BackColor='#E3EAF9' ForeColor='#C0C0C0' />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="B_2" HeaderText="B_2">
                                            <ItemStyle Width='12px' BackColor='#E3EAF9' ForeColor='#C0C0C0' />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="B_3" HeaderText="B_3">
                                            <ItemStyle Width='12px' BackColor='#E3EAF9' ForeColor='#C0C0C0' />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="B_4" HeaderText="B_4">
                                            <ItemStyle Width='12px' BackColor='#E3EAF9' ForeColor='#C0C0C0' />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="B_5" HeaderText="B_5">
                                            <ItemStyle Width='12px' BackColor='#E3EAF9' ForeColor='#C0C0C0' />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="B_6" HeaderText="B_6">
                                            <ItemStyle Width='12px' BackColor='#E3EAF9' ForeColor='#C0C0C0' />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="B_7" HeaderText="B_7">
                                            <ItemStyle Width='12px' BackColor='#E3EAF9' ForeColor='#C0C0C0' />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="B_8" HeaderText="B_8">
                                            <ItemStyle Width='12px' BackColor='#E3EAF9' ForeColor='#C0C0C0' />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="B_9" HeaderText="B_9">
                                            <ItemStyle Width='12px' BackColor='#E3EAF9' ForeColor='#C0C0C0' />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="B_10" HeaderText="B_10">
                                            <ItemStyle Width='12px' BackColor='#E3EAF9' ForeColor='#C0C0C0' />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="B_11" HeaderText="B_11">
                                            <ItemStyle Width='12px' BackColor='#E3EAF9' ForeColor='#C0C0C0' />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="B_12" HeaderText="B_12">
                                            <ItemStyle Width='12px' BackColor='#E3EAF9' ForeColor='#C0C0C0' />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="B_13" HeaderText="B_13">
                                            <ItemStyle Width='12px' BackColor='#E3EAF9' ForeColor='#C0C0C0' />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="B_14" HeaderText="B_14">
                                            <ItemStyle Width='12px' BackColor='#E3EAF9' ForeColor='#C0C0C0' />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="B_15" HeaderText="B_15">
                                            <ItemStyle Width='12px' BackColor='#E3EAF9' ForeColor='#C0C0C0' />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="B_16" HeaderText="B_16">
                                            <ItemStyle Width='12px' BackColor='#E3EAF9' ForeColor='#C0C0C0' />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="B_17" HeaderText="B_17">
                                            <ItemStyle Width='12px' BackColor='#E3EAF9' ForeColor='#C0C0C0' />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="B_18" HeaderText="B_18">
                                            <ItemStyle Width='12px' BackColor='#E3EAF9' ForeColor='#C0C0C0' />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="S_0" HeaderText="S_0">
                                            <ItemStyle Width='12px' BackColor='#DCEDD3' ForeColor='#C0C0C0' />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="S_1" HeaderText="S_1">
                                            <ItemStyle Width='12px' BackColor='#DCEDD3' ForeColor='#C0C0C0' />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="S_2" HeaderText="S_2">
                                            <ItemStyle Width='12px' BackColor='#DCEDD3' ForeColor='#C0C0C0' />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="S_3" HeaderText="S_3">
                                            <ItemStyle Width='12px' BackColor='#DCEDD3' ForeColor='#C0C0C0' />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="S_4" HeaderText="S_4">
                                            <ItemStyle Width='12px' BackColor='#DCEDD3' ForeColor='#C0C0C0' />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="S_5" HeaderText="S_5">
                                            <ItemStyle Width='12px' BackColor='#DCEDD3' ForeColor='#C0C0C0' />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="S_6" HeaderText="S_6">
                                            <ItemStyle Width='12px' BackColor='#DCEDD3' ForeColor='#C0C0C0' />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="S_7" HeaderText="S_7">
                                            <ItemStyle Width='12px' BackColor='#DCEDD3' ForeColor='#C0C0C0' />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="S_8" HeaderText="S_8">
                                            <ItemStyle Width='12px' BackColor='#DCEDD3' ForeColor='#C0C0C0' />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="S_9" HeaderText="S_9">
                                            <ItemStyle Width='12px' BackColor='#DCEDD3' ForeColor='#C0C0C0' />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="S_10" HeaderText="S_10">
                                            <ItemStyle Width='12px' BackColor='#DCEDD3' ForeColor='#C0C0C0' />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="S_11" HeaderText="S_11">
                                            <ItemStyle Width='12px' BackColor='#DCEDD3' ForeColor='#C0C0C0' />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="S_12" HeaderText="S_12">
                                            <ItemStyle Width='12px' BackColor='#DCEDD3' ForeColor='#C0C0C0' />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="S_13" HeaderText="S_13">
                                            <ItemStyle Width='12px' BackColor='#DCEDD3' ForeColor='#C0C0C0' />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="S_14" HeaderText="S_14">
                                            <ItemStyle Width='12px' BackColor='#DCEDD3' ForeColor='#C0C0C0' />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="S_15" HeaderText="S_15">
                                            <ItemStyle Width='12px' BackColor='#DCEDD3' ForeColor='#C0C0C0' />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="S_16" HeaderText="S_16">
                                            <ItemStyle Width='12px' BackColor='#DCEDD3' ForeColor='#C0C0C0' />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="S_17" HeaderText="S_17">
                                            <ItemStyle Width='12px' BackColor='#DCEDD3' ForeColor='#C0C0C0' />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="S_18" HeaderText="S_18">
                                            <ItemStyle Width='12px' BackColor='#DCEDD3' ForeColor='#C0C0C0' />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="G_0" HeaderText="G_0">
                                            <ItemStyle Width='12px' BackColor='#FFE1F0' ForeColor='#C0C0C0' />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="G_1" HeaderText="G_1">
                                            <ItemStyle Width='12px' BackColor='#FFE1F0' ForeColor='#C0C0C0' />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="G_2" HeaderText="G_2">
                                            <ItemStyle Width='12px' BackColor='#FFE1F0' ForeColor='#C0C0C0' />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="G_3" HeaderText="G_3">
                                            <ItemStyle Width='12px' BackColor='#FFE1F0' ForeColor='#C0C0C0' />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="G_4" HeaderText="G_4">
                                            <ItemStyle Width='12px' BackColor='#FFE1F0' ForeColor='#C0C0C0' />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="G_5" HeaderText="G_5">
                                            <ItemStyle Width='12px' BackColor='#FFE1F0' ForeColor='#C0C0C0' />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="G_6" HeaderText="G_6">
                                            <ItemStyle Width='12px' BackColor='#FFE1F0' ForeColor='#C0C0C0' />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="G_7" HeaderText="G_7">
                                            <ItemStyle Width='12px' BackColor='#FFE1F0' ForeColor='#C0C0C0' />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="G_8" HeaderText="G_8">
                                            <ItemStyle Width='12px' BackColor='#FFE1F0' ForeColor='#C0C0C0' />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="G_9" HeaderText="G_9">
                                            <ItemStyle Width='12px' BackColor='#FFE1F0' ForeColor='#C0C0C0' />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="G_10" HeaderText="G_10">
                                            <ItemStyle Width='12px' BackColor='#FFE1F0' ForeColor='#C0C0C0' />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="G_11" HeaderText="G_11">
                                            <ItemStyle Width='12px' BackColor='#FFE1F0' ForeColor='#C0C0C0' />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="G_12" HeaderText="G_12">
                                            <ItemStyle Width='12px' BackColor='#FFE1F0' ForeColor='#C0C0C0' />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="G_13" HeaderText="G_13">
                                            <ItemStyle Width='12px' BackColor='#FFE1F0' ForeColor='#C0C0C0' />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="G_14" HeaderText="G_14">
                                            <ItemStyle Width='12px' BackColor='#FFE1F0' ForeColor='#C0C0C0' />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="G_15" HeaderText="G_15">
                                            <ItemStyle Width='12px' BackColor='#FFE1F0' ForeColor='#C0C0C0' />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="G_16" HeaderText="G_16">
                                            <ItemStyle Width='12px' BackColor='#FFE1F0' ForeColor='#C0C0C0' />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="G_17" HeaderText="G_17">
                                            <ItemStyle Width='12px' BackColor='#FFE1F0' ForeColor='#C0C0C0' />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="G_18" HeaderText="G_18">
                                            <ItemStyle Width='12px' BackColor='#FFE1F0' ForeColor='#C0C0C0' />
                                        </asp:BoundField>
                                    </Columns>
                                </asp:GridView>
     </div>
     <uc1:WebFoot ID="WebFoot1" runat="server" />
    
    </form>
</body>
</html>
