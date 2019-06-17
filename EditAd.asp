<%@ language="VBScript" codepage="65001" %><% Response.CharSet = "utf-8" %>
<%  
    PageName = "EditAd"
    MenuLink3 = "On"

    StrTitle = "עריכת פרטי מודעה"
    StrKeywords = StrTitle
    StrDescription = StrTitle
    StrJs = ""
%>
<!--#include file="inc_top.asp"-->
<head>
    <title></title>
    ‎<!-- Global site tag (gtag.js) - Google Ads: 774923385 --> 
    <script async src="https://www.googletagmanager.com/gtag/js?id=AW-774923385"></script> 
    <script> window.dataLayer = window.dataLayer || []; function gtag(){dataLayer.push(arguments);} 
        gtag("js", new Date()); gtag("config", "AW-774923385"); </script> ‎
</head>
<div id="divInsideHeader">
    <img src="images/MyAds.png" />
    <h1>עריכת פרטי מודעה</h1>
</div>
<% If Session("Session_UserWebLoggedIn") = true Then %>



<% Else %>
    <br /><br /><br /><br /><br /><br /><br />
    <h2>אנא התחבר למערכת בכדי לצפות במודעות שלי.</h2>
<% End if %>
<!--#include file="inc_bottom.asp"-->