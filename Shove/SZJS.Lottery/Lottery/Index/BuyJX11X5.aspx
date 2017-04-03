<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BuyJX11X5.aspx.cs" Inherits="Lottery_Index_BuyJX11X5" %>

<%@ Register Assembly="Shove.Web.UI.4 For.NET 3.5" Namespace="Shove.Web.UI" TagPrefix="ShoveWebUI" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
    <link href="../../Home/Room/Style/common.css" rel="stylesheet" type="text/css" />
    <link href="../../Home/Room/Style/index.css" rel="stylesheet" type="text/css" />
    <link href="../../Home/Room/Style/StyleSheet.css" rel="stylesheet" type="text/css" />

    <script src="buyJX11X5.js" type="text/javascript"></script>

</head>
<body>
    <form id="form1" runat="server">
    <asp:HiddenField ID="hUserID" runat="server" Value="-1" />
    <asp:HiddenField ID="HidIsuseID" runat="server" />
    <asp:HiddenField ID="HidIsuseEndTime" runat="server" />
    <asp:HiddenField ID="tb_LotteryNumber" runat="server" />
    <asp:HiddenField ID="tb_Share" runat="server" />
    <asp:HiddenField ID="tb_BuyShare" runat="server" />
    <asp:HiddenField ID="Multiple" runat="server" />
    <div id="and5">
        <div id="i_zc_sfc" class="i_zc_container">
            <div class="left_main">
                <div class="quick_buy">
                    <dt class="icon_ssq">
                        <img src="../../Home/Room/Images/logo_70.gif" /></dt>
                    <dd id="tdLuckNumber" runat="server">
                    </dd>
                    <dd>
                        <span>[ 直选 ]从1-11中选5个不重复的整数</span></dd>
                    <dd>
                        <span>每日65期，9:05~21:53每12分钟开奖</span></dd>
                </div>
                <div class="quick_right">
                    <table border="0" cellpadding="0" cellspacing="0" width="100%">
                        <tbody>
                            <tr>
                                <td align="right">
                                    <select class="txtarea txtheight" multiple="multiple" id="list_LotteryNumber">
                                        <option value="0">01 02 03 04 05</option>
                                    </select>
                                </td>
                                <td width="89px">
                                    <table>
                                        <tr>
                                            <td>
                                                <input type="button" id="Button1" class="random_btn" value="随机1注" onclick="return GetLuckNumber(<%=LotteryID %>)" />
                                            </td>
                                            <td>
                                                <input type="button" id="Button2" class="random_btn" value="随机5注" onclick="btn_2_RandManyClick(5);" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <input type="button" id="Button3" class="del_btn" value="删除所选" onclick="return btn_ClearSelectClick();" />
                                            </td>
                                            <td>
                                                <input type="button" id="Button4" class="del_btn" value="删除全部" onclick="return btn_ClearClick();" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="2">
                                                <ShoveWebUI:ShoveConfirmButton ID="btn_OK" runat="server" CausesValidation="False"
                                                    Text="" OnClientClick="return CreateLogin('btn_OKClick();');" OnClick="btn_OK_Click"
                                                    CssClass="btn_send" />
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div class="clear">
                </div>
                <p class="shuangseqiu">
                    <span id='currIsuseName'></span><i class="jz_time">截止时间</i> <b><span class="red"
                        id="toCurrIsuseEndTime"></span></b><a href="../BuyJX11x5.aspx" target="_blank">进入专区&gt;&gt;</a><em><span>倍投：
                            <input type="text" value="1" class="i-a" id="tb_Multiple" maxlength="2" style="ime-mode: disabled;">
                            倍{最大99倍}</span> </em>
                </p>
            </div>
        </div>
    </div>

    <script type="text/javascript">
         setTimeout("Page_load(<%= LotteryID %>);",500);
          btn_ClearClick();
         GetLuckNumber(<%=LotteryID %>);
    </script>

    </form>
</body>
</html>
