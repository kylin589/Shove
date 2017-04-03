<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FootballLeagueTypes.aspx.cs"
    Inherits="Admin_FootballLeagueTypes" %>

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
            足球联赛类别管理
        </div>
        <table id="Table1" cellspacing="0" cellpadding="0" width="100%" class="baseTab" border="0">
            <tr style="height: 28px;" align="left" class="title">
                <td>
                    &nbsp; 名称：<asp:TextBox ID="tbName" runat="server" Width="70px" MaxLength="20"></asp:TextBox>
                    代码：<asp:TextBox ID="tbCode" runat="server" Width="70px" MaxLength="20"></asp:TextBox>
                    <select name="selectColorAdd" size="1" id="selectColorAdd" style="width: 65px; height: 21px"
                        runat="server">
                        <option style="background-color: #003300" value="#003300" selected="selected"></option>
                        <option style="background-color: #006600" value="#006600"></option>
                        <option style="background-color: #009900" value="#009900"></option>
                        <option style="background-color: #00cc00" value="#00CC00"></option>
                        <option style="background-color: #00ff00" value="#00FF00"></option>
                        <option style="background-color: #000033" value="#000033"></option>
                        <option style="background-color: #003333" value="#003333"></option>
                        <option style="background-color: #006633" value="#006633"></option>
                        <option style="background-color: #009933" value="#009933"></option>
                        <option style="background-color: #00cc33" value="#00CC33"></option>
                        <option style="background-color: #00ff33" value="#00FF33"></option>
                        <option style="background-color: #000066" value="#000066"></option>
                        <option style="background-color: #003366" value="#003366"></option>
                        <option style="background-color: #006666" value="#006666"></option>
                        <option style="background-color: #009966" value="#009966"></option>
                        <option style="background-color: #00cc66" value="#00CC66"></option>
                        <option style="background-color: #00ff66" value="#00FF66"></option>
                        <option style="background-color: #000099" value="#000099"></option>
                        <option style="background-color: #003399" value="#003399"></option>
                        <option style="background-color: #006699" value="#006699"></option>
                        <option style="background-color: #009999" value="#009999"></option>
                        <option style="background-color: #00cc99" value="#00CC99"></option>
                        <option style="background-color: #00ff99" value="#00FF99"></option>
                        <option style="background-color: #0000cc" value="#0000CC"></option>
                        <option style="background-color: #0033cc" value="#0033CC"></option>
                        <option style="background-color: #0066cc" value="#0066CC"></option>
                        <option style="background-color: #0099cc" value="#0099CC"></option>
                        <option style="background-color: #00cccc" value="#00CCCC"></option>
                        <option style="background-color: #00ffcc" value="#00FFCC"></option>
                        <option style="background-color: #0000ff" value="#0000FF"></option>
                        <option style="background-color: #0033ff" value="#0033FF"></option>
                        <option style="background-color: #0066ff" value="#0066FF"></option>
                        <option style="background-color: #0099ff" value="#0099FF"></option>
                        <option style="background-color: #00ccff" value="#00CCFF"></option>
                        <option style="background-color: #00ffff" value="#00FFFF"></option>
                        <option style="background-color: #330000" value="#330000"></option>
                        <option style="background-color: #333300" value="#333300"></option>
                        <option style="background-color: #336600" value="#336600"></option>
                        <option style="background-color: #339900" value="#339900"></option>
                        <option style="background-color: #33cc00" value="#33CC00"></option>
                        <option style="background-color: #33ff00" value="#33FF00"></option>
                        <option style="background-color: #330033" value="#330033"></option>
                        <option style="background-color: #333333" value="#333333"></option>
                        <option style="background-color: #336633" value="#336633"></option>
                        <option style="background-color: #339933" value="#339933"></option>
                        <option style="background-color: #33cc33" value="#33CC33"></option>
                        <option style="background-color: #33ff33" value="#33FF33"></option>
                        <option style="background-color: #330066" value="#330066"></option>
                        <option style="background-color: #333366" value="#333366"></option>
                        <option style="background-color: #336666" value="#336666"></option>
                        <option style="background-color: #339966" value="#339966"></option>
                        <option style="background-color: #33cc66" value="#33CC66"></option>
                        <option style="background-color: #33ff66" value="#33FF66"></option>
                        <option style="background-color: #330099" value="#330099"></option>
                        <option style="background-color: #333399" value="#333399"></option>
                        <option style="background-color: #336699" value="#336699"></option>
                        <option style="background-color: #339999" value="#339999"></option>
                        <option style="background-color: #33cc99" value="#33CC99"></option>
                        <option style="background-color: #33ff99" value="#33FF99"></option>
                        <option style="background-color: #3300cc" value="#3300CC"></option>
                        <option style="background-color: #3333cc" value="#3333CC"></option>
                        <option style="background-color: #3366cc" value="#3366CC"></option>
                        <option style="background-color: #3399cc" value="#3399CC"></option>
                        <option style="background-color: #33cccc" value="#33CCCC"></option>
                        <option style="background-color: #33ffcc" value="#33FFCC"></option>
                        <option style="background-color: #3300ff" value="#3300FF"></option>
                        <option style="background-color: #3333ff" value="#3333FF"></option>
                        <option style="background-color: #3366ff" value="#3366FF"></option>
                        <option style="background-color: #3399ff" value="#3399FF"></option>
                        <option style="background-color: #33ccff" value="#33CCFF"></option>
                        <option style="background-color: #33ffff" value="#33FFFF"></option>
                        <option style="background-color: #660000" value="#660000"></option>
                        <option style="background-color: #663300" value="#663300"></option>
                        <option style="background-color: #666600" value="#666600"></option>
                        <option style="background-color: #669900" value="#669900"></option>
                        <option style="background-color: #66cc00" value="#66CC00"></option>
                        <option style="background-color: #66ff00" value="#66FF00"></option>
                        <option style="background-color: #660033" value="#660033"></option>
                        <option style="background-color: #663333" value="#663333"></option>
                        <option style="background-color: #666633" value="#666633"></option>
                        <option style="background-color: #669933" value="#669933"></option>
                        <option style="background-color: #66cc33" value="#66CC33"></option>
                        <option style="background-color: #66ff33" value="#66FF33"></option>
                        <option style="background-color: #660066" value="#660066"></option>
                        <option style="background-color: #663366" value="#663366"></option>
                        <option style="background-color: #666666" value="#666666"></option>
                        <option style="background-color: #669966" value="#669966"></option>
                        <option style="background-color: #66cc66" value="#66CC66"></option>
                        <option style="background-color: #66ff66" value="#66FF66"></option>
                        <option style="background-color: #660099" value="#660099"></option>
                        <option style="background-color: #663399" value="#663399"></option>
                        <option style="background-color: #666699" value="#666699"></option>
                        <option style="background-color: #669999" value="#669999"></option>
                        <option style="background-color: #66cc99" value="#66CC99"></option>
                        <option style="background-color: #66ff99" value="#66FF99"></option>
                        <option style="background-color: #6600cc" value="#6600CC"></option>
                        <option style="background-color: #6633cc" value="#6633CC"></option>
                        <option style="background-color: #6666cc" value="#6666CC"></option>
                        <option style="background-color: #6699cc" value="#6699CC"></option>
                        <option style="background-color: #66cccc" value="#66CCCC"></option>
                        <option style="background-color: #66ffcc" value="#66FFCC"></option>
                        <option style="background-color: #6600ff" value="#6600FF"></option>
                        <option style="background-color: #6633ff" value="#6633FF"></option>
                        <option style="background-color: #6666ff" value="#6666FF"></option>
                        <option style="background-color: #6699ff" value="#6699FF"></option>
                        <option style="background-color: #66ccff" value="#66CCFF"></option>
                        <option style="background-color: #66ffff" value="#66FFFF"></option>
                        <option style="background-color: #990000" value="#990000"></option>
                        <option style="background-color: #993300" value="#993300"></option>
                        <option style="background-color: #996600" value="#996600"></option>
                        <option style="background-color: #999900" value="#999900"></option>
                        <option style="background-color: #99cc00" value="#99CC00"></option>
                        <option style="background-color: #99ff00" value="#99FF00"></option>
                        <option style="background-color: #990033" value="#990033"></option>
                        <option style="background-color: #993333" value="#993333"></option>
                        <option style="background-color: #996633" value="#996633"></option>
                        <option style="background-color: #999933" value="#999933"></option>
                        <option style="background-color: #99cc33" value="#99CC33"></option>
                        <option style="background-color: #99ff33" value="#99FF33"></option>
                        <option style="background-color: #990066" value="#990066"></option>
                        <option style="background-color: #993366" value="#993366"></option>
                        <option style="background-color: #996666" value="#996666"></option>
                        <option style="background-color: #999966" value="#999966"></option>
                        <option style="background-color: #99cc66" value="#99CC66"></option>
                        <option style="background-color: #99ff66" value="#99FF66"></option>
                        <option style="background-color: #990099" value="#990099"></option>
                        <option style="background-color: #993399" value="#993399"></option>
                        <option style="background-color: #996699" value="#996699"></option>
                        <option style="background-color: #999999" value="#999999"></option>
                        <option style="background-color: #99cc99" value="#99CC99"></option>
                        <option style="background-color: #99ff99" value="#99FF99"></option>
                        <option style="background-color: #9900cc" value="#9900CC"></option>
                        <option style="background-color: #9933cc" value="#9933CC"></option>
                        <option style="background-color: #9966cc" value="#9966CC"></option>
                        <option style="background-color: #9999cc" value="#9999CC"></option>
                        <option style="background-color: #99cccc" value="#99CCCC"></option>
                        <option style="background-color: #99ffcc" value="#99FFCC"></option>
                        <option style="background-color: #9900ff" value="#9900FF"></option>
                        <option style="background-color: #9933ff" value="#9933FF"></option>
                        <option style="background-color: #9966ff" value="#9966FF"></option>
                        <option style="background-color: #9999ff" value="#9999FF"></option>
                        <option style="background-color: #99ccff" value="#99CCFF"></option>
                        <option style="background-color: #99ffff" value="#99FFFF"></option>
                        <option style="background-color: #cc0000" value="#CC0000"></option>
                        <option style="background-color: #cc3300" value="#CC3300"></option>
                        <option style="background-color: #cc6600" value="#CC6600"></option>
                        <option style="background-color: #cc9900" value="#CC9900"></option>
                        <option style="background-color: #cccc00" value="#CCCC00"></option>
                        <option style="background-color: #ccff00" value="#CCFF00"></option>
                        <option style="background-color: #cc0033" value="#CC0033"></option>
                        <option style="background-color: #cc3333" value="#CC3333"></option>
                        <option style="background-color: #cc6633" value="#CC6633"></option>
                        <option style="background-color: #cc9933" value="#CC9933"></option>
                        <option style="background-color: #cccc33" value="#CCCC33"></option>
                        <option style="background-color: #ccff33" value="#CCFF33"></option>
                        <option style="background-color: #cc0066" value="#CC0066"></option>
                        <option style="background-color: #cc3366" value="#CC3366"></option>
                        <option style="background-color: #cc6666" value="#CC6666"></option>
                        <option style="background-color: #cc9966" value="#CC9966"></option>
                        <option style="background-color: #cccc66" value="#CCCC66"></option>
                        <option style="background-color: #ccff66" value="#CCFF66"></option>
                        <option style="background-color: #cc0099" value="#CC0099"></option>
                        <option style="background-color: #cc3399" value="#CC3399"></option>
                        <option style="background-color: #cc6699" value="#CC6699"></option>
                        <option style="background-color: #cc9999" value="#CC9999"></option>
                        <option style="background-color: #cccc99" value="#CCCC99"></option>
                        <option style="background-color: #ccff99" value="#CCFF99"></option>
                        <option style="background-color: #cc00cc" value="#CC00CC"></option>
                        <option style="background-color: #cc33cc" value="#CC33CC"></option>
                        <option style="background-color: #cc66cc" value="#CC66CC"></option>
                        <option style="background-color: #cc99cc" value="#CC99CC"></option>
                        <option style="background-color: #cccccc" value="#CCCCCC"></option>
                        <option style="background-color: #ccffcc" value="#CCFFCC"></option>
                        <option style="background-color: #cc00ff" value="#CC00FF"></option>
                        <option style="background-color: #cc33ff" value="#CC33FF"></option>
                        <option style="background-color: #cc66ff" value="#CC66FF"></option>
                        <option style="background-color: #cc99ff" value="#CC99FF"></option>
                        <option style="background-color: #ccccff" value="#CCCCFF"></option>
                        <option style="background-color: #ccffff" value="#CCFFFF"></option>
                        <option style="background-color: #ff0000" value="#FF0000"></option>
                        <option style="background-color: #ff3300" value="#FF3300"></option>
                        <option style="background-color: #ff6600" value="#FF6600"></option>
                        <option style="background-color: #ff9900" value="#FF9900"></option>
                        <option style="background-color: #ffcc00" value="#FFCC00"></option>
                        <option style="background-color: #ffff00" value="#FFFF00"></option>
                        <option style="background-color: #ff0033" value="#FF0033"></option>
                        <option style="background-color: #ff3333" value="#FF3333"></option>
                        <option style="background-color: #ff6633" value="#FF6633"></option>
                        <option style="background-color: #ff9933" value="#FF9933"></option>
                        <option style="background-color: #ffcc33" value="#FFCC33"></option>
                        <option style="background-color: #ffff33" value="#FFFF33"></option>
                        <option style="background-color: #ff0066" value="#FF0066"></option>
                        <option style="background-color: #ff3366" value="#FF3366"></option>
                        <option style="background-color: #ff6666" value="#FF6666"></option>
                        <option style="background-color: #ff9966" value="#FF9966"></option>
                        <option style="background-color: #ffcc66" value="#FFCC66"></option>
                        <option style="background-color: #ffff66" value="#FFFF66"></option>
                        <option style="background-color: #ff0099" value="#FF0099"></option>
                        <option style="background-color: #ff3399" value="#FF3399"></option>
                        <option style="background-color: #ff6699" value="#FF6699"></option>
                        <option style="background-color: #ff9999" value="#FF9999"></option>
                        <option style="background-color: #ffcc99" value="#FFCC99"></option>
                        <option style="background-color: #ffff99" value="#FFFF99"></option>
                        <option style="background-color: #ff00cc" value="#FF00CC"></option>
                        <option style="background-color: #ff33cc" value="#FF33CC"></option>
                        <option style="background-color: #ff66cc" value="#FF66CC"></option>
                        <option style="background-color: #ff99cc" value="#FF99CC"></option>
                        <option style="background-color: #ffcccc" value="#FFCCCC"></option>
                        <option style="background-color: #ffffcc" value="#FFFFCC"></option>
                        <option style="background-color: #ff00ff" value="#FF00FF"></option>
                        <option style="background-color: #ff33ff" value="#FF33FF"></option>
                        <option style="background-color: #ff66ff" value="#FF66FF"></option>
                        <option style="background-color: #ff99ff" value="#FF99FF"></option>
                        <option style="background-color: #ffccff" value="#FFCCFF"></option>
                        <option style="background-color: #ffffff" value="#FFFFFF"></option>
                    </select>
                    描述：<asp:TextBox ID="tbDescription" runat="server" MaxLength="100"></asp:TextBox>
                    是否启用：
                    <asp:DropDownList ID="ddlisUse" runat="server">
                        <asp:ListItem Value="True">是</asp:ListItem>
                        <asp:ListItem Value="False">否</asp:ListItem>
                    </asp:DropDownList>
                    <ShoveWebUI:ShoveConfirmButton ID="btnAddDCType" runat="server" Text="增加类别" AlertText="确定要添加此联赛类别吗？"
                        OnClick="btnAddDCType_Click" />&nbsp;
                    <asp:Label ID="Label1" runat="server"><font color="red">足彩单场的联赛类别</font></asp:Label>
                </td>
            </tr>
            <tr>
                <td height="30" align="center">
                    <asp:DataList ID="DataListZCDCType" runat="server" RepeatColumns="1" ShowFooter="False"
                        OnItemCommand="DataListZCDCType_ItemCommand" OnItemDataBound="DataListZCDCType_ItemDataBound"
                        Width="100%">
                        <HeaderTemplate>
                            <table id="tableZCDCHeader" align="left" width="100%" style="text-align: center">
                                <tr>
                                    <td align="center" style="height: 21px; width: 40px;">
                                        &nbsp;
                                    </td>
                                    <td align="center" style="height: 21px; width: 70px;">
                                        联赛名称
                                    </td>
                                    <td align="center" style="height: 21px; width: 70px;">
                                        联赛代码
                                    </td>
                                    <td align="center" style="height: 21px; width: 70px;">
                                        主色调
                                    </td>
                                    <td align="center" style="height: 21px; width: 150px;">
                                        描述
                                    </td>
                                    <td align="center" style="height: 21px; width: 50px;">
                                        启用
                                    </td>
                                    <td align="center" style="height: 21px; width: 70px;">
                                        修改/更新
                                    </td>
                                </tr>
                            </table>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <table id="tableZCDC" align="left" width="100%" style="text-align: center">
                                <tr>
                                    <td align="center" width="42" bgcolor='<%# Eval("MarkersColor")%>'>
                                    &nbsp;
                                    </td>
                                    <td align="center" width="68">
                                        <asp:TextBox ID="tbName" runat="server" Text='<%# Eval("Name")%>' Width="68" MaxLength="20"></asp:TextBox>
                                    </td>
                                    <td align="center" width="68">
                                        <asp:TextBox ID="tbCode" runat="server" Text='<%# Eval("Code")%>' Width="68" MaxLength="20"></asp:TextBox>
                                    </td>
                                    <td align="center" width="68">
                                        <asp:TextBox ID="tbMarkersColor" Width="68" runat="server" Text='<%# Eval("MarkersColor")%>'
                                            MaxLength="20"></asp:TextBox>
                                    </td>
                                    <td align="center" width="150">
                                        <asp:TextBox ID="tbDescription" runat="server" Text='<%# Eval("Description")%>' MaxLength="100"></asp:TextBox>
                                    </td>
                                    <td align="center" width="50">
                                        <%# Eval("isUse").ToString() == "True" ? "是" : "否"%>
                                    </td>
                                    <td align="center" width="70">
                                        <asp:HiddenField ID="hfId" runat="server" Value='<%# Eval("id")%>' />
                                        <ShoveWebUI:ShoveConfirmButton ID="btEdit" CommandName="btEdit" runat="server" Width="60px"
                                            Height="20px" BackgroupImage="../Images/Admin/buttbg.gif" Text="修改" AlertText="确定输入无误吗？" />
                                    </td>
                                </tr>
                            </table>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <table id="tableZCDC" align="left" width="100%" style="text-align: center">
                                <tr>
                                    <td align="center" width="40" bgcolor='<%# Eval("MarkersColor")%>'>
                                    </td>
                                    <td align="center" width="70">
                                        <asp:TextBox ID="tbName" runat="server" Text='<%# Eval("Name")%>' Width="70" MaxLength="20"></asp:TextBox>
                                    </td>
                                    <td align="center" width="70">
                                        <asp:TextBox ID="tbCode" runat="server" Text='<%# Eval("Code")%>' Width="70" MaxLength="20"></asp:TextBox>
                                    </td>
                                    <td align="center" width="70">
                                        <asp:TextBox ID="tbMarkersColor" runat="server" Text='<%# Eval("MarkersColor")%>'
                                            MaxLength="20" Visible="false"></asp:TextBox>
                                        <asp:DropDownList ID="ddlMarkersColor" runat="server" Style="width: 65px; height: 21px">
                                            <asp:ListItem style="background-color: #006600" Value="#006600" Text="#006600"></asp:ListItem>
                                            <asp:ListItem style="background-color: #009900" Value="#009900" Text="#009900"></asp:ListItem>
                                            <asp:ListItem style="background-color: #00CC00" Value="#00CC00" Text="#00CC00"></asp:ListItem>
                                            <asp:ListItem style="background-color: #00FF00" Value="#00FF00" Text="#00FF00"></asp:ListItem>
                                            <asp:ListItem style="background-color: #000033" Value="#000033" Text="#000033"></asp:ListItem>
                                            <asp:ListItem style="background-color: #003333" Value="#003333" Text="#003333"></asp:ListItem>
                                            <asp:ListItem style="background-color: #006633" Value="#006633" Text="#006633"></asp:ListItem>
                                            <asp:ListItem style="background-color: #009933" Value="#009933" Text="#009933"></asp:ListItem>
                                            <asp:ListItem style="background-color: #00CC33" Value="#00CC33" Text="#00CC33"></asp:ListItem>
                                            <asp:ListItem style="background-color: #00FF33" Value="#00FF33" Text="#00FF33"></asp:ListItem>
                                            <asp:ListItem style="background-color: #000066" Value="#000066" Text="#000066"></asp:ListItem>
                                            <asp:ListItem style="background-color: #003366" Value="#003366" Text="#003366"></asp:ListItem>
                                            <asp:ListItem style="background-color: #006666" Value="#006666" Text="#006666"></asp:ListItem>
                                            <asp:ListItem style="background-color: #009966" Value="#009966" Text="#009966"></asp:ListItem>
                                            <asp:ListItem style="background-color: #00CC66" Value="#00CC66" Text="#00CC66"></asp:ListItem>
                                            <asp:ListItem style="background-color: #00FF66" Value="#00FF66" Text="#00FF66"></asp:ListItem>
                                            <asp:ListItem style="background-color: #000099" Value="#000099" Text="#000099"></asp:ListItem>
                                            <asp:ListItem style="background-color: #003399" Value="#003399" Text="#003399"></asp:ListItem>
                                            <asp:ListItem style="background-color: #006699" Value="#006699" Text="#006699"></asp:ListItem>
                                            <asp:ListItem style="background-color: #009999" Value="#009999" Text="#009999"></asp:ListItem>
                                            <asp:ListItem style="background-color: #00CC99" Value="#00CC99" Text="#00CC99"></asp:ListItem>
                                            <asp:ListItem style="background-color: #00FF99" Value="#00FF99" Text="#00FF99"></asp:ListItem>
                                            <asp:ListItem style="background-color: #0000CC" Value="#0000CC" Text="#0000CC"></asp:ListItem>
                                            <asp:ListItem style="background-color: #0033CC" Value="#0033CC" Text="#0033CC"></asp:ListItem>
                                            <asp:ListItem style="background-color: #0066CC" Value="#0066CC" Text="#0066CC"></asp:ListItem>
                                            <asp:ListItem style="background-color: #0099CC" Value="#0099CC" Text="#0099CC"></asp:ListItem>
                                            <asp:ListItem style="background-color: #00CCCC" Value="#00CCCC" Text="#00CCCC"></asp:ListItem>
                                            <asp:ListItem style="background-color: #00FFCC" Value="#00FFCC" Text="#00FFCC"></asp:ListItem>
                                            <asp:ListItem style="background-color: #0000FF" Value="#0000FF" Text="#0000FF"></asp:ListItem>
                                            <asp:ListItem style="background-color: #0033FF" Value="#0033FF" Text="#0033FF"></asp:ListItem>
                                            <asp:ListItem style="background-color: #0066FF" Value="#0066FF" Text="#0066FF"></asp:ListItem>
                                            <asp:ListItem style="background-color: #0099FF" Value="#0099FF" Text="#0099FF"></asp:ListItem>
                                            <asp:ListItem style="background-color: #00CCFF" Value="#00CCFF" Text="#00CCFF"></asp:ListItem>
                                            <asp:ListItem style="background-color: #00FFFF" Value="#00FFFF" Text="#00FFFF"></asp:ListItem>
                                            <asp:ListItem style="background-color: #330000" Value="#330000" Text="#330000"></asp:ListItem>
                                            <asp:ListItem style="background-color: #333300" Value="#333300" Text="#333300"></asp:ListItem>
                                            <asp:ListItem style="background-color: #336600" Value="#336600" Text="#336600"></asp:ListItem>
                                            <asp:ListItem style="background-color: #339900" Value="#339900" Text="#339900"></asp:ListItem>
                                            <asp:ListItem style="background-color: #33CC00" Value="#33CC00" Text="#33CC00"></asp:ListItem>
                                            <asp:ListItem style="background-color: #33FF00" Value="#33FF00" Text="#33FF00"></asp:ListItem>
                                            <asp:ListItem style="background-color: #330033" Value="#330033" Text="#330033"></asp:ListItem>
                                            <asp:ListItem style="background-color: #333333" Value="#333333" Text="#333333"></asp:ListItem>
                                            <asp:ListItem style="background-color: #336633" Value="#336633" Text="#336633"></asp:ListItem>
                                            <asp:ListItem style="background-color: #339933" Value="#339933" Text="#339933"></asp:ListItem>
                                            <asp:ListItem style="background-color: #33CC33" Value="#33CC33" Text="#33CC33"></asp:ListItem>
                                            <asp:ListItem style="background-color: #33FF33" Value="#33FF33" Text="#33FF33"></asp:ListItem>
                                            <asp:ListItem style="background-color: #330066" Value="#330066" Text="#330066"></asp:ListItem>
                                            <asp:ListItem style="background-color: #333366" Value="#333366" Text="#333366"></asp:ListItem>
                                            <asp:ListItem style="background-color: #336666" Value="#336666" Text="#336666"></asp:ListItem>
                                            <asp:ListItem style="background-color: #339966" Value="#339966" Text="#339966"></asp:ListItem>
                                            <asp:ListItem style="background-color: #33CC66" Value="#33CC66" Text="#33CC66"></asp:ListItem>
                                            <asp:ListItem style="background-color: #33FF66" Value="#33FF66" Text="#33FF66"></asp:ListItem>
                                            <asp:ListItem style="background-color: #330099" Value="#330099" Text="#330099"></asp:ListItem>
                                            <asp:ListItem style="background-color: #333399" Value="#333399" Text="#333399"></asp:ListItem>
                                            <asp:ListItem style="background-color: #336699" Value="#336699" Text="#336699"></asp:ListItem>
                                            <asp:ListItem style="background-color: #339999" Value="#339999" Text="#339999"></asp:ListItem>
                                            <asp:ListItem style="background-color: #33CC99" Value="#33CC99" Text="#33CC99"></asp:ListItem>
                                            <asp:ListItem style="background-color: #33FF99" Value="#33FF99" Text="#33FF99"></asp:ListItem>
                                            <asp:ListItem style="background-color: #3300CC" Value="#3300CC" Text="#3300CC"></asp:ListItem>
                                            <asp:ListItem style="background-color: #3333CC" Value="#3333CC" Text="#3333CC"></asp:ListItem>
                                            <asp:ListItem style="background-color: #3366CC" Value="#3366CC" Text="#3366CC"></asp:ListItem>
                                            <asp:ListItem style="background-color: #3399CC" Value="#3399CC" Text="#3399CC"></asp:ListItem>
                                            <asp:ListItem style="background-color: #33CCCC" Value="#33CCCC" Text="#33CCCC"></asp:ListItem>
                                            <asp:ListItem style="background-color: #33FFCC" Value="#33FFCC" Text="#33FFCC"></asp:ListItem>
                                            <asp:ListItem style="background-color: #3300FF" Value="#3300FF" Text="#3300FF"></asp:ListItem>
                                            <asp:ListItem style="background-color: #3333FF" Value="#3333FF" Text="#3333FF"></asp:ListItem>
                                            <asp:ListItem style="background-color: #3366FF" Value="#3366FF" Text="#3366FF"></asp:ListItem>
                                            <asp:ListItem style="background-color: #3399FF" Value="#3399FF" Text="#3399FF"></asp:ListItem>
                                            <asp:ListItem style="background-color: #33CCFF" Value="#33CCFF" Text="#33CCFF"></asp:ListItem>
                                            <asp:ListItem style="background-color: #33FFFF" Value="#33FFFF" Text="#33FFFF"></asp:ListItem>
                                            <asp:ListItem style="background-color: #660000" Value="#660000" Text="#660000"></asp:ListItem>
                                            <asp:ListItem style="background-color: #663300" Value="#663300" Text="#663300"></asp:ListItem>
                                            <asp:ListItem style="background-color: #666600" Value="#666600" Text="#666600"></asp:ListItem>
                                            <asp:ListItem style="background-color: #669900" Value="#669900" Text="#669900"></asp:ListItem>
                                            <asp:ListItem style="background-color: #66CC00" Value="#66CC00" Text="#66CC00"></asp:ListItem>
                                            <asp:ListItem style="background-color: #66FF00" Value="#66FF00" Text="#66FF00"></asp:ListItem>
                                            <asp:ListItem style="background-color: #660033" Value="#660033" Text="#660033"></asp:ListItem>
                                            <asp:ListItem style="background-color: #663333" Value="#663333" Text="#663333"></asp:ListItem>
                                            <asp:ListItem style="background-color: #666633" Value="#666633" Text="#666633"></asp:ListItem>
                                            <asp:ListItem style="background-color: #669933" Value="#669933" Text="#669933"></asp:ListItem>
                                            <asp:ListItem style="background-color: #66CC33" Value="#66CC33" Text="#66CC33"></asp:ListItem>
                                            <asp:ListItem style="background-color: #66FF33" Value="#66FF33" Text="#66FF33"></asp:ListItem>
                                            <asp:ListItem style="background-color: #660066" Value="#660066" Text="#660066"></asp:ListItem>
                                            <asp:ListItem style="background-color: #663366" Value="#663366" Text="#663366"></asp:ListItem>
                                            <asp:ListItem style="background-color: #666666" Value="#666666" Text="#666666"></asp:ListItem>
                                            <asp:ListItem style="background-color: #669966" Value="#669966" Text="#669966"></asp:ListItem>
                                            <asp:ListItem style="background-color: #66CC66" Value="#66CC66" Text="#66CC66"></asp:ListItem>
                                            <asp:ListItem style="background-color: #66FF66" Value="#66FF66" Text="#66FF66"></asp:ListItem>
                                            <asp:ListItem style="background-color: #660099" Value="#660099" Text="#660099"></asp:ListItem>
                                            <asp:ListItem style="background-color: #663399" Value="#663399" Text="#663399"></asp:ListItem>
                                            <asp:ListItem style="background-color: #666699" Value="#666699" Text="#666699"></asp:ListItem>
                                            <asp:ListItem style="background-color: #669999" Value="#669999" Text="#669999"></asp:ListItem>
                                            <asp:ListItem style="background-color: #66CC99" Value="#66CC99" Text="#66CC99"></asp:ListItem>
                                            <asp:ListItem style="background-color: #66FF99" Value="#66FF99" Text="#66FF99"></asp:ListItem>
                                            <asp:ListItem style="background-color: #6600CC" Value="#6600CC" Text="#6600CC"></asp:ListItem>
                                            <asp:ListItem style="background-color: #6633CC" Value="#6633CC" Text="#6633CC"></asp:ListItem>
                                            <asp:ListItem style="background-color: #6666CC" Value="#6666CC" Text="#6666CC"></asp:ListItem>
                                            <asp:ListItem style="background-color: #6699CC" Value="#6699CC" Text="#6699CC"></asp:ListItem>
                                            <asp:ListItem style="background-color: #66CCCC" Value="#66CCCC" Text="#66CCCC"></asp:ListItem>
                                            <asp:ListItem style="background-color: #66FFCC" Value="#66FFCC" Text="#66FFCC"></asp:ListItem>
                                            <asp:ListItem style="background-color: #6600FF" Value="#6600FF" Text="#6600FF"></asp:ListItem>
                                            <asp:ListItem style="background-color: #6633FF" Value="#6633FF" Text="#6633FF"></asp:ListItem>
                                            <asp:ListItem style="background-color: #6666FF" Value="#6666FF" Text="#6666FF"></asp:ListItem>
                                            <asp:ListItem style="background-color: #6699FF" Value="#6699FF" Text="#6699FF"></asp:ListItem>
                                            <asp:ListItem style="background-color: #66CCFF" Value="#66CCFF" Text="#66CCFF"></asp:ListItem>
                                            <asp:ListItem style="background-color: #66FFFF" Value="#66FFFF" Text="#66FFFF"></asp:ListItem>
                                            <asp:ListItem style="background-color: #990000" Value="#990000" Text="#990000"></asp:ListItem>
                                            <asp:ListItem style="background-color: #993300" Value="#993300" Text="#993300"></asp:ListItem>
                                            <asp:ListItem style="background-color: #996600" Value="#996600" Text="#996600"></asp:ListItem>
                                            <asp:ListItem style="background-color: #999900" Value="#999900" Text="#999900"></asp:ListItem>
                                            <asp:ListItem style="background-color: #99CC00" Value="#99CC00" Text="#99CC00"></asp:ListItem>
                                            <asp:ListItem style="background-color: #99FF00" Value="#99FF00" Text="#99FF00"></asp:ListItem>
                                            <asp:ListItem style="background-color: #990033" Value="#990033" Text="#990033"></asp:ListItem>
                                            <asp:ListItem style="background-color: #993333" Value="#993333" Text="#993333"></asp:ListItem>
                                            <asp:ListItem style="background-color: #996633" Value="#996633" Text="#996633"></asp:ListItem>
                                            <asp:ListItem style="background-color: #999933" Value="#999933" Text="#999933"></asp:ListItem>
                                            <asp:ListItem style="background-color: #99CC33" Value="#99CC33" Text="#99CC33"></asp:ListItem>
                                            <asp:ListItem style="background-color: #99FF33" Value="#99FF33" Text="#99FF33"></asp:ListItem>
                                            <asp:ListItem style="background-color: #990066" Value="#990066" Text="#990066"></asp:ListItem>
                                            <asp:ListItem style="background-color: #993366" Value="#993366" Text="#993366"></asp:ListItem>
                                            <asp:ListItem style="background-color: #996666" Value="#996666" Text="#996666"></asp:ListItem>
                                            <asp:ListItem style="background-color: #999966" Value="#999966" Text="#999966"></asp:ListItem>
                                            <asp:ListItem style="background-color: #99CC66" Value="#99CC66" Text="#99CC66"></asp:ListItem>
                                            <asp:ListItem style="background-color: #99FF66" Value="#99FF66" Text="#99FF66"></asp:ListItem>
                                            <asp:ListItem style="background-color: #990099" Value="#990099" Text="#990099"></asp:ListItem>
                                            <asp:ListItem style="background-color: #993399" Value="#993399" Text="#993399"></asp:ListItem>
                                            <asp:ListItem style="background-color: #996699" Value="#996699" Text="#996699"></asp:ListItem>
                                            <asp:ListItem style="background-color: #999999" Value="#999999" Text="#999999"></asp:ListItem>
                                            <asp:ListItem style="background-color: #99CC99" Value="#99CC99" Text="#99CC99"></asp:ListItem>
                                            <asp:ListItem style="background-color: #99FF99" Value="#99FF99" Text="#99FF99"></asp:ListItem>
                                            <asp:ListItem style="background-color: #9900CC" Value="#9900CC" Text="#9900CC"></asp:ListItem>
                                            <asp:ListItem style="background-color: #9933CC" Value="#9933CC" Text="#9933CC"></asp:ListItem>
                                            <asp:ListItem style="background-color: #9966CC" Value="#9966CC" Text="#9966CC"></asp:ListItem>
                                            <asp:ListItem style="background-color: #9999CC" Value="#9999CC" Text="#9999CC"></asp:ListItem>
                                            <asp:ListItem style="background-color: #99CCCC" Value="#99CCCC" Text="#99CCCC"></asp:ListItem>
                                            <asp:ListItem style="background-color: #99FFCC" Value="#99FFCC" Text="#99FFCC"></asp:ListItem>
                                            <asp:ListItem style="background-color: #9900FF" Value="#9900FF" Text="#9900FF"></asp:ListItem>
                                            <asp:ListItem style="background-color: #9933FF" Value="#9933FF" Text="#9933FF"></asp:ListItem>
                                            <asp:ListItem style="background-color: #9966FF" Value="#9966FF" Text="#9966FF"></asp:ListItem>
                                            <asp:ListItem style="background-color: #9999FF" Value="#9999FF" Text="#9999FF"></asp:ListItem>
                                            <asp:ListItem style="background-color: #99CCFF" Value="#99CCFF" Text="#99CCFF"></asp:ListItem>
                                            <asp:ListItem style="background-color: #99FFFF" Value="#99FFFF" Text="#99FFFF"></asp:ListItem>
                                            <asp:ListItem style="background-color: #CC0000" Value="#CC0000" Text="#CC0000"></asp:ListItem>
                                            <asp:ListItem style="background-color: #CC3300" Value="#CC3300" Text="#CC3300"></asp:ListItem>
                                            <asp:ListItem style="background-color: #CC6600" Value="#CC6600" Text="#CC6600"></asp:ListItem>
                                            <asp:ListItem style="background-color: #CC9900" Value="#CC9900" Text="#CC9900"></asp:ListItem>
                                            <asp:ListItem style="background-color: #CCCC00" Value="#CCCC00" Text="#CCCC00"></asp:ListItem>
                                            <asp:ListItem style="background-color: #CCFF00" Value="#CCFF00" Text="#CCFF00"></asp:ListItem>
                                            <asp:ListItem style="background-color: #CC0033" Value="#CC0033" Text="#CC0033"></asp:ListItem>
                                            <asp:ListItem style="background-color: #CC3333" Value="#CC3333" Text="#CC3333"></asp:ListItem>
                                            <asp:ListItem style="background-color: #CC6633" Value="#CC6633" Text="#CC6633"></asp:ListItem>
                                            <asp:ListItem style="background-color: #CC9933" Value="#CC9933" Text="#CC9933"></asp:ListItem>
                                            <asp:ListItem style="background-color: #CCCC33" Value="#CCCC33" Text="#CCCC33"></asp:ListItem>
                                            <asp:ListItem style="background-color: #CCFF33" Value="#CCFF33" Text="#CCFF33"></asp:ListItem>
                                            <asp:ListItem style="background-color: #CC0066" Value="#CC0066" Text="#CC0066"></asp:ListItem>
                                            <asp:ListItem style="background-color: #CC3366" Value="#CC3366" Text="#CC3366"></asp:ListItem>
                                            <asp:ListItem style="background-color: #CC6666" Value="#CC6666" Text="#CC6666"></asp:ListItem>
                                            <asp:ListItem style="background-color: #CC9966" Value="#CC9966" Text="#CC9966"></asp:ListItem>
                                            <asp:ListItem style="background-color: #CCCC66" Value="#CCCC66" Text="#CCCC66"></asp:ListItem>
                                            <asp:ListItem style="background-color: #CCFF66" Value="#CCFF66" Text="#CCFF66"></asp:ListItem>
                                            <asp:ListItem style="background-color: #CC0099" Value="#CC0099" Text="#CC0099"></asp:ListItem>
                                            <asp:ListItem style="background-color: #CC3399" Value="#CC3399" Text="#CC3399"></asp:ListItem>
                                            <asp:ListItem style="background-color: #CC6699" Value="#CC6699" Text="#CC6699"></asp:ListItem>
                                            <asp:ListItem style="background-color: #CC9999" Value="#CC9999" Text="#CC9999"></asp:ListItem>
                                            <asp:ListItem style="background-color: #CCCC99" Value="#CCCC99" Text="#CCCC99"></asp:ListItem>
                                            <asp:ListItem style="background-color: #CCFF99" Value="#CCFF99" Text="#CCFF99"></asp:ListItem>
                                            <asp:ListItem style="background-color: #CC00CC" Value="#CC00CC" Text="#CC00CC"></asp:ListItem>
                                            <asp:ListItem style="background-color: #CC33CC" Value="#CC33CC" Text="#CC33CC"></asp:ListItem>
                                            <asp:ListItem style="background-color: #CC66CC" Value="#CC66CC" Text="#CC66CC"></asp:ListItem>
                                            <asp:ListItem style="background-color: #CC99CC" Value="#CC99CC" Text="#CC99CC"></asp:ListItem>
                                            <asp:ListItem style="background-color: #CCCCCC" Value="#CCCCCC" Text="#CCCCCC"></asp:ListItem>
                                            <asp:ListItem style="background-color: #CCFFCC" Value="#CCFFCC" Text="#CCFFCC"></asp:ListItem>
                                            <asp:ListItem style="background-color: #CC00FF" Value="#CC00FF" Text="#CC00FF"></asp:ListItem>
                                            <asp:ListItem style="background-color: #CC33FF" Value="#CC33FF" Text="#CC33FF"></asp:ListItem>
                                            <asp:ListItem style="background-color: #CC66FF" Value="#CC66FF" Text="#CC66FF"></asp:ListItem>
                                            <asp:ListItem style="background-color: #CC99FF" Value="#CC99FF" Text="#CC99FF"></asp:ListItem>
                                            <asp:ListItem style="background-color: #CCCCFF" Value="#CCCCFF" Text="#CCCCFF"></asp:ListItem>
                                            <asp:ListItem style="background-color: #CCFFFF" Value="#CCFFFF" Text="#CCFFFF"></asp:ListItem>
                                            <asp:ListItem style="background-color: #FF0000" Value="#FF0000" Text="#FF0000"></asp:ListItem>
                                            <asp:ListItem style="background-color: #FF3300" Value="#FF3300" Text="#FF3300"></asp:ListItem>
                                            <asp:ListItem style="background-color: #FF6600" Value="#FF6600" Text="#FF6600"></asp:ListItem>
                                            <asp:ListItem style="background-color: #FF9900" Value="#FF9900" Text="#FF9900"></asp:ListItem>
                                            <asp:ListItem style="background-color: #FFCC00" Value="#FFCC00" Text="#FFCC00"></asp:ListItem>
                                            <asp:ListItem style="background-color: #FFFF00" Value="#FFFF00" Text="#FFFF00"></asp:ListItem>
                                            <asp:ListItem style="background-color: #FF0033" Value="#FF0033" Text="#FF0033"></asp:ListItem>
                                            <asp:ListItem style="background-color: #FF3333" Value="#FF3333" Text="#FF3333"></asp:ListItem>
                                            <asp:ListItem style="background-color: #FF6633" Value="#FF6633" Text="#FF6633"></asp:ListItem>
                                            <asp:ListItem style="background-color: #FF9933" Value="#FF9933" Text="#FF9933"></asp:ListItem>
                                            <asp:ListItem style="background-color: #FFCC33" Value="#FFCC33" Text="#FFCC33"></asp:ListItem>
                                            <asp:ListItem style="background-color: #FFFF33" Value="#FFFF33" Text="#FFFF33"></asp:ListItem>
                                            <asp:ListItem style="background-color: #FF0066" Value="#FF0066" Text="#FF0066"></asp:ListItem>
                                            <asp:ListItem style="background-color: #FF3366" Value="#FF3366" Text="#FF3366"></asp:ListItem>
                                            <asp:ListItem style="background-color: #FF6666" Value="#FF6666" Text="#FF6666"></asp:ListItem>
                                            <asp:ListItem style="background-color: #FF9966" Value="#FF9966" Text="#FF9966"></asp:ListItem>
                                            <asp:ListItem style="background-color: #FFCC66" Value="#FFCC66" Text="#FFCC66"></asp:ListItem>
                                            <asp:ListItem style="background-color: #FFFF66" Value="#FFFF66" Text="#FFFF66"></asp:ListItem>
                                            <asp:ListItem style="background-color: #FF0099" Value="#FF0099" Text="#FF0099"></asp:ListItem>
                                            <asp:ListItem style="background-color: #FF3399" Value="#FF3399" Text="#FF3399"></asp:ListItem>
                                            <asp:ListItem style="background-color: #FF6699" Value="#FF6699" Text="#FF6699"></asp:ListItem>
                                            <asp:ListItem style="background-color: #FF9999" Value="#FF9999" Text="#FF9999"></asp:ListItem>
                                            <asp:ListItem style="background-color: #FFCC99" Value="#FFCC99" Text="#FFCC99"></asp:ListItem>
                                            <asp:ListItem style="background-color: #FFFF99" Value="#FFFF99" Text="#FFFF99"></asp:ListItem>
                                            <asp:ListItem style="background-color: #FF00CC" Value="#FF00CC" Text="#FF00CC"></asp:ListItem>
                                            <asp:ListItem style="background-color: #FF33CC" Value="#FF33CC" Text="#FF33CC"></asp:ListItem>
                                            <asp:ListItem style="background-color: #FF66CC" Value="#FF66CC" Text="#FF66CC"></asp:ListItem>
                                            <asp:ListItem style="background-color: #FF99CC" Value="#FF99CC" Text="#FF99CC"></asp:ListItem>
                                            <asp:ListItem style="background-color: #FFCCCC" Value="#FFCCCC" Text="#FFCCCC"></asp:ListItem>
                                            <asp:ListItem style="background-color: #FFFFCC" Value="#FFFFCC" Text="#FFFFCC"></asp:ListItem>
                                            <asp:ListItem style="background-color: #FF00FF" Value="#FF00FF" Text="#FF00FF"></asp:ListItem>
                                            <asp:ListItem style="background-color: #FF33FF" Value="#FF33FF" Text="#FF33FF"></asp:ListItem>
                                            <asp:ListItem style="background-color: #FF66FF" Value="#FF66FF" Text="#FF66FF"></asp:ListItem>
                                            <asp:ListItem style="background-color: #FF99FF" Value="#FF99FF" Text="#FF99FF"></asp:ListItem>
                                            <asp:ListItem style="background-color: #FFCCFF" Value="#FFCCFF" Text="#FFCCFF"></asp:ListItem>
                                            <asp:ListItem style="background-color: #FFFFFF" Value="#FFFFFF" Text="#FFFFFF"></asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td align="center" width="150">
                                        <asp:TextBox ID="tbDescription" runat="server" Text='<%# Eval("Description")%>' MaxLength="100"></asp:TextBox>
                                    </td>
                                    <td align="center" width="50">
                                        <asp:TextBox ID="tbisUse" runat="server" Visible="false" Text='<%# Eval("isUse")%>'></asp:TextBox>
                                        <asp:DropDownList ID="ddlisUse" runat="server">
                                            <asp:ListItem Value="True">是</asp:ListItem>
                                            <asp:ListItem Value="False">否</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td align="center" width="70">
                                        <asp:HiddenField ID="hfId" runat="server" Value='<%# Eval("id")%>' />
                                        <ShoveWebUI:ShoveConfirmButton ID="btUpdate" CommandName="btUpdate" runat="server"
                                            Text="更新" AlertText="确定输入无误吗？" />
                                    </td>
                                </tr>
                            </table>
                        </EditItemTemplate>
                    </asp:DataList>
                </td>
            </tr>
        </table>
        <br />
    </div>
    </form>
</body>
</html>
