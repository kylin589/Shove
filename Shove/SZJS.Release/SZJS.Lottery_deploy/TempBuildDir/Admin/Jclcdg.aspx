<%@ page language="C#" autoeventwireup="true" inherits="Admin_Jclcdg, App_Web__1orsh4m" enableEventValidation="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ Register Assembly="Shove.Web.UI.4 For.NET 3.5" Namespace="Shove.Web.UI" TagPrefix="ShoveWebUI" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>无标题页</title>
    <link href="style/style01.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div class="title" style="text-align: center">
            竞彩蓝彩单关数据管理
        </div>
        <table cellspacing="0" cellpadding="0" width="100%" align="center" border="0" class="baseTab">
            <tr>
                <td align="center">
                    <asp:DataList ID="g" runat="server" Width="100%" GridLines="Horizontal">
                        <HeaderTemplate>
                            <table cellspacing="0" cellpadding="0" width="100%" border="0">
                                <tr>
                                    <td class="td4" width="10%">
                                        <strong>赛事编号</strong>
                                    </td>
                                    <td class="td4" width="10%">
                                        <strong>联赛</strong>
                                    </td>
                                    <td class="td4" width="20%">
                                        <strong>截止时间</strong>
                                    </td>
                                    <td class="td4" width="15%">
                                        <strong>主队</strong>
                                    </td>
                                    <td class="td4" width="10%">
                                        <strong>让分</strong>
                                    </td>
                                    <td class="td4" width="15%">
                                        <strong>客队</strong>
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
                                    <td width="10%">
                                        <%# DataBinder.Eval(Container.DataItem, "MatchNumber")%>
                                    </td>
                                    <td width="10%">
                                        <%# DataBinder.Eval(Container.DataItem, "Game")%>
                                    </td>
                                    <td width="20%">
                                        <%# DataBinder.Eval(Container.DataItem, "StopSellTime")%>
                                    </td>
                                    <td width="15%">
                                        <%# DataBinder.Eval(Container.DataItem, "MainTeam")%>
                                    </td>
                                    <td width="10%">
                                        <%# DataBinder.Eval(Container.DataItem, "letscore")%>
                                    </td>
                                    <td width="15%">
                                        <%# DataBinder.Eval(Container.DataItem, "GuestTeam")%>
                                    </td>
                                    <td width="20%">
                                        <a href='JclcdgEdit.aspx?ID=<%# DataBinder.Eval(Container.DataItem,"ID")%>'>修改</a>
                                    </td>
                                </tr>
                            </table>
                        </ItemTemplate>
                    </asp:DataList>
                </td>
            </tr>
        </table>
        <br />
    </div>
    </form>
</body>
</html>
