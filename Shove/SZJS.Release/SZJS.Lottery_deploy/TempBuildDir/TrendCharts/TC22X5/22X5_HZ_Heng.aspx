<%@ page language="C#" autoeventwireup="true" inherits="TC22X5_22X5_HZ_Heng, App_Web_tazlual8" enableEventValidation="false" %>

<%@ Register Src="../../Home/Room/UserControls/WebFoot.ascx" TagName="WebFoot" TagPrefix="uc1" %>
<%@ Register Src="../../UserControls/Head.ascx" TagName="Head" TagPrefix="uc2" %>
<%@ Register Assembly="Shove.Web.UI.4 For.NET 3.5" Namespace="Shove.Web.UI" TagPrefix="ShoveWebUI" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>体彩22选5和值走试图</title>
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
                <li><a>体彩22选5开奖号码和值[横向]分布图</a><a href="22X5_HZ_Zong.aspx">点击切换到纵向分布图</a></li>
            </ul>
        </div>
    </div>
    <div class="wrap">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" UseAccessibleHeader="False"
            OnRowCreated="GridView1_RowCreated" ShowFooter="true" Width="100%" bordercolorlight="#808080"
            bordercolordark="#FFFFFF" align="center" CellPadding="0" CellSpacing="0">
            <Columns>
                <asp:BoundField DataField="Isuse" HeaderText="期 数">
                    <ItemStyle Width="40px" Font-Names="宋体" />
                </asp:BoundField>
                <asp:BoundField DataField="LotteryNumber" HeaderText="开奖号码">
                    <ItemStyle Width="100px" Font-Bold="True" Font-Names="宋体" ForeColor="#FF0000" HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="A_35" HeaderText="A_35">
                    <ItemStyle Width="10px" />
                </asp:BoundField>
                <asp:BoundField DataField="A_36" HeaderText="A_36">
                    <ItemStyle Width="10px" />
                </asp:BoundField>
                <asp:BoundField DataField="A_37" HeaderText="A_37">
                    <ItemStyle Width="10px" />
                </asp:BoundField>
                <asp:BoundField DataField="A_38" HeaderText="A_38">
                    <ItemStyle Width="10px" />
                </asp:BoundField>
                <asp:BoundField DataField="A_39" HeaderText="A_39">
                    <ItemStyle Width="10px" />
                </asp:BoundField>
                <asp:BoundField DataField="A_40" HeaderText="A_40">
                    <ItemStyle Width="10px" />
                </asp:BoundField>
                <asp:BoundField DataField="A_41" HeaderText="A_41">
                    <ItemStyle Width="10px" />
                </asp:BoundField>
                <asp:BoundField DataField="A_42" HeaderText="A_42">
                    <ItemStyle Width="10px" />
                </asp:BoundField>
                <asp:BoundField DataField="A_43" HeaderText="A_43">
                    <ItemStyle Width="10px" />
                </asp:BoundField>
                <asp:BoundField DataField="A_44" HeaderText="A_44">
                    <ItemStyle Width="10px" />
                </asp:BoundField>
                <asp:BoundField DataField="A_45" HeaderText="A_45">
                    <ItemStyle Width="10px" />
                </asp:BoundField>
                <asp:BoundField DataField="A_46" HeaderText="A_46">
                    <ItemStyle Width="10px" />
                </asp:BoundField>
                <asp:BoundField DataField="A_47" HeaderText="A_47">
                    <ItemStyle Width="10px" />
                </asp:BoundField>
                <asp:BoundField DataField="A_48" HeaderText="A_48">
                    <ItemStyle Width="10px" />
                </asp:BoundField>
                <asp:BoundField DataField="A_49" HeaderText="A_49">
                    <ItemStyle Width="10px" />
                </asp:BoundField>
                <asp:BoundField DataField="A_50" HeaderText="A_50">
                    <ItemStyle Width="10px" />
                </asp:BoundField>
                <asp:BoundField DataField="A_51" HeaderText="A_51">
                    <ItemStyle Width="10px" />
                </asp:BoundField>
                <asp:BoundField DataField="A_52" HeaderText="A_52">
                    <ItemStyle Width="10px" />
                </asp:BoundField>
                <asp:BoundField DataField="A_53" HeaderText="A_53">
                    <ItemStyle Width="10px" />
                </asp:BoundField>
                <asp:BoundField DataField="A_54" HeaderText="A_54">
                    <ItemStyle Width="10px" />
                </asp:BoundField>
                <asp:BoundField DataField="A_55" HeaderText="A_55">
                    <ItemStyle Width="10px" />
                </asp:BoundField>
                <asp:BoundField DataField="A_56" HeaderText="A_56">
                    <ItemStyle Width="10px" />
                </asp:BoundField>
                <asp:BoundField DataField="A_57" HeaderText="A_57">
                    <ItemStyle Width="10px" />
                </asp:BoundField>
                <asp:BoundField DataField="A_58" HeaderText="A_58">
                    <ItemStyle Width="10px" />
                </asp:BoundField>
                <asp:BoundField DataField="A_59" HeaderText="A_59">
                    <ItemStyle Width="10px" />
                </asp:BoundField>
                <asp:BoundField DataField="A_60" HeaderText="A_60">
                    <ItemStyle Width="10px" />
                </asp:BoundField>
                <asp:BoundField DataField="A_61" HeaderText="A_61">
                    <ItemStyle Width="10px" />
                </asp:BoundField>
                <asp:BoundField DataField="A_62" HeaderText="A_62">
                    <ItemStyle Width="10px" />
                </asp:BoundField>
                <asp:BoundField DataField="A_63" HeaderText="A_63">
                    <ItemStyle Width="10px" />
                </asp:BoundField>
                <asp:BoundField DataField="A_64" HeaderText="A_64">
                    <ItemStyle Width="10px" />
                </asp:BoundField>
                <asp:BoundField DataField="A_65" HeaderText="A_65">
                    <ItemStyle Width="10px" />
                </asp:BoundField>
                <asp:BoundField DataField="A_66" HeaderText="A_66">
                    <ItemStyle Width="10px" />
                </asp:BoundField>
                <asp:BoundField DataField="A_67" HeaderText="A_67">
                    <ItemStyle Width="10px" />
                </asp:BoundField>
                <asp:BoundField DataField="A_68" HeaderText="A_68">
                    <ItemStyle Width="10px" />
                </asp:BoundField>
                <asp:BoundField DataField="A_69" HeaderText="A_69">
                    <ItemStyle Width="10px" />
                </asp:BoundField>
                <asp:BoundField DataField="A_70" HeaderText="A_70">
                    <ItemStyle Width="10px" />
                </asp:BoundField>
                <asp:BoundField DataField="A_71" HeaderText="A_71">
                    <ItemStyle Width="10px" />
                </asp:BoundField>
                <asp:BoundField DataField="A_72" HeaderText="A_72">
                    <ItemStyle Width="10px" />
                </asp:BoundField>
                <asp:BoundField DataField="A_73" HeaderText="A_73">
                    <ItemStyle Width="10px" />
                </asp:BoundField>
                <asp:BoundField DataField="A_74" HeaderText="A_74">
                    <ItemStyle Width="10px" />
                </asp:BoundField>
                <asp:BoundField DataField="A_75" HeaderText="A_75">
                    <ItemStyle Width="10px" />
                </asp:BoundField>
                <asp:BoundField DataField="A_76" HeaderText="A_76">
                    <ItemStyle Width="10px" />
                </asp:BoundField>
                <asp:BoundField DataField="A_77" HeaderText="A_77">
                    <ItemStyle Width="10px" />
                </asp:BoundField>
                <asp:BoundField DataField="A_78" HeaderText="A_78">
                    <ItemStyle Width="10px" />
                </asp:BoundField>
                <asp:BoundField DataField="A_79" HeaderText="A_79">
                    <ItemStyle Width="10px" />
                </asp:BoundField>
                <asp:BoundField DataField="A_80" HeaderText="A_80">
                    <ItemStyle Width="10px" />
                </asp:BoundField>
                <asp:BoundField DataField="A_81" HeaderText="A_81">
                    <ItemStyle Width="10px" />
                </asp:BoundField>
                <asp:BoundField DataField="A_82" HeaderText="A_82">
                    <ItemStyle Width="10px" />
                </asp:BoundField>
                <asp:BoundField DataField="A_83" HeaderText="A_83">
                    <ItemStyle Width="10px" />
                </asp:BoundField>
                <asp:BoundField DataField="A_84" HeaderText="A_84">
                    <ItemStyle Width="10px" />
                </asp:BoundField>
                <asp:BoundField DataField="A_85" HeaderText="A_85">
                    <ItemStyle Width="10px" />
                </asp:BoundField>
            </Columns>
        </asp:GridView>
    </div>
    <uc1:WebFoot ID="WebFoot1" runat="server" />
    </form>
</body>
</html>
