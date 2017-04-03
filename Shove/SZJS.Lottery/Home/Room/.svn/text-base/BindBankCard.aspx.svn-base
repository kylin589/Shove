<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BindBankCard.aspx.cs" Inherits="Home_Room_BindBankCard" %>

<%@ Register Assembly="Shove.Web.UI.4 For.NET 3.5" Namespace="Shove.Web.UI" TagPrefix="ShoveWebUI" %>
<%@ Register Src="../../UserControls/Head.ascx" TagName="Head" TagPrefix="uc1" %>
<%@ Register Src="UserControls/UserMyIcaile.ascx" TagName="UserMyIcaile" TagPrefix="uc2" %>
<%@ Register Src="UserControls/WebFoot.ascx" TagName="WebFoot" TagPrefix="uc3" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>购彩充值提款银行卡绑定-我的资料-用户中心-<%=_Site.Name %>－买彩票，就上<%=_Site.Name %>
        ！</title>
    <meta name="description" content="<%=_Site.Name %>彩票网<%=_Site.Url %>是一家服务于中国彩民的互联网彩票合买代购交易平台，涉及中国彩票彩种最全的网站，包含双色球,大乐透,七星彩,3d,足彩等众多彩种的实时开奖信息,图表走势、分析预测以及开奖信息等!" />
    <meta name="keywords" content="双色球合买,体育彩票,福利彩票,双色球开奖信息." />
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
    <link href="Style/common.css" rel="stylesheet" type="text/css" />
    <link href="Style/StyleSheet.css" rel="stylesheet" type="text/css" />
    <link href="Style/home.css" rel="stylesheet" type="text/css" />
    <link rel="shortcut icon" href="../../favicon.ico" />

    <script src="../../JavaScript/jquery-1.4.js" type="text/javascript"></script>

</head>
<body>
    <form id="form1" runat="server">
    <asp:HiddenField ID="hfIsBindFlag" runat="server" Value="true" />
    <asp:HiddenField ID="hfBankInProvince" runat="server" Value="true" />
    <asp:HiddenField ID="hfBankInCity" runat="server" Value="true" />
    <asp:HiddenField ID="hfBankTypeName" runat="server" Value="true" />
    <asp:HiddenField ID="hfBankName" runat="server" Value="true" />
    <uc1:Head ID="Head2" runat="server" />
    <div class="wrap">
        <uc2:UserMyIcaile ID="UserMyIcaile1" runat="server" />
        <div class="rights">
            <div class="myself">
                <div class="bangding">
                    <p>
                        尊敬的会员：<span class="red">
                            <%=_User.Name %></span>
                    </p>
                </div>
            </div>
            <div class="jilu">
                <table width="100%" border="0" cellspacing="0" align="center" cellpadding="0">
                    <tr bgcolor="#C0DBF9">
                        <td align="right" bgcolor="#FFFFFF">
                            银行卡状态：
                        </td>
                        <td align="left" bgcolor="#FFFFFF" style="padding-left: 10px;">
                            <asp:Label ID="labBindState" Text="" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr bgcolor="#C0DBF9">
                        <td width="18%" height="30" align="right" bgcolor="#FFFFFF" class="black12">
                            用户名：<span class="red12"></span>
                        </td>
                        <td width="82%" align="left" bgcolor="#FFFFFF" class="black12" style="padding-left: 10px;">
                            <asp:Label ID="labName" runat="server" Text=""></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" valign="top">
                            开户银行：
                        </td>
                        <td>
                            <div style="margin-bottom: 4; height: 30px;">
                                <select id="selProvince" name="selProvince" style="width: 80px;" onchange="selProvince_onchange(this)">
                                    <option></option>
                                </select>
                                <span style="color: Red;">* </span>(省/直辖)&nbsp;&nbsp;
                                <select id="selCity" name="selCity" style="width: 80px;" onchange="selCity_onchange(this)">
                                    <option></option>
                                </select>
                                <span style="color: Red;">* </span>(市)&nbsp;&nbsp;
                                <select id="selBankTypeName" name="selBankTypeName" style="width: 153px" onchange="selBankTypeName_onchange(this)">
                                    <option></option>
                                </select>
                                <span c style="color: Red;">* </span>(银行)
                            </div>
                            <div style="margin-bottom: 4; height: 30px;">
                                <select id="selBankName" name="selBankName" style="width: 250px;">
                                    <option></option>
                                </select>
                                <span class="blue12" style="color: Red;">* </span>(支行名称)
                            </div>
                            <span class="blue12" style="color: Red;">提示:请确认选择了正确的银行卡开户银行地址和支行名称,否则提款将会拒绝受理.
                            </span>
                        </td>
                    </tr>
                    <tr bgcolor="#C0DBF9">
                        <td height="30" align="right" bgcolor="#FFFFFF">
                            银行卡号码：
                        </td>
                        <td align="left" bgcolor="#FFFFFF" style="padding-left: 10px;">
                            <asp:TextBox ID="tbBankCardNumber" runat="server" MaxLength="50" Width="250px"></asp:TextBox>
                            <asp:Label ID="lbBankCardNumber" runat="server" Text="" Visible="false"></asp:Label>
                            <span class="blue12" style="color: Red;">&nbsp;&nbsp;&nbsp;* </span>
                        </td>
                    </tr>
                    <tr bgcolor="#C0DBF9">
                        <td height="30" align="right" bgcolor="#FFFFFF" class="black12">
                            &nbsp;
                        </td>
                        <td align="left" bgcolor="#FFFFFF" class="black12" style="padding-left: 10px;">
                            <span class="blue12">&nbsp;提示：工商银行、招商银行、建设银行卡，提款24小时内到帐；其它银行3~5个工作日到帐&nbsp; </span>
                        </td>
                    </tr>
                    <tr bgcolor="#C0DBF9">
                        <td height="30" align="right" bgcolor="#FFFFFF" class="black12">
                            确认银行卡号码：
                        </td>
                        <td align="left" bgcolor="#FFFFFF" class="black12" style="padding-left: 10px;">
                            <asp:TextBox ID="tbBankCardNumberOK" runat="server" MaxLength="50" onpaste="return false"
                                Width="250px"></asp:TextBox>
                            <asp:Label ID="lbBankCardNumberOK" runat="server" Width="120" Text="" Visible="false"></asp:Label>
                        </td>
                    </tr>
                    <tr bgcolor="#C0DBF9">
                        <td height="30" align="right" bgcolor="#FFFFFF" class="black12">
                            持卡人真实姓名：
                        </td>
                        <td align="left" bgcolor="#FFFFFF" class="black12" style="padding-left: 10px;">
                            <asp:TextBox ID="tbBankCardRealityName" runat="server" MaxLength="50" Width="122px"></asp:TextBox>
                            <asp:Label ID="lbBankCardRealityName" runat="server" Text="" Visible="false"></asp:Label>
                            <span class="blue12" style="color: Red;">&nbsp;&nbsp;* </span>
                        </td>
                    </tr>
                    <div id="tbNewQF" runat="server" visible="false">
                        <tr width="17%" height="30" align="right" class="black12">
                            <td width="17%" height="30" align="right" class="black12">
                                安全保护问题
                            </td>
                            <td align="left" class="black12" style="padding-left: 10px;">
                                <asp:DropDownList ID="ddlQuestion" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlQuestion_SelectedIndexChanged">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr id="trMQ" runat="server" visible="false">
                            <td width="17%" height="30" align="right" class="black12">
                                自定义问题：
                            </td>
                            <td align="left" bgcolor="#FFFFFF" style="padding-left: 10px;">
                                <asp:TextBox ID="tbMyQuestion" runat="server" MaxLength="90" Width="550"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td width="17%" height="30" align="right">
                                答案：
                            </td>
                            <td align="left" bgcolor="#FFFFFF" style="padding-left: 10px;">
                                <asp:TextBox ID="tbAnswer" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                    </div>
                    <tr bgcolor="#C0DBF9">
                        <td height="20" colspan="2" align="right" bgcolor="#FFFFFF">
                            <div id="hr">
                            </div>
                        </td>
                    </tr>
                    <tr bgcolor="#C0DBF9">
                        <td height="30" align="right" bgcolor="#FFFFFF" class="black12">
                            &nbsp;
                        </td>
                        <td align="left" bgcolor="#FFFFFF" class="red12" style="padding-left: 10px;">
                            （为了您的账户安全，请您输入以下信息进行确认）
                        </td>
                    </tr>
                    <tr bgcolor="#C0DBF9">
                        <td height="30" align="right" bgcolor="#FFFFFF" class="black12">
                            核对真实姓名：
                        </td>
                        <td align="left" bgcolor="#FFFFFF" class="black12" style="padding-left: 10px;">
                            <asp:TextBox ID="tbRealityName" runat="server" Text=""></asp:TextBox>
                        </td>
                    </tr>
                    <div id="divAnswer" runat="server" visible="false">
                        <tr bgcolor="#C0DBF9">
                            <td height="30" align="right" bgcolor="#FFFFFF" class="black12">
                                安全保护问题：
                            </td>
                            <td align="left" bgcolor="#FFFFFF" class="black12" style="padding-left: 10px;">
                                <asp:Label ID="lbQuestion" runat="server"></asp:Label>
                                &nbsp;&nbsp;<span class="blue12"><a href="SafeSet.aspx?FromUrl='BindBankCard.aspx'">
                                    <asp:Label ID="lbQuestionInfo" runat="server"></asp:Label>
                                </a><span class="blue12">
                            </td>
                        </tr>
                        <tr bgcolor="#C0DBF9">
                            <td height="30" align="right" bgcolor="#FFFFFF">
                                答案：
                            </td>
                            <td align="left" bgcolor="#FFFFFF" class="black12" style="padding-left: 10px;">
                                <asp:TextBox ID="tbMyA" runat="server"></asp:TextBox>
                                <span class="red12">*</span>
                            </td>
                        </tr>
                    </div>
                    <tr bgcolor="#C0DBF9">
                        <td height="20" colspan="2" align="right" bgcolor="#FFFFFF" class="black12">
                            <div id="hr">
                            </div>
                        </td>
                    </tr>
                    <tr bgcolor="#C0DBF9">
                        <td height="30" align="right" bgcolor="#FFFFFF">
                            &nbsp;
                        </td>
                        <td align="left" bgcolor="#FFFFFF" class="black12" style="padding: 10px;">
                            <label>
                                <ShoveWebUI:ShoveConfirmButton ID="ShoveConfirmButton1" runat="server" AlertText="确信输入的银行卡无误，并立即绑定吗？"
                                    Text="确定绑定" OnClick="btnOK_Click" Style="cursor: pointer;" />
                            </label>
                            &nbsp;&nbsp;&nbsp;<span style="color: Red;">提示：带*号标记的项必输入正确填写，否则提款将被拒绝。 </span>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
    <uc3:WebFoot ID="WebFoot1" runat="server" />
    <asp:HiddenField ID="HidBankName" runat="server" />
    <asp:HiddenField ID="HidBankName1" runat="server" />
    </form>
</body>
</html>

<script type="text/javascript" language="javascript">

    function OnInit()
    {
        //获取已经绑定的资料
        var curBankInProvince = document.getElementById("hfBankInProvince").value;
        var curBankInCity = document.getElementById("hfBankInCity").value;
        var curBankTypeName = document.getElementById("hfBankTypeName").value;
        var curBankName = document.getElementById("hfBankName").value;
        
        
        //绑定省份数据列表
        var selProvince = document.getElementById("selProvince");
        while (selProvince.options.length > 0)
        {
            selProvince.options[0] = null;
        }
        var listStr = Home_Room_BindBankCard.GetProvinceList().value;
        var listNames = listStr.split("|");
        for (var i = 0; i < listNames.length; i++)
        {
            selProvince.options[selProvince.options.length] = new Option(listNames[i], listNames[i]);
        }
        selProvince.value = curBankInProvince;
        
        //绑定银行类名称列表
        var selBankTypeName = document.getElementById("selBankTypeName");
        while (selBankTypeName.options.length > 0)
        {
            selBankTypeName.options[0] = null;
        }
        var listBankNameStr = Home_Room_BindBankCard.GetBankTypeList().value;
        var listBankNames = listBankNameStr.split("|");

        for (var i = 0; i < listBankNames.length; i++)
        {
            selBankTypeName.options[selBankTypeName.options.length] = new Option(listBankNames[i], listBankNames[i]);
        }
        selBankTypeName.value = curBankTypeName;
        
        //绑定市名
        selProvince_onchange(selProvince);
        var selCity = document.getElementById("selCity");
        selCity.value = curBankInCity;

        //显示支行
        GetBankBranchNameList(curBankInCity, curBankTypeName);
        var selBankName = document.getElementById("selBankName");
        selBankName.value=curBankName

       

    }

    function selProvince_onchange(obj)
    {
        var selProvince = obj;
        var selectProvinceName = selProvince.value;
        //alert(selProvince.value);
        //清空城市
        var selCity = document.getElementById("selCity");
        while (selCity.options.length > 0)
        {
            selCity.options[0] = null;
        }

        var listStr = Home_Room_BindBankCard.GetCityList(selectProvinceName).value;
        //alert(listStr);
        var listNames = listStr.split("|");
        for (var i = 0; i < listNames.length; i++)
        {
            selCity.options[selCity.options.length] = new Option(listNames[i], listNames[i]);
        }
        selCity.value = "";
    }


    function selCity_onchange(objSender)
    {

        var selCityObj = document.getElementById("selCity");
        var selectCityName = selCityObj.value;

        var selBankTypeNameObj = document.getElementById("selBankTypeName");
        var selectBankName = selBankTypeNameObj.value;

        GetBankBranchNameList(selectCityName, selectBankName);
    }
    function selBankTypeName_onchange(objSender)
    {

        var selCityObj = document.getElementById("selCity");
        var selectCityName = selCityObj.value;

        var selBankTypeNameObj = document.getElementById("selBankTypeName");
        var selectBankTypeName = selBankTypeNameObj.value;

        GetBankBranchNameList(selectCityName, selectBankTypeName);
    }

    function GetBankBranchNameList(cityName, bankTypeName)
    {

        //清空银行下拉表
        var selBankName = document.getElementById("selBankName");
        while (selBankName.options.length > 0)
        {
            selBankName.options[0] = null;
        }


        var listStr = Home_Room_BindBankCard.GetBankBranchNameList(cityName, bankTypeName).value;
        //alert(listStr);
        var listNames = listStr.split("|");
        for (var i = 0; i < listNames.length; i++)
        {
            if (listNames[i] != "")
            {
                //支行下拉框
                selBankName.options[selBankName.options.length] = new Option(listNames[i], listNames[i])
            }

        }
        selBankName.value = "";
    }

    

    OnInit();
</script>

