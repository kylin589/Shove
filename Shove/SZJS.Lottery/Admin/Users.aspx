<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Users.aspx.cs" Inherits="Admin_Users" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ Register Assembly="Shove.Web.UI.4 For.NET 3.5" Namespace="Shove.Web.UI" TagPrefix="ShoveWebUI" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
    <link href="style/style01.css" rel="stylesheet" type="text/css" />

    <script language="javascript" type="text/javascript" src="../Components/My97DatePicker/WdatePicker.js"></script>

</head>
<body class="center">
    <form id="form1" runat="server">
    <div>
        <table width="100%" border="0" cellpadding="0" cellspacing="1" class="baseTab">
            <tr>
                <td height="32" bgcolor="#B0D5EC">
                    <div class="title">
                        用户信息管理一览表
                    </div>
                </td>
            </tr>
            <tr class="title" align="left" style="height:28px">
                <td>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 用户名：<asp:TextBox ID="tbUserName" runat="server"></asp:TextBox>
                    <asp:Button ID="btnSearch" runat="server" Text="搜索用户" OnClick="btnSearch_Click">
                    </asp:Button>&nbsp; 开始日期
                    <asp:TextBox runat="server" ID="tbBeginTime" Width="100px" name="tbBeginTime" onFocus="WdatePicker({el:'tbBeginTime',dateFmt:'yyyy-MM-dd', maxDate:'%y-%M-%d'})"
                        Height="15px" />
                    &nbsp;结束日期
                    <asp:TextBox runat="server" ID="tbEndTime" Width="100px" name="tbEndTime" onFocus="WdatePicker({el:'tbEndTime',dateFmt:'yyyy-MM-dd', maxDate:'%y-%M-%d'})"
                        Height="15px" />
                    <asp:Button ID="ShoveConfirmButton1" runat="server" Text="搜索" OnClick="btnSearchByRegDate_Click">
                    </asp:Button>
                    &nbsp;
                    <asp:Button ID="btnSearchNoPay" runat="server" Text="未充值用户" OnClick="btnSearchNoPay_Click">
                    </asp:Button>
                    &nbsp;
                    <asp:Button ID="btnDownload" runat="server" Text="导出下载" OnClick="btnDownload_Click"
                        Visible="false"></asp:Button>
                    &nbsp;
                    <asp:Button ID="btnSelect" runat="server" Text="全部会员" OnClick="btnSelect_Click" Visible="false">
                    </asp:Button>
                </td>
            </tr>
            <tr class="title">
                <td align="center">
                    <asp:DataGrid ID="g" runat="server" CellPadding="0" BackColor="White" BorderWidth="2px"
                        BorderStyle="None" BorderColor="#E0E0E0" Font-Names="宋体" PageSize="20" AllowSorting="True"
                        AutoGenerateColumns="False" AllowPaging="True" OnItemDataBound="g_ItemDataBound"
                        Width="100%">
                        <FooterStyle ForeColor="#330099" BackColor="#FFFFCC"></FooterStyle>
                        <SelectedItemStyle Font-Bold="True" ForeColor="#663399"></SelectedItemStyle>
                        <HeaderStyle HorizontalAlign="Center" ForeColor="RoyalBlue" VerticalAlign="Middle"
                            BackColor="LightGray" Wrap="True"></HeaderStyle>
                        <Columns>
                            <asp:BoundColumn DataField="Name" SortExpression="Name" HeaderText="用户名">
                                <HeaderStyle HorizontalAlign="Center" Font-Bold="False" Font-Italic="False" Font-Overline="False"
                                    Font-Strikeout="False" Font-Underline="False" Wrap="False"></HeaderStyle>
                                <ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
                                    Font-Underline="False" Wrap="False" />
                            </asp:BoundColumn>
                            <asp:BoundColumn DataField="RealityName" SortExpression="RealityName" HeaderText="真实姓名">
                                <HeaderStyle HorizontalAlign="Center" Font-Bold="False" Font-Italic="False" Font-Overline="False"
                                    Font-Strikeout="False" Font-Underline="False" Wrap="False"></HeaderStyle>
                                <ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
                                    Font-Underline="False" Wrap="False" />
                            </asp:BoundColumn>
                            <asp:BoundColumn DataField="IDCardNumber" SortExpression="IDCardNumber" HeaderText="身份证">
                                <HeaderStyle HorizontalAlign="Center" Font-Bold="False" Font-Italic="False" Font-Overline="False"
                                    Font-Strikeout="False" Font-Underline="False" Wrap="False"></HeaderStyle>
                                <ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
                                    Font-Underline="False" Wrap="False" />
                            </asp:BoundColumn>
                            <asp:BoundColumn DataField="Email" SortExpression="Email" HeaderText="邮箱">
                                <HeaderStyle HorizontalAlign="Center" Font-Bold="False" Font-Italic="False" Font-Overline="False"
                                    Font-Strikeout="False" Font-Underline="False" Wrap="False"></HeaderStyle>
                                <ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
                                    Font-Underline="False" Wrap="False" />
                            </asp:BoundColumn>
                            <asp:TemplateColumn SortExpression="isEmailValided" HeaderText="邮箱验证状态">
                                <HeaderStyle HorizontalAlign="Center" Font-Bold="False" Font-Italic="False" Font-Overline="False"
                                    Font-Strikeout="False" Font-Underline="False" Wrap="False"></HeaderStyle>
                                <ItemStyle HorizontalAlign="Center" Font-Bold="False" Font-Italic="False" Font-Overline="False"
                                    Font-Strikeout="False" Font-Underline="False" Wrap="False"></ItemStyle>
                                <ItemTemplate>
                                    <asp:CheckBox ID="cbisEmailValided" runat="server" Enabled="False"></asp:CheckBox>
                                </ItemTemplate>
                            </asp:TemplateColumn>
                            <asp:BoundColumn DataField="Mobile" SortExpression="Mobile" HeaderText="手机">
                                <HeaderStyle HorizontalAlign="Center" Font-Bold="False" Font-Italic="False" Font-Overline="False"
                                    Font-Strikeout="False" Font-Underline="False" Wrap="False"></HeaderStyle>
                                <ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
                                    Font-Underline="False" Wrap="False" />
                            </asp:BoundColumn>
                            <asp:TemplateColumn SortExpression="isMobileValided" HeaderText="手机验证状态">
                                <HeaderStyle HorizontalAlign="Center" Font-Bold="False" Font-Italic="False" Font-Overline="False"
                                    Font-Strikeout="False" Font-Underline="False" Wrap="False"></HeaderStyle>
                                <ItemStyle HorizontalAlign="Center" Font-Bold="False" Font-Italic="False" Font-Overline="False"
                                    Font-Strikeout="False" Font-Underline="False" Wrap="False"></ItemStyle>
                                <ItemTemplate>
                                    <asp:CheckBox ID="cbisMobileValided" runat="server" Enabled="False"></asp:CheckBox>
                                </ItemTemplate>
                            </asp:TemplateColumn>
                            <asp:BoundColumn DataField="QQ" SortExpression="QQ" HeaderText="QQ">
                                <HeaderStyle HorizontalAlign="Center" Font-Bold="False" Font-Italic="False" Font-Overline="False"
                                    Font-Strikeout="False" Font-Underline="False" Wrap="False"></HeaderStyle>
                                <ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
                                    Font-Underline="False" Wrap="False" />
                            </asp:BoundColumn>
                            <asp:BoundColumn DataField="Telephone" SortExpression="Telephone" HeaderText="电话">
                                <HeaderStyle HorizontalAlign="Center" Font-Bold="False" Font-Italic="False" Font-Overline="False"
                                    Font-Strikeout="False" Font-Underline="False" Wrap="False"></HeaderStyle>
                                <ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
                                    Font-Underline="False" Wrap="False" />
                            </asp:BoundColumn>
                            <asp:BoundColumn DataField="RegisterTime" SortExpression="RegisterTime" HeaderText="注册时间">
                                <HeaderStyle HorizontalAlign="Center" Font-Bold="False" Font-Italic="False" Font-Overline="False"
                                    Font-Strikeout="False" Font-Underline="False" Wrap="False"></HeaderStyle>
                                <ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
                                    Font-Underline="False" Wrap="False" />
                            </asp:BoundColumn>
                            <asp:BoundColumn DataField="Balance" SortExpression="Balance" HeaderText="余额">
                                <HeaderStyle HorizontalAlign="Center" Font-Bold="False" Font-Italic="False" Font-Overline="False"
                                    Font-Strikeout="False" Font-Underline="False" Wrap="False"></HeaderStyle>
                                <ItemStyle HorizontalAlign="Right" Font-Bold="False" Font-Italic="False" Font-Overline="False"
                                    Font-Strikeout="False" Font-Underline="False" Wrap="False"></ItemStyle>
                            </asp:BoundColumn>
                            <asp:BoundColumn DataField="Freeze" SortExpression="Freeze" HeaderText="冻结">
                                <HeaderStyle HorizontalAlign="Center" Font-Bold="False" Font-Italic="False" Font-Overline="False"
                                    Font-Strikeout="False" Font-Underline="False" Wrap="False"></HeaderStyle>
                                <ItemStyle HorizontalAlign="Right" Font-Bold="False" Font-Italic="False" Font-Overline="False"
                                    Font-Strikeout="False" Font-Underline="False" Wrap="False"></ItemStyle>
                            </asp:BoundColumn>
                            <asp:BoundColumn DataField="Province" SortExpression="Province" HeaderText="省份">
                                <HeaderStyle HorizontalAlign="Center" Font-Bold="False" Font-Italic="False" Font-Overline="False"
                                    Font-Strikeout="False" Font-Underline="False" Wrap="False"></HeaderStyle>
                                <ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
                                    Font-Underline="False" Wrap="False" />
                            </asp:BoundColumn>
                            <asp:BoundColumn DataField="City" SortExpression="City" HeaderText="城市">
                                <HeaderStyle HorizontalAlign="Center" Font-Bold="False" Font-Italic="False" Font-Overline="False"
                                    Font-Strikeout="False" Font-Underline="False" Wrap="False"></HeaderStyle>
                                <ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
                                    Font-Underline="False" Wrap="False" />
                            </asp:BoundColumn>
                            <asp:BoundColumn DataField="Sex" SortExpression="Sex" HeaderText="性别">
                                <HeaderStyle HorizontalAlign="Center" Font-Bold="False" Font-Italic="False" Font-Overline="False"
                                    Font-Strikeout="False" Font-Underline="False" Wrap="False"></HeaderStyle>
                                <ItemStyle HorizontalAlign="Center" Font-Bold="False" Font-Italic="False" Font-Overline="False"
                                    Font-Strikeout="False" Font-Underline="False" Wrap="False"></ItemStyle>
                            </asp:BoundColumn>
                            <asp:BoundColumn DataField="BirthDay" SortExpression="BirthDay" HeaderText="生日">
                                <HeaderStyle HorizontalAlign="Center" Font-Bold="False" Font-Italic="False" Font-Overline="False"
                                    Font-Strikeout="False" Font-Underline="False" Wrap="False"></HeaderStyle>
                                <ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
                                    Font-Underline="False" Wrap="False" />
                            </asp:BoundColumn>
                            <asp:BoundColumn DataField="Address" SortExpression="Address" HeaderText="地址">
                                <HeaderStyle HorizontalAlign="Center" Font-Bold="False" Font-Italic="False" Font-Overline="False"
                                    Font-Strikeout="False" Font-Underline="False" Wrap="False"></HeaderStyle>
                                <ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
                                    Font-Underline="False" Wrap="False" />
                            </asp:BoundColumn>
                            <asp:TemplateColumn SortExpression="isCanLogin" HeaderText="允许登录">
                                <HeaderStyle HorizontalAlign="Center" Font-Bold="False" Font-Italic="False" Font-Overline="False"
                                    Font-Strikeout="False" Font-Underline="False" Wrap="False"></HeaderStyle>
                                <ItemStyle HorizontalAlign="Center" Font-Bold="False" Font-Italic="False" Font-Overline="False"
                                    Font-Strikeout="False" Font-Underline="False" Wrap="False"></ItemStyle>
                                <ItemTemplate>
                                    <asp:CheckBox ID="cbisCanLogin" runat="server" Enabled="False"></asp:CheckBox>
                                </ItemTemplate>
                            </asp:TemplateColumn>
                            <asp:BoundColumn DataField="LastLoginTime" SortExpression="LastLoginTime" HeaderText="登录时间">
                                <HeaderStyle HorizontalAlign="Center" Font-Bold="False" Font-Italic="False" Font-Overline="False"
                                    Font-Strikeout="False" Font-Underline="False" Wrap="False"></HeaderStyle>
                                <ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
                                    Font-Underline="False" Wrap="False" />
                            </asp:BoundColumn>
                            <asp:BoundColumn DataField="LastLoginIP" SortExpression="LastLoginIP" HeaderText="登录IP">
                                <HeaderStyle HorizontalAlign="Center" Font-Bold="False" Font-Italic="False" Font-Overline="False"
                                    Font-Strikeout="False" Font-Underline="False" Wrap="False"></HeaderStyle>
                                <ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
                                    Font-Underline="False" Wrap="False" />
                            </asp:BoundColumn>
                            <asp:BoundColumn DataField="LoginCount" SortExpression="LoginCount" HeaderText="次数">
                                <HeaderStyle HorizontalAlign="Center" Font-Bold="False" Font-Italic="False" Font-Overline="False"
                                    Font-Strikeout="False" Font-Underline="False" Wrap="False"></HeaderStyle>
                                <ItemStyle HorizontalAlign="Center" Font-Bold="False" Font-Italic="False" Font-Overline="False"
                                    Font-Strikeout="False" Font-Underline="False" Wrap="False"></ItemStyle>
                            </asp:BoundColumn>
                            <asp:BoundColumn DataField="UserType" SortExpression="UserType" HeaderText="类型">
                                <HeaderStyle HorizontalAlign="Center" Font-Bold="False" Font-Italic="False" Font-Overline="False"
                                    Font-Strikeout="False" Font-Underline="False" Wrap="False"></HeaderStyle>
                                <ItemStyle HorizontalAlign="Center" Font-Bold="False" Font-Italic="False" Font-Overline="False"
                                    Font-Strikeout="False" Font-Underline="False" Wrap="False"></ItemStyle>
                            </asp:BoundColumn>
                            <asp:BoundColumn DataField="BankName" SortExpression="BankName" HeaderText="开户行">
                                <HeaderStyle HorizontalAlign="Center" Font-Bold="False" Font-Italic="False" Font-Overline="False"
                                    Font-Strikeout="False" Font-Underline="False" Wrap="False"></HeaderStyle>
                                <ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
                                    Font-Underline="False" Wrap="False" />
                            </asp:BoundColumn>
                            <asp:BoundColumn DataField="BankCardNumber" SortExpression="BankCardNumber" HeaderText="银行卡号">
                                <HeaderStyle HorizontalAlign="Center" Font-Bold="False" Font-Italic="False" Font-Overline="False"
                                    Font-Strikeout="False" Font-Underline="False" Wrap="False"></HeaderStyle>
                                <ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
                                    Font-Underline="False" Wrap="False" />
                            </asp:BoundColumn>
                            <asp:BoundColumn Visible="False" DataField="ID"></asp:BoundColumn>
                            <asp:BoundColumn Visible="False" DataField="isCanLogin"></asp:BoundColumn>
                            <asp:BoundColumn Visible="False" DataField="SiteID"></asp:BoundColumn>
                            <asp:BoundColumn Visible="False" DataField="isEmailValided"></asp:BoundColumn>
                            <asp:BoundColumn Visible="False" DataField="isMobileValided"></asp:BoundColumn>
                        </Columns>
                        <PagerStyle Visible="False" HorizontalAlign="Center" ForeColor="#330099" BackColor="#FFFFCC">
                        </PagerStyle>
                        <ItemStyle Wrap="True" />
                    </asp:DataGrid>
                    <ShoveWebUI:ShoveGridPager ID="gPager" PageSize="20" runat="server" Width="100%"
                        ShowSelectColumn="False" DataGrid="g" AlternatingRowColor="Linen" GridColor="#E0E0E0"
                        HotColor="MistyRose" Visible="False" OnPageWillChange="gPager_PageWillChange"
                        OnSortBefore="gPager_SortBefore"></ShoveWebUI:ShoveGridPager>
                </td>
            </tr>
        </table>
        <br />
    </div>
    </form>
</body>
</html>
