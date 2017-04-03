<%@ Page Language="C#" AutoEventWireup="true" CodeFile="WinNotice.aspx.cs" Inherits="Home_Room_WinNotice" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
  <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
    <script src="JavaScript/Marquee.js" type="text/javascript"></script>
    <style type="text/css">
    td{ display:block;  line-height:20px; margin-top:4px;height:20px; *height:24px; }
    body{ margin:0px;}
    </style>

</head>
<body>
    <form id="form1" runat="server">

                <div id="demo" style="overflow: hidden;">
                    <asp:DataList ID="dlWinNotice" RepeatColumns="2" runat="server" 
                        onselectedindexchanged="dlWinNotice_SelectedIndexChanged">
                        <ItemTemplate>
                            <asp:Label ID="lbWinNoticeDetail" runat="server" Text='<%# Eval("Content") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:DataList>
                </div>


    <script type="text/javascript" language="javascript">
        var sampleDiv = new scrollingAD("demo");
        sampleDiv.width = 432;
        sampleDiv.height = 26;
        sampleDiv.delay = 20;
        sampleDiv.bgColor = "#ffffdc";
        sampleDiv.pauseTime = 1000;
        sampleDiv.move();
    </script>

    </form>
</body>
</html>
