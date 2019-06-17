<%@ language="VBScript" codepage="65001" %><% Response.CharSet = "utf-8" %>
<%  
    PageName = "ContactUs"
    MenuLink16 = "On"

    StrTitle = "צור קשר"
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
<div id="TextPage">
    <h1>צור קשר</h1>
    <div style="width:100%;text-align:center;">
        <div id="MobileContactUsDiv">
            <div id="MobileContactUs">
            <form name="MobileContactUsForm" id="MobileContactUsForm" action="CheckAndSubmitMobileContact();" method="post">
                <input type="text" name="Name" class="MobileinputContactUs" value="שם מלא" onblur="javascript:if(this.value==''){this.value='שם מלא'};" onfocus="javascript:if(this.value=='שם מלא'){this.value='';}" style="position:absolute;right:19px;top:40px;" />
                <input type="text" name="Tel" maxlength="12" class="MobileinputContactUs" value="טלפון" onKeyPress="return numbersonly(this, event);" onblur="javascript:if(this.value==''){this.value='טלפון'};" onfocus="javascript:if(this.value=='טלפון'){this.value='';}" style="position:absolute;right:19px;top:78px;" />
                <textarea name="Text" class="MobileinputContactUs" onblur="javascript:if(this.value==''){this.value='פרטים נוספים'};" onfocus="javascript:if(this.value=='פרטים נוספים'){this.value='';}" style="position:absolute;right:19px;top:120px;height:90px;font-size:13pt;font-family:Arial;">פרטים נוספים</textarea>
                <a href="javascript:CheckAndSubmitMobileContact();"><img src="images/blank.png" style="position:absolute;left:5px;bottom:0px;width:122px;height:35px;" /></a>  
            </form>
            </div>
            <div id="MobileContactUsAfter" style="display:none;"></div>
        </div>
    </div>
</div>
<!--#include file="inc_bottom.asp"-->