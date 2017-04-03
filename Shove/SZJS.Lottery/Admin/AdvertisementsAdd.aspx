<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdvertisementsAdd.aspx.cs"
    Inherits="Admin_AdvertisementsAdd" %>

<%@ Register Assembly="Shove.Web.UI.4 For.NET 3.5" Namespace="Shove.Web.UI" TagPrefix="ShoveWebUI" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
    <link href="style/style01.css" rel="stylesheet" type="text/css" />
</head>
<body class="center">
    <form id="form1" runat="server">
    <div>
        <div class="title">
            添加公告信息
        </div>
        <table cellspacing="0" cellpadding="0" width="100%" class="baseTab" border="0">
            <tr>
                <td style="width: 10%">
                    &nbsp;
                </td>
                <td style="text-align: left; padding-bottom: 15px; padding-top: 15px; width: 80%">
                    <asp:DropDownList ID="ddlType" runat="server">
                        <asp:ListItem Selected="True" Value="1">广告一</asp:ListItem>
                        <asp:ListItem Value="2">广告二</asp:ListItem>
                        <asp:ListItem Value="3">广告三</asp:ListItem>
                        <asp:ListItem Value="4">广告四</asp:ListItem>
                        <asp:ListItem Value="5">广告五</asp:ListItem>
                        <asp:ListItem Value="6">广告六</asp:ListItem>
                        <asp:ListItem Value="7">广告七</asp:ListItem>
                    </asp:DropDownList>
                    <asp:DropDownList ID="ddlLotteries" runat="server">
                    </asp:DropDownList>
                </td>
                <td style="width: 10%">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;
                </td>
                <td align="left">
                    顺序：
                    <asp:TextBox ID="tbOrder" runat="server" MaxLength="10" Width="100px">1</asp:TextBox>&nbsp;<asp:CheckBox
                        ID="cbisShow" runat="server" Text="是否显示" Checked="True"></asp:CheckBox></font>
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;
                </td>
                <td align="left">
                    标题：
                    <asp:TextBox ID="tbName" runat="server" Width="400px" MaxLength="50"></asp:TextBox>
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;
                </td>
                <td align="left">
                    颜色：

                    <script src="../JavaScript/template_colorpicker.js" type="text/javascript"></script>

                    <input type="text" value="#000000" name="highlight_color" id="highlight_color" size="7"
                        class="colorblue" onfocus="this.className='colorfocus';" onblur="this.className='colorblue';" />
                    <select name="highlight_colorselect" id="highlight_colorselect" onchange="selectoptioncolor(this)"
                        style="margin-bottom: 2px; width: 50px;">
                        <option style="background: #000000" value="#000000"></option>
                        <option style="background: #FF0000" value="#FF0000"></option>
                        <option style="background: #FF8000" value="#FF8000"></option>
                        <option style="background: #00FF00" value="#00FF00"></option>
                        <option style="background: #0080ff" value="#0080ff"></option>
                        <option style="background: #0000A0" value="#0000A0"></option>
                        <option style="background: #8000FF" value="#8000FF"></option>
                    </select>
                    <img class="img" title="选择颜色" src="style/images/colorpicker.gif" id="s_bgcolor" onclick="IsShowColorPanel(this);"
                        style="cursor: hand; border: 0px;" />
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;
                </td>
                <td align="left">
                    网址：
                    <asp:TextBox ID="tbUrl" runat="server" MaxLength="255" Width="400px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;
                </td>
                <td style="height: 50px" align="left">
                    <ShoveWebUI:ShoveConfirmButton ID="btnAdd" runat="server" Text="保存" OnClick="btnAdd_Click" />
                    <span style="margin-left: 100px;"></span>
                    <ShoveWebUI:ShoveConfirmButton ID="btnCancel" runat="server" Text="取消" OnClick="btnCancel_Click" />
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
        </table>
    </div>
    <div id="ColorPicker" title="ColorPicker" style="display: none; cursor: crosshair;
        border: black 1px solid; position: absolute; z-index: 10; background-color: aliceblue;
        width: 250px; background: #FFFFFF; padding: 4px; margin-left: 150px;" onmouseover="ShowColorPanel();">
        <table border="0" cellpadding="0" cellspacing="10" onmouseover="ShowColorPanel();">
            <tr>
                <td>
                    <table border="0" cellpadding="0" cellspacing="0" id="ColorTable" style="cursor: crosshair;"
                        onmouseover="ShowColorPanel();">

                        <script type="text/javascript">
						function wc(r, g, b, n){
							r = ((r * 16 + r) * 3 * (15 - n) + 0x80 * n) / 15;
							g = ((g * 16 + g) * 3 * (15 - n) + 0x80 * n) / 15;
							b = ((b * 16 + b) * 3 * (15 - n) + 0x80 * n) / 15;
							document.write('<td BGCOLOR=#' + ToHex(r) + ToHex(g) + ToHex(b) + ' title="#' + ToHex(r) + ToHex(g) + ToHex(b) + '" height=8 width=8 onmouseover="ColorTableMouseOver(this)" onmousedown="ColorTableMouseDown(this)"  onmouseout="ColorTableMouseOut(this)" ></TD>');
						}
						var cnum = new Array(1, 0, 0, 1, 1, 0, 0, 1, 0, 0, 1, 1, 0, 0, 1, 1, 0, 1, 1, 0, 0);
						for(i = 0; i < 16; i ++){
							document.write('<TR>');
							for(j = 0; j < 30; j ++){
								n1 = j % 5;
								n2 = Math.floor(j / 5) * 3;
								n3 = n2 + 3;
								wc((cnum[n3] * n1 + cnum[n2] * (5 - n1)),
								(cnum[n3 + 1] * n1 + cnum[n2 + 1] * (5 - n1)),
								(cnum[n3 + 2] * n1 + cnum[n2 + 2] * (5 - n1)), i);
							}
							document.writeln('</TR>');
						}
                        </script>

                    </table>
                </td>
                <td>
                    <table border="0" cellpadding="0" cellspacing="0" id="GrayTable" style="cursor: hand;
                        cursor: crosshair;" onmouseover="ShowColorPanel();">

                        <script type="text/javascript">
						for(i = 255; i >= 0; i -= 8.5)
						document.write('<tr BGCOLOR=#' + ToHex(i) + ToHex(i) + ToHex(i) + '><td TITLE=' + Math.floor(i * 16 / 17) + ' height=4 width=20 onmouseover="GrayTableMouseOver(this)" onmousedown="GrayTableMouseDown(this)"  onmouseout="GrayTableMouseOut(this)" ></td></tr>');
                        </script>

                    </table>
                </td>
            </tr>
        </table>
        <table border="0" cellpadding="0" cellspacing="10" onmouseover="ShowColorPanel();">
            <tr>
                <td rowspan="2">
                    选中色彩
                    <table border="1" cellpadding="0" cellspacing="0" height="30" id="ShowColor" width="40"
                        bgcolor="">
                        <tr>
                            <td>
                            </td>
                        </tr>
                    </table>
                </td>
                <td rowspan="2">
                    基色: <span id="RGB"></span>
                    <br />
                    亮度: <span id="GRAY">120</span><br />
                    代码:
                    <input id="SelColor" size="7" value="" border="0" name="SelColor" />
                </td>
                <td>
                    <input type="button" onclick="javascript:ColorPickerOK();" value="确定" id="ok" />
                </td>
            </tr>
            <tr>
                <td>
                    <input type="button" onclick="javascript:document.getElementById('highlight_color').value='';document.getElementById('s_bgcolor').style.background='#FFFFFF';HideColorPanel();"
                        value="取消" id="Button2" name="Button2" />
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
