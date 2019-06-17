<% 
Dim cnnSimple  ' ADO connection 
Dim rstSimple  ' ADO recordset 
Set cnnSimple = Server.CreateObject("ADODB.Connection") 
 
' DSNLess 
cnnSimple.Open ("DSN=MySQL32u;SERVER=localhost;PORT=3306;DATABASE=autospin_db; USER=autospin_login;PASSWORD=fjf74GdJs6wb4sH;OPTION=3") 
 
Set rstSimple = cnnSimple.Execute("select * from ads") 
response.write "test connection"
%>