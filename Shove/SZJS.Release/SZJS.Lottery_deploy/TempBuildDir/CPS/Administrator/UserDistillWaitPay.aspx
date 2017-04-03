<%@ page language="C#" autoeventwireup="true" inherits="CPS_Administrator_UserDistillWaitPay, App_Web_mmkwpj80" enableEventValidation="false" %>

<%@ Register Assembly="Shove.Web.UI.4 For.NET 3.5" Namespace="Shove.Web.UI" TagPrefix="ShoveWebUI" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
    <link href="style/style01.css" rel="stylesheet" type="text/css" />

    <script language="javascript" type="text/javascript" src="../../Components/My97DatePicker/WdatePicker.js"></script>

    <style type="text/css">
        .red142
        {
            font-size: 14px;
            color: #cc0000;
            font-family: "tahoma";
            line-height: 22px;
        }
        .red142 A:link
        {
            font-family: "tahoma";
            color: #cc0000;
            text-decoration: underline;
        }
        .red142 A:active
        {
            font-family: "tahoma";
            color: #cc0000;
            text-decoration: none;
        }
        .red142 A:visited
        {
            font-family: "tahoma";
            color: #cc0000;
            text-decoration: none;
        }
        .red142 A:hover
        {
            font-family: "tahoma";
            color: #cc0000;
            text-decoration: none;
        }
        .blue12
        {
            font-family: "tahoma";
            color: #cc0000;
            text-decoration: none;
        }
        .SelectedTab
        {
            cursor: pointer;
            background-image: url(     '../../Home/Room/Images/admin_qh_100_1.jpg' );
            background-repeat: no-repeat;
        }
        .NotSelectedTab
        {
            cursor: pointer;
            background-image: url(     '../../Home/Room/Images/admin_qh_100_2.jpg' );
            background-repeat: no-repeat;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div class="title" style="text-align: center;">
            待付款佣金列表
        </div>
        <asp:HiddenField ID="hfCurPayType" runat="server" Value="银行" />
        <table cellspacing="0" cellpadding="0" width="100%" border="0" class="baseTab">
            <tr>
                <td style="height: 30px">
                    &nbsp;开始日期
                    <asp:TextBox runat="server" ID="tbBeginTime" Width="100px" onblur="if(this.value=='') this.value=document.getElementById('tbBeginTime').value"
                        name="tbBeginTime" onFocus="WdatePicker({el:'tbBeginTime',dateFmt:'yyyy-MM-dd', maxDate:'%y-%M-%d'})"
                        Height="15px" CssClass="text" />
                    &nbsp;结束日期 
                    <asp:TextBox runat="server" ID="tbEndTime" Width="100px" name="tbEndTime" onblur="if(this.value=='') this.value=document.getElementById('tbEndTime').value"
                        onFocus="WdatePicker({el:'tbEndTime',dateFmt:'yyyy-MM-dd', maxDate:'%y-%M-%d'})"
                        Height="15px"  CssClass="text" />
                    &nbsp;&nbsp;&nbsp;用户名称
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
        <table border="0" cellspacing="0" cellpadding="0" width="100%">
            <tr>
                <td>
                    <table border="0" cellspacing="0" cellpadding="0" background="../../Home/Room/images/zfb_left_bg_2.jpg"
                        style="margin-top: 10px;">
                        <tr>
                            <td width="6px" height="29" align="left">
                                &nbsp;
                            </td>
                            <td id="PayByAlipay" runat="server" class="NotSelectedTab" width="100px" align="center">
                                <asp:LinkButton runat="server" ID="lbtnPayByAlipay" OnClientClick="return true;"
                                    OnClick="lbtnPayByAlipay_Click">提款到支付宝</asp:LinkButton>
                            </td>
                            <td width="6px" height="29" align="left">
                                &nbsp;
                            </td>
                            <td id="PayByBank" runat="server" class="NotSelectedTab" width="100px" align="center">
                                <asp:LinkButton runat="server" ID="lbtnPayByBank" OnClientClick="return true;" OnClick="lbtnPayByBank_Click">提款到银行卡</asp:LinkButton>
                            </td>
                            <td width="6px">
                                &nbsp;
                            </td>
                            <td id="AllPay" runat="server" class="NotSelectedTab" width="100px" align="center">
                                <asp:LinkButton runat="server" ID="lbtnAllPay" OnClientClick="return true;" OnClick="lbtnAllPay_Click">所有待付款用户</asp:LinkButton>
                            </td>
                            <td width="6px">
                                &nbsp;
                            </td>
                            <td align="center">
                                &nbsp;
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
        <table id="myIcaileTab" runat="server" width="100%" border="0" cellpadding="0" cellspacing="0">
            <tr>
                <td>
                    <table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="#DDDDDD">
                        <tr>
                            <td height="30" align="center" bgcolor="#FFFFFF">
                                <asp:DataGrid ID="g" runat="server" Width="100%" AutoGenerateColumns="False" CellPadding="1"
                                    CssClass="baseTab" BackColor="White" BorderWidth="2px" BorderStyle="None" BorderColor="#E0E0E0"
                                    Font-Names="宋体" PageSize="20" AllowPaging="True" OnItemCommand="g_ItemCommand"
                                    DataKeyField="ID" OnItemDataBound="g_ItemDataBound">
                                    <FooterStyle ForeColor="#330099" BackColor="#FFFFCC"></FooterStyle>
                                    <SelectedItemStyle Font-Bold="True" ForeColor="#663399"></SelectedItemStyle>
                                    <HeaderStyle HorizontalAlign="Center" ForeColor="RoyalBlue" VerticalAlign="Middle"
                                        BackColor="#E7F1FA"></HeaderStyle>
                                    <Columns>
                                        <asp:BoundColumn Visible="False" DataField="ID"></asp:BoundColumn>
                                        <asp:BoundColumn Visible="False" DataField="UserID"></asp:BoundColumn>
                                        <asp:BoundColumn Visible="False" DataField="SiteID"></asp:BoundColumn>
                                        <asp:TemplateColumn HeaderText="选择">
                                            <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                                            <ItemTemplate>
                                                <asp:CheckBox ID="chkSelect" runat="server" />
                                            </ItemTemplate>
                                        </asp:TemplateColumn>
                                        <asp:TemplateColumn HeaderText="序号">
                                            <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                                            <ItemTemplate>
                                                <%# Container.ItemIndex + 1%>
                                            </ItemTemplate>
                                        </asp:TemplateColumn>
                                        <asp:BoundColumn DataField="ID" HeaderText="流水号" SortExpression="ID">
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
                                                Font-Strikeout="False" Font-Underline="False" ForeColor="#0000ff"></ItemStyle>
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
                                        <asp:TemplateColumn HeaderText="状态">
                                            <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                                            <ItemTemplate>
                                                <%# DataBinder.Eval(Container.DataItem, "Result").ToString()=="10"?"接受提款(待付款)":"出错"%>
                                            </ItemTemplate>
                                        </asp:TemplateColumn>
                                        <asp:BoundColumn DataField="AlipayName" HeaderText="支付宝账号" SortExpression="AlipayName">
                                            <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                                            <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                        </asp:BoundColumn>
                                        <asp:BoundColumn DataField="BillName" HeaderText="快钱账号" SortExpression="BillName">
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
                                            <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                                            <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                        </asp:BoundColumn>
                                        <asp:BoundColumn DataField="BankInProvince" HeaderText="所在省"></asp:BoundColumn>
                                        <asp:BoundColumn DataField="BankInCity" HeaderText="所在市"></asp:BoundColumn>
                                        <asp:BoundColumn DataField="BankUserName" HeaderText="持卡人姓名" SortExpression="BankUserName">
                                            <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                                            <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                        </asp:BoundColumn>
                                        <asp:TemplateColumn HeaderText="操作">
                                            <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                                            <ItemTemplate>
                                                <asp:Button ID="btnPay" runat="server" CommandName="Pay" Height="22px" Width="75"
                                                    Text="已线下付款" OnClientClick="return confirm('您确认已线下付款了吗?');" />
                                                <asp:Button ID="btnNoAccept" runat="server" CommandName="DistillNoAccept" Height="22px"
                                                    Width="75" Text="拒绝提款" OnClientClick="return confirm('您确认拒绝提款吗? 此操作将会返还会员提款的金额!');" />
                                            </ItemTemplate>
                                        </asp:TemplateColumn>
                                        <asp:TemplateColumn HeaderText="备注">
                                            <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                                            <ItemTemplate>
                                                <asp:TextBox ID="tbMemo" runat="server" MaxLength="50" Height="16px" Width="80"  CssClass="text"/>
                                                <asp:Button ID="btnMemo" runat="server" CommandName="EditMemo" Height="22px" Width="40"
                                                    Text="修改" OnClientClick="return confirm('您确认要修改吗?');" />
                                            </ItemTemplate>
                                        </asp:TemplateColumn>
                                    </Columns>
                                    <PagerStyle Visible="False" HorizontalAlign="Center" ForeColor="#330099" BackColor="#FFFFCC">
                                    </PagerStyle>
                                </asp:DataGrid>
                                <ShoveWebUI:ShoveGridPager ID="gPager" runat="server" Width="100%" ShowSelectColumn="False"
                                    DataGrid="g" AllowShorting="False" AlternatingRowColor="#F7FEFA" GridColor="#E0E0E0"
                                    HotColor="MistyRose" Visible="False" OnPageWillChange="gPager_PageWillChange" />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
        <ShoveWebUI:ShoveConfirmButton ID="btnAlipayToAlipayAdd" runat="server" Width="129px"
            Height="28px" Text="批量派发至支付宝" AlertText="确信输入无误，并立即派发用户的支付宝账号吗？" OnClick="btnAlipayToAlipayAdd_Click" />
        <ShoveWebUI:ShoveConfirmButton ID="btnAlipayToBank" Visible="false" runat="server"
            Width="129px" Height="28px" Text="批量派发至银行卡" AlertText="确信输入无误，并立即派发用户的银行卡吗？"
            OnClick="btnAlipayToBank_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </div>
    </form>
</body>
</html>
