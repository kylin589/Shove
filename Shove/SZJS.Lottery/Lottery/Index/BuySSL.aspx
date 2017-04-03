<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BuySSL.aspx.cs" Inherits="Lottery_Index_BuySSL" %>

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

    <script src="buySSL.js" type="text/javascript"></script>

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
        <div id="i_zc_bqc" class="i_zc_container">
            <div class="left_main">
                <div class="quick_buy pull-left">
                    <div class="icon_ssq">
                        <img src="../../Home/Room/Images/cq_ssc.gif" />
                         <p class="anyway-cai">
                           <span>01天07小时52分22秒</span><br />
                           <span class="jz_time">后截止</span>
                               <!--<a href="Lottery/BuySSQ.aspx" target="_blank">进入专区&gt;&gt;</a>-->
                           
                        </p>
                        </div>
                    <!--<div id="tdLuckNumber" runat="server">
                    </div>-->
                    
                    <div class="clear"></div>
                </div>

                <div class="depict pull-left">
                                <p><span class="title">时时彩</span><span>第 2015096 期 </span>
                                <br />奖池：772,938,425元</p>
                                <div class="zs"><span><img src="../../Home/Room/Images/index/zs.jpg" alt="" /><a href="#">
                                走势</span><span><img src="../../Home/Room/Images/index/mark.jpg"  alt=""/><a href="#">玩法说明</a></span></div>  
                        </div>
                       
                <div class="quick_right pull-left distance">
                    <table border="0" cellpadding="0" cellspacing="0" width="100%" >
                        <tbody>
                            <tr>
                                <td align="right">
                                    <select class="txtarea txtheight" multiple="multiple" id="list_LotteryNumber">
                                        <option value="0">1 2 3 </option>
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
                                            <td colspan="2" style="padding-left:30px;">
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
                    <em><span>倍投：
                            <input type="text" value="1" id="tb_Multiple" maxlength="2" class="i-a" style="ime-mode: disabled;">
                            倍{最大99倍}</span> </em>
                </div>
                <div class="clear">
                </div>



                
            </div>

        </div>
    </div>
    </form>
    <script type="text/javascript">
         setTimeout("Page_load(<%= LotteryID %>);",500);
          btn_ClearClick();
         GetLuckNumber(<%=LotteryID %>);
        
         $(function () {
           $("#tdLuckNumber").hide();
       });
    </script>

   
</body>
</html>
