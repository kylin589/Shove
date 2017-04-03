<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Isuse2.aspx.cs" Inherits="Admin_Isuse2" %>

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
        <div class="title">
            期号信息管理
        </div>
        <table id="Table1" cellspacing="1" cellpadding="0" width="100%" class="baseTab" border="0">
            <tr class="title" align="left" style="height: 28px;">
                <td>
                    选择彩票类型
                    <asp:DropDownList ID="ddlLottery" runat="server" Width="120px" AutoPostBack="True"
                        OnSelectedIndexChanged="ddlLottery_SelectedIndexChanged">
                    </asp:DropDownList>
                    <span style="margin-left: 30px;"><a href="Isuse.aspx" style="color:Red">录入已开启彩种期号</a> </span>
                </td>
            </tr>
            <tr>
                <td align="center">
                    <asp:DataList ID="g" runat="server" Width="100%">
                        <HeaderTemplate>
                            <table cellspacing="0" cellpadding="0" width="100%" border="0">
                                <tr>
                                    <td class="td4" width="20%">
                                        <strong>期号</strong>
                                    </td>
                                    <td class="td4" width="30%">
                                        <strong>开始时间</strong>
                                    </td>
                                    <td class="td4" width="30%">
                                        <strong>截止时间</strong>
                                    </td>
                                    <td class="td4" width="20%">
                                        <strong>修改</strong>
                                    </td>
                                </tr>
                            </table>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <table cellspacing="0" cellpadding="0" width="100%" border="0">
                                <tr>
                                    <td width="20%">
                                        <%# DataBinder.Eval(Container.DataItem,"Name")%>
                                    </td>
                                    <td width="30%">
                                        <%# DataBinder.Eval(Container.DataItem,"StartTime")%>
                                    </td>
                                    <td width="30%">
                                        <%# DataBinder.Eval(Container.DataItem,"EndTime")%>
                                    </td>
                                    <td width="20%">
                                        <a href='IsuseEdit2.aspx?IsuseID=<%# DataBinder.Eval(Container.DataItem,"ID")%>&LotteryID=<%# DataBinder.Eval(Container.DataItem,"LotteryID")%>'>
                                            修改</a>
                                    </td>
                                </tr>
                            </table>
                        </ItemTemplate>
                    </asp:DataList>
                </td>
            </tr>
            <tr>
                <td height="30" align="center">
                    <ShoveWebUI:ShoveConfirmButton ID="btnAdd" runat="server" Text="增加" OnClick="btnAdd_Click" />
                    <asp:Label ID="labLastIsuseTip" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
        <br />
    </div>
    </form>
</body>
</html>
