<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FollowScheme.aspx.cs" Inherits="Home_Room_FollowScheme" %>

<%@ Register Assembly="Shove.Web.UI.4 For.NET 3.5" Namespace="Shove.Web.UI" TagPrefix="ShoveWebUI" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head id="Head1" runat="server">
    <title>无标题页</title>
    <link href="Style/common.css" rel="stylesheet" type="text/css" />
    <link href="Style/StyleSheet.css" rel="stylesheet" type="text/css" />

    <script src="../../JavaScript/jquery-1.4.js" type="text/javascript"></script>
    <script src="../../JavaScript/Public.js" type="text/javascript"></script>
    
    <script type="text/javascript" language="javascript" charset="gbk">
        function showDialog(url)
        {
            var dialogWidth = 550;
            var dialogHeight = 250;
            var w = window.showModalDialog(url + "&r=" + Math.random(),"","dialogWidth:"+dialogWidth+"px;dialogHeight="+dialogHeight+"px;center:yes;status:no;help:no;");
            
            if(w == "1")
            {
                __doPostBack('btnSearch','');
            }
            else
            {
                return false;
            }
        }
        function isCancelFollowScheme() {
            return confirm("您确认取消此定制跟单吗？");
        }
    </script>

</head>
<body onkeydown="if(event.keyCode==13){return;}">
    <form id="form1" runat="server">
    <asp:HiddenField ID="tbLotteryID" runat="server" />
    <asp:HiddenField ID="tbNumber" runat="server" />
    <asp:Panel ID="PanelFriend" runat="server">
        <div style="padding-bottom: 8px;">
            <table cellpadding="0" cellspacing="0" style="width: 100%;" bgcolor="#F2F2F2" style="height: 35px">
                <tr>
                    <td style="padding-left: 25px; width: 100px">
                        <asp:LinkButton ID="btnList" runat="server" OnClick="btnList_Click" Style="color: #000000;
                            padding-left: 4px;">我的好友列表</asp:LinkButton>
                    </td>
                    <td style="padding-left: 15px; width: 150px">
                        <asp:TextBox ID="Name" runat="server" value="输入用户名" size="25" onfocus="if(this.value=='输入用户名')this.value='';"
                            onblur="if(this.value=='')this.value='输入用户名';"></asp:TextBox>
                    </td>
                    <td style="padding-left: 24px; width: 100px">
                        <ShoveWebUI:ShoveConfirmButton ID="btnSearch" runat="server" BackgroupImage="images/button_sousuo.jpg"
                            Style="cursor: hand;" BorderStyle="None" Height="23px" OnClick="btnSearch_Click"
                            Width="72px" />
                    </td>
                    <td style="padding-left: 15px;">
                        <asp:HyperLink ID="hlAdd" runat="server" Style="font-weight: bold; color: #FF0065;">新增好友自动定制跟单</asp:HyperLink>
                    </td>
                </tr>
            </table>
        </div>
        <div>
            <asp:DataGrid ID="g" runat="server" Width="100%" AllowSorting="True" OnItemCommand="g_ItemCommand"
                AllowPaging="True" PageSize="22" AutoGenerateColumns="False" OnItemDataBound="g_ItemDataBound"
                bordercolorlight="#BCD2E9" bgcolor="#E9F1F8" BackColor="#E9F1F8" CellSpacing="0"
                GridLines="None" BorderStyle="None" Style="margin-top: 10px;">
                <HeaderStyle HorizontalAlign="Center" CssClass="blue12_line" Height="30px" ForeColor="#0066BA"
                    BackColor="#ffede3"></HeaderStyle>
                <ItemStyle Height="30px" HorizontalAlign="Center" BackColor="#FFFFFF"></ItemStyle>
                <Columns>
                    <asp:BoundColumn DataField="Name" HeaderText="好友">
                        <HeaderStyle HorizontalAlign="Center" Width="16%"></HeaderStyle>
                        <ItemStyle HorizontalAlign="Center"></ItemStyle>
                    </asp:BoundColumn>
                    <asp:BoundColumn HeaderText="战绩">
                        <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                        <ItemStyle HorizontalAlign="Center" ForeColor="Black"></ItemStyle>
                    </asp:BoundColumn>
                    <asp:BoundColumn HeaderText="已定制/可定制">
                        <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                        <ItemStyle HorizontalAlign="Center"></ItemStyle>
                    </asp:BoundColumn>
                    <asp:BoundColumn HeaderText="所有跟单人">
                        <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                        <ItemStyle HorizontalAlign="Center"></ItemStyle>
                    </asp:BoundColumn>
                    <asp:BoundColumn HeaderText="我的定制状态">
                        <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                        <ItemStyle HorizontalAlign="Center"></ItemStyle>
                    </asp:BoundColumn>
                    <asp:TemplateColumn HeaderText="定制自动跟单">
                        <ItemTemplate>
                            <asp:Label ID="lbEdit" runat="server"></asp:Label>
                            <asp:LinkButton runat="server" ID="Cancel" CommandName="Cancel" Visible="false" Text="取消"></asp:LinkButton>
                        </ItemTemplate>
                        <ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
                            Font-Underline="False" HorizontalAlign="Center" />
                    </asp:TemplateColumn>
                    <asp:BoundColumn Visible="False" DataField="ID"></asp:BoundColumn>
                </Columns>
                <PagerStyle Visible="False"></PagerStyle>
            </asp:DataGrid>
            <ShoveWebUI:ShoveGridPager ID="gPager" runat="server" Width="100%" PageSize="22"
                ShowSelectColumn="False" DataGrid="g" AlternatingRowColor="#F8F8F8" GridColor="#FFFFFF"
                HotColor="MistyRose" OnPageWillChange="gPager_PageWillChange" OnSortBefore="gPager_SortBefore"
                RowCursorStyle="" />
        </div>
    </asp:Panel>
    </form>
</body>
</html>

<script type="text/javascript" language="javascript">
    parent.document.getElementById('iframeFollowScheme').style.height = parent.iframeFollowScheme.document.body.scrollHeight;
    document.getElementById("g").setAttribute("border", "1");
    document.getElementById("g").removeAttribute("style");
    document.getElementById("g").setAttribute("width", "100%");
</script>

