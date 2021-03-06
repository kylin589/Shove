﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserDistillProcessing.aspx.cs"
    Inherits="Admin_UserDistillProcessing" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ Register Assembly="Shove.Web.UI.4 For.NET 3.5" Namespace="Shove.Web.UI" TagPrefix="ShoveWebUI" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
    <link href="style/style01.css" rel="stylesheet" type="text/css" />

    <script language="javascript" type="text/javascript" src="../Components/My97DatePicker/WdatePicker.js"></script>

</head>
<body>
    <form id="form1" runat="server">
    <div style="border: 1px solid #BCD2E9; width: 100%; margin-bottom: 8px;
        background-color: #F4F9FC; height: 100px; vertical-align: middle;">
        <div class="title" style="text-align: center">
            支付宝付款处理中提款一览表
        </div>
        <div style="color:Red">
            提示：以下记录为批量付款到支付宝或银行卡后的记录, 需要待支付宝处理结果。<br />
            支付宝到支付宝处理结果可即时返回,如果不成功,请确认,并另作支付;支付宝到银行卡需隔日才有结果, 如隔日未有结果，请确认，并另作支付。
        </div>
        <div style="border-color: #BCD2E9; width: 100%; margin-top: 2px; margin-bottom: 8px;
            background-color: #F4F9FC; height: 25px; vertical-align: middle; border-top-style: solid;
            border-top-width: 1px;" align="left">
            <table cellspacing="0" cellpadding="0" width="100%" border="0" class="baseTab">
                <tr>
                    <td style="height: 30px">
                        &nbsp;&nbsp; &nbsp;用户名称
                        <asp:TextBox runat="server" ID="tbUserName" Width="100px" Height="15px" />
                        &nbsp;<span style="color: #ff0000"><asp:Button ID="btnSearch" runat="server" Text="搜索"
                            Height="22px" Width="40px" BorderColor="Silver" BorderStyle="Solid" BorderWidth="1px"
                            OnClick="btnSearch_Click" />
                        </span>&nbsp;&nbsp;&nbsp; 账户 <span style="color: #ff0000">
                            <asp:DropDownList ID="ddlAccountType" runat="server" Width="109px" AutoPostBack="True"
                                OnSelectedIndexChanged="ddlAccountType_SelectedIndexChanged">
                            </asp:DropDownList>
                            &nbsp;</span>
                    </td>
                </tr>
            </table>
        </div>
    </div>
    <asp:HiddenField ID="hfCurPayType" runat="server" Value="银行" />
    <table border="0" cellspacing="0" cellpadding="0" width="100%" class="baseTab">
        <tr>
            <td>
                <table border="0" cellspacing="0" cellpadding="0">
                    <tr>
                        <td width="6px" height="29" align="left">
                            &nbsp;
                        </td>
                        <td id="PayByAlipay" runat="server" width="100px" align="center">
                            <asp:LinkButton runat="server" ID="lbtnPayByAlipay" OnClientClick="return true;"
                                OnClick="lbtnPayByAlipay_Click">支付宝提款</asp:LinkButton>
                        </td>
                        <td width="6px">
                            &nbsp;
                        </td>
                        <td id="PayByBank" runat="server" width="100px" align="center">
                            <asp:LinkButton runat="server" ID="lbtnPayByBank" OnClientClick="return true;" OnClick="lbtnPayByBank_Click">银行卡提款</asp:LinkButton>
                        </td>
                        <td width="6px">
                            &nbsp;
                        </td>
                        <td id="AllPay" runat="server" width="100px" align="center">
                            <asp:LinkButton runat="server" ID="lbtnAllPay" OnClientClick="return true;" OnClick="lbtnAllPay_Click">所有提款</asp:LinkButton>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    <table id="myIcaileTab" runat="server" width="100%" border="0" cellpadding="0" cellspacing="0"
        class="baseTab">
        <tr>
            <td>
                <table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#DDDDDD">
                    <tr>
                        <td height="30" align="center" bgcolor="#FFFFFF">
                            <asp:DataGrid ID="g" runat="server" Width="100%" AutoGenerateColumns="False" CellPadding="1"
                                BackColor="White" BorderWidth="2px" BorderStyle="None" BorderColor="#E0E0E0"
                                Font-Names="宋体" PageSize="20" AllowPaging="True" DataKeyField="ID" AllowSorting="True"
                                OnItemCommand="g_ItemCommand">
                                <FooterStyle ForeColor="#330099" BackColor="#FFFFCC"></FooterStyle>
                                <SelectedItemStyle Font-Bold="True" ForeColor="#663399"></SelectedItemStyle>
                                <HeaderStyle HorizontalAlign="Center" ForeColor="RoyalBlue" VerticalAlign="Middle"
                                    BackColor="#E7F1FA"></HeaderStyle>
                                <Columns>
                                    <asp:BoundColumn Visible="False" DataField="UserID"></asp:BoundColumn>
                                    <asp:BoundColumn Visible="False" DataField="SiteID"></asp:BoundColumn>
                                    <asp:TemplateColumn HeaderText="序号">
                                        <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                                        <ItemTemplate>
                                            <%# Container.ItemIndex + 1%>
                                        </ItemTemplate>
                                    </asp:TemplateColumn>
                                    <asp:BoundColumn DataField="ID" HeaderText="付款流水号" SortExpression="ID">
                                        <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                                        <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                    </asp:BoundColumn>
                                    <asp:BoundColumn DataField="Name" HeaderText="用户名" SortExpression="Name">
                                        <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                                        <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                    </asp:BoundColumn>
                                    <asp:BoundColumn DataField="RealityName" HeaderText="真实姓名" SortExpression="RealityName">
                                        <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                                        <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                    </asp:BoundColumn>
                                    <asp:BoundColumn DataField="Money" HeaderText="提取金额" DataFormatString="{0:N2}" SortExpression="Money">
                                        <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                                        <ItemStyle HorizontalAlign="Right" Font-Bold="False" Font-Italic="False" Font-Overline="False"
                                            Font-Strikeout="False" Font-Underline="False" ForeColor="#FF0000"></ItemStyle>
                                    </asp:BoundColumn>
                                    <asp:BoundColumn DataField="FormalitiesFees" HeaderText="手续费" DataFormatString="{0:N2}"
                                        SortExpression="FormalitiesFees">
                                        <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                                        <ItemStyle HorizontalAlign="Right"></ItemStyle>
                                    </asp:BoundColumn>
                                    <asp:TemplateColumn HeaderText="应付金额">
                                        <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                                        <ItemStyle HorizontalAlign="Right" Font-Bold="False" Font-Italic="False" Font-Overline="False"
                                            Font-Strikeout="False" Font-Underline="False" ForeColor="#FF0000"></ItemStyle>
                                        <ItemTemplate>
                                            <%#Convert.ToDouble(DataBinder.Eval(Container.DataItem, "Money")) - Convert.ToDouble(DataBinder.Eval(Container.DataItem, "FormalitiesFees"))%>
                                        </ItemTemplate>
                                    </asp:TemplateColumn>
                                    <asp:BoundColumn DataField="DateTime" HeaderText="申请时间" SortExpression="DateTime">
                                        <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                                        <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                    </asp:BoundColumn>
                                    <asp:BoundColumn DataField="HandleDateTime" HeaderText="处理时间" SortExpression="HandleDateTime">
                                        <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                                        <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                    </asp:BoundColumn>
                                    <asp:TemplateColumn HeaderText="受理周期">
                                        <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                                        <ItemTemplate>
                                            <%# (Convert.ToDateTime(DataBinder.Eval(Container.DataItem, "HandleDateTime")) - Convert.ToDateTime(DataBinder.Eval(Container.DataItem, "DateTime"))).TotalHours.ToString("N2")%>
                                            小时
                                        </ItemTemplate>
                                    </asp:TemplateColumn>
                                    <asp:TemplateColumn HeaderText="状态">
                                        <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                                        <ItemTemplate>
                                            支付宝处理中
                                        </ItemTemplate>
                                    </asp:TemplateColumn>
                                    <asp:BoundColumn DataField="AlipayName" HeaderText="支付宝账号" SortExpression="AlipayName">
                                        <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                                        <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                    </asp:BoundColumn>
                                    <asp:BoundColumn DataField="BankCardNumber" HeaderText="提款银行卡帐号" SortExpression="BankCardNumber">
                                        <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                                        <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                    </asp:BoundColumn>
                                    <asp:BoundColumn DataField="BankTypeName" HeaderText="开户银行" SortExpression="BankTypeName">
                                    </asp:BoundColumn>
                                    <asp:BoundColumn DataField="BankName" HeaderText="支行名称" SortExpression="BankName">
                                    </asp:BoundColumn>
                                    <asp:BoundColumn DataField="BankInProvince" HeaderText="所在省"></asp:BoundColumn>
                                    <asp:BoundColumn DataField="BankInCity" HeaderText="所在市"></asp:BoundColumn>
                                    <asp:BoundColumn DataField="BankUserName" HeaderText="持卡人姓名" SortExpression="BankUserName">
                                        <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                                        <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                    </asp:BoundColumn>
                                    <asp:BoundColumn DataField="Memo" HeaderText="备注" SortExpression="Memo">
                                        <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                                        <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                    </asp:BoundColumn>
                                    <asp:TemplateColumn HeaderText="操作">
                                        <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                                        <ItemTemplate>
                                            <asp:Button ID="btnPay" runat="server" CommandName="Pay" Height="22px" Width="75"
                                                Text="确认已付款" OnClientClick="return confirm('您确认已确认已付款成功了吗?');" />
                                        </ItemTemplate>
                                    </asp:TemplateColumn>
                                </Columns>
                                <PagerStyle Visible="False" HorizontalAlign="Center" ForeColor="#330099" BackColor="#FFFFCC">
                                </PagerStyle>
                            </asp:DataGrid>
                            <ShoveWebUI:ShoveGridPager ID="gPager" runat="server" Width="100%" ShowSelectColumn="False"
                                DataGrid="g" AllowShorting="true" AlternatingRowColor="#F7FEFA" GridColor="#E0E0E0"
                                HotColor="MistyRose" Visible="False" OnPageWillChange="gPager_PageWillChange"
                                OnSortBefore="gPager_SortBefore" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
