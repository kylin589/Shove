<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AllBuyFocus.aspx.cs" Inherits="Admin_AllBuyFocus" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="style/style01.css" rel="stylesheet" type="text/css" />

    <script language="javascript" type="text/javascript">
        function Cleartb() {
            document.getElementById("tbUserName").value = "";
            document.getElementById("tbOrder").value = "";
        }
    </script>

</head>
<body class="center">
    <form id="form1" runat="server">
    <div class="title">
        活跃合买明星管理中心
    </div>
    <div style="margin-top:5px; padding-left:15%; text-align:left">
        选择彩种：
        <asp:DropDownList ID="ddlLottery" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlLottery_SelectedIndexChanged">
        </asp:DropDownList>
    </div>
    <br />
    <div style="padding-left:15%; text-align:left">
        合买明星：
        <asp:TextBox ID="tbUserName" runat="server" Width="674px"></asp:TextBox>
        <br />
        <font style="color: #B7B7B7; font-size: 12px; padding-left: 30px;">多个用户请用" ,"隔开 如 张三
            , 李四 , 王五</font>
    </div>
    <div style="padding-left:15%; text-align:left">
        彩种排序：
        <asp:TextBox ID="tbOrder" runat="server" Width="30"></asp:TextBox>
        <font style="color: #B7B7B7; font-size: 12px; padding-left: 30px;">根据输入的数字排序,输入的数字越大排在越前面.</font>
    </div>
    <div style="padding-left: 15px;">
        <asp:Button ID="btnSubMit" runat="server" Text="确定" OnClick="btnSubMit_Click" />&nbsp;&nbsp;
        <input type="button" onclick="Cleartb()" value="清空" />
    </div>
    </form>
</body>
</html>
