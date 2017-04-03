<%@ Page Language="C#" AutoEventWireup="true" CodeFile="OnlinePayGateway.aspx.cs"
    Inherits="Admin_OnlinePayGateway" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ Register Assembly="Shove.Web.UI.4 For.NET 3.5" Namespace="Shove.Web.UI" TagPrefix="ShoveWebUI" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
    <link href="style/style01.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div class="title" style="text-align:center">
            支付宝在线参数设置
        </div>
        <table width="100%" border="0" align="center" cellpadding="0" cellspacing="1" class="baseTab"
            style="color: #000000">
            <tr>
                <td height="26" bgcolor="#FFFFFF" style="width: 30%">
                    <div align="right">
                        商户名：</div>
                </td>
                <td bgcolor="#FFFFFF" style="width: 70%">
                    <asp:TextBox ID="tbAlipayName" runat="server" MaxLength="100" Width="456px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td height="26" bgcolor="#FFFFFF">
                    <div align="right">
                        商户号：</div>
                </td>
                <td bgcolor="#FFFFFF">
                    <asp:TextBox ID="tbAlipayNumber" runat="server" Width="456px" MaxLength="100"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td height="26" bgcolor="#FFFFFF">
                    <div align="right">
                        商户密钥：</div>
                </td>
                <td bgcolor="#FFFFFF">
                    <asp:TextBox ID="tbAlipayKey" runat="server" MaxLength="100" TextMode="Password"
                        Width="456px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td height="26" bgcolor="#FFFFFF">
                    <div align="right">
                        支付手续费：</div>
                </td>
                <td bgcolor="#FFFFFF">
                    <asp:TextBox ID="tbAlipayPayFormalitiesFeesScale" runat="server" Width="130px" MaxLength="5"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td height="26" bgcolor="#FFFFFF">
                    <div align="right">
                        派款密钥：</div>
                </td>
                <td bgcolor="#FFFFFF">
                    <asp:TextBox ID="tbAlipayOutKey" runat="server" MaxLength="5" Width="456px" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td height="26" bgcolor="#FFFFFF" >
                    <div align="right">
                        派款手续费：</div>
                </td>
                <td bgcolor="#FFFFFF" >
                    <asp:TextBox ID="tbAlipayDistillFormalitiesFeesScale" runat="server" MaxLength="5"
                        Width="130px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td height="26" bgcolor="#FFFFFF">
                    <div align="right">
                        状态：</div>
                </td>
                <td bgcolor="#FFFFFF">
                    <asp:CheckBox ID="cbAlipayON" runat="server" Text="启用" />
                </td>
            </tr>
        </table>
        <table width="100%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#85BDE2"
            style="color: #000000">
            <tr>
                <td colspan="2" style="height: 27px; text-align:center">
                    &nbsp;支付宝在线支付(会员提款)设置
                </td>
            </tr>
            <tr>
                <td height="26" bgcolor="#FFFFFF" style="width:30%">
                    <div align="right">
                        商户名：</div>
                </td>
                <td bgcolor="#FFFFFF" style="width:70%">
                    <asp:TextBox ID="tbOnlinePay_Alipay_ForUserDistill_UserName" runat="server" MaxLength="100"
                        Width="456px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td height="26" bgcolor="#FFFFFF">
                    <div align="right">
                        商户号：</div>
                </td>
                <td bgcolor="#FFFFFF" >
                    <asp:TextBox ID="tbOnlinePay_Alipay_ForUserDistill_UserNumber" runat="server" Width="456px"
                        MaxLength="100"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td height="26" bgcolor="#FFFFFF">
                    <div align="right">
                        商户密钥：</div>
                </td>
                <td bgcolor="#FFFFFF">
                    <asp:TextBox ID="tbOnlinePay_Alipay_ForUserDistill_MD5Key" runat="server" MaxLength="100"
                        TextMode="Password" Width="456px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td height="26" bgcolor="#FFFFFF">
                    <div align="right">
                        派款密钥：</div>
                </td>
                <td bgcolor="#FFFFFF">
                    <asp:TextBox ID="tbOnlinePay_Alipay_ForUserDistill_MD5Key_ForPayOut" runat="server"
                        MaxLength="100" Width="456px" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td height="26" bgcolor="#FFFFFF">
                    <div align="right">
                        状态：</div>
                </td>
                <td bgcolor="#FFFFFF">
                    <asp:CheckBox ID="cbOnlinePay_Alipay_ForUserDistill_Status_ON" runat="server" Text="启用" />
                </td>
            </tr>
        </table>
        <table width="100%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#85BDE2"
            style="color: #000000">
            <tr>
                <td colspan="2" style="height: 27px; text-align:center">
                    &nbsp;支付宝网银在线支付设置
                </td>
            </tr>
            <tr>
                <td height="26" bgcolor="#FFFFFF" style="width:30%">
                    <div align="right">
                        商户名：</div>
                </td>
                <td bgcolor="#FFFFFF" style="width:70%">
                    <asp:TextBox ID="tbCBPayMentName" runat="server" MaxLength="100" Width="456px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td height="26" bgcolor="#FFFFFF">
                    <div align="right">
                        商户号：</div>
                </td>
                <td bgcolor="#FFFFFF">
                    <asp:TextBox ID="tbCBPayMentNumber" runat="server" MaxLength="100" Width="456px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td height="26" bgcolor="#FFFFFF">
                    <div align="right">
                        商户密钥：</div>
                </td>
                <td bgcolor="#FFFFFF">
                    <asp:TextBox ID="tbCBPayMentKey" runat="server" MaxLength="100" TextMode="Password"
                        Width="456px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td height="26" bgcolor="#FFFFFF">
                    <div align="right">
                        支付手续费：</div>
                </td>
                <td bgcolor="#FFFFFF" >
                    <asp:TextBox ID="tbCBPayMentPayFormalitiesFeesScale" runat="server" MaxLength="5"
                        Width="130px"></asp:TextBox>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td height="26" bgcolor="#FFFFFF">
                    <div align="right">
                        派款密钥：</div>
                </td>
                <td bgcolor="#FFFFFF">
                    <asp:TextBox ID="tbCBPayMentOutKey" runat="server" MaxLength="5" Width="456px" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td height="26" bgcolor="#FFFFFF">
                    <div align="right">
                        派款手续费：</div>
                </td>
                <td bgcolor="#FFFFFF">
                    <asp:TextBox ID="tbCBPayMentDistillFormalitiesFeesScale" runat="server" MaxLength="5"
                        Width="130px"></asp:TextBox>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td height="26" bgcolor="#FFFFFF">
                    <div align="right">
                        状态：</div>
                </td>
                <td bgcolor="#FFFFFF">
                    <asp:CheckBox ID="cbCBPayMentON" runat="server" Text="启用" />
                </td>
            </tr>
        </table>
        <table width="100%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#85BDE2"
            style="color: #000000">
            <tr>
                <td colspan="2" style="height: 27px; text-align:center">
                    &nbsp;快钱在线支付设置
                </td>
            </tr>
            <tr>
                <td height="26" bgcolor="#FFFFFF" style="width:30%">
                    <div align="right">
                        商户名：</div>
                </td>
                <td bgcolor="#FFFFFF" style="width:70%">
                    <asp:TextBox ID="tb99BillName" runat="server" Width="456px" MaxLength="100"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td height="26" bgcolor="#FFFFFF">
                    <div align="right">
                        商户号：</div>
                </td>
                <td bgcolor="#FFFFFF">
                    <asp:TextBox ID="tb99BillNumber" runat="server" MaxLength="100" Width="456px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td height="26" bgcolor="#FFFFFF">
                    <div align="right">
                        商户密钥：</div>
                </td>
                <td bgcolor="#FFFFFF">
                    <asp:TextBox ID="tb99BillKey" runat="server" Width="456px" MaxLength="100" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td height="26" bgcolor="#FFFFFF">
                    <div align="right">
                        支付手续费：</div>
                </td>
                <td bgcolor="#FFFFFF">
                    <asp:TextBox ID="tb99BillPayFormalitiesFeesScale" runat="server" MaxLength="5" Width="130px"></asp:TextBox>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td height="26" bgcolor="#FFFFFF">
                    <div align="right">
                        支付查询网关密钥：</div>
                </td>
                <td bgcolor="#FFFFFF">
                    <asp:TextBox ID="tb99BillQueryKey" runat="server" MaxLength="100" Width="456px" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td height="26" bgcolor="#FFFFFF">
                    <div align="right">
                        派款密钥：</div>
                </td>
                <td bgcolor="#FFFFFF">
                    <asp:TextBox ID="tb99BillOutKey" runat="server" MaxLength="100" Width="456px" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td height="26" bgcolor="#FFFFFF">
                    <div align="right">
                        派款手续费：</div>
                </td>
                <td bgcolor="#FFFFFF">
                    <asp:TextBox ID="tb99BillDistillFormalitiesFeesScale" runat="server" Width="130px"
                        MaxLength="5"></asp:TextBox>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td height="26" bgcolor="#FFFFFF">
                    <div align="right">
                        状态：</div>
                </td>
                <td bgcolor="#FFFFFF">
                    <asp:CheckBox ID="cb99BillON" runat="server" Text="启用" />
                    &nbsp;
                </td>
            </tr>
        </table>
        <table width="100%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#85BDE2"
            style="color: #000000">
            <tr>
                <td colspan="2" style="height: 27px; text-align:center">
                    &nbsp;财付通在线支付设置
                </td>
            </tr>
            <tr>
                <td height="26" bgcolor="#FFFFFF" style="width:30%">
                    <div align="right">
                        商户名：</div>
                </td>
                <td bgcolor="#FFFFFF" style="width:70%">
                    <asp:TextBox ID="tbTenpayName" runat="server" MaxLength="100" Width="456px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td height="26" bgcolor="#FFFFFF">
                    <div align="right">
                        商户号：</div>
                </td>
                <td bgcolor="#FFFFFF">
                    <asp:TextBox ID="tbTenpayNumber" runat="server" MaxLength="100" Width="456px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td height="26" bgcolor="#FFFFFF">
                    <div align="right">
                        商户密钥：</div>
                </td>
                <td bgcolor="#FFFFFF">
                    <asp:TextBox ID="tbTenpayKey" runat="server" MaxLength="100" TextMode="Password"
                        Width="456px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td height="26" bgcolor="#FFFFFF">
                    <div align="right">
                        支付手续费：</div>
                </td>
                <td bgcolor="#FFFFFF">
                    <asp:TextBox ID="tbTenpayPayFormalitiesFeesScale" runat="server" MaxLength="5" Width="130px"></asp:TextBox>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td height="26" bgcolor="#FFFFFF">
                    <div align="right">
                        派款密钥：</div>
                </td>
                <td bgcolor="#FFFFFF">
                    <asp:TextBox ID="tbTenpayOutKey" runat="server" MaxLength="5" Width="456px" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td height="26" bgcolor="#FFFFFF">
                    <div align="right">
                        派款手续费：</div>
                </td>
                <td bgcolor="#FFFFFF">
                    <asp:TextBox ID="tbTenpayDistillFormalitiesFeesScale" runat="server" MaxLength="5"
                        Width="130px"></asp:TextBox>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td height="26" bgcolor="#FFFFFF">
                    <div align="right">
                        状态：</div>
                </td>
                <td bgcolor="#FFFFFF">
                    <asp:CheckBox ID="cbTenpayON" runat="server" Text="启用" />
                </td>
            </tr>
        </table>
        <table width="100%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#85BDE2"
            style="color: #000000">
            <tr>
                <td colspan="2" style="height: 27px; text-align:center">
                    &nbsp;易宝在线支付设置
                </td>
            </tr>
            <tr>
                <td height="26" bgcolor="#FFFFFF" style="width:30%">
                    <div align="right">
                        商户名：</div>
                </td>
                <td bgcolor="#FFFFFF" style="width:70%">
                    <asp:TextBox ID="tbYeePayName" runat="server" MaxLength="100" Width="456px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td height="26" bgcolor="#FFFFFF">
                    <div align="right">
                        商户号：</div>
                </td>
                <td bgcolor="#FFFFFF">
                    <asp:TextBox ID="tbYeePayNumber" runat="server" Width="456px" MaxLength="100"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td height="26" bgcolor="#FFFFFF">
                    <div align="right">
                        商户密钥：</div>
                </td>
                <td bgcolor="#FFFFFF">
                    <asp:TextBox ID="tbYeePayKey" runat="server" MaxLength="100" TextMode="Password"
                        Width="456px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td height="26" bgcolor="#FFFFFF">
                    <div align="right">
                        支付手续费：</div>
                </td>
                <td bgcolor="#FFFFFF">
                    <asp:TextBox ID="tbYeePayFormalitiesFeesScale" runat="server" Width="130px" MaxLength="5"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td height="26" bgcolor="#FFFFFF">
                    <div align="right">
                        派款密钥：</div>
                </td>
                <td bgcolor="#FFFFFF">
                    <asp:TextBox ID="tbYeePayOutKey" runat="server" MaxLength="5" Width="456px" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td height="26" bgcolor="#FFFFFF">
                    <div align="right">
                        派款手续费：</div>
                </td>
                <td bgcolor="#FFFFFF">
                    <asp:TextBox ID="tbYeePayDistillFormalitiesFeesScale" runat="server" MaxLength="5"
                        Width="130px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td height="26" bgcolor="#FFFFFF">
                    <div align="right">
                        状态：</div>
                </td>
                <td bgcolor="#FFFFFF">
                    <asp:CheckBox ID="cbYeePayON" runat="server" Text="启用" />
                </td>
            </tr>
        </table>
        <table width="100%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#85BDE2"
            style="color: #000000">
            <tr>
                <td colspan="2" style="height: 27px; text-align:center">
                    &nbsp;神州行充值卡(007卡)支付设置
                </td>
            </tr>
            <tr>
                <td height="26" bgcolor="#FFFFFF" style="width:30%">
                    <div align="right">
                        银行帐号：</div>
                </td>
                <td bgcolor="#FFFFFF" style="width:70%">
                    <asp:TextBox ID="tb007Ka_MerAccount" runat="server" MaxLength="100" Width="456px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td height="26" bgcolor="#FFFFFF">
                    <div align="right">
                        商户编号：</div>
                </td>
                <td bgcolor="#FFFFFF">
                    <asp:TextBox ID="tb007Ka_MerchantId" runat="server" Width="456px" MaxLength="100"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td height="26" bgcolor="#FFFFFF">
                    <div align="right">
                        密匙：</div>
                </td>
                <td bgcolor="#FFFFFF">
                    <asp:TextBox ID="tb007Ka_Key" runat="server" MaxLength="100" TextMode="Password"
                        Width="456px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td height="26" bgcolor="#FFFFFF">
                    <div align="right">
                        手续费：</div>
                </td>
                <td bgcolor="#FFFFFF">
                    <asp:TextBox ID="tb007Ka_FormalitiesFees" runat="server" Width="130px" MaxLength="5"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td height="26" bgcolor="#FFFFFF">
                    <div align="right">
                        状态：</div>
                </td>
                <td bgcolor="#FFFFFF">
                    <asp:CheckBox ID="cb007KaON" runat="server" Text="启用" />
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center" style="height: 40px">
                    <ShoveWebUI:ShoveConfirmButton ID="btnOK" runat="server" Text="保存" AlertText="确认书写无误吗？"
                        OnClick="btnOK_Click" />
                </td>
            </tr>
        </table>
        <br />
    </div>
    </form>
</body>
</html>
