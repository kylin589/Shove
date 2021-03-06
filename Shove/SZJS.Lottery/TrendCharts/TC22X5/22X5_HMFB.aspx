﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="22X5_HMFB.aspx.cs" Inherits="TC22X5_22X5" %>

<%@ Register Src="../../Home/Room/UserControls/WebFoot.ascx" TagName="WebFoot" TagPrefix="uc1" %>
<%@ Register Src="../../UserControls/Head.ascx" TagName="Head" TagPrefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>22选5开奖号码分布图</title>
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
            <h1>
                22选5&nbsp;&nbsp;综合分布图</h1>
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
            </ul>
        </div>
    </div>
    <div class="wrap">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" UseAccessibleHeader="False"
            OnRowCreated="GridView1_RowCreated" ShowFooter="True" Width="100%" bordercolorlight="#808080"
            bordercolordark="#FFFFFF" align="center" CellPadding="0">
            <Columns>
                <asp:BoundField HeaderText="序号">
                    <ItemStyle Width="28" />
                </asp:BoundField>
                <asp:BoundField DataField="Isuse" HeaderText="期数">
                    <ItemStyle Width="28" />
                </asp:BoundField>
                <asp:BoundField DataField="B_1" HeaderText="B_1">
                    <ItemStyle Width="16" BackColor="#EBFCEF" ForeColor="#AFAFAF" />
                </asp:BoundField>
                <asp:BoundField DataField="B_2" HeaderText="B_2">
                    <ItemStyle Width="16" BackColor="#EBFCEF" ForeColor="#AFAFAF" />
                </asp:BoundField>
                <asp:BoundField DataField="B_3" HeaderText="B_3">
                    <ItemStyle Width="16" BackColor="#EBFCEF" ForeColor="#AFAFAF" />
                </asp:BoundField>
                <asp:BoundField DataField="B_4" HeaderText="B_4">
                    <ItemStyle Width="16" BackColor="#EBFCEF" ForeColor="#AFAFAF" />
                </asp:BoundField>
                <asp:BoundField DataField="B_5" HeaderText="B_5">
                    <ItemStyle Width="16" BackColor="#EBFCEF" ForeColor="#AFAFAF" />
                </asp:BoundField>
                <asp:BoundField DataField="B_6" HeaderText="B_6">
                    <ItemStyle Width="16" BackColor="#EBFCEF" ForeColor="#AFAFAF" />
                </asp:BoundField>
                <asp:BoundField DataField="B_7" HeaderText="B_7">
                    <ItemStyle Width="16" BackColor="#EBFCEF" ForeColor="#AFAFAF" />
                </asp:BoundField>
                <asp:BoundField DataField="B_8" HeaderText="B_8">
                    <ItemStyle Width="16" BackColor="#FEEFF5" ForeColor="#AFAFAF" />
                </asp:BoundField>
                <asp:BoundField DataField="B_9" HeaderText="B_9">
                    <ItemStyle Width="16" BackColor="#FEEFF5" ForeColor="#AFAFAF" />
                </asp:BoundField>
                <asp:BoundField DataField="B_10" HeaderText="B_10">
                    <ItemStyle Width="16" BackColor="#FEEFF5" ForeColor="#AFAFAF" />
                </asp:BoundField>
                <asp:BoundField DataField="B_11" HeaderText="B_11">
                    <ItemStyle Width="16" BackColor="#FEEFF5" ForeColor="#AFAFAF" />
                </asp:BoundField>
                <asp:BoundField DataField="B_12" HeaderText="B_12">
                    <ItemStyle Width="16" BackColor="#FEEFF5" ForeColor="#AFAFAF" />
                </asp:BoundField>
                <asp:BoundField DataField="B_13" HeaderText="B_13">
                    <ItemStyle Width="16" BackColor="#FEEFF5" ForeColor="#AFAFAF" />
                </asp:BoundField>
                <asp:BoundField DataField="B_14" HeaderText="B_14">
                    <ItemStyle Width="16" BackColor="#FEEFF5" ForeColor="#AFAFAF" />
                </asp:BoundField>
                <asp:BoundField DataField="B_15" HeaderText="B_15">
                    <ItemStyle Width="16" BackColor="#EBFCEF" ForeColor="#AFAFAF" />
                </asp:BoundField>
                <asp:BoundField DataField="B_16" HeaderText="B_16">
                    <ItemStyle Width="16" BackColor="#EBFCEF" ForeColor="#AFAFAF" />
                </asp:BoundField>
                <asp:BoundField DataField="B_17" HeaderText="B_17">
                    <ItemStyle Width="16" BackColor="#EBFCEF" ForeColor="#AFAFAF" />
                </asp:BoundField>
                <asp:BoundField DataField="B_18" HeaderText="B_18">
                    <ItemStyle Width="16" BackColor="#EBFCEF" ForeColor="#AFAFAF" />
                </asp:BoundField>
                <asp:BoundField DataField="B_19" HeaderText="B_19">
                    <ItemStyle Width="16" BackColor="#EBFCEF" ForeColor="#AFAFAF" />
                </asp:BoundField>
                <asp:BoundField DataField="B_20" HeaderText="B_20">
                    <ItemStyle Width="16" BackColor="#EBFCEF" ForeColor="#AFAFAF" />
                </asp:BoundField>
                <asp:BoundField DataField="B_21" HeaderText="B_21">
                    <ItemStyle Width="16" BackColor="#EBFCEF" ForeColor="#AFAFAF" />
                </asp:BoundField>
                <asp:BoundField DataField="B_22" HeaderText="B_22">
                    <ItemStyle Width="16" BackColor="#EBFCEF" ForeColor="#AFAFAF" />
                </asp:BoundField>
                <asp:BoundField DataField="J" HeaderText="J">
                    <ItemStyle Width="16" BackColor="#FFE67D" ForeColor="#000000" />
                </asp:BoundField>
                <asp:BoundField DataField="O" HeaderText="O">
                    <ItemStyle Width="16" BackColor="#FFE67D" ForeColor="#000000" />
                </asp:BoundField>
                <asp:BoundField DataField="D" HeaderText="D">
                    <ItemStyle Width="16" BackColor="#FFF7D2" ForeColor="#000000" />
                </asp:BoundField>
                <asp:BoundField DataField="X" HeaderText="X">
                    <ItemStyle Width="16" BackColor="#FFF7D2" ForeColor="#000000" />
                </asp:BoundField>
                <asp:BoundField DataField="H_Z" HeaderText="H_Z">
                    <ItemStyle Width="16" BackColor="#B3EEA8" ForeColor="#000000" />
                </asp:BoundField>
                <asp:BoundField DataField="Y_0" HeaderText="Y_0">
                    <ItemStyle Width="28" BackColor="#ECFEE2" ForeColor="#000000" />
                </asp:BoundField>
                <asp:BoundField DataField="Y_1" HeaderText="Y_1">
                    <ItemStyle Width="28" BackColor="#ECFEE2" ForeColor="#000000" />
                </asp:BoundField>
                <asp:BoundField DataField="Y_2" HeaderText="Y_2">
                    <ItemStyle Width="28" BackColor="#ECFEE2" ForeColor="#000000" />
                </asp:BoundField>
            </Columns>
        </asp:GridView>
    </div>
    <uc1:WebFoot ID="WebFoot1" runat="server" />
    </form>
</body>
</html>
