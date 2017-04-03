<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LotteryGateway.aspx.cs" Inherits="Admin_LotteryGateway" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ Register Assembly="Shove.Web.UI.4 For.NET 3.5" Namespace="Shove.Web.UI" TagPrefix="ShoveWebUI" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
    <link href="style/style01.css" rel="stylesheet" type="text/css" />
</head>
<body class="center">
    <form id="form1" runat="server">
    <div>
        <div class="title" style="text-align: center">
            电子票设置
        </div>
        <table border="0" cellpadding="1" cellspacing="0" align="center" style="width: 100%"
            class="baseTab">
            <tr>
                <td colspan="2">
                    <asp:GridView ID="g" runat="server" Width="100%" AutoGenerateColumns="False" BorderStyle="Solid"
                        BorderWidth="1px" CellPadding="0" ForeColor="#333333" GridLines="None">
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <Columns>
                            <asp:BoundField DataField="Name" HeaderText="彩种" />
                            <asp:TemplateField HeaderText="出票方式">
                                <ItemTemplate>
                                    <asp:DropDownList ID="ddlElectronTicket" runat="server">
                                        <asp:ListItem Value="0">本地出票</asp:ListItem>
                                        <asp:ListItem Value="101">上海大赢家-电子出票中心</asp:ListItem>
                                        <asp:ListItem Value="102">中民卓彩网-竞彩出票中心</asp:ListItem>
                                        <asp:ListItem Value="103">中民卓彩网-体彩出票中心</asp:ListItem>
                                        <asp:ListItem Value="104">中民卓彩网-福彩出票中心</asp:ListItem>
                                    </asp:DropDownList>
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>
                            <asp:BoundField DataField="id" />
                            <asp:BoundField DataField="PrintOutType" />
                        </Columns>
                        <RowStyle BackColor="#EFF3FB" />
                        <EditRowStyle BackColor="#2461BF" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <AlternatingRowStyle BackColor="White" />
                    </asp:GridView>
                    <br />
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="height: 30px">
                    <strong>上海大赢家-电子出票中心</strong>
                </td>
            </tr>
            <tr>
                <td style="width: 27%">
                    账户余额：
                </td>
                <td style="width: 73%">
                    <span id="UserBalance" runat="server" style="color: Red"></span>元
                </td>
            </tr>
            <tr>
                <td style="width: 27%">
                    网关地址：
                </td>
                <td style="width: 73%">
                    <asp:TextBox ID="tb1" runat="server" Width="328px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    代理编号：
                </td>
                <td>
                    <asp:TextBox ID="tb2" runat="server" Width="328px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    代理密钥：
                </td>
                <td>
                    <asp:TextBox ID="tb3" runat="server" Width="328px" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    代理用户：
                </td>
                <td>
                    <asp:TextBox ID="tb4" runat="server" Width="328px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    登陆密码：
                </td>
                <td>
                    <asp:TextBox ID="tb5" runat="server" Width="328px" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    投注密码：
                </td>
                <td>
                    <asp:TextBox ID="tb6" runat="server" Width="328px" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="height: 30px">
                    <strong>中民卓彩网-体彩出票中心</strong>
                </td>
            </tr>
            <tr>
                <td style="width: 27%">
                    账户余额：
                </td>
                <td style="width: 73%">
                    <span id="TCUserBalance" runat="server" style="color: Red"></span>元
                </td>
            </tr>
            <tr>
                <td style="width: 27%">
                    网关地址：
                </td>
                <td style="width: 73%">
                    <asp:TextBox ID="tbTC1" runat="server" Width="328px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 27%">
                    代理编号：
                </td>
                <td style="width: 73%">
                    <asp:TextBox ID="tbTC2" runat="server" Width="328px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 27%">
                    代理密钥：
                </td>
                <td style="width: 73%">
                    <asp:TextBox ID="tbTC3" runat="server" Width="328px" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="height: 30px">
                    <strong>中民卓彩网-福彩出票中心</strong>
                </td>
            </tr>
            <tr>
                <td style="width: 27%">
                    账户余额：
                </td>
                <td style="width: 73%">
                    <span id="FCUserBalance" runat="server" style="color: Red"></span>元
                </td>
            </tr>
            <tr>
                <td style="width: 27%">
                    网关地址：
                </td>
                <td style="width: 73%">
                    <asp:TextBox ID="tbFC1" runat="server" Width="328px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 27%">
                    代理编号：
                </td>
                <td style="width: 73%">
                    <asp:TextBox ID="tbFC2" runat="server" Width="328px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 27%">
                    代理密钥：
                </td>
                <td style="width: 73%">
                    <asp:TextBox ID="tbFC3" runat="server" Width="328px" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="height: 30px">
                    <strong>中民卓彩网-竞彩出票中心</strong>
                </td>
            </tr>
            <tr>
                <td style="width: 27%">
                    账户余额：
                </td>
                <td style="width: 73%">
                    <span id="JCUserBalance" runat="server" style="color: Red"></span>元
                </td>
            </tr>
            <tr>
                <td style="width: 27%">
                    网关地址：
                </td>
                <td style="width: 73%">
                    <asp:TextBox ID="tbJC1" runat="server" Width="328px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 27%">
                    代理编号：
                </td>
                <td style="width: 73%">
                    <asp:TextBox ID="tbJC2" runat="server" Width="328px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 27%">
                    代理密钥：
                </td>
                <td style="width: 73%">
                    <asp:TextBox ID="tbJC3" runat="server" Width="328px" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="height: 40px" align="center">
                    <ShoveWebUI:ShoveConfirmButton ID="btnOK" runat="server" Text="保存" AlertText="确认书写无误吗？"
                        OnClick="btnOK_Click" />
                </td>
            </tr>
        </table>
        <br />
    </div>
    </form>
</body>
</html>
