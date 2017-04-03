<%@ Page Language="C#" AutoEventWireup="true" CodeFile="22X5_LH.aspx.cs" Inherits="TC22X5_22X5_LH" %>

<%@ Register Src="../../Home/Room/UserControls/WebFoot.ascx" TagName="WebFoot" TagPrefix="uc1" %>
<%@ Register Src="../../UserControls/Head.ascx" TagName="Head" TagPrefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>体彩22选5连号分布图连号分析图</title>
    <link href="../../Home/Room/Style/common.css" rel="stylesheet" type="text/css" />
    <link href="../../Home/Room/Style/StyleSheet.css" rel="stylesheet" type="text/css" />
    <link href="../../Home/Room/Style/zbuy.css" rel="stylesheet" type="text/css" />
    <link rel="shortcut icon" href="../../favicon.ico" />
    <link href="../../Home/Room/Style/zst.css" rel="stylesheet" type="text/css" />

    <script src="../../JavaScript/jquery-1.4.js" type="text/javascript"></script>

    <script type="text/javascript" language="JavaScript">

        function Style(obj, statcolor, color) {
            if (obj.style.backgroundColor == "") {
                obj.style.backgroundColor = statcolor;
                obj.style.color = "#CC0000";
            }
            else {
                obj.style.backgroundColor = "";
                obj.style.color = color;
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
                22选5&nbsp;&nbsp;连号分布图</h1>
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
            ShowFooter="True" Width="100%" bordercolorlight="#808080" bordercolordark="#FFFFFF"
            OnRowCreated="GridView1_RowCreated" align="center" CellPadding="0">
            <Columns>
                <asp:BoundField HeaderText="序号">
                    <ItemStyle Width="30px" />
                </asp:BoundField>
                <asp:BoundField DataField="Isuse" HeaderText="期 数">
                    <ItemStyle Width="60px" />
                </asp:BoundField>
                <asp:BoundField DataField="LotteryNumber" HeaderText="体彩22选5开奖号码">
                    <ItemStyle ForeColor="Red" Font-Bold="True" Width="120px" />
                </asp:BoundField>
                <asp:BoundField DataField="L_0" HeaderText="连号数">
                    <ItemStyle Width="80px" ForeColor="Red" />
                </asp:BoundField>
                <asp:BoundField DataField="G_0" HeaderText="G_0">
                    <ItemStyle Width="15px" />
                </asp:BoundField>
                <asp:BoundField DataField="G_1" HeaderText="G_1">
                    <ItemStyle Width="15px" />
                </asp:BoundField>
                <asp:BoundField DataField="G_2" HeaderText="G_2">
                    <ItemStyle Width="15px" />
                </asp:BoundField>
                <asp:BoundField DataField="G_3" HeaderText="G_3">
                    <ItemStyle Width="15px" />
                </asp:BoundField>
                <asp:BoundField DataField="G_4" HeaderText="G_4">
                    <ItemStyle Width="15px" />
                </asp:BoundField>
            </Columns>
        </asp:GridView>
    </div>
    <div class="wrap">
        <table border="0" align="center" cellpadding="2" cellspacing="0" bordercolorlight="#999999"
            bordercolordark="#FFFFFF">
            <tr>
                <td colspan="2" align="left">
                    <font color="#FF0000">近<%=tem %>期结果分析</font>
                </td>
            </tr>
            <tr>
                <td align="left">
                    <font color="#FF9900">连号出现统计</font>&nbsp
                    <table width="100%" border="1" cellpadding="1" cellspacing="0" bordercolorlight="#FF9900"
                        bordercolordark="#FFFFFF" bgcolor="#FF9900">
                        <tr align="center" valign="middle" bgcolor="#FFFFFF">
                            <td style="height: 15px; width: 45px;">
                                连 号
                            </td>
                            <td style="width: 45px">
                                次 数
                            </td>
                            <td style="width: 45px">
                                百分比
                            </td>
                        </tr>
                        <tr align="center" valign="middle" bgcolor="#FFFFFF">
                            <td style="height: 15px">
                                0
                            </td>
                            <td>
                                <%=sum[0] %>
                            </td>
                            <td>
                                <%=tr[0] %>
                            </td>
                        </tr>
                        <tr align="center" valign="middle" bgcolor="#FFFFFF">
                            <td style="height: 15px">
                                1
                            </td>
                            <td>
                                <%=sum[1] %>
                            </td>
                            <td>
                                <%=tr[1] %>
                            </td>
                        </tr>
                        <tr align="center" valign="middle" bgcolor="#FFFFFF">
                            <td style="height: 15px">
                                2
                            </td>
                            <td>
                                <%=sum[2] %>
                            </td>
                            <td>
                                <%=tr[2]%>
                            </td>
                        </tr>
                        <tr align="center" valign="middle" bgcolor="#FFFFFF">
                            <td style="height: 15px">
                                3
                            </td>
                            <td>
                                <%=sum[3] %>
                            </td>
                            <td>
                                <%=tr[3]%>
                            </td>
                        </tr>
                        <tr align="center" valign="middle" bgcolor="#FFFFFF">
                            <td style="height: 15px">
                                4
                            </td>
                            <td>
                                <%=sum[4] %>
                            </td>
                            <td>
                                <%=tr[4]%>
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
