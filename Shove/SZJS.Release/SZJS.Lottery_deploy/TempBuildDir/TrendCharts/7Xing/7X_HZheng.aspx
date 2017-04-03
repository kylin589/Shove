<%@ page language="C#" autoeventwireup="true" inherits="_7Xing_7X_HZheng, App_Web_1lgzyc3s" enableEventValidation="false" %>

<%@ Register Src="../../Home/Room/UserControls/WebFoot.ascx" TagName="WebFoot" TagPrefix="uc1" %>
<%@ Register Src="../../UserControls/Head.ascx" TagName="Head" TagPrefix="uc2" %>
<%@ Register Assembly="Shove.Web.UI.4 For.NET 3.5" Namespace="Shove.Web.UI" TagPrefix="ShoveWebUI" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>七星彩和值走试图</title>
    <link href="../../Home/Room/Style/common.css" rel="stylesheet" type="text/css" />
    <link href="../../Home/Room/Style/StyleSheet.css" rel="stylesheet" type="text/css" />
    <link href="../../Home/Room/Style/zbuy.css" rel="stylesheet" type="text/css" />
    <link rel="shortcut icon" href="../../favicon.ico" />
    <link href="../../Home/Room/Style/zst.css" rel="stylesheet" type="text/css" />
    <script src="../../JavaScript/jquery-1.4.js" type="text/javascript"></script>

    <style type="text/css">
        input
        {
            margin-left: 10px;
            margin-top: -4px;
        }
        table tr td a
        {
            margin-right: 20px;
        }
        #GridView1
        {
            border: 0px;
        }
        #GridView1 tr td
        {
            text-align: center;
            line-height: 20px;
            border: solid 1px #ccc;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <uc2:Head ID="Head2" runat="server" />
    <div class="wrap">
        <div class="zst_top">
            <h1>
             七星彩&nbsp;&nbsp;和值分布图</h1>
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
                            OnRowCreated="GridView1_RowCreated" ShowFooter="true" Width="100%" bordercolorlight="#808080"
                            bordercolordark="#FFFFFF" align="center" CellPadding="0" CellSpacing="0">
                            <Columns>
                                <asp:BoundField DataField="Isuse" HeaderText="期 数">
                                    <ItemStyle Width="60px" Font-Names="宋体" />
                                </asp:BoundField>
                                <asp:BoundField DataField="LotteryNumber" HeaderText="开奖号码">
                                    <ItemStyle Width="60px" Font-Bold="True" Font-Names="宋体" ForeColor="#0000FF" HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="H_Z" HeaderText="H_Z">
                                    <ItemStyle Width="30px" BackColor="#ffffff" Font-Bold="True" ForeColor="000000" />
                                </asp:BoundField>
                                <asp:BoundField DataField="A_10" HeaderText="A_10">
                                    <ItemStyle Width="13px" />
                                </asp:BoundField>
                                <asp:BoundField DataField="A_11" HeaderText="A_11">
                                    <ItemStyle Width="13px" />
                                </asp:BoundField>
                                <asp:BoundField DataField="A_12" HeaderText="A_12">
                                    <ItemStyle Width="13px" />
                                </asp:BoundField>
                                <asp:BoundField DataField="A_13" HeaderText="A_13">
                                    <ItemStyle Width="13px" />
                                </asp:BoundField>
                                <asp:BoundField DataField="A_14" HeaderText="A_14">
                                    <ItemStyle Width="13px" />
                                </asp:BoundField>
                                <asp:BoundField DataField="A_15" HeaderText="A_15">
                                    <ItemStyle Width="13px" />
                                </asp:BoundField>
                                <asp:BoundField DataField="A_16" HeaderText="A_16">
                                    <ItemStyle Width="13px" />
                                </asp:BoundField>
                                <asp:BoundField DataField="A_17" HeaderText="A_17">
                                    <ItemStyle Width="13px" />
                                </asp:BoundField>
                                <asp:BoundField DataField="A_18" HeaderText="A_18">
                                    <ItemStyle Width="13px" />
                                </asp:BoundField>
                                <asp:BoundField DataField="A_19" HeaderText="A_19">
                                    <ItemStyle Width="13px" />
                                </asp:BoundField>
                                <asp:BoundField DataField="A_20" HeaderText="A_20">
                                    <ItemStyle Width="13px" />
                                </asp:BoundField>
                                <asp:BoundField DataField="A_21" HeaderText="A_21">
                                    <ItemStyle Width="13px" />
                                </asp:BoundField>
                                <asp:BoundField DataField="A_22" HeaderText="A_22">
                                    <ItemStyle Width="13px" />
                                </asp:BoundField>
                                <asp:BoundField DataField="A_23" HeaderText="A_23">
                                    <ItemStyle Width="13px" />
                                </asp:BoundField>
                                <asp:BoundField DataField="A_24" HeaderText="A_24">
                                    <ItemStyle Width="13px" />
                                </asp:BoundField>
                                <asp:BoundField DataField="A_25" HeaderText="A_25">
                                    <ItemStyle Width="13px" />
                                </asp:BoundField>
                                <asp:BoundField DataField="A_26" HeaderText="A_26">
                                    <ItemStyle Width="13px" />
                                </asp:BoundField>
                                <asp:BoundField DataField="A_27" HeaderText="A_27">
                                    <ItemStyle Width="13px" />
                                </asp:BoundField>
                                <asp:BoundField DataField="A_28" HeaderText="A_28">
                                    <ItemStyle Width="13px" />
                                </asp:BoundField>
                                <asp:BoundField DataField="A_29" HeaderText="A_29">
                                    <ItemStyle Width="13px" />
                                </asp:BoundField>
                                <asp:BoundField DataField="A_30" HeaderText="A_30">
                                    <ItemStyle Width="13px" />
                                </asp:BoundField>
                                <asp:BoundField DataField="A_31" HeaderText="A_31">
                                    <ItemStyle Width="13px" />
                                </asp:BoundField>
                                <asp:BoundField DataField="A_32" HeaderText="A_32">
                                    <ItemStyle Width="13px" />
                                </asp:BoundField>
                                <asp:BoundField DataField="A_33" HeaderText="A_33">
                                    <ItemStyle Width="13px" />
                                </asp:BoundField>
                                <asp:BoundField DataField="A_34" HeaderText="A_34">
                                    <ItemStyle Width="13px" />
                                </asp:BoundField>
                                <asp:BoundField DataField="A_35" HeaderText="A_35">
                                    <ItemStyle Width="13px" />
                                </asp:BoundField>
                                <asp:BoundField DataField="A_36" HeaderText="A_36">
                                    <ItemStyle Width="13px" />
                                </asp:BoundField>
                                <asp:BoundField DataField="A_37" HeaderText="A_37">
                                    <ItemStyle Width="13px" />
                                </asp:BoundField>
                                <asp:BoundField DataField="A_38" HeaderText="A_38">
                                    <ItemStyle Width="13px" />
                                </asp:BoundField>
                                <asp:BoundField DataField="A_39" HeaderText="A_39">
                                    <ItemStyle Width="13px" />
                                </asp:BoundField>
                                <asp:BoundField DataField="A_40" HeaderText="A_40">
                                    <ItemStyle Width="13px" />
                                </asp:BoundField>
                                <asp:BoundField DataField="A_41" HeaderText="A_41">
                                    <ItemStyle Width="13px" />
                                </asp:BoundField>
                                <asp:BoundField DataField="A_42" HeaderText="A_42">
                                    <ItemStyle Width="13px" />
                                </asp:BoundField>
                                <asp:BoundField DataField="A_43" HeaderText="A_43">
                                    <ItemStyle Width="13px" />
                                </asp:BoundField>
                                <asp:BoundField DataField="A_44" HeaderText="A_44">
                                    <ItemStyle Width="13px" />
                                </asp:BoundField>
                                <asp:BoundField DataField="A_45" HeaderText="A_45">
                                    <ItemStyle Width="13px" />
                                </asp:BoundField>
                                <asp:BoundField DataField="A_46" HeaderText="A_46">
                                    <ItemStyle Width="13px" />
                                </asp:BoundField>
                                <asp:BoundField DataField="A_47" HeaderText="A_47">
                                    <ItemStyle Width="13px" />
                                </asp:BoundField>
                                <asp:BoundField DataField="A_48" HeaderText="A_48">
                                    <ItemStyle Width="13px" />
                                </asp:BoundField>
                                <asp:BoundField DataField="A_49" HeaderText="A_49">
                                    <ItemStyle Width="13px" />
                                </asp:BoundField>
                                <asp:BoundField DataField="A_50" HeaderText="A_50">
                                    <ItemStyle Width="13px" />
                                </asp:BoundField>
                                <asp:BoundField DataField="A_51" HeaderText="A_51">
                                    <ItemStyle Width="13px" />
                                </asp:BoundField>
                            </Columns>
                        </asp:GridView>
                    
    </div>
    <uc1:WebFoot ID="WebFoot1" runat="server" />
    </form>
</body>
</html>
