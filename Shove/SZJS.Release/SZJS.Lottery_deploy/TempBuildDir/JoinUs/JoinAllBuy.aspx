<%@ page language="C#" autoeventwireup="true" enableeventvalidation="false" inherits="JoinUs_JoinAllBuy, App_Web_7fxgr2kg" %>

<%@ Register Assembly="Shove.Web.UI.4 For.NET 3.5" Namespace="Shove.Web.UI" TagPrefix="ShoveWebUI" %>
<%@ Register Src="../Home/Room/UserControls/WebFoot.ascx" TagName="WebFoot" TagPrefix="uc2" %>
<%@ Register Src="../UserControls/Head.ascx" TagName="Head" TagPrefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>彩票|合买|合买跟单|福彩|体彩|足彩|竞彩|快开彩|一起买彩票、彩票合买代购交易平台－<%=_Site.Name %>－买彩票，就上<%=_Site.Name %></title>
    <meta name="keywords" content="买彩票,彩票合买" />
    <meta name="description" content="<%=_Site.Name %>为广大彩民提供互联网彩票合买代购交易平台。" />
    <link href="../Home/Room/Style/common.css" rel="stylesheet" type="text/css" />
    <link href="../Home/Room/Style/StyleSheet.css" rel="stylesheet" type="text/css" />
    <link href="../Home/Room/Style/zbuy.css" rel="stylesheet" type="text/css" />

    <script src="../JavaScript/jquery-1.4.js" type="text/javascript"></script>

    <script type="text/javascript">
    function CreateLogin() {
    
       if (Number(document.getElementById("Head2_hUserID").value) > 0) {
            return true;
       }else{
         if (!confirm("请登录账户后进行投注！"))
         {
             return false;
         }
       }
    }
    </script>

    <style type="text/css">
        .hemai
        {
            width: 100%;
        }
        .hemai tr td
        {
            border: 1px solid #f4f4f4;
            text-align: center;
        }
        .hemai thead tr td
        {
            border: 1px solid #CCCCCC;
            text-align: center;
        }
        table strong
        {
            text-align: center;
            display: block;
            background-color: #f0f0f0;
        }
        .wrap
        {
            width: 982px;
            border: 2px solid #df0007;
        }
        #tou tr td
        {
            border: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <uc1:Head ID="Head2" runat="server" />
    <div class="wrap">
        <div>
            <img src="../Home/Room/Images/he_guanggao.jpg" />
        </div>
        <table width="100%" class="hemai" id="tou">
            <thead>
                <tr>
                    <td>
                        发起人：<asp:TextBox ID="tbName" size="15" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="btnSearch" runat="server" Text="搜索" Height="28" Width="60" OnClick="btnSearch_Click" />
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlLottery" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlLottery_SelectedIndexChanged">
                            <asp:ListItem Value="-1">全部方案</asp:ListItem>
                            <asp:ListItem Value="5">双色球</asp:ListItem>
                            <asp:ListItem Value="6">3D</asp:ListItem>
                            <asp:ListItem Value="1">胜负彩</asp:ListItem>
                            <asp:ListItem Value="19">任九场</asp:ListItem>
                            <asp:ListItem Value="39">超级大乐透</asp:ListItem>
                            <asp:ListItem Value="63">排列三</asp:ListItem>
                            <asp:ListItem Value="29">时时乐</asp:ListItem>
                            <asp:ListItem Value="0">其他彩种</asp:ListItem>
                        </asp:DropDownList>
                        &nbsp;&nbsp;
                        <asp:DropDownList ID="ddlMoney" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlMoney_SelectedIndexChanged">
                            <asp:ListItem Value="-1">方案金额</asp:ListItem>
                            <asp:ListItem Value="Money<100">100元以下</asp:ListItem>
                            <asp:ListItem Value="Money>=100 and Money<=500">100-500元</asp:ListItem>
                            <asp:ListItem Value="Money>=500 and Money<=1000">500-1000元</asp:ListItem>
                            <asp:ListItem Value="Money>1000">1000元以上</asp:ListItem>
                        </asp:DropDownList>
                        &nbsp;&nbsp;
                        <asp:DropDownList ID="ddlBonus" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlBonus_SelectedIndexChanged">
                            <asp:ListItem Value="-1">佣金</asp:ListItem>
                            <asp:ListItem Value="0.01">&lt;=1</asp:ListItem>
                            <asp:ListItem Value="0.02">&lt;=2</asp:ListItem>
                            <asp:ListItem Value="0.03">&lt;=3</asp:ListItem>
                            <asp:ListItem Value="0.04">&lt;=4</asp:ListItem>
                            <asp:ListItem Value="0.05">&lt;=5</asp:ListItem>
                            <asp:ListItem Value="0.06">&lt;=6</asp:ListItem>
                            <asp:ListItem Value="0.07">&lt;=7</asp:ListItem>
                            <asp:ListItem Value="0.08">&lt;=8</asp:ListItem>
                            <asp:ListItem Value="0.09">&lt;=9</asp:ListItem>
                        </asp:DropDownList>
                        %&nbsp;&nbsp;
                        <asp:DropDownList ID="ddlCondition" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlCondition_SelectedIndexChanged">
                            <asp:ListItem Value="-1">全部</asp:ListItem>
                            <asp:ListItem Value="QuashStatus=0 and ResShare>0">未满员</asp:ListItem>
                            <asp:ListItem Value="QuashStatus=0 and ResShare<=0">已满员</asp:ListItem>
                            <asp:ListItem Value="QuashStatus<>0">已撤单</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                        &nbsp;
                    </td>
                </tr>
            </thead>
        </table>
        <asp:DataGrid ID="g" runat="server" Width="100%" BorderStyle="None" AllowSorting="True"
            CssClass="hemai" AllowPaging="True" AutoGenerateColumns="False" BackColor="#CCCCCC"
            OnItemDataBound="g_ItemDataBound" CellSpacing="1" GridLines="None" OnItemCommand="g_ItemCommand">
            <HeaderStyle HorizontalAlign="Center" Height="28px"  BackColor="#EFEFEF">
            </HeaderStyle>
            <ItemStyle Height="28px" HorizontalAlign="Center"></ItemStyle>
            <Columns>
                <asp:BoundColumn DataField="Count" HeaderText="NO">
                    <HeaderStyle HorizontalAlign="Center" Width="4%"></HeaderStyle>
                    <ItemStyle Width="4%" ></ItemStyle>
                </asp:BoundColumn>
                <asp:BoundColumn DataField="LotteryName" HeaderText="彩种">
                    <HeaderStyle Width="13%"></HeaderStyle>
                    <ItemStyle Width="13%" ></ItemStyle>
                </asp:BoundColumn>
                <asp:BoundColumn DataField="InitiateName" HeaderText="发起人">
                    <HeaderStyle Width="13%"></HeaderStyle>
                    <ItemStyle Width="13%" ></ItemStyle>
                </asp:BoundColumn>
                <asp:BoundColumn DataField="Level" HeaderText="战绩" SortExpression="Level">
                    <HeaderStyle Width="10%"></HeaderStyle>
                    <ItemStyle Width="10%"></ItemStyle>
                </asp:BoundColumn>
                <asp:BoundColumn DataField="Title" HeaderText="方案标题" SortExpression="Title">
                    <HeaderStyle Width="21%"></HeaderStyle>
                    <ItemStyle Width="21%" ></ItemStyle>
                </asp:BoundColumn>
                <asp:BoundColumn DataField="Money" HeaderText="方案金额" SortExpression="Money" DataFormatString="{0:N}">
                    <HeaderStyle Width="10%"></HeaderStyle>
                    <ItemStyle Width="10%" ></ItemStyle>
                </asp:BoundColumn>
                <asp:BoundColumn HeaderText="每份" DataField="ShareMoney" SortExpression="ShareMoney"
                    DataFormatString="{0:N}">
                    <HeaderStyle Width="7%"></HeaderStyle>
                    <ItemStyle Width="7%" ></ItemStyle>
                </asp:BoundColumn>
                <asp:BoundColumn DataField="Schedule" HeaderText="进度" SortExpression="Schedule">
                    <HeaderStyle Width="7%"></HeaderStyle>
                    <ItemStyle Width="7%" ></ItemStyle>
                </asp:BoundColumn>
                <asp:BoundColumn DataField="ResShare" HeaderText="剩余份数" SortExpression="ResShare"
                    Visible="false"></asp:BoundColumn>
                <asp:TemplateColumn HeaderText="认购(份)">
                    <HeaderStyle Width="8%"></HeaderStyle>
                    <ItemStyle Width="8%"></ItemStyle>
                    <ItemTemplate>
                        <asp:TextBox ID="tbShare" runat="server" Style="text-align: center;" Width="40" Text="1"
                            onkeypress="return InputMask_Number();"></asp:TextBox>
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:TemplateColumn HeaderText="入伙">
                    <HeaderStyle Width="7%"></HeaderStyle>
                    <ItemStyle Width="7%"></ItemStyle>
                    <ItemTemplate>
                        <asp:LinkButton ID="btnBuy" runat="server" Text="购买" CommandName="Buy" OnClientClick="return CreateLogin();"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:BoundColumn Visible="False" DataField="AssureMoney"></asp:BoundColumn>
                <asp:BoundColumn Visible="False" DataField="ID"></asp:BoundColumn>
                <asp:BoundColumn Visible="False" DataField="QuashStatus"></asp:BoundColumn>
                <asp:BoundColumn Visible="False" DataField="EndTime"></asp:BoundColumn>
                <asp:BoundColumn Visible="False" DataField="IsuseID"></asp:BoundColumn>
                <asp:BoundColumn Visible="False" DataField="PlayTypeID"></asp:BoundColumn>
            </Columns>
        </asp:DataGrid>
        <ShoveWebUI:ShoveGridPager ID="gPager" runat="server" Width="100%" PageSize="30"
            ShowSelectColumn="False" DataGrid="g" AlternatingRowColor="#FFFFE6" HotColor="MistyRose"
            OnPageWillChange="gPager_PageWillChange" OnSortBefore="gPager_SortBefore" RowCursorStyle=""
            RowColor="#FFFFFF" />
    </div>
    <uc2:WebFoot ID="WebFoot1" runat="server" />
    </form>
</body>
</html>

<script type="text/javascript">
    function InputMask_Number() {
        if (window.event.keyCode < 48 || window.event.keyCode > 57)
            return false;
        return true;
    }
    <%=script %>
</script>

