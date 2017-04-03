<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SchemeQuash.aspx.cs" Inherits="Admin_SchemeQuash" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ Register Assembly="Shove.Web.UI.4 For.NET 3.5" Namespace="Shove.Web.UI" TagPrefix="ShoveWebUI" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>无标题页</title>
    <link href="style/style01.css" rel="stylesheet" type="text/css" />
</head>
<body class="center">
    <form id="form1" runat="server">
    <div>
        <div class="title">
            方案撤单管理中心
        </div>
        <table id="Table1" cellspacing="1" cellpadding="0" width="100%" class="baseTab" border="0">
            <tr class="title" style="height: 28px;" align="left">
                <td>
                    选择彩票类型
                    <asp:DropDownList ID="ddlLottery" runat="server" AutoPostBack="True" Width="144px"
                        OnSelectedIndexChanged="ddlLottery_SelectedIndexChanged">
                    </asp:DropDownList>
                    &nbsp;<asp:RadioButton ID="rb1" runat="server" Checked="True" GroupName="rb" Text="方案编号" />
                    <asp:RadioButton ID="rb2" runat="server" GroupName="rb" Text="用户名" />
                    &nbsp;&nbsp;
                    <asp:TextBox ID="tbQuash" runat="server" Width="208px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;
                    <ShoveWebUI:ShoveConfirmButton ID="btnRefresh" runat="server" Text=" 搜   索 " OnClick="btnRefresh_Click" />
                </td>
            </tr>
            <tr>
                <td align="center">
                    <asp:DataList ID="g" runat="server" Width="100%" OnItemCommand="g_ItemCommand" OnItemDataBound="g_ItemDataBound">
                        <HeaderTemplate>
                            <table cellspacing="0" cellpadding="0" width="100%" border="0">
                                <tr>
                                    <td width="6%">
                                        <strong>发起人</strong>
                                    </td>
                                    <td width="16%">
                                        <strong>方案编号</strong>
                                    </td>
                                    <td width="8%">
                                        <strong>玩法</strong>
                                    </td>
                                    <td width="36%">
                                        <strong>购买内容</strong>
                                    </td>
                                    <td width="6%">
                                        <strong>倍数</strong>
                                    </td>
                                    <td width="8%">
                                        <strong>金额</strong>
                                    </td>
                                    <td width="10%">
                                        <strong>进度</strong>
                                    </td>
                                    <td width="10%">
                                        <strong>撤单</strong>
                                    </td>
                                </tr>
                            </table>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <table cellspacing="0" cellpadding="0" width="100%" border="0">
                                <tr>
                                    <td width="6%">
                                        <%# DataBinder.Eval(Container.DataItem,"InitiateName")%>
                                        <input id="tbSiteID" style="width: 37px;" type="hidden" size="1" value='<%# DataBinder.Eval(Container.DataItem,"SiteID")%>'
                                            runat="server" />
                                        <input id="tbInitiateUserID" style="width: 37px;" type="hidden" size="1" value='<%# DataBinder.Eval(Container.DataItem,"InitiateUserID")%>'
                                            runat="server" />
                                        <input id="tbSchemeID" style="width: 37px;" type="hidden" size="1" value='<%# DataBinder.Eval(Container.DataItem,"ID")%>'
                                            name="tbSchemeID" runat="server" />
                                    </td>
                                    <td width="16%">
                                        <a href='../Home/Room/Scheme.aspx?id=<%# DataBinder.Eval(Container.DataItem,"id")%>'
                                            target="_blank">
                                            <%# DataBinder.Eval(Container.DataItem,"SchemeNumber")%>
                                        </a>
                                    </td>
                                    <td width="8%">
                                        <%# DataBinder.Eval(Container.DataItem,"PlayTypeName")%>
                                    </td>
                                    <td width="36%">
                                        <%# DataBinder.Eval(Container.DataItem,"LotteryNumber")%>
                                    </td>
                                    <td width="6%">
                                        <%# int.Parse(Eval("Multiple").ToString()) == 0 ? (Eval("LocateWaysAndMultiples")) : (Eval("Multiple"))%>
                                    </td>
                                    <td width="8%">
                                        <font color="#ff0000">
                                            <%# DataBinder.Eval(Container.DataItem,"Money")%>
                                        </font>
                                    </td>
                                    <td width="10%">
                                        <%# DataBinder.Eval(Container.DataItem,"Schedule")%>
                                        %
                                    </td>
                                    <td width="10%">
                                        <ShoveWebUI:ShoveConfirmButton ID="btnQuash" runat="server" Text="撤单" AlertText="确信要撤消此单吗？"
                                            CommandName="btnQuash" />
                                    </td>
                                </tr>
                            </table>
                        </ItemTemplate>
                    </asp:DataList>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
