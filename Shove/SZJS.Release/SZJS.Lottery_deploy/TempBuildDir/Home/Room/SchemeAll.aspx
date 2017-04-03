<%@ page language="C#" autoeventwireup="true" inherits="Home_Room_SchemeAll, App_Web_y4qeesyo" enableEventValidation="false" %>

<%@ Register Assembly="Shove.Web.UI.4 For.NET 3.5" Namespace="Shove.Web.UI" TagPrefix="ShoveWebUI" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>无标题页</title>
    <link href="Style/common.css" rel="stylesheet" type="text/css" />
    <link href="Style/StyleSheet.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .ball
        {
            font-family: "tahoma";
            height: 20px;
            width: 15px;
            text-align: center;
            text-decoration: underline;
            font-size: 14px;
            color: #464646;
            cursor: hand;
            background: #ffffff;
        }
        .ball_c
        {
            font-family: "tahoma";
            height: 5px;
            width: 18px;
            text-align: center;
            font-size: 14px;
            color: #226699;
            border: solid 1px;
            border-color: #CCCCCC;
            background: #ffffff;
        }
        .ball_r
        {
            font-family: "tahoma";
            height: 5px;
            width: 18px;
            text-align: center;
            font-weight: bold;
            font-size: 14px;
            color: #FFFFFF;
            cursor: hand;
            border: solid 1px;
            background: #0869AD;
            text-decoration: none;
        }
        .ball_50
        {
            font-family: "tahoma";
            height: 15px;
            width: 25px;
            font-size: 12px;
            color: #464646;
            border: solid 1px;
            background: #ffffff;
            border-color: #6B96CB;
            padding-top: 5px;
        }
        .gendan tr td
        {
            border: solid 1px #cccccc;
            text-align: left;
            line-height: 30px;
            padding-right: 5px;
            text-indent: 5px;
        }
    </style>

    <script type="text/javascript" language="javascript">
        function newCoBuy() {
            parent.document.getElementById("TabMenu").click();
        }

        function sorting(field, id) {
            document.getElementById("HidSortID").value = id;
            document.getElementById("HidSort").value = field;
            __doPostBack('btnSorting', '');
        }


        function mOver(obj, type) {

            if (type == 1) {
                obj.style.textDecoration = "none";
                obj.style.color = "#FF0065";
            }
            else {
                obj.style.textDecoration = "underline";
                obj.style.color = "#666666";


            }
        }


        function showPage(page) {
            document.getElementById("HidPageNumber").value = page;
            __doPostBack('btnPaging', '');
        }
        
    </script>

</head>
<body>
    <form id="form1" runat="server">
    <asp:HiddenField ID="HidIsuseID" runat="server" />
    <asp:HiddenField ID="HidNumber" runat="server" />
    <asp:HiddenField ID="HidLotteryID" runat="server" />
    <asp:HiddenField ID="HidSearch" runat="server" />
    <asp:HiddenField ID="HidFilter" runat="server" Value="7" />
    <asp:HiddenField ID="HidSort" runat="server" />
    <asp:HiddenField ID="HidSortID" runat="server" />
    <asp:HiddenField ID="HidPageNumber" runat="server" Value="1" />
    <asp:HiddenField ID="HidOrder" runat="server" />
    <asp:Button ID="btnSorting" runat="server" Text="Button" OnClick="btnSorting_Click"
        Style="display: none;" />
    <asp:Button ID="btnPaging" runat="server" Text="Button" OnClick="btnPaging_Click"
        Style="display: none;" />
    <div style="padding-bottom: 8px;">
        <table cellpadding="0" cellspacing="0" style="width: 100%; height: 35px; padding-top: 8px;"
            bgcolor="#F2F2F2">
            <tr>
                <td style="padding-left: 10px;">
                    <a href="javascript:newCoBuy();" style="font-weight: bold; width: 20px; color: #FF0065;">
                        发起合买</a>
                </td>
                <td>
                    <asp:TextBox ID="TxtName" runat="server" CssClass="in_text" value="输入用户名" size="10"
                        onfocus="if(this.value=='输入用户名')this.value='';" onblur="if(this.value=='')this.value='输入用户名';"></asp:TextBox>
                </td>
                <td width="75" style="padding-left: 10px;">
                    <ShoveWebUI:ShoveConfirmButton ID="btnSearch" runat="server" BackgroupImage="images/button_sousuo.jpg"
                        Style="cursor: hand;" BorderStyle="None" Height="23px" OnClick="btnSearch_Click"
                        Width="72px" />
                </td>
                <td align="left" style="padding-left: 0px; padding-bottom: 5px; margin-left: 0px;">
                    <asp:LinkButton ID="btnType_1" runat="server" class="hui12_line" OnClick="btnType_1_Click"
                        onmouseover="mOver(this,1)" onmouseout="mOver(this,2)">千元以上</asp:LinkButton>
                    |
                    <asp:LinkButton ID="btnType_2" runat="server" class="hui12_line" OnClick="btnType_1_Click"
                        onmouseover="mOver(this,1)" onmouseout="mOver(this,2)">千元以下</asp:LinkButton>
                    |
                    <asp:LinkButton ID="btnType_3" runat="server" class="hui12_line" OnClick="btnType_1_Click"
                        onmouseover="mOver(this,1)" onmouseout="mOver(this,2)">已满员</asp:LinkButton>
                    |
                    <asp:LinkButton ID="btnType_4" runat="server" class="hui12_line" OnClick="btnType_1_Click"
                        onmouseover="mOver(this,1)" onmouseout="mOver(this,2)">未满员</asp:LinkButton>
                    |
                    <asp:LinkButton ID="btnType_5" runat="server" class="hui12_line" OnClick="btnType_1_Click"
                        onmouseover="mOver(this,1)" onmouseout="mOver(this,2)">已撤单</asp:LinkButton>
                    |
                    <asp:LinkButton ID="btnType_6" runat="server" class="hui12_line" OnClick="btnType_1_Click"
                        onmouseover="mOver(this,1)" onmouseout="mOver(this,2)">有保底</asp:LinkButton>
                    |
                    <asp:LinkButton ID="btnType_7" runat="server" class="hui12_line" OnClick="btnType_1_Click"
                        onmouseover="mOver(this,1)" onmouseout="mOver(this,2)">全部方案</asp:LinkButton>
                </td>
            </tr>
        </table>
    </div>
    <div>
        <table width="100%" class="gendan">
            <tr align="center" valign="middle" class="blue" style="background-color: #E9F1F8;
                height: 30px;">
                <td align="center" width="14%" bgcolor="#ffede3">
                    发起人
                </td>
                <td align="center" width="5%" bgcolor="#ffede3">
                    <a id="s20" href="javascript:sorting('Level','s20');">战绩</a>
                </td>
                <td align="center" width=" 7%" bgcolor="#ffede3">
                    <a id="s30" href="javascript:sorting('Money','s30');">总金额</a>
                </td>
                <td align="center" width="9%" bgcolor="#ffede3">
                    <a id="s40" href="javascript:sorting('PlayTypeName','s40');">玩法</a>
                </td>
                <td align="center" width="19%" bgcolor="#ffede3">
                    投注内容
                </td>
                <td align="center" width=" 5%" bgcolor="#ffede3">
                    <a id="s60" href="javascript:sorting('Share','s60');">份数</a>
                </td>
                <td align="center" width=" 7%" bgcolor="#ffede3">
                    每份
                </td>
                <td align="center" width="5%" bgcolor="#ffede3">
                    <a id="s70" href="javascript:sorting('Schedule','s70');">进度</a>
                </td>
                <td align="center" width="7%" bgcolor="#ffede3">
                    状态
                </td>
                <td align="center" width="5%" bgcolor="#ffede3">
                    入伙
                </td>
            </tr>
            <asp:Repeater ID="rptSchemes" runat="server" EnableViewState="false">
                <ItemTemplate>
                    <tr onmouseover="JavaScript:this.bgColor='MistyRose';" onmouseout="JavaScript:this.bgColor='<%#Eval("Color") %>';"
                        bgcolor="<%#Eval("Color") %>" style="height: 25px;">
                        <td align="center">
                            <%#Eval("InitiateName")%>
                        </td>
                        <td align="center">
                            <%#Eval("Level")%>
                        </td>
                        <td align="center">
                            <%#Eval("Money")%>
                        </td>
                        <td align="center">
                            <%#Eval("PlayTypeName")%>
                        </td>
                        <td align="center">
                            <%#Eval("LotteryNumber")%>
                        </td>
                        <td align="center">
                            <%#Eval("Share")%>
                        </td>
                        <td align="center">
                            <%#Eval("EachMoney") %>
                        </td>
                        <td align="center">
                            <%#Eval("Schedule")%>%
                        </td>
                        <td align="center">
                            <%#Eval("State")%>
                        </td>
                        <td align="center">
                            <%#Eval("Join")%>
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </table>
        <table width="100%" border="0" cellspacing="1" cellpadding="0" style="margin-top: 10px;">
            <tbody id="tbPaging" runat="server" enableviewstate="false">
            </tbody>
        </table>
    </div>

    <script type="text/javascript" language="javascript">
        var sortid = document.getElementById("HidSortID").value;
        if (sortid != "") {
            document.getElementById(sortid).innerHTML = (document.getElementById(sortid).innerText + (document.getElementById("HidOrder").value == "asc" ? "<font face='webdings'>5</font>" : "<font face='webdings'>6</font>"));
        }
    </script>

    </form>
</body>
</html>
