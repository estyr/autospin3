<!--#include file="web_Services/md5.asp"--><%
    
    ProjectName = "AutoSpin_Web_Site" 
    strConn =  "DSN=MySQLu; SERVER=109.207.77.207;PORT=3306; DATABASE=autospin_db; UID=autospin_login;PASSWORD=fjf74GdJs6wb4sH;"
	Set objConn = Server.CreateObject("ADODB.Connection")
	Set objRs = Server.CreateObject("ADODB.Recordset")
	Set objRsF = Server.CreateObject("ADODB.Recordset")
	objConn.Open strConn

'########  חיבור יוזר באמצעות קוקי ########
'############################################
Session("Session_IDUser") = ""
If Session("Session_IDUser") & "" = "" Then Session("Session_IDUser") = 0
If Not Session("Session_UserWebLoggedIn") = true Or Not Clng(Session("Session_IDUser")) > 0 Then
    'Response.Write "Not conected with Session" & "<br>"
    'Response.Write md5("MUSMD5" & Trim(Request.Cookies("cookie_WebLogin")("IDUser"))) & " - " & Trim(Request.Cookies("cookie_WebLogin")("AdditionalData")) & "<br>"

    If md5("dkglDH4gj36SH3gsHs542MD5" & Trim(Request.Cookies("cookie_WebLogin")("IDUser"))) = Trim(Request.Cookies("cookie_WebLogin")("AdditionalData")) Then
        'Response.Write "Sucses to conect by cookie" & "<br>"
            
        objRsF.Open "SELECT * FROM Users where IDUser = " & Clng(Trim(Request.Cookies("cookie_WebLogin")("IDUser"))) & " Limit 1", objConn, 0, 1
        If Not objRsF.EOF Then

            Session("Session_Name") = objRsF("userFullName")
            Session("Session_IDUser") = objRsF("IDUser")
            Session("Session_UserWebLoggedIn") = true

            If objRsF("ImageFile") & "" = "" Then
                Session("Session_UserImage") = "images/Profile_photo.png"
            Else
                Session("Session_UserImage") = "https://autospin.co.il/files/users/" & objRsF("ImageFile")
            End if

        Else
            Session("Session_IDUser") = ""
            Session("Session_UserWebLoggedIn") = false
            Response.cookies("cookie_WebLogin")("IDUser") = ""
            Response.cookies("cookie_WebLogin")("AdditionalData") = ""
            Response.cookies("cookie_WebLogin")("State") = "false"
            Response.Cookies("cookie_WebLogin").Expires = DateAdd("d",31,Date)
        End if
        objRsF.Close

    Else

        'Response.Write "Not Sucses to conect by cookie" & "<br>"

        Session("Session_IDUser") = ""
        Session("Session_UserWebLoggedIn") = false
        Response.cookies("cookie_WebLogin")("IDUser") = ""
        Response.cookies("cookie_WebLogin")("AdditionalData") = ""
        Response.cookies("cookie_WebLogin")("State") = "false"
        Response.Cookies("cookie_WebLogin").Expires = DateAdd("d",31,Date)

    End if
End if

'//-- התנתקות
If Request.QueryString("LogOut") = "true" Then

    Session("Session_IDUser") = ""
    Session("Session_UserWebLoggedIn") = false
    Response.cookies("cookie_WebLogin")("IDUser") = ""
    Response.cookies("cookie_WebLogin")("AdditionalData") = ""
    Response.cookies("cookie_WebLogin")("State") = "false"
    Response.Cookies("cookie_WebLogin").Expires = DateAdd("d",31,Date)
    Response.Redirect "default.asp"

End if


'########  בדיקת פרמטרים דרך URL ########
'##########################################

If Not cstr(request.QueryString) = "" Then CheckSql(cstr(request.QueryString))
Function CheckSql(StrQueryString)
    If Not IsDefined(StrQueryString) = 0 Then response.Redirect "default.asp"
End Function

   
Function FixUrl(strTemp)
	If Left(strTemp,7) = "http://" Then
        FixUrl = strTemp
    Else
        FixUrl = "http://" & strTemp
    End if
End Function
    
Function ForamtInsertText(strTemp)
	strTemp = Replace(strTemp, "'", "''")
	strTemp = Replace(strTemp, "^^^", "")
	ForamtInsertText = strTemp
End Function

function GetMonthName(Num)
    If Len(Num) < 1 Then Num = 0
    Select Case Cint(Num)
        Case 1 str = "ינואר"
        Case 2 str = "פברואר"
        Case 3 str = "מרץ"
        Case 4 str = "אפריל"
        Case 5 str = "מאי"
        Case 6 str = "יוני"
        Case 7 str = "יולי"
        Case 8 str = "אוגוסט"
        Case 9 str = "ספטמבר"
        Case 10 str = "אוקטובר"
        Case 11 str = "נובמבר"
        Case 12 str = "דצמבר"
    End Select
    GetMonthName = str
End function

Function StrNow()
    Randomize
    MyNewRandomNum = Int(Rnd * 1000)+1
    
    Str = Now() & ""
    Str = Replace(Str, "/","")
    Str = Replace(Str, " ","")
    Str = Replace(Str, ":","")
    Str = Str & "_" & MyNewRandomNum
    StrNow = Str
End Function

Function IsDefined(strTemp)
	strTemp = Lcase(strTemp)
	Authoriz = 0
	Authoriz = Authoriz + InStr(strTemp, ";")
	Authoriz = Authoriz + InStr(strTemp, "'")
	Authoriz = Authoriz + InStr(strTemp, chr(34))
	Authoriz = Authoriz + InStr(strTemp, "*")
	'Authoriz = Authoriz + InStr(strTemp, "+")
	Authoriz = Authoriz + InStr(strTemp, "from")
	Authoriz = Authoriz + InStr(strTemp, "delete")
	Authoriz = Authoriz + InStr(strTemp, "update")
	Authoriz = Authoriz + InStr(strTemp, "insert")
	Authoriz = Authoriz + InStr(strTemp, "set")
	Authoriz = Authoriz + InStr(strTemp, "where")
	Authoriz = Authoriz + InStr(strTemp, "select")
	Authoriz = Authoriz + InStr(strTemp, "drop")
	Authoriz = Authoriz + InStr(strTemp, "truncate")
	Authoriz = Authoriz + InStr(strTemp, "alter")
	Authoriz = Authoriz + InStr(strTemp, "create")
	Authoriz = Authoriz + InStr(strTemp, "group by")
	Authoriz = Authoriz + InStr(strTemp, "between")
	Authoriz = Authoriz + InStr(strTemp, "having")
	Authoriz = Authoriz + InStr(strTemp, "convert")
    IsDefined = Authoriz
End Function

Function Sp(x)
	Response.Write("<div style=""margin-top:" & x & "px;""></div>")
	'Response.Write("<table border=""0"" width=""20"" height=""" & x & """ cellspacing=""0"" 	cellpadding=""0""><tr><td></td></tr></table>")
End Function

Function FormatSigns(strTemp)
    If Not strTemp = "" Then
	    strTemp = Replace(strTemp, chr(10), "")
	    strTemp = Replace(strTemp, chr(13), "")

	    strTemp = Replace(strTemp, "!", "")
	    strTemp = Replace(strTemp, "@", "")
	    strTemp = Replace(strTemp, "#", "")
	    strTemp = Replace(strTemp, "$", "")
	    strTemp = Replace(strTemp, "%", "")
	    strTemp = Replace(strTemp, "^", "")
	    strTemp = Replace(strTemp, "&", "")
	    strTemp = Replace(strTemp, "*", "")
	    strTemp = Replace(strTemp, "(", "")
	    strTemp = Replace(strTemp, ")", "")
	    strTemp = Replace(strTemp, "-", "")
	    strTemp = Replace(strTemp, "_", "")
	    strTemp = Replace(strTemp, "(", "")
	    strTemp = Replace(strTemp, ")", "")
	    strTemp = Replace(strTemp, "=", "")
	    strTemp = Replace(strTemp, "+", "")
	    strTemp = Replace(strTemp, "{", "")
	    strTemp = Replace(strTemp, "}", "")
	    strTemp = Replace(strTemp, "[", "")
	    strTemp = Replace(strTemp, "]", "")
	    strTemp = Replace(strTemp, "\", "")
	    strTemp = Replace(strTemp, "|", "")
	    strTemp = Replace(strTemp, ";", "")
	    strTemp = Replace(strTemp, ":", "")
	    strTemp = Replace(strTemp, "'", "")
	    strTemp = Replace(strTemp, """", "")
	    strTemp = Replace(strTemp, ",", "")
	    strTemp = Replace(strTemp, ">", "")
	    strTemp = Replace(strTemp, ",", "")
	    strTemp = Replace(strTemp, ">", "")
	    strTemp = Replace(strTemp, "/", "")
	    strTemp = Replace(strTemp, "?", "")
	    strTemp = Replace(strTemp, ".", "")
	    strTemp = Replace(strTemp, "~", "")
	    strTemp = Replace(strTemp, "`", "")
	    strTemp = Replace(strTemp, "'", "")
	    strTemp = Replace(strTemp, "׳", "")
	    
	End if
	FormatSigns = strTemp
End Function

Function GetHourFromDate(datesource)
    GetHourFromDate = datepart("h",datesource) & ":" & datepart("n",datesource)
End Function

Function FormatStr(strTemp)

	strTemp = Replace(strTemp, "<p>", "")
	strTemp = Replace(strTemp, "</p>", "")
	strTemp = Replace(strTemp, "<P>", "")
	strTemp = Replace(strTemp, "</P>", "")
	strTemp = Replace(strTemp, chr(13), "")
	strTemp = Replace(strTemp, chr(10), "<br>")
	strTemp = Replace(strTemp, "<BR>", "<br>")
	strTemp = Replace(strTemp, "</li><br><li>", "</li><li>")
	strTemp = Replace(strTemp, "</li><br><br><li>", "</li><li>")
	strTemp = Replace(strTemp, "<br></li>", "</li>")
	strTemp = Replace(strTemp, "<br><br><br>", "<br>")
	strTemp = Replace(strTemp, "<br><br><br><br>", "<br>")
	strTemp = Replace(strTemp, "<br><br><br><br><br>", "<br>")
	strTemp = Replace(strTemp, "<br><br><br><br><br><br>", "<br>")
	strTemp = Replace(strTemp, "<br><br><br><br><br><br><br>", "<br>")
	strTemp = Replace(strTemp, chr(34), "'")
	strTemp = Replace(strTemp, "(", "[")
	strTemp = Replace(strTemp, ")", "]")
	
	strTemp = Replace(strTemp, "##H1##", "<h1>")
	strTemp = Replace(strTemp, "##/H1##", "</h1>")
	strTemp = Replace(strTemp, "##H2##", "<h2>")
	strTemp = Replace(strTemp, "##/H2##", "</h2>")
	strTemp = Replace(strTemp, "##H3##", "<h3>")
	strTemp = Replace(strTemp, "##/H3##", "</h3>")
	strTemp = Replace(strTemp, "##H4##", "<h4>")
	strTemp = Replace(strTemp, "##/H4##", "</h4>")

    strTemp = Replace(strTemp, "face=""Arial""", "")
    strTemp = Replace(strTemp, "</font>", "")
    strTemp = Replace(strTemp, "font-size:", "bla")
    strTemp = Replace(strTemp, "xxXXx", "")
    strTemp = Replace(strTemp, "xxXXx", "")

	
	FormatStr = strTemp
	
End Function

Function Clearsigns(strTemp)

	strTemp = Replace(strTemp, " ", "")
	strTemp = Replace(strTemp, "-", "")
	strTemp = Replace(strTemp, "{", "")
	strTemp = Replace(strTemp, "}", "")
	strTemp = Replace(strTemp, "[", "")
	strTemp = Replace(strTemp, "]", "")
	strTemp = Replace(strTemp, "\", "")
	strTemp = Replace(strTemp, "/", "")
	strTemp = Replace(strTemp, "!", "")
	strTemp = Replace(strTemp, "@", "")
	strTemp = Replace(strTemp, "#", "")
	strTemp = Replace(strTemp, "$", "")
	strTemp = Replace(strTemp, "%", "")
	strTemp = Replace(strTemp, "^", "")
	strTemp = Replace(strTemp, "&", "")
	strTemp = Replace(strTemp, "*", "")
	strTemp = Replace(strTemp, "(", "")
	strTemp = Replace(strTemp, ")", "")
	strTemp = Replace(strTemp, "_", "")
	strTemp = Replace(strTemp, "+", "")
	strTemp = Replace(strTemp, "=", "")
	strTemp = Replace(strTemp, "|", "")
	strTemp = Replace(strTemp, ";", "")
	strTemp = Replace(strTemp, ":", "")
	strTemp = Replace(strTemp, "'", "")
	strTemp = Replace(strTemp, ",", "")
	strTemp = Replace(strTemp, "~", "")
	strTemp = Replace(strTemp, "`", "")
	strTemp = Replace(strTemp, ">", "")
	strTemp = Replace(strTemp, "<", "")
	strTemp = Replace(strTemp, "?", "")
	strTemp = Replace(strTemp, ".", "")
	strTemp = Replace(strTemp, "1", "")
	strTemp = Replace(strTemp, "2", "")
	strTemp = Replace(strTemp, "3", "")
	strTemp = Replace(strTemp, "4", "")
	strTemp = Replace(strTemp, "5", "")
	strTemp = Replace(strTemp, "6", "")
	strTemp = Replace(strTemp, "7", "")
	strTemp = Replace(strTemp, "8", "")
	strTemp = Replace(strTemp, "9", "")
	strTemp = Replace(strTemp, chr(13), "")
	strTemp = Replace(strTemp, chr(10), "")
	strTemp = Replace(strTemp, chr(34), "")
		
	Clearsigns = strTemp
	
End Function

Function ClearTags(strTemp)

	strTemp = Replace(strTemp, chr(13), "")
	strTemp = Replace(strTemp, chr(10), "")
	strTemp = Replace(strTemp, chr(34), "")
	strTemp = Replace(strTemp, "'", "")
	strTemp = Trim(strTemp)
	ClearTags = strTemp
	
End Function

Function GetDateTime(thisDateTime)
	GetDateTime = FormatDateTime(thisDateTime, vbShortTime)
End Function

Function SafeHTML(ByVal pStrHTML)

	Dim lObjRegExp
    	
	If VarType(pStrHTML) = vbNull Then Exit Function
    	
	If pStrHTML = "" Then Exit Function
    	
	Set lObjRegExp = New RegExp
    	
		lObjRegExp.Global = True
		lObjRegExp.IgnoreCase = True
		lObjRegExp.Pattern = "<(/)?SCRIPT|META|STYLE([^>]*)>"
		pStrHTML = lObjRegExp.Replace(pStrHTML, "<$1SCRIPT$3>")
		lObjRegExp.Pattern = "<(/)?(LINK|IFRAME|FRAMESET|FRAME|APPLET|OBJECT)([^>]*)>"
		pStrHTML = lObjRegExp.Replace(pStrHTML, "<$1LINK$3>")
		lObjRegExp.Pattern = "(<A[^>]+href\s?=\s?""?javascript:)[^""]*(""[^>]+>)"
		pStrHTML = lObjRegExp.Replace(pStrHTML, "$1//protected$2")
		lObjRegExp.Pattern = "(<IMG[^>]+src\s?=\s?""?javascript:)[^""]*(""[^>]+>)"
		pStrHTML = lObjRegExp.Replace(pStrHTML, "$1//protected$2")
		lObjRegExp.Pattern = "<([^>]*) on[^=\s]+\s?=\s?([^>]*)>"
		pStrHTML = lObjRegExp.Replace(pStrHTML, "<$1$3>")
    		
	Set lObjRegExp = Nothing

	SafeHTML = pStrHTML
End Function

%>