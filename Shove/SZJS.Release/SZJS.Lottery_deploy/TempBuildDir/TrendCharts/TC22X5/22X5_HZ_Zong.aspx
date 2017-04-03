<%@ page language="C#" autoeventwireup="true" inherits="TC22X5_22X5_HZ_Zong, App_Web_tazlual8" enableEventValidation="false" %>

<%@ Register Src="../../Home/Room/UserControls/WebFoot.ascx" TagName="WebFoot" TagPrefix="uc1" %>
<%@ Register Src="../../UserControls/Head.ascx" TagName="Head" TagPrefix="uc2" %>
<%@ Register Assembly="Shove.Web.UI.4 For.NET 3.5" Namespace="Shove.Web.UI" TagPrefix="ShoveWebUI" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>22选5和值走试图</title>
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
            <h1>
                22选5&nbsp;&nbsp;和值横向分布图</h1>
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
                <li><a>体彩22选5开奖号码和值[纵向]分布图</a><a href="22X5_HZ_Heng.aspx">点击切换到横向分布图</a></li>
            </ul>
        </div>
    </div>
    <div class="wrap">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" UseAccessibleHeader="False"
            OnRowCreated="GridView1_RowCreated" ShowFooter="false" Width="100%" bordercolorlight="#808080"
            bordercolordark="#FFFFFF" align="center" CellPadding="0" CellSpacing="0">
            <Columns>
                <asp:BoundField DataField="Isuse" HeaderText="期   数">
                    <ItemStyle Width="40px" Font-Names="宋体" />
                </asp:BoundField>
                <asp:BoundField DataField="LotteryNumber" HeaderText="开奖号码">
                    <ItemStyle Width="110px" Font-Bold="True" Font-Names="宋体" ForeColor="#FF0000" HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="H_Z" HeaderText="H_Z">
                    <ItemStyle Width="30px" BackColor="#E1EFFF" />
                </asp:BoundField>
                <asp:BoundField DataField="J_Z" HeaderText="J_Z">
                    <ItemStyle Width="30px" BackColor="#E8F5FF" />
                </asp:BoundField>
            </Columns>
        </asp:GridView>
    </div>
    <uc1:WebFoot ID="WebFoot1" runat="server" />
    </form>
</body>
</html>
