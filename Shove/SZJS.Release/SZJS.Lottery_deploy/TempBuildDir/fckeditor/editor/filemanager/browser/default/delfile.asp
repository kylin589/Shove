<%
Response.Clear()
Response.Charset = "utf-8"

dim oFSO, fname

Set oFSO = Server.CreateObject( "Scripting.FileSystemObject" )

fname = trim(request.QueryString("fn"))

if fname<>"" then
	fname = server.MapPath(fname)
	if oFSO.FileExists(fname) then
		oFSO.DeleteFile(fname)
		Response.Write("{success:true}")
	else
		Response.Write("{success:false,msg:"""&escape("指定的文件已经删除！")&"""}")
	end if
else
	Response.Write("{success:false,msg:"""&escape("空文件名错误！")&"""}")
end if
%>