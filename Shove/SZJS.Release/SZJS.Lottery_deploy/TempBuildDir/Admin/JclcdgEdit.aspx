<%@ page language="C#" autoeventwireup="true" inherits="Admin_JclcdgEdit, App_Web_mq7qcqnw" enableEventValidation="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ Register Assembly="Shove.Web.UI.4 For.NET 3.5" Namespace="Shove.Web.UI" TagPrefix="ShoveWebUI" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>无标题页</title>
    <link href="style/style01.css" rel="stylesheet" type="text/css" />

    <script language="javascript" type="text/javascript" src="../Components/My97DatePicker/WdatePicker.js"></script>

</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div class="title" style="text-align: center">
            编辑竞彩蓝彩单关数据管理
        </div>
        <table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="#DDDDDD"
            style="margin-top: 10px;" align="center">
            <tr>
                <td bgcolor="#F8F8F8" style="height: 30px; padding-right: 10px; text-align: right;">
                    <font face="宋体">赛事编号</font>
                </td>
                <td bgcolor="#FFFFFF" style="padding-left: 10px;">
                    <asp:Label ID="lbMatchNumber" runat="server" Width="51px"></asp:Label>
                </td>
            </tr>
            <tr>
                <td bgcolor="#F8F8F8" style="height: 30px; padding-right: 10px; text-align: right;">
                    <font face="宋体">联赛</font>
                </td>
                <td bgcolor="#FFFFFF" style="padding-left: 10px;">
                    <asp:TextBox ID="tbGame" runat="server" Width="120px" MaxLength="100"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td bgcolor="#F8F8F8" style="height: 30px; padding-right: 10px; text-align: right;">
                    <font face="宋体">截止时间</font>
                </td>
                <td bgcolor="#FFFFFF" style="padding-left: 10px;">
                    <asp:TextBox runat="server" ID="tbStopSellTime" Width="120px" name="tbStopSellTime"
                        onFocus="WdatePicker({el:'tbStopSellTime',dateFmt:'yyyy-MM-dd HH:mm:ss'})" Height="15px" />
                </td>
            </tr>
            <tr>
                <td bgcolor="#F8F8F8" style="height: 30px; padding-right: 10px; text-align: right;">
                    <font face="宋体">主队 </font>
                </td>
                <td bgcolor="#FFFFFF" style="padding-left: 10px;">
                    <asp:TextBox ID="tbMainTeam" runat="server" Width="120px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td bgcolor="#F8F8F8" style="height: 30px; padding-right: 10px; text-align: right;">
                    <font face="宋体">客队 </font>
                </td>
                <td bgcolor="#FFFFFF" style="padding-left: 10px;">
                    <asp:TextBox ID="tbGuestTeam" runat="server" Width="120px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="height: 49px" align="center" colspan="2" bgcolor="#FFFFFF">
                    <ShoveWebUI:ShoveConfirmButton ID="btnEdit" runat="server" Text="修改" AlertText="确信输入无误，并立即修改此比赛吗？"
                        OnClick="btnEdit_Click" />
                </td>
            </tr>
        </table>
        <br />
    </div>
    <asp:HiddenField ID="hID" runat="server" />
    </form>
</body>
</html>
