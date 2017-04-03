<%@ page language="C#" autoeventwireup="true" inherits="PL5_PL5_LH, App_Web_1tgfu4ah" enableEventValidation="false" %>
<%@ Register Src="../../Home/Room/UserControls/WebFoot.ascx" TagName="WebFoot" TagPrefix="uc1" %>
<%@ Register Src="../../UserControls/Head.ascx" TagName="Head" TagPrefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>排列５连号分析图</title>
    <link href="../../Home/Room/Style/common.css" rel="stylesheet" type="text/css" />
    <link href="../../Home/Room/Style/StyleSheet.css" rel="stylesheet" type="text/css" />
    <link href="../../Home/Room/Style/zbuy.css" rel="stylesheet" type="text/css" />
    <link rel="shortcut icon" href="../../favicon.ico" />
     <link href="../../Home/Room/Style/zst.css" rel="stylesheet" type="text/css" />
    <script src="../../JavaScript/jquery-1.4.js" type="text/javascript"></script>
    <script type="text/javascript" language="JavaScript">

function Style(obj,statcolor,color){
 if(obj.style.backgroundColor==""){
	obj.style.backgroundColor=statcolor;
	obj.style.color="#CC0000";
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
<h1>排列五连号分布图</h1>
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
                                                            <ItemStyle Width="60" />
                                                        </asp:BoundField>
                                                        <asp:BoundField DataField="LotteryNumber" HeaderText="排列5开奖号码">
                                                            <ItemStyle ForeColor="#0000FF" Font-Bold="true" Width="105" />
                                                        </asp:BoundField>
                                                        <asp:BoundField DataField="L_0" HeaderText="连号数">
                                                            <ItemStyle Width="50" ForeColor="#FF0000" />
                                                        </asp:BoundField>
                                                        <asp:BoundField DataField="G_0" HeaderText="G_0">
                                                            <ItemStyle Width="15" />
                                                        </asp:BoundField>
                                                        <asp:BoundField DataField="G_1" HeaderText="G_1">
                                                            <ItemStyle Width="15" />
                                                        </asp:BoundField>
                                                        <asp:BoundField DataField="G_2" HeaderText="G_2">
                                                            <ItemStyle Width="15" />
                                                        </asp:BoundField>
                                                        <asp:BoundField DataField="G_3" HeaderText="G_3">
                                                            <ItemStyle Width="15" />
                                                        </asp:BoundField>
                                                        <asp:BoundField DataField="G_4" HeaderText="G_4">
                                                            <ItemStyle Width="15" />
                                                        </asp:BoundField>
                                                        <asp:BoundField DataField="P_0" HeaderText="P_0">
                                                            <ItemStyle Width="30" />
                                                        </asp:BoundField>
                                                        <asp:BoundField DataField="P_1" HeaderText="P_1">
                                                            <ItemStyle Width="30" />
                                                        </asp:BoundField>
                                                        <asp:BoundField DataField="P_2" HeaderText="P_2">
                                                            <ItemStyle Width="30" />
                                                        </asp:BoundField>
                                                        <asp:BoundField DataField="P_3" HeaderText="P_3">
                                                            <ItemStyle Width="30" />
                                                        </asp:BoundField>
                                                    </Columns>
                                                </asp:GridView>
<table width="300" border="0" align="center" cellpadding="2" cellspacing="0" bordercolorlight="#999999"
                        bordercolordark="#FFFFFF">
                        <tr>
                            <td colspan="2" align="left">
                                <font color="#FF0000">近<%=tem %>期结果分析</font></td>
                        </tr>
                        <tr>
                            <td style="width: 163; height: 60" align="left">
                                <font color="#FF9900">连号出现统计</font>&nbsp
                                <table width="100%" border="1" cellpadding="1" cellspacing="0" bordercolorlight="#FF9900"
                                    bordercolordark="#FFFFFF" bgcolor="#FF9900">
                                    <tr align="center" valign="middle" bgcolor="#FFFFFF">
                                        <td style="height: 15px">
                                            连 号</td>
                                        <td>
                                            次数</td>
                                        <td>
                                            百分比</td>
                                    </tr>
                                    <tr align="center" valign="middle" bgcolor="#FFFFFF">
                                        <td style="height: 15px">
                                            0</td>
                                        <td>
                                            <%=sum[0] %>
                                        </td>
                                        <td>
                                            <%=tr[0] %>
                                        </td>
                                    </tr>
                                    <tr align="center" valign="middle" bgcolor="#FFFFFF">
                                        <td style="height: 15px">
                                            1</td>
                                        <td>
                                            <%=sum[1] %>
                                        </td>
                                        <td>
                                            <%=tr[1] %>
                                        </td>
                                    </tr>
                                    <tr align="center" valign="middle" bgcolor="#FFFFFF">
                                        <td style="height: 15px">
                                            2</td>
                                        <td>
                                            <%=sum[2] %>
                                        </td>
                                        <td>
                                            <%=tr[2]%>
                                        </td>
                                    </tr>
                                    <tr align="center" valign="middle" bgcolor="#FFFFFF">
                                        <td style="height: 15px">
                                            3</td>
                                        <td>
                                            <%=sum[3] %>
                                        </td>
                                        <td>
                                            <%=tr[3]%>
                                        </td>
                                    </tr>
                                    <tr align="center" valign="middle" bgcolor="#FFFFFF">
                                        <td style="height: 15px">
                                            4</td>
                                        <td>
                                            <%=sum[4] %>
                                        </td>
                                        <td>
                                            <%=tr[4]%>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            <td style="width: 137px; height: 45px;" valign="top" align="left">
                                <asp:Label ID="Label4" runat="server" Text="排序规则统计" BorderStyle="None" ForeColor="#009900"></asp:Label>
                                &nbsp
                                <table border="1" cellpadding="1" cellspacing="0" bordercolorlight="#006600" bordercolordark="#FFFFFF">
                                    <tr align="center" valign="middle">
                                        <td style="width: 43px; height: 15px;">
                                            排序
                                        </td>
                                        <td style="width: 50px; height: 15px;">
                                            次数
                                        </td>
                                        <td style="width: 43px; height: 15px;">
                                            百分比
                                        </td>
                                    </tr>
                                    <tr align="center" valign="middle">
                                        <td style="width: 43px; height: 15px;">
                                            升序
                                        </td>
                                        <td style="width: 50px; height: 15px;">
                                            <%=qq%>
                                        </td>
                                        <td style="width: 43px; height: 15px;">
                                            <%=bbb[1] %>
                                        </td>
                                    </tr>
                                    <tr align="center" valign="middle">
                                        <td style="width: 43px">
                                            降序
                                        </td>
                                        <td style="width: 50px">
                                            <%=temp %>
                                        </td>
                                        <td style="width: 43px">
                                            <%=bbb[0] %>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
               
        </div>
         <uc1:WebFoot ID="WebFoot1" runat="server" />
    </form>
</body>
</html>
