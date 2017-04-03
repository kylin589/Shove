<%@ page language="C#" autoeventwireup="true" inherits="Home_Room_DistillFee, App_Web_y4qeesyo" enableEventValidation="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <link href="Style/common.css" rel="stylesheet" type="text/css" />
    <link href="Style/StyleSheet.css" rel="stylesheet" type="text/css" />

    <script language="javascript" type="text/javascript">
        function Show() {
            parent.document.getElementById("tb_remind").style.display = "";
            parent.document.getElementById("tb_times").style.display = "";
            parent.document.getElementById("td_Tips").style.display = "";
            parent.document.getElementById("tb_mains").style.backgroundColor = "#DDDDDD";
        }
    </script>

    <style type="text/css">
        .style1
        {
            height: 82px;
            
        }
        table tr td{ border:solid 1px #cccccc;}
    </style>

</head>
<body onload="Show();">
    <form id="form1" runat="server">
    <table width="100%" border="0" cellspacing="1" cellpadding="0" bgcolor="#CCCCCC">
        <tr>
            <td width="10%" bgcolor="#ffede3" class="black12" style="padding: 3px 5px 3px 10px;
                height: 28px">
                银行名称
            </td>
            <td width="20%" bgcolor="#ffede3" class="black12" style="padding: 3px 5px 3px 10px;
                height: 28px">
                到账时间
            </td>
            <td width="70%" bgcolor="#ffede3" class="black12" style="padding: 3px 5px 3px 10px;
                height: 28px">
                提款手续费(此手续费实为银行收取，非深圳地区为异地)
            </td>
        </tr>
        <tr>
            <td bgcolor="#FFFFFF" class="black12" style="padding: 3px 5px 3px 10px;">
                工商银行
            </td>
            <td bgcolor="#FFFFFF" class="black12" style="padding: 3px 5px 3px 10px;">
                申请提款+24小时内到帐（银行系统正常）
            </td>
            <td bgcolor="#FFFFFF" class="black12" style="padding: 3px 5px 3px 10px;">
                同城同行：免手续费。<br />
                同城跨行：单笔1%收取，最高50元。<br />
                异地同行：按0.5%收取，最高25元。<br />
                异地跨行：按0.5%收取，最高25元。</td>
        </tr>
        <tr>
            <td bgcolor="#FFFFFF" class="black12" style="padding: 3px 5px 3px 10px;">
                农业银行
            </td>
            <td bgcolor="#FFFFFF" class="black12" style="padding: 3px 5px 3px 10px;">
                申请提款+24小时内到帐（银行系统正常）
            </td>
            <td bgcolor="#FFFFFF" class="black12" style="padding: 3px 5px 3px 10px;">
                同城同行：免手续费。<br />
                同城跨行：5000元以下，每笔2元；5000-50000（含）每笔3元；50000-100000（含）每笔5元；100000以上手续费8元。<br />
                异地同行：按5‰收取，最低1元，最高50元。<br />
                异地跨行：按5‰收取，最低5元，最高50元。</td>
        </tr>
        <tr>
            <td bgcolor="#FFFFFF" class="black12" style="padding: 3px 5px 3px 10px;">
                招商银行
            </td>
            <td bgcolor="#FFFFFF" class="black12" style="padding: 3px 5px 3px 10px;">
                申请提款+24小时内到帐（银行系统正常）
            </td>
            <td bgcolor="#FFFFFF" class="black12" style="padding: 3px 5px 3px 10px;">
                同城同行：免手续费。<br />
                同城跨行：普通的每笔2元；快速的每笔3元；实时的每笔0.6%，最低5元，最高50元。<br />
                异地同行：按0.2%收取，最低2元，最高20元。<br />
                异地跨行：普通的按0.25%收取，最低2元，最高25元；快速的按0.5%收取，最低2元，最高25元；实时的按0.25%收取，最低2元，最高25元。</td>
        </tr>
        <tr>
            <td bgcolor="#FFFFFF" class="black12" style="padding: 3px 5px 3px 10px;">
                建设银行
            </td>
            <td bgcolor="#FFFFFF" class="black12" style="padding: 3px 5px 3px 10px;">
                申请提款+24小时内到帐（银行系统正常）
            </td>
            <td bgcolor="#FFFFFF" class="black12" style="padding: 3px 5px 3px 10px;">
                同城同行：免手续费。<br />
                同城跨行：2元每笔。<br />
                异地同行：按0.5%收取，最低2元，最高50元。<br />
                异地跨行：按1%收取，最低2元，最高50元。</td>
        </tr>
        <tr>
            <td bgcolor="#FFFFFF" class="style1" style="padding: 3px 5px 3px 10px;">
                中国银行
            </td>
            <td bgcolor="#FFFFFF" class="style1" style="padding: 3px 5px 3px 10px;">
                申请提款+24小时内到帐（银行系统正常）
            </td>
            <td bgcolor="#FFFFFF" class="style1" style="padding: 3px 5px 3px 10px;">
                同城同行：免手续费。<br />
                同城跨行：10000以下每笔5.5元；10000-100000（含）每笔10.5元；100000-500000（含）每笔15.5元；500000-1000000（含）每笔20.5
                元；1000000以上按每笔万分之二收取。<br />
                异地同行：按0.6‰收取，最低1元，最高12元。<br />
                异地跨行：10000以下每笔5.5元；10000-100000（含）每笔10.5元；100000-500000（含）每笔15.5元；500000-1000000（含）每笔20.5
                元；1000000以上按每笔万分之二收取。</td>
        </tr>
        <tr>
            <td bgcolor="#FFFFFF" class="black12" style="padding: 3px 5px 3px 10px;">
                中信银行
            </td>
            <td bgcolor="#FFFFFF" class="black12" style="padding: 3px 5px 3px 10px;">
                申请提款+24小时内到帐（银行系统正常）
            </td>
            <td bgcolor="#FFFFFF" class="black12" style="padding: 3px 5px 3px 10px;">
                同城同行：免手续费。<br />
                网银互联：免手续费。<br />
                同城跨行：2元每笔。<br />
                异地同行：按2‰收取，最低1元，最高10元。<br />
                异地跨行：按5‰收取，最低1元，最高25元。</td>
        </tr>
    </table>
    <br />
    </form>
</body>
</html>
