<%@ Page Language="C#" %>

<%    
    //if 判断条件中,第一个条件是为了防止没有权限的用户删除文件,可以根据需要修改.   

    if (Request.QueryString["UD"] != null)
    {
        try
        {
            System.IO.File.Delete(Server.MapPath(Request.QueryString["filePath"].Trim())); Response.Write("1");
        }
        catch
        { Response.Write("0"); }
    }
    else Response.Write("0");
%>
