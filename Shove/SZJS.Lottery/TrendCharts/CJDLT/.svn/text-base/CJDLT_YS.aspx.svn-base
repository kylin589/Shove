<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CJDLT_YS.aspx.cs" Inherits="CJDLT_CJDLT_YS" %>

<%@ Register Src="../../Home/Room/UserControls/WebFoot.ascx" TagName="WebFoot" TagPrefix="uc1" %>
<%@ Register Src="../../UserControls/Head.ascx" TagName="Head" TagPrefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>超级大乐透余数走势图</title>
    <link href="../../Home/Room/Style/common.css" rel="stylesheet" type="text/css" />
    <link href="../../Home/Room/Style/StyleSheet.css" rel="stylesheet" type="text/css" />
    <link href="../../Home/Room/Style/zbuy.css" rel="stylesheet" type="text/css" />
    <link rel="shortcut icon" href="../../favicon.ico" />
<link href="../../Home/Room/Style/zst.css" rel="stylesheet" type="text/css" />
    <script src="../../JavaScript/jquery-1.4.js" type="text/javascript"></script>

    <script type="text/javascript" language="javascript">
<!--
var jsstr = ""
+ "<img src=\"about:blank\" id=\"leftright\" style=\"width:expression(document.body.clientWidth);height:1px;position:absolute;left:0;top:0;background-color:#6699cc;z-index:100;\" \/>\n"
+ "<img src=\"about:blank\" id=\"topdown\" style=\"height:expression(document.body.clientHeight);width:1px;position:absolute;left:0;top:0;background-color:#6699cc;z-index:100;\" \/>\n"
document.writeln(jsstr);

function followmouse(){
	leftright.style.top = window.event.y-1+document.body.scrollTop
	topdown.style.left = window.event.x-1+document.body.scrollLeft
	topdown.style.height= document.getElementById("div_end").offsetTop;// + 800;
	leftright.style.width=document.body.clientWidth
}
document.onmousemove=followmouse

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
//-->
    </script>
    <style  type="text/css">
     input { margin-left:10px; margin-top:-4px;}
     table tr td a{ margin-right:20px;}
     #GridView1 { border:0px;}
     #GridView1 tr td{ text-align:center; line-height:20px; border:solid 1px #ccc;}
     table { width:100%; text-align:center;}
    </style>  
</head>
<body>
    <form id="form1" runat="server">
    <uc2:Head ID="Head2" runat="server" />
    <div class="wrap">
        <div class="zst_top">
            <h1>超级大乐透余数分布图</h1>
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
                                    OnRowCreated="GridView1_RowCreated" ShowFooter="True" Width="100%" 
                                    FooterStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center" 
                                    CellPadding="0">
                                    <Columns>
                                        <asp:BoundField DataField="Isuse" HeaderText="期数" ItemStyle-HorizontalAlign="Center">
                                            <ItemStyle Width="28" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="LotteryNumber_J" HeaderText="基码" ItemStyle-HorizontalAlign="Center">
                                            <ItemStyle Width="100" ForeColor="#FF0000" Font-Bold="true" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="LotteryNumber_T" HeaderText="特码" ItemStyle-HorizontalAlign="Center">
                                            <ItemStyle Width="40px" ForeColor="Blue" Font-Bold="True" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="B_11_0" HeaderText="B_11_0">
                                            <ItemStyle Width="16px" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="B_11_1" HeaderText="B_11_1">
                                            <ItemStyle Width="16px" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="B_11_2" HeaderText="B_11_2">
                                            <ItemStyle Width="16px" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="B_11_3" HeaderText="B_11_3">
                                            <ItemStyle Width="16px" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="B_11_4" HeaderText="B_11_4">
                                            <ItemStyle Width="16px" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="B_11_5" HeaderText="B_11_5">
                                            <ItemStyle Width="16px" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="B_11_6" HeaderText="B_11_6">
                                            <ItemStyle Width="16px" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="B_11_7" HeaderText="B_11_7">
                                            <ItemStyle Width="16px" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="B_11_8" HeaderText="B_11_8">
                                            <ItemStyle Width="16px" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="B_11_9" HeaderText="B_11_9">
                                            <ItemStyle Width="16px" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="B_11_10" HeaderText="B_11_10">
                                            <ItemStyle Width="16px" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="B_9_0" HeaderText="B_9_0">
                                            <ItemStyle Width="16px" BackColor="#EDFFD7" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="B_9_1" HeaderText="B_9_1">
                                            <ItemStyle Width="16px" BackColor="#EDFFD7" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="B_9_2" HeaderText="B_9_2">
                                            <ItemStyle Width="16px" BackColor="#EDFFD7" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="B_9_3" HeaderText="B_9_3">
                                            <ItemStyle Width="16px" BackColor="#EDFFD7" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="B_9_4" HeaderText="B_9_4">
                                            <ItemStyle Width="16px" BackColor="#EDFFD7" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="B_9_5" HeaderText="B_9_5">
                                            <ItemStyle Width="16px" BackColor="#EDFFD7" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="B_9_6" HeaderText="B_9_6">
                                            <ItemStyle Width="16px" BackColor="#EDFFD7" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="B_9_7" HeaderText="B_9_7">
                                            <ItemStyle Width="16px" BackColor="#EDFFD7" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="B_9_8" HeaderText="B_9_8">
                                            <ItemStyle Width="16px" BackColor="#EDFFD7" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="B_5_0" HeaderText="B_5_0">
                                            <ItemStyle Width="16px" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="B_5_1" HeaderText="B_5_1">
                                            <ItemStyle Width="16px" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="B_5_2" HeaderText="B_5_2">
                                            <ItemStyle Width="16px" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="B_5_3" HeaderText="B_5_3">
                                            <ItemStyle Width="16px" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="B_5_4" HeaderText="B_5_4">
                                            <ItemStyle Width="16px" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="B_3_0" HeaderText="B_3_0">
                                            <ItemStyle Width="16px" BackColor="#D2E1F0" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="B_3_1" HeaderText="B_3_1">
                                            <ItemStyle Width="16px" BackColor="#D2E1F0" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="B_3_2" HeaderText="B_3_2">
                                            <ItemStyle Width="16px" BackColor="#D2E1F0" />
                                        </asp:BoundField>
                                    </Columns>
                                </asp:GridView>
<div id="div_end">
  </div>
    </div>
    <div class="wrap">
    <p> <font color="#FF0000">说明：</font>超级大乐透前区号码余数分布分析图是反映往期开奖号码单位数分别除相应的奇偶数所得出的余数结果来查看超级大乐透开奖号码所曾现出另一种规律，彩民可依据此种规律来决定下一期开匀号可通会出现的位置。<br>
                    本图是每一期开奖号码单位上每一位数进行除11、9、5、3而得出可行型余数展现方案。<br>
                    <font color="#0000FF"><strong>注：</strong></font>超级大乐透前区号码除11余数共有11个，11、22、33除11余0，1、12、23除11余1，余次类推。</p>
    </div>
    <uc1:WebFoot ID="WebFoot1" runat="server" />
    </form>
</body>
</html>
