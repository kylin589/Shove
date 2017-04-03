<%@ page language="C#" autoeventwireup="true" inherits="Admin_AdvertisementsEdit, App_Web__1orsh4m" enableEventValidation="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ Register Assembly="Shove.Web.UI.4 For.NET 3.5" Namespace="Shove.Web.UI" TagPrefix="ShoveWebUI" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>无标题页</title>
    <link href="style/style01.css" rel="stylesheet" type="text/css" />
</head>
<body class="center">
    <form id="form1" runat="server">
    <div>
        <div class="title">
            编辑公告信息
        </div>
        <table cellspacing="0" cellpadding="0" width="100%" class="baseTab" border="0">
            <tr>
                <td style="width: 10%">
                    &nbsp;
                </td>
                <td align="left" style="width: 80%">
                    顺序：
                    <asp:TextBox ID="tbOrder" runat="server" MaxLength="10" Width="100px">1</asp:TextBox>&nbsp;
                    <asp:CheckBox ID="cbisShow" runat="server" Text="是否显示" Checked="True"></asp:CheckBox>
                </td>
                <td style="width: 10%">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td style="width: 10%">
                    &nbsp;
                </td>
                <td align="left">
                    标题：
                    <asp:TextBox ID="tbName" runat="server" Width="400px" MaxLength="50"></asp:TextBox>
                </td>
                <td style="width: 10%">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td style="width: 10%">
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
                <td style="width: 10%">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td style="width: 10%">
                    &nbsp;
                </td>
                <td align="left">
                    网址：
                    <asp:TextBox ID="tbUrl" runat="server" MaxLength="255" Width="400px"></asp:TextBox>
                </td>
                <td style="width: 10%">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td style="height: 50px" align="center" colspan="3">
                    <ShoveWebUI:ShoveConfirmButton ID="btnEdit" runat="server" Text="保存" OnClick="btnEdit_Click" />
                </td>
            </tr>
        </table>
        <br />
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
    <asp:HiddenField ID="HidID" runat="server" />
    <asp:HiddenField ID="HidLotteryID" runat="server" />
    <asp:HiddenField ID="HidTypeID" runat="server" />
    <asp:HiddenField ID="HidColor" runat="server" />

    <script type="text/javascript" language="javascript">
        try{
            var c = $("HidColor").value;
            if(c=="")
            {
                c="#000000";
            }
            $('highlight_color').value=c;
            $("SelColor").value = c;
            $("tbName").style.color = c;
            ColorPickerOK();
        }
        catch(e){}
    </script>

    </form>
</body>
</html>
