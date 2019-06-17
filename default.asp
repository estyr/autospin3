<%@ language="VBScript" codepage="65001" %><% Response.CharSet = "utf-8" %>
<%  
    PageName = "Main"
    MenuLink1 = "On"
    StrTitle = "אפליקציה למכירה וקניית רכב יד שניה ב-360°."
    StrKeywords = StrTitle
    StrDescription = StrTitle
    StrFaceBookImage = "https://autospin.co.il/files/AppImages/gemeralFacebookImage.PNG"
    StrJs = "<script type=""text/javascript"" src=""js/jquery.min.js""></script><script src=""js/jquery.ddslick.min.js?v=1.1"" type=""text/javascript""></script><script type=""text/javascript"" src=""js/jsSteps.js?Time=" & Now() & """></script>"
%>
<!--#include file="inc_top.asp"-->
<script type="text/javascript">
    !function (f, b, e, v, n, t, s) {
        if (f.fbq) return; n = f.fbq = function () {
            n.callMethod ?
n.callMethod.apply(n, arguments) : n.queue.push(arguments)
        };
        if (!f._fbq) f._fbq = n; n.push = n; n.loaded = !0; n.version = "2.0";
        n.queue = []; t = b.createElement(e); t.async = !0;
        t.src = v; s = b.getElementsByTagName(e)[0];
        s.parentNode.insertBefore(t, s)
    } (window, document, "script",
"https://connect.facebook.net/en_US/fbevents.js");
    fbq("init", "312120826297188");
    fbq("track", "PageView");
</script>
<noscript>
src="https://www.facebook.com/tr?id=312120826297188&ev=PageView&noscript=1"/>
</noscript>
 ‎<!-- Global site tag (gtag.js) - Google Ads: 774923385 --> 
    <script async src="https://www.googletagmanager.com/gtag/js?id=AW-774923385"></script> 
    <script>        window.dataLayer = window.dataLayer || []; function gtag() { dataLayer.push(arguments); }
        gtag("js", new Date()); gtag("config", "AW-774923385"); </script> ‎
<head> 
<title></title>
<link href="css/w3s.css" rel="stylesheet" />
<link href="css/HomePage.css" rel="stylesheet" />
<link href="css/NewHeadert.css" rel="stylesheet" />
</head>
<!-- <button id="lotscontenthp" class="   lotscontenthp" onclick="javascript:LotsShowContacUsDiv();  $('#lotscontenthp').css('display','none');"style="z-index:2">
    <p style="font-size: 15px;font-weight: bold;color: white;line-height: 10pt;">  בעל מגרש?</p>
    <br />
    <p style="margin-top: -10;color: white;font-size: 15pt;font-weight: 600;line-height: 10pt;font-size: 17px;font-weight: bold;">להצטרפות חינם!</p>
</button>-->

<input type="hidden" name="FilterWebType" id="FilterWebType" value="0" />        
<input type="text" name="url" id="url" style="display:none;" />
<div class="w3-panel topBar" style="display:none">
    <div class="FilterDivWebSite">
        <hr class="SearchCarsHr"/>
        <div class="SearchCarsTitle">חיפוש רכבים</div>
        <div class="w3-row w3-padding-small" >
        <div class="w3-third">
        <select class="w3-round-large input w3-half" >
            <option value="" disabled selected>תת דגם</option>
        </select>
        <select class="w3-round-large input w3-half" id="ModelID" name="ModelID">
            <option value="" disabled selected >בחר דגם</option>
        </select>
        </div>
        <div class="w3-third">
        <select class="w3-round-large input w3-half" id="ManufacturerID" name="ManufacturerID"  onchange="javascript:FillSelect('ModelID',this.value);">
            <option value="" disabled selected >בחר יצרן</option>
        </select>
        <select class="w3-round-large input w3-half" id="SubModelTypeID1" name="SubModelTypeID"  onchange="javascript:FillSelect('ModelID',document.getElementById('ManufacturerID').value);">
            <option value="" disabled selected >בחר קטגוריה</option>
        </select>
        </div>
        <div class="w3-third">
        <select class="w3-round-large input" id="ModelTypeID1" name="ModelTypeID" onchange="javascript:FillSelect('SubModelTypeID', this.value); FillSelect('ManufacturerID', this.value);"style="background-color:white">
            <option value="1" disabled selected>סוג רכב</option>
            <option value="1">פרטי</option>
            <option value="2">ג'יפים</option>
            <option value="3">דו גלגלי</option>
            <option value="4">מסחרי</option>
            <option value="5">פנאי</option>
        </select>
        </div>
        </div>
        <div class="w3-row w3-padding-small">
        <div class="w3-half">
        <input class="w3-round-large input w3-third text-input"  placeholder="ממחיר" name="EndPrice" id="EndPrice1" onKeyPress="return numbersonly(this, event)" />
        <input class="w3-round-large input w3-third text-input" placeholder="עד מחיר"  name="StartPrice" id="StartPric1e" onKeyPress="return numbersonly(this, event)"/>
        <select class="w3-round-large input w3-third"  name="EndYear" id="EndYear"  onchange="javascript:FillSelect(this.value);">
            <option value="" disabled selected >עד שנה</option>
            <% For IRun = 1980 To 2019 %>
            <option value="<% = IRun %>"><% = IRun %></option>
            <% Next %>
        </select>
        </div>
        <div class="w3-half">
        <select class="w3-round-large input w3-third"  name="StartYear" id="StartYear"  onchange="javascript:FillSelect(this.value);">
            <option value="" disabled selected >משנה</option>
            <% For IRun = 1980 To 2019 %>
            <option value="<% = IRun %>"><% = IRun %></option>
            <% Next %>
        </select>
        <input id="kilometer"name="kilometer" class="w3-round-large input w3-third text-input"onKeyPress="return numbersonly(this, event)" placeholder="קילומטר" />
        <select class="w3-round-large input w3-third" id="Area" name="Area" >
            <option value="" disabled selected >אזור בארץ</option>
            <option value="0">כל האזורים</option>
            <option value="100">מרכז</option>
            <option value="200">שרון</option>
            <option value="300">שפלה</option>
            <option value="400">צפון</option>
            <option value="500">ירושלים</option>
            <option value="600">דרום</option>
        </select>
        </div>
        </div>
        <div class="w3-row w3-padding-small">
        <div class="w3-half">
        <a href="#" id="filterButton1" class=" w3-round w3-red  w3-third" onclick="javascript: GetModaotListWeb_filter(Page, 'Start');" >
            <span style="color:white">חיפוש</span><i id="magnifying-glass" class="w3-margin-right"></i>
        </a>
        <select id="HandNumber" name="HandNumber" class="w3-round-large input w3-third">
            <option value="" disabled selected >יד</option>
            <% For IRun = 1 To 8 %>
            <option value="<% = IRun %>"><% = IRun %></option>
            <% Next %>
        </select>
        <select class="w3-round-large input w3-third" >
            <option value="" disabled selected >תיבת הילוכים</option>
            <option value="1">אוטומט</option>
            <option value="2">ידני</option>
        </select>
        </div>
        <div class="w3-half">
        <input class="w3-round-large input w3-third text-input" placeholder="צבע" type="text" />
        <input class="w3-round-large input w3-third text-input" placeholder="נפח מנוע"  />
        <select class="w3-round-large input w3-third" id="CarEngineType"name="CarEngineType">
            <option value="-1" disabled selected>סוג מנוע</option>
            <option value="2">היברידי</option>
            <option value="0">בנזין</option>
            <option value="1">דיזל</option>
        </select>
        </div>
        </div>
    </div>
</div>
<div class="w3-row-padding topHPBarHP" style="border-bottom :1px solid #d8d4d4" id="topHPBarHP">
<!--    <i id="magnifying-glassHP3" class="magnifying-glassHP3"></i>-->
    <div class="w3-panel w3-twothird sideshow" id="sideshow">
        <div style="margin-top: 260; margin-right: 520;">
            <span style="color: white;font-size: 60px;font-weight:bold;text-shadow: 5px 8px 20px #0f0f0f;">תכל'ס?</span><br />
            <span style="color: white;font-size: 60px;text-shadow: 5px 8px 20px #0f0f0f;">לא היית צריך להגיע!</span>
        </div>
<!--        <div id="firstSlider" class="mySlides">
            <div class="speech-bubble">
                <span class="speech-bubble1">מחפשים רכב ? </span><span class="speech-bubble2">מתלבטים ? </span><br />
                <span class="speech-bubble3">לא יודעים מאיפה להתחיל ?  </span><br />
                <span class="speech-bubble4">סינון רכבים מהיר / מורכב</span><br />
                <span class="speech-bubble4">יעזרו לכם לקבל החלטה.</span><br /><br />
                <a class="w3-button w3-large w3-circle w3-ripple w3-red w3-text-white"style="padding: 2px;font-size: 1px;font-weight: 700;width: 30px;margin-top: -5px;" href="search.asp">&#10094&#10094</a><a href="search.asp" class="speech-bubble5 w3-margin-right">מצאו את הרכב המתאים עכשיו ! </a>
            </div>
            <img src="images/homePageSlider.png" class="HPcharacter" />
            <img src="images/c1.png" class="HPcharacter1"/>
            <img src="images/c2.png" class="HPcharacter2"/>
            <img src="images/c3.png" class="HPcharacter3"/>
            <img src="images/c4.png" class="HPcharacter4"/>
        </div>
        <div id="secondSlider" class="mySlides w3-margin-top">
            <span class="secondSlider1">מוכרים את הרכב ? </span><br />
            <span class="secondSlider2">הכירו את הפלטפורמה החדשנית בטכנולוגיית ה - 360&#176;</span><br />
            <span class="secondSlider3">מלאו מספר נייד והורידו את האפליקציה:</span><br />
            <p id="afterSendHP" style="display:none" class="videoInputHP w3-border w3-border-gray w3-margin-top w3-round">קישור נשלח בהצלחה</p>
            <form id="InviteSmsFormHP" name="InviteSmsFormHP" action="CheckAndSubmitInviteSms();" style="display:inline-block" method="post">
                <input type="text" class="inputHP w3-round w3-border w3-border-gray w3-margin-top"  name="InviteSmsPhoneHP" id="InviteSmsPhoneHP" maxlength="12"  value="הכנס מספר טלפון" onKeyPress="return numbersonly(this, event);" onblur="javascript:if(this.value==''){this.value='הכנס מספר טלפון'};" onfocus="javascript:if(this.value=='הכנס מספר טלפון'){this.value='';}" />
               <a id="sendButtonHP" class="sendButtonHP w3-hover-text-grey  w3-round w3-border w3-border-red w3-margin-right" href="javascript:CheckAndSubmitInviteSmsHP();">שלח קישור</a>  
            </form><br />
            <div id="degree" class="degree">360</div>
            <img src="images/hpCar.PNG" /><br />
            <div style="margin-top:15px;">                 
                <a href="https://play.google.com/store/apps/details?id=com.appgate.autospin" target="_blank"><img src="images/GoogleButton.png" alt="Google Store" title="Google Store" border="0" style="width:120px"></a>
                <a href="https://itunes.apple.com/us/app/%D7%90%D7%95%D7%98%D7%95%D7%A1%D7%A4%D7%99%D7%9F/id1375533179?l=iw&amp;ls=1&amp;mt=8" class="w3-margin-right" target="_blank"><img src="images/AppStoreButton.png" alt="App Store" title="App Store" border="0" style="width: 105px"></a>
            </div>
        </div>-->
    </div>   
    <style>
        .degree{
            position: absolute;
            font-size: 100px;
            color: #f2f2f2;
            left: 30%;
            z-index: -1;
            top: 28%
            }
    </style>
<script>
var myIndex = 0;
carousel();

function carousel() {
  var i;
  var x = document.getElementsByClassName("mySlides");
  for (i = 0; i < x.length; i++) {
    x[i].style.display = "none";  
  }
  myIndex++;
  if (myIndex > x.length) {myIndex = 1}    
  x[myIndex-1].style.display = "block";  
  setTimeout(carousel, 4000); 
}
</script>
    <div class="w3-third">
            <div class="FilterDivWebSiteHP" id="FilterDivWebSiteHP">
                <div>
            <div class="speedSearchTitle">סינון רכבים מהיר:</div>
            <select class="w3-round-large searchinput"  id="ModelTypeID" name="ModelTypeID" onchange="javascript:FillSelect('SubModelTypeID', this.value); FillSelect('ManufacturerID', this.value);"style="background-color:white">
                <option value="1" disabled selected>סוג רכב</option>
                <option value="1">פרטי</option>
                <option value="2">ג'יפים</option>
                <option value="3">דו גלגלי</option>
                <option value="4">מסחרי</option>
                <option value="5">פנאי</option>
            </select><br />
            <select class="w3-round-large searchinput " style="padding-right:20px;background-color:white" id="SubModelTypeID" name="SubModelTypeID"  onchange="javascript:FillSelect('ModelID',document.getElementById('ManufacturerID').value);">
                <option value="" disabled selected >בחר קטגוריה</option>
            </select>
          <div style="font-size: 20px;display: inherit;padding: 10px;"> 
              <span class="priceTitle" style="color:white">חיפוש לפי תקציב</span>
              <span  id="priceSum"class="priceTitle" style="display:none;color:white">עד <span id="price"></span> &#8362</span>
          </div>
            <input type="range" min="5000" max="1010000" step="10000" value="5000" class="slider" onchange="sliderChange()" id="myRange">            
            <div class="w3-row-padding" >
         <div style="display: flex;align-items: center;justify-content: center;">   <div id="filterButtonHomepage" style="margin-top: 20px;width:40%;padding:7px;font-weight: bold;background-color:#e73834" class=" w3-round  w3-hover-green w3-half" onclick="javascript: document.body.scrollTop = 20;document.documentElement.scrollTop = 20; GetModaotListWeb_filterhomepage(Page, 'Start');" >
                <span style="color:white">חיפוש</span><i id="magnifying-glassHP" class="w3-margin-right"></i>
            </div></div> 
            </div></div>
            <hr STYLE="    border: 1px solid transparent"/>
            <div id="searchlinkdiv" ><a onclick="document.body.scrollTop = 20;document.documentElement.scrollTop = 20;GetModaotListWeb_filterhomepage(Page, 'Start')" id="scrlink" style=" cursor: pointer;font-size: 25px;border: 3px solid#fff;color: #ffffff;padding: 2px;padding-right: 12px;border-radius: 20px;"><span>סינון </span> מתקדם <i id="magnifying-glassHP2" class="w3-margin-left"></i></a></div>
            <input style="display:none" class="w3-round-large searchinput  text-input"   name="EndPrice" id="EndPrice" onKeyPress="return numbersonly(this, event)" />
            <input style="display:none" class="w3-round-large searchinput  text-input"  value="0" name="StartPrice" id="StartPrice" onKeyPress="return numbersonly(this, event)"/>

    </div>
    </div>
</div>
<div id="FilterDivMobileWeb" style="display:none;">
    <div style="width:100%;height:50px;"></div>
    <div id="FilterHead" style="margin-top:6px;">סינון</div>
    <div id="FilterBoxMobile">
        
        <div class="FilterParam" style="width:90%;margin-top:-25px;">
            <img src="images/FilterBox/M_ModelType4.png" class="FilterIcon" />
            <select id="M_ModelTypeID" name="M_ModelTypeID" class="FilterSelectMobile" onchange="javascript:M_FillSelect('SubModelTypeID', this.value); M_FillSelect('ManufacturerID', this.value);">
                <option value="1">פרטי</option>
                <option value="2">ג'יפים</option>
                <option value="3">דו גלגלי</option>
                <option value="4">מסחרי</option>
                <option value="5">פנאי</option>
            </select>
        </div>
        
        <div class="FilterParam" style="width:90%;">
            <img src="images/FilterBox/Category.png" class="FilterIcon" />
            <select id="M_SubModelTypeID" name="M_SubModelTypeID" class="FilterSelectMobile" onchange="javascript:M_FillSelect('ModelID',document.getElementById('M_ManufacturerID').value);">
                <option value="">בחר קטגוריה</option>
            </select>
        </div>

        <div class="FilterParam" style="width:90%;">
            <img src="images/FilterBox/M_Manufacturer.png" class="FilterIcon" />
            <select id="M_ManufacturerID" name="M_ManufacturerID" class="FilterSelectMobile" onchange="javascript:M_FillSelect('ModelID',this.value);">
                <option value="">יצרן</option>
            </select>
        </div>

        <div class="FilterParam" style="width:90%;">
            <img src="images/FilterBox/M_Model4.png" class="FilterIcon" />
            <select id="M_ModelID" name="M_ModelID" class="FilterSelectMobile">
                <option value="">דגם</option>
            </select>
        </div>

        <div class="FilterParam" style="width:90%;">
            <img src="images/FilterBox/Hand.png" class="FilterIcon" />
            <select id="M_HandNumber" name="M_HandNumber" class="FilterSelectMobile">
                <option value="">יד</option>
            <% For IRun = 1 To 8 %>
                <option value="<% = IRun %>"><% = IRun %></option>
            <% Next %>
            </select>
        </div>

        <div class="FilterParam" style="width:90%;">
            <img src="images/FilterBox/Area.png" class="FilterIcon" />
            <select id="M_Area" name="M_Area" class="FilterSelectMobile">
                <option value="">אזור בארץ</option>
                <option value="0">כל האזורים</option>
                <option value="100">מרכז</option>
                <option value="200">שרון</option>
                <option value="300">שפלה</option>
                <option value="400">צפון</option>
                <option value="500">ירושלים</option>
                <option value="600">דרום</option>
            </select>
        </div>

        <div class="FilterParam" style="width:90%;text-align:right;margin-top:10px;">
            <div class="FilterParam" style="width:13%;">
                <img src="images/FilterBox/Year.png" class="FilterIcon" style="top:20px;" />
            </div>
            <div class="FilterParam" style="width:47%;text-align:right;">
                <div class="FilterText" style="top:20px;">משנה</div>
                <input type="text" name="M_StartYear" id="M_StartYear" class="FilterInputMobile" style="top:10px;width:60%;" onKeyPress="return numbersonly(this, event)" />
            </div>
            <div class="FilterParam" style="width:37%;text-align:right;">
                <div class="FilterText" style="top:20px;">עד</div>
                <input type="text" name="M_EndYear" id="M_EndYear" class="FilterInputMobile" style="top:10px;width:80%;" onKeyPress="return numbersonly(this, event)" />
            </div>
        </div>

        <div class="FilterParam" style="width:90%;text-align:right;">
            <div class="FilterParam" style="width:13%;">
                <img src="images/FilterBox/M_Shekel.png" class="FilterIcon" style="top:20px;" />
            </div>
            <div class="FilterParam" style="width:42%;text-align:right;">
                <div class="FilterText" style="top:20px;">מ</div>
                <input type="text" name="M_StartPrice" id="M_StartPrice" class="FilterInputMobile" style="top:10px;width:90%;" onKeyPress="return numbersonly(this, event)" />
            </div>
            <div class="FilterParam" style="width:42%;text-align:right;">
                <div class="FilterText" style="top:20px;">עד</div>
                <input type="text" name="M_EndPrice" id="M_EndPrice" class="FilterInputMobile" style="top:10px;width:80%;" onKeyPress="return numbersonly(this, event)" />
            </div>
        </div>       
         <input type="button" value="חפש" class="FilterButton" onclick="javascript: window.scrollTo(0, 0); M_GetModaotList_Filter(Page, 'Start');" />

    </div>
</div>
<div onclick="openInNewTab()">
    <img src="images/banners-03.jpg"id="leftbanner"  style="height: 90%;position: absolute;left: 20;top: 570;display:none"/>
</div>
<script type="text/javascript">
    if ($(window).width() > 825) {
        $('#leftbanner').css("display", "block");
    }
    function openInNewTab() {
      var win = window.open("https://www.migrashim.co.il/contact", '_blank');
      win.focus();
    }
    $(window).scroll(function () {
        if (document.body.scrollTop > 500 || document.documentElement.scrollTop > 500) {
            $('#leftbanner').css("position", "fixed");
            $('#leftbanner').css("margin-top", "-485px");
        }
        else {
            if (document.body.scrollTop < 10 || document.documentElement.scrollTop < 10) {
                $('#leftbanner').css("position", "absolute");
                $('#leftbanner').css("margin-top", "0px");
            }
        }
        })

</script>
<hr class="newAddsHr"/>
<hr class="carlotsHr_m" id="carlotsHr1_m"/>
<div class="newAddsText" id="carlotstext" style="cursor:pointer" onclick="javascript:window.location.href='CarLotIndex.asp'">אינדקס מגרשי רכב</div>
<hr class="carlotsHr_m" id="carlotsHr2_m"/>
<div id="carlots" class="container">
   <div id="photobanner1" class="photobanner" style="display:block">
       <a href="CarLotAds.asp?ID=87"><img src="images/cl1.jpg"style="margin:20px;width:200px;height:150px"/></a>
       <a href="CarLotAds.asp?ID=95"><img src="images/cl2.jpg"style="margin:20px;width:300px;height:70px"/></a>
       <a href="CarLotAds.asp?ID=81"><img src="images/cl3.png"style="margin:20px;width:200px;height:250px"/></a>
       <a href="CarLotAds.asp?ID=15"><img src="images/cl20.png"style="margin:20px;width:300px;height:250px" /></a>
   </div>
   <div id="photobanner2" class="photobanner" style="display:none">
       <a  href="CarLotAds.asp?ID=51"><img src="images/cl4.png"style="margin:20px;width:200px;height:150px"/></a>
       <a  href="CarLotAds.asp?ID=8"><img src="images/cl6.jpg"style="margin:20px;width:300px;height:150px"/></a>
       <a  href="CarLotAds.asp?ID=41"><img src="images/cl6.png"style="margin:20px;width:200px;height:250px"/></a>
       <a  href="CarLotAds.asp?ID=47"><img src="images/cl7.jpg"style="margin:20px;width:300px;height:250px" /></a>
   </div>
   <div id="photobanner3" class="photobanner" style="display:none">
       <a  href="CarLotAds.asp?ID=7"><img src="images/cl8.jpg"style="margin:20px;width:200px;height:150px"/></a>
       <a  href="CarLotAds.asp?ID=68"><img src="images/cl9.gif"style="margin:20px;width:200px;height:100px"/></a>
       <a  href="CarLotAds.asp?ID=93"><img src="images/cl10.png"style="margin:20px;width:200px;height:100px"/></a>
       <a  href="CarLotAds.asp?ID=63"><img src="images/cl13.png"style="margin:20px;width:300px;height:250px" /></a>
   </div>
</div>
<script type="text/javascript">
    setInterval(function () {
        if ($("#photobanner1").css("display") === "block") {
            $("#photobanner1").css("display", "none");
            $("#photobanner2").css("display", "block");
        }
        else {
            if ($("#photobanner2").css("display") === "block") {
                $("#photobanner2").css("display", "none");
                $("#photobanner3").css("display", "block");
            }
            else {
                if ($("#photobanner3").css("display") === "block") {
                    $("#photobanner3").css("display", "none");
                    $("#photobanner1").css("display", "block");
                }
            }
        }
    }, 4000)

        setInterval(function () {
        if ($("#m_photobanner1").css("display") === "block") {
            $("#m_photobanner1").css("display", "none");
            $("#m_photobanner2").css("display", "block");
        }
        else {
            if ($("#m_photobanner2").css("display") === "block") {
                $("#m_photobanner2").css("display", "none");
                $("#m_photobanner1").css("display", "block");
            }
        }
    }, 3000)

</script>
<div id="carlots_m" style="height:50px">
    <div id="m_photobanner1" style="display:block;height:100;margin-top:-30;margin-bottom:-20" class="w3-row-padding">
        <a  href="CarLotAds.asp?ID=87">
            <img src="images/cl1.jpg"  style="width:100;top:0"/>
        </a>
       <a  href="CarLotAds.asp?ID=68">
           <img src="images/cl9.gif" class="w3-margin-right" style="width:120px;op:0px"/>
       </a>
    </div>
    <div id="m_photobanner2"  class="w3-row-padding w3-margin-right" style="display:none;height:100;margin-top:-50;margin-bottom:-20">
        <a href="CarLotAds.asp?ID=63">
            <img src="images/cl13.png" style="width:150;top:0px;"/>
        </a>
        <a href="CarLotAds.asp?ID=81">
            <img src="images/cl3.png"style="width:120px;top:0px;"/>
        </a>
    </div>
</div>
<hr class="newAddsHr"/>
<hr class="newAddsHr_m" id="newAddsHr1_m"/>
<div class="newAddsText" id="newAddsText">מודעות רכב חדשות</div>
<hr class="newAddsHr_m" id="newAddsHr2_m"/>
<div id="SimilarCarDiv1"class="SimilarCarDiv">
<div id="ModaoBoxList"class="  ModaoBoxListmobail ModaoBoxListhomepage " ></div>
</div>
<br /><br />
<hr class="newAddsHr"/>
<hr class="appHr_m"  style="margin-top:-20"/>
<div style="cursor:pointer" onclick="javascript:window.location.href='Tips.asp'" class="newAddsText" id="tipshp">חדשות הרכב</div>
<hr class="appHr_m" />
<div id="tips_hp"  class=" tipsDiv tips_m "style="display: inline-block;">
   <a href="BuyingCarTips.asp" class=" w3-hover-white">
    <div class="tipBox" id="tips1" style="border-radius: 10px;display:block">
        <img src="images/buycar.jpg" class="tipImage w3-margin-left"/>
        <p class="textRight w3-margin-top w3-margin-right tipBoxTitle">טיפים לקניית רכב יד שניה</p><br />
        <p class="textRight w3-margin-right tipBoxontent">בשעה טובה, החלטתם לרכוש רכב יד שניה?<br />
            אוטוספין רכזה בעבורכם מספר עצות לרכישה נבונה ומוצלחת.</p>
        <a  href="BuyingCarTips.asp" style="border-radius: 5px;font-size:10" class="radius5 w3-button w3-black w3-margin-top w3-right readtipshp">קרא בהרחבה</a>
    </div></a>
    <a href="CarSaleTips.asp" class=" w3-hover-white">
    <div class="tipBox" id="tips2" style="display:none">
        <img src="images/photograph.jpeg" class="tipImage w3-margin-left"/>
        <p class="textRight w3-margin-top w3-margin-right tipBoxTitle">טיפים לצילום רכב</p><br />
        <p class="textRight w3-margin-right tipBoxontent">מי לא מכיר את המשפט "תמונה אחת שווה אלף מילים"?<br />
           שוק רכבי היד שניה גדול מאד ומביא לכך שהתחרות על...</p>
        <a  href="photocopyingCarTips.asp" style="border-radius: 5px;font-size:10" class=" radius5 w3-button w3-black w3-margin-top w3-right readtipshp">קרא בהרחבה</a>
    </div></a>
    <a href="photocopyingCarTips.asp" class=" w3-hover-white"></a>
    <div class="tipBox" id="tips3" style="display:none">
        <img src="images/salecar.jpg" class="tipImage w3-margin-left"/>
        <p class="textRight w3-margin-top w3-margin-right tipBoxTitle">טיפים למכירת רכב יד שניה</p><br />
        <p class="textRight w3-margin-right tipBoxontent">בשעה טובה, החלטתם למכור את הרכב שלכם?<br />
           שוק רכבי היד שניה גדול מאד ומביא לכך שהתחרות על...</p>
        <a  href="CarSaleTips.asp" style="border-radius: 5px;font-size:10"class="w3-button w3-black w3-margin-top w3-right readtipshp">קרא בהרחבה</a>
    </div></a>
    <a href="Trade_in_or_car_leasing.asp" class=" w3-hover-white">
    <div class="tipBox" id="tips4"style="display:none" >
        <img src="images/tradeIn.jpg" class="tipImage w3-margin-left"/>
        <p class="textRight w3-margin-top w3-margin-right tipBoxTitle">טרייד אין או ליסינג לרכב</p><br />
        <p class="textRight w3-margin-right tipBoxontent">רוצים להתקדם לרכב חדש הרבה יותר, אבל שואלים את עצמכם מה תעשו עם 
          הישן שלכם?  
    </p>
    <a  href="Trade_in_or_car_leasing.asp" style="border-radius: 5px;font-size:10"class="w3-button w3-black w3-margin-top w3-right readtipshp">קרא בהרחבה</a>
    </div></a>
    <a href="1.asp" class=" w3-hover-white">
    <div class="tipBox" id="tips5" style="display:none" >
        <img src="images/WhatsApp%20Image%202018-06-07%20at%2019.15.53.jpeg" class="tipImage w3-margin-left"/>
        <p class="textRight w3-margin-top w3-margin-right tipBoxTitle">חושבים להתקדם לרכב חדש </p><br />
        <p class="textRight w3-margin-right tipBoxontent">אתם מכירים את זה שבכל פעם שאתם נדלקים על רכב כלשהו, אתם פתאום רואים  
    </p>
        <a href="1.asp" style="border-radius: 5px;font-size:10" class="radius5 w3-button w3-black w3-margin-top w3-right readtipshp">קרא בהרחבה</a>
    </div></a>
        <a href="2.asp" class=" w3-hover-white">
        <div class="tipBox" id="tips6"style="display:none" >
        <img  src="images/glory.jpg" class="tipImage w3-margin-left"/>
        <p class="textRight w3-margin-top w3-margin-right tipBoxTitle"> המסלול המהיר לרכב שעליו חלמת.
    </p><br />
        <p class="textRight w3-margin-right tipBoxontent">כולנו גולשים באתרי אינטרנט, באינסטגרם ובפייסבוק, רואים את ... 
    </p>
        <a href="2.asp"class="radius5 w3-button w3-black w3-margin-top w3-right">קרא בהרחבה</a>
    </div></a>
         <a href="4.asp" class=" w3-hover-white">
    <div class="tipBox" id="tips7"style="display:none" >
        <img  src="images/bigstock-Dealer-Vehicles-In-Stock-93496580.jpg"  class="tipImage w3-margin-left"/>
        <p class="textRight w3-margin-top w3-margin-right tipBoxTitle"> מכונית יד שנייה במגרש מכוניות . 
    </p><br />
        <p class="textRight w3-margin-right tipBoxontent" > אפליקציה חכמה לקנייה ומכירת רכב כמו אוטוספין מאפשרת לכם לרכוש ...</p>
        <a href="4.asp"class="radius5 w3-button w3-black w3-margin-top w3-right">קרא בהרחבה</a>
    </div></a>
         <a href="3.asp" class=" w3-hover-white">
    <div class="tipBox" id="tips8"style="display:none" >
        <img  src="images/lastips.png"  class="tipImage w3-margin-left"/>
        <p class="textRight w3-margin-top w3-margin-right tipBoxTitle"> הדרך להתקדם לרכב חדש יותר
    </p><br />
        <p class="textRight w3-margin-right tipBoxontent">לבעל רכב יש שתי  אפשרויות לשדרג עצמו לרכב מתקדם יותר... 
    </p>
        <a href="3.asp"class="radius5 w3-button w3-black w3-margin-top w3-right">קרא בהרחבה</a>
    </div></a>
</div>
<script type="text/javascript">
    setInterval(function () {
        if ($("#tips1").css("display")==="block") {
            $("#tips1").css("display", "none");
            $("#tips2").css("display", "block");
        }
        else {
            if ($("#tips2").css("display") === "block") {
                $("#tips2").css("display", "none");
                $("#tips3").css("display", "block");
            }
            else {
                if ($("#tips3").css("display") === "block") {
                    $("#tips3").css("display", "none");
                    $("#tips4").css("display", "block");
                }
                else
                    {
                    if ($("#tips4").css("display") === "block") {
                        $("#tips4").css("display", "none");
                        $("#tips5").css("display", "block");
                    }
                    else {
                        if ($("#tips5").css("display") === "block") {
                            $("#tips5").css("display", "none");
                            $("#tips6").css("display", "block");
                        }
                        else {
                            if ($("#tips6").css("display") === "block") {
                                $("#tips6").css("display", "none");
                                $("#tips7").css("display", "block");
                            }
                            else {
                                if ($("#tips7").css("display") === "block") {
                                    $("#tips7").css("display", "none");
                                    $("#tips8").css("display", "block");
                                }
                                else {
                                    $("#tips8").css("display", "none");
                                    $("#tips1").css("display", "block");
                                }
                            }
                            }
                        }
                    }
                }
            }
    },5000)
</script>
<hr class="newAddsHr"/>
<hr class="appHr_m" />
<div class="newAddsText" id="apptest">האפליקציה</div>
<hr class="appHr_m" />
<div class="w3-row-padding GuideVideoHP" id="app" style="margin-bottom:100px;padding-right: 110px;width: 1500px;transform: scale(0.8);">    
    <div class="w3-half" >
        <iframe width="400" height="250" src="https://www.youtube.com/embed/q3nH9feLTc8" border="0" onscroll="no" frameborder="0" style="border:none;"  allow="autoplay; encrypted-media" allowfullscreen></iframe>
        <div >
        <p class="videoTitle boldText">רוצים לפרסם?</p>
        <p class="videoContent boldText">הורידו את האפליקציה חינם:</p>
        <p id="afterSend" class="videoInput w3-border w3-border-gray w3-margin-top w3-round">קישור נשלח בהצלחה</p>
        <form id="InviteSmsForm" name="InviteSmsForm" action="CheckAndSubmitInviteSms();" style="display:inline-block" method="post">
            <input type="text" class="videoInput w3-border w3-border-gray w3-margin-top w3-round"  name="InviteSmsPhone" id="InviteSmsPhone" maxlength="12"  value="הכנס מספר טלפון" onKeyPress="return numbersonly(this, event);" onblur="javascript:if(this.value==''){this.value='הכנס מספר טלפון'};" onfocus="javascript:if(this.value=='הכנס מספר טלפון'){this.value='';}" />
            <a class="sendButton w3-black w3-round" href="javascript:CheckAndSubmitInviteSms();">שלח קישור</a>  
        </form>
        </div>
    </div>
    <div class="w3-half appText" id="appText">
        <p class="description">הורד עכשיו את אפליקציית אוטוספין ותתחיל להנות מחוויה שטרם הכרת.<br /> עם הטכנולוגיה הייחודית לאוטוספין לצילום והצגת פנים הרכב ב- 360 מעלות.</p><br />
        <p class="description"><span class="boldText">מוכר? </span>בדקות ספורות רכבך יפורסם בכל מקום אפשרי לחשיפה מירבית ומכירה מהירה.</p><br />
        <p class="description"><span class="boldText">סוג הרכב? תקציב? </span>עם פילוח מדוייק תמצא את מבוקשך.<br />אוטוספין, פלטפורמה לרכישה ומכירת רכבי יד שניה.</p>
    </div>    
</div>
<div class="GuideVideoHP GuideVideoHP_m" >    
    <div style="margin-top: -40px; margin-bottom: 30px;">
        <p class="description">הורד עכשיו את אפליקציית אוטוספין ותתחיל להנות מחוויה שטרם הכרת.<br /> עם הטכנולוגיה הייחודית לאוטוספין לצילום והצגת פנים הרכב ב- 360 מעלות.</p><br />
        <p class="description"><span class="boldText">מוכר? </span>בדקות ספורות רכבך יפורסם בכל מקום אפשרי לחשיפה מירבית ומכירה מהירה.</p><br />
        <p class="description"><span class="boldText">סוג הרכב? תקציב? </span>עם פילוח מדוייק תמצא את מבוקשך.<br />אוטוספין, פלטפורמה לרכישה ומכירת רכבי יד שניה.</p>
    </div>    
    <div  >
        <div id="hpapp">
        <p class="videoTitle boldText">רוצים לפרסם?</p>
        <p class="videoContent boldText">הורידו את האפליקציה חינם:</p>
        <p id="afterSend_m" style="display:none" class="videoInput w3-border w3-border-gray w3-margin-top w3-round">קישור נשלח בהצלחה</p>
        <form id="InviteSmsForm_m" name="InviteSmsForm_m" action="CheckAndSubmitInviteSms_m();" style="display:inline-block" method="post">
            <input type="text" class="videoInput w3-border w3-border-gray w3-margin-top"  name="InviteSmsPhone_m" id="InviteSmsPhone_m" maxlength="12"  value="הכנס מספר טלפון" onKeyPress="return numbersonly(this, event);" onblur="javascript:if(this.value==''){this.value='הכנס מספר טלפון'};" onfocus="javascript:if(this.value=='הכנס מספר טלפון'){this.value='';}" />
            <a class="sendButton w3-black w3-round" href="javascript:CheckAndSubmitInviteSms_m();">שלח קישור</a>  
        </form>
        </div>
    </div><br />
    <iframe width="400" height="250" src="https://www.youtube.com/embed/q3nH9feLTc8" border="0" onscroll="no" frameborder="0" style="border:none;"  allow="autoplay; encrypted-media" allowfullscreen></iframe>
</div>
<br /><br />
<div class="appImgHP" id="appImgHP"><img src="images/יד.png" /></div>

<script type="text/javascript">
    // <![CDATA[
    var Page = 1;
    GetModaotList(Page, 'Start');
    // ]]>
</script>
<!--#include file="inc_bottom.asp"-->

<script type="text/javascript">
     window.onload = function () { 
    document.getElementById("SimilarCarDiv1").scrollLeft -= 200;
    }
   
    function sliderChange() {
        $(".priceTitle").css('display', 'none');
         $("#priceSum").css('display', 'block');
        var slider = document.getElementById("myRange");
        var pricelable = document.getElementById("EndPrice");
        var output = document.getElementById("price");
        output.innerHTML = slider.value;
        pricelable.value = slider.value;
        slider.oninput = function () {
            pricelable.value = this.value;
            output.innerHTML = this.value;
        }

    }



    
            if (getBrowser()=== "edge") {
                $("#carlotstext").css('width','250px');
                $("#newAddsText").css('width','250px');
                $("#tipshp").css('width','190px');
                $("#apptest").css('width', '160px');
                                $("#sideMenuBar").css('background', 'rgba(42,42,42,0.5)');
                                $(".contactUsBackground").css('background', 'rgba(49,49,49,0.5)');
                                                          $(".Lotscontactusbackgraound1").css('background', 'rgba(49,49,49,0.5)');

            $(".Footer").addClass('footeredge');
            }

            function getBrowser() {

                // Opera 8.0+
                if ((!!window["opr"] && !!["opr"]["addons"]) || !!window["opera"] || navigator.userAgent.indexOf(' OPR/') >= 0) {
                    return 'opera';
                }

                // Firefox 1.0+
                if (typeof window["InstallTrigger"] !== 'undefined') {
                    return 'firefox';
                }

                // Safari 3.0+ "[object HTMLElementConstructor]" 
                if (/constructor/i.test(window["HTMLElement"]) || (function (p) { return p.toString() === "[object SafariRemoteNotification]"; })(!window['safari'] || (typeof window["safari"] !== 'undefined' && window["safari"].pushNotification))) {
                    return 'safari';
                }

                // Internet Explorer 6-11
                if (/*@cc_on!@*/false || !!document["documentMode"]) {
                    return 'ie';
                }

                // Edge 20+
                if (!(/*@cc_on!@*/false || !!document["documentMode"]) && !!window["StyleMedia"]) {
                    return 'edge';
                }

                // Chrome 1+
                if (!!window["chrome"] && !!window["chrome"].webstore) {
                    return 'chrome';
                }

                // Blink engine detection
                if (((!!window["chrome"] && !!window["chrome"].webstore) || ((!!window["opr"] && !!["opr"]["addons"]) || !!window["opera"] || navigator.userAgent.indexOf(' OPR/') >= 0)) && !!window["CSS"]) {
                    return 'blink';
                }
            }
</script>
<style>
    .Footer{
        position:relative;
    }
</style>
<script type="text/javascript">

    function scrollImg(dir) {
        if (dir == 'left') 
            $('#ModaoBoxList').scrollLeft(350);
        else
            $('#ModaoBoxList').scrollRight(200);
    }



   
</script>
<style>
    .contactdiv1{
        margin-bottom:340px
    }
    #SimilarCarDiv1 {
        display:block;
    position: relative;
    width: 100%;
    max-width: 1070px;
    text-align: center;
    overflow-x: scroll;
    overflow-y: hidden;
   
}

    #SimilarCarDiv1::-webkit-scrollbar-track {
        -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.3);
        border-radius: 10px;
        background-color: #F5F5F5;
        height: 10px;
    }

    #SimilarCarDiv1::-webkit-scrollbar {
        width: 10px;
        background-color: #F5F5F5;
        height: 10px;
    }

    #SimilarCarDiv1::-webkit-scrollbar-thumb {
        border-radius: 10px;
        -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,.3);
        background-color: #e73834;
        height: 10px;
    }
    @media only screen and (min-width: 1000px) {
        .readtipshp{
              transform: scale(0.8, 1);
              font-size:15;
        }
        .tipBox{
            transform: scale(1.5, 1);
        }
        .textRight{
            transform: scale(0.8, 1);
        }





    }
        .tipsDiv {
            display: none;
        }

        .tips_m {
            display: inline-block;
            margin-bottom: 100PX;
            transform: scale(1.2);
            width: 450;
            margin-top:50px;
        }

        .tipBoxTitle {
            font-size: 20px;
            font-weight: bold;
            padding-top: 20px;
        }

        .tipImage {
            width: 180px;
            float: right;
            height: 210px;
        }

        .MoreTipsDiv {
            max-width: 1000px;
            margin-top: 120px;
            padding: 10px;
        }
    @media only screen and (max-width: 600px){
     
     #leftbanner{
        display:none
     }
     #rightbanner{
        display:none
     }


    #ModaoBoxList{
        width:4500;
        height:250
    }
    .ModaoBoxListhomepage1{
        display:none;
    }
    }
</style>



<script type="text/javascript">

var connectionName = 'MySQLu';
var user = 'autospin_login';
var userPwd = 'fjf74GdJs6wb4sH';
var db = 'autospin_db';

var dbUrl = 'jdbc:google:mysql://' + connectionName + '/' + db;

/**
 * Write one row of data to a table.
 */
function writeOneRecord() {
  var conn = Jdbc.getCloudSqlConnection(dbUrl, user, userPwd);

  var stmt = conn.prepareStatement('INSERT INTO carlots '
      + '(UserID, Name) values (?, ?)');
  stmt.setString(1, '0');
  stmt.setString(2, 'Hello, world');
  stmt.execute();
}

/**
 * Write 500 rows of data to a table in a single batch.
 */
function writeManyRecords() {
  var conn = Jdbc.getCloudSqlConnection(dbUrl, user, userPwd);
  conn.setAutoCommit(false);

  var start = new Date();
  var stmt = conn.prepareStatement('INSERT INTO entries '
      + '(guestName, content) values (?, ?)');
  for (var i = 0; i < 500; i++) {
    stmt.setString(1, 'Name ' + i);
    stmt.setString(2, 'Hello, world ' + i);
    stmt.addBatch();
  }

  var batch = stmt.executeBatch();
  conn.commit();
  conn.close();

  var end = new Date();
  Logger.log('Time elapsed: %sms for %s rows.', end - start, batch.length);
}
    </script>