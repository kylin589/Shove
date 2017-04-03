<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="CPS_Administrator_Default" %>

<html>
<head id="Head1" runat="server">
    <title>深圳市久盛网络彩票系统管理控制面板</title>
    <link href="style/style01.css" rel="stylesheet" type="text/css">
    <link rel="shortcut icon" href="../../favicon.ico" />
    <style type="text/css">
        .navPoint
        {
            font-family: Webdings;
            font-size: 9pt;
            color: white;
            cursor: hand;
        }
        p
        {
            font-size: 9pt;
        }
        body
        {
            background-color: #24728f;
        }
    </style>

    <script language="javascript" type="text/javascript">
        function switchSysBar() {
            if (switchPoint.innerText == 3) {
                switchPoint.innerText = 4;
                document.all("frmTitle").style.display = "none";
            }
            else {
                switchPoint.innerText = 3;
                document.all("frmTitle").style.display = "";
            }
        } 
    </script>

    <script language="javascript" type="text/javascript">
        var g_blnCheckUnload = true;
        function RunOnBeforeUnload() {
            if (g_blnCheckUnload) {
                try {
                    window.event.returnValue = '您将会失去未保存的数据!';
                } catch (e) { }
            }

        }
    </script>

</head>
<body scroll="no" style="margin: 0px" onload="javascript:history.forward();" onbeforeunload="RunOnBeforeUnload()">
    <table border="0" cellspacing="0" cellpadding="0" width="100%" height="100%">
        <tr>
            <td nowrap height="105" colspan="3">
                <iframe id="topFrm" name="topFrm" style="height: 100%; visibility: inherit; width: 100%;
                    z-index: 3;" scrolling="no" frameborder="0" src="Top.aspx"></iframe>
            </td>
        </tr>
        <tr>
            <td id="frmTitle" name="frmTitle" nowrap valign="middle" align="center">
                <iframe id="BoardTitle" name="main" style="height: 100%; visibility: inherit; width: 188;
                    z-index: 2" scrolling="auto" frameborder="0" src="Left.aspx"></iframe>
                <td style="width: 10pt" background="images/pics/t2.gif">
                    <table cellspacing="0" cellpadding="0" border="0" height="100%">
                        <tr>
                            <td style="height: 100%" onclick="switchSysBar()">
                                <span class="navPoint" id="switchPoint" title="关闭/打开左栏">3</span>
                    </table>
                </td>
                <td style="width: 100%">
                    <iframe id="frmright" name="BoardList" style="height: 100%; visibility: inherit;
                        width: 100%; background: #FFF; z-index: 1" scrolling="auto" frameborder="0" src="Main.aspx">
                    </iframe>
        </tr>
    </table>
</body>
</html>
