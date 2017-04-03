<%@ page language="C#" autoeventwireup="true" inherits="CJDLT_CJDLT_JO, App_Web_nbnyao4e" enableEventValidation="false" %>

<%@ Register Src="../../Home/Room/UserControls/WebFoot.ascx" TagName="WebFoot" TagPrefix="uc1" %>
<%@ Register Src="../../UserControls/Head.ascx" TagName="Head" TagPrefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>超级大乐透奇偶分布图</title>
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
            <h1>超级大乐透奇偶分布图</h1>
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
                                    OnRowCreated="GridView1_RowCreated" Width="100%"  FooterStyle-HorizontalAlign="Center"
                                    HeaderStyle-HorizontalAlign="Center"  align="center"
                                    CellPadding="0">
                                    <RowStyle HorizontalAlign="Center" />
                                    <Columns>
                                        <asp:BoundField DataField="Isuse" HeaderText="期数" ItemStyle-HorizontalAlign="Center">
                                            <ItemStyle Width="28" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="LotteryNumber_J" HeaderText="LotteryNumber_J" ItemStyle-HorizontalAlign="Center">
                                            <ItemStyle Width="100" ForeColor="#FF0033" Font-Bold="true" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="LotteryNumber_T" HeaderText="LotteryNumber_T" ItemStyle-HorizontalAlign="Center">
                                            <ItemStyle Width="50" ForeColor="#0000D5" Font-Bold="true" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="W_1" HeaderText="W_1" ItemStyle-HorizontalAlign="Center">
                                            <ItemStyle Width="50" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="W_2" HeaderText="W_2" ItemStyle-HorizontalAlign="Center">
                                            <ItemStyle Width="50" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="W_3" HeaderText="W_3" ItemStyle-HorizontalAlign="Center">
                                            <ItemStyle Width="50" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="W_4" HeaderText="W_4" ItemStyle-HorizontalAlign="Center">
                                            <ItemStyle Width="50" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="W_5" HeaderText="W_5" ItemStyle-HorizontalAlign="Center">
                                            <ItemStyle Width="50" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="J" HeaderText="J" ItemStyle-HorizontalAlign="Center">
                                            <ItemStyle Width="26" BackColor="#EDFFD7" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="O" HeaderText="O" ItemStyle-HorizontalAlign="Center">
                                            <ItemStyle Width="26" BackColor="#EDFFD7" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="J_O" HeaderText="J_O" ItemStyle-HorizontalAlign="Center">
                                            <ItemStyle Width="30" BackColor="#EDFFD7" ForeColor="#FF0033" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="J_O_C" HeaderText="J_O_C" ItemStyle-HorizontalAlign="Center">
                                            <ItemStyle Width="26" BackColor="#EDFFD7" ForeColor="#0000D5" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="J_T" HeaderText="J_T" ItemStyle-HorizontalAlign="Center">
                                            <ItemStyle Width="26" BackColor="#EDFFD7" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="O_T" HeaderText="O_T" ItemStyle-HorizontalAlign="Center">
                                            <ItemStyle Width="26" BackColor="#EDFFD7" />
                                        </asp:BoundField>
                                    </Columns>
                                </asp:GridView>
               </div>
               <div class="wrap">
               <p>
                    <font color="#FF0000">说明：</font>超级大乐透奇偶分布是对每一期开奖号码所区奇偶数的分析,依据往期开奖的奇偶关系,可以看出一定期数内所曾现出的S、K、X型图分布规律，对于有经验的老彩民可以根据往期奇偶比来决定下一期可能会出的偶然比来选择缩水方式。<br>
                    本图是针对每一期开奖号码定位奇偶分析，奇偶出现次数统计，奇偶比、奇偶差值、和特码奇偶。</p>
              
        <div id="div_end">
        </div>
    </div>
    <uc1:WebFoot ID="WebFoot1" runat="server" />
    </form>
</body>
</html>
