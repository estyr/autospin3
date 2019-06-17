<%@  language="VBScript" codepage="65001" %>
<% Response.CharSet = "utf-8" %>
<%  
    PageName = "search"
    MenuLink1 = "On"
    If Len(Request("ManufacturerID") & "") =0 and Len(Request("ModelID") & "") =0 Then
    If Request.QueryString("ModelTypeID") = 0 and Request("SubModelTypeID") ="" Then
    StrTitle = "האפליקציה שתמצא לך רכב!"
    StrKeywords = StrTitle
    StrDescription = StrTitle
    StrFaceBookImage = "https://autospin.co.il/files/AppImages/gemeralFacebookImage.PNG"
    StrJs = ""    
    End if
    If Request.QueryString("ModelTypeID") = 1 and Request("SubModelTypeID") ="" Then
    StrTitle = "רכבים פרטיים יד שניה"
    StrKeywords = StrTitle
    StrDescription = StrTitle
    StrFaceBookImage = "https://autospin.co.il/files/AppImages/privateFamily.jpg"
    StrJs = ""    
    End if
    If Request.QueryString("ModelTypeID") = 2 and Request("SubModelTypeID") ="" Then
    StrTitle = "ג'יפים יד שניה"
    StrKeywords = StrTitle
    StrDescription = StrTitle
    StrFaceBookImage = "https://autospin.co.il/files/AppImages/prestigious.jpg"
    StrJs = ""    
    End if
    If Request.QueryString("ModelTypeID") = 3 and Request("SubModelTypeID") ="" Then
    StrTitle = "דו גלגליים יד שניה"
    StrKeywords = StrTitle
    StrDescription = StrTitle
    StrFaceBookImage = "https://autospin.co.il/files/AppImages/Two-wheelscooter.jpg"
    StrJs = ""   
    End if
    If Request.QueryString("ModelTypeID") = 4 and Request("SubModelTypeID") ="" Then
    StrTitle = "רכבים מסחריים יד שניה"
    StrKeywords = StrTitle
    StrDescription = StrTitle
    StrFaceBookImage = "https://autospin.co.il/files/AppImages/commercial%20.jpg"
    StrJs = ""   
    End if
    If Request.QueryString("ModelTypeID") = 5 and Request("SubModelTypeID") ="" Then
    StrTitle = "רכבי פנאי יד שניה"
    StrKeywords = StrTitle
    StrDescription = StrTitle
    StrFaceBookImage = "https://autospin.co.il/files/AppImages/leisure.jpg"
    StrJs = ""    
    End if
    If Request.QueryString("ModelTypeID") = 1 and Request("SubModelTypeID") ="6" Then
    StrTitle = "רכבי אספנות יד שניה"
    StrKeywords = StrTitle
    StrDescription = StrTitle
    StrFaceBookImage = "https://autospin.co.il/files/AppImages/Collectibles.jpg"
    StrJs = ""    
    End if
    If Request.QueryString("ModelTypeID") = 1 and Request("SubModelTypeID") ="26" Then
    StrTitle = "רכבי ואן SUV יד שניה"
    StrKeywords = StrTitle
    StrDescription = StrTitle
    StrFaceBookImage = "https://autospin.co.il/files/AppImages/vanSuv.jpg"
    StrJs = ""    
    End if
    If Request.QueryString("ModelTypeID") = 1 and Request("SubModelTypeID") ="5" Then
    StrTitle = "רכבי יוקרה יד שניה"
    StrKeywords = StrTitle
    StrDescription = StrTitle
    StrFaceBookImage = "https://autospin.co.il/files/AppImages/privateprestigious.jpg"
    StrJs = ""    
    End if
    If Request.QueryString("ModelTypeID") = 1 and Request("SubModelTypeID") ="4" Then
    StrTitle = "רכבי מיני יד שניה"
    StrKeywords = StrTitle
    StrDescription = StrTitle
    StrFaceBookImage = "https://autospin.co.il/files/AppImages/mini.jpg"
    StrJs = ""    
    End if
    If Request.QueryString("ModelTypeID") = 1 and Request("SubModelTypeID") ="1" Then
    StrTitle = "רכבים משפחתיים יד שניה"
    StrKeywords = StrTitle
    StrDescription = StrTitle
    StrFaceBookImage = "https://autospin.co.il/files/AppImages/privateFamily.jpg"
    StrJs = ""   
    End if
    If Request.QueryString("ModelTypeID") = 1 and Request("SubModelTypeID") ="2" Then
    StrTitle = "רכבי ספורט יד שניה"
    StrKeywords = StrTitle
    StrDescription = StrTitle
    StrFaceBookImage = "https://autospin.co.il/files/AppImages/sport.jpg"
    StrJs = ""    
    End if
    If Request.QueryString("ModelTypeID") = 1 and Request("SubModelTypeID") ="3" Then
    StrTitle = "רכבי קבריולט יד שניה"
    StrKeywords = StrTitle
    StrDescription = StrTitle
    StrFaceBookImage = "https://autospin.co.il/files/AppImages/Cabriolet.jpg"
    StrJs = ""    
    End if
    If Request.QueryString("ModelTypeID") = 1 and Request("SubModelTypeID") ="24" Then
    StrTitle = "רכבי קופה יד שניה"
    StrKeywords = StrTitle
    StrDescription = StrTitle
    StrFaceBookImage = "https://autospin.co.il/files/AppImages/cupe.jpg"
    StrJs = ""    
    End if
    If Request.QueryString("ModelTypeID") = 2 and Request("SubModelTypeID") ="9" Then
    StrTitle = "ג'יפים יוקרתיים יד שניה"
    StrKeywords = StrTitle
    StrDescription = StrTitle
    StrFaceBookImage = "https://autospin.co.il/files/AppImages/prestigious.jpg"
    StrJs = ""   
    End if
    If Request.QueryString("ModelTypeID") = 2 and Request("SubModelTypeID") ="7" Then
    StrTitle = "ג'יפים עירוניים יד שניה"
    StrKeywords = StrTitle
    StrDescription = StrTitle
    StrFaceBookImage = "https://autospin.co.il/files/AppImages/urbanjeep.jpg"
    StrJs = ""    
    End if
    If Request.QueryString("ModelTypeID") = 2 and Request("SubModelTypeID") ="8" Then
    StrTitle = "רכבי שטח יד שניה"
    StrKeywords = StrTitle
    StrDescription = StrTitle
    StrFaceBookImage = "https://autospin.co.il/files/AppImages//SUV.jpg"
    StrJs = ""    
    End if
    If Request.QueryString("ModelTypeID") = 3 and Request("SubModelTypeID") ="10" Then
    StrTitle = "אופנועים יד שניה"
    StrKeywords = StrTitle
    StrDescription = StrTitle
    StrFaceBookImage = "https://autospin.co.il/files/AppImages//motor.jpg"
    StrJs = ""    
    End if
    If Request.QueryString("ModelTypeID") = 3 and Request("SubModelTypeID") ="25" Then
    StrTitle = "אופנועי שטח יד שניה"
    StrKeywords = StrTitle
    StrDescription = StrTitle
    StrFaceBookImage = "https://autospin.co.il/files/AppImages//Spacemotorcycle.jpg"
    StrJs = ""    
    End if
    If Request.QueryString("ModelTypeID") = 3 and Request("SubModelTypeID") ="11" Then
    StrTitle = "קטנועים יד שניה"
    StrKeywords = StrTitle
    StrDescription = StrTitle
    StrFaceBookImage = "https://autospin.co.il/files/AppImages/Two-wheelscooter.jpg"
    StrJs = ""   
    End if
    If Request.QueryString("ModelTypeID") = 4 and Request("SubModelTypeID") ="21" Then
    StrTitle = "אוטובוסים יד שניה"
    StrKeywords = StrTitle
    StrDescription = StrTitle
    StrFaceBookImage = "https://autospin.co.il/files/AppImages/bus.jpg"
    StrJs = ""    
    End if
    If Request.QueryString("ModelTypeID") = 4 and Request("SubModelTypeID") ="14" Then
    StrTitle = "טנדרים יד שניה"
    StrKeywords = StrTitle
    StrDescription = StrTitle
    StrFaceBookImage = "https://autospin.co.il/files/AppImages/van.jpg"
    StrJs = ""    
    End if
    If Request.QueryString("ModelTypeID") = 4 and Request("SubModelTypeID") ="12" Then
    StrTitle = "מוניות יד שניה"
    StrKeywords = StrTitle
    StrDescription = StrTitle
    StrFaceBookImage = "https://autospin.co.il/files/AppImages/taxi.jpg"
    StrJs = ""    
    End if
    If Request.QueryString("ModelTypeID") = 4 and Request("SubModelTypeID") ="22" Then
    StrTitle = "מיניבוסים יד שניה"
    StrKeywords = StrTitle
    StrDescription = StrTitle
    StrFaceBookImage = "https://autospin.co.il/files/AppImages/minibus.jpg"
    StrJs = ""   
    End if
    If Request.QueryString("ModelTypeID") = 4 and Request("SubModelTypeID") ="13" Then
    StrTitle = "רכבים מסחריים יד שניה"
    StrKeywords = StrTitle
    StrDescription = StrTitle
    StrFaceBookImage = "https://autospin.co.il/files/AppImages/commercial%20.jpg"
    StrJs = ""    
    End if
    If Request.QueryString("ModelTypeID") = 4 and Request("SubModelTypeID") ="16" Then
    StrTitle = "משאיות יד שניה"
    StrKeywords = StrTitle
    StrDescription = StrTitle
    StrFaceBookImage = "https://autospin.co.il/files/AppImages/truck.jpg"
    StrJs = ""    
    End if
    If Request.QueryString("ModelTypeID") = 4 and Request("SubModelTypeID") ="15" Then
    StrTitle = "נגררים יד שניה"
    StrKeywords = StrTitle
    StrDescription = StrTitle
    StrFaceBookImage = "https://autospin.co.il/files/AppImages/dragged.jpg"
    StrJs = ""    
    End if
    If Request.QueryString("ModelTypeID") = 4 and Request("SubModelTypeID") ="23" Then
    StrTitle = "צמ'ה יד שניה"
    StrKeywords = StrTitle
    StrDescription = StrTitle
    StrFaceBookImage = "https://autospin.co.il/files/AppImages/mee.jpg"
    StrJs = ""    
    End if
    If Request.QueryString("ModelTypeID") = 5 and Request("SubModelTypeID") ="18" Then
    StrTitle = "אופנועי ים יד שניה"
    StrKeywords = StrTitle
    StrDescription = StrTitle
    StrFaceBookImage = "https://autospin.co.il/files/AppImages/leisure.jpg"
    StrJs = ""    
    End if
    If Request.QueryString("ModelTypeID") = 5 and Request("SubModelTypeID") ="20" Then
    StrTitle = "אופניים יד שניה"
    StrKeywords = StrTitle
    StrDescription = StrTitle
    StrFaceBookImage = "https://autospin.co.il/files/AppImages/bycicle.jpg"
    StrJs = ""    
    End if
    If Request.QueryString("ModelTypeID") = 5 and Request("SubModelTypeID") ="17" Then
    StrTitle = "טרקטורונים יד שניה"
    StrKeywords = StrTitle
    StrDescription = StrTitle
    StrFaceBookImage = "https://autospin.co.il/files/AppImages/ATV.JPG"
    StrJs = ""    
    End if
    If Request.QueryString("ModelTypeID") = 5 and Request("SubModelTypeID") ="19" Then
    StrTitle = "סירות יד שניה"
    StrKeywords = StrTitle
    StrDescription = StrTitle
    StrFaceBookImage = "https://autospin.co.il/files/AppImages/boat.jpg"
    StrJs = ""    
    End if
    If Len(Request("EndPrice") & "") >0 Then
    StrTitle = StrTitle & " עד " & Clng(Request("EndPrice")) & " ₪ "
    StrKeywords = StrTitle
    StrDescription = StrTitle
    StrJs = ""    
    End if
    End if
%>
<!--#include file="inc_top.asp"-->

<script>
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
    <img height="1" width="1"
        src="https://www.facebook.com/tr?id=312120826297188&ev=PageView&noscript=1" />
</noscript>
‎<!-- Global site tag (gtag.js) - Google Ads: 774923385 -->
<script async src="https://www.googletagmanager.com/gtag/js?id=AW-774923385"></script>
<script>        window.dataLayer = window.dataLayer || []; function gtag() { dataLayer.push(arguments); }
        gtag("js", new Date()); gtag("con
        fig", "AW-774923385"); </script>
‎
   
</head>
<link href="css/w3s.css" rel="stylesheet" />
<input type="hidden" name="FilterWebType" id="FilterWebType" value="0" />
<input type="text" name="url" id="url" style="display: none;" />
<div id="topBarsearch" class="w3-panel topBar" style="position: relative">
    <div id="FilterDivWebSite" class="FilterDivWebSite" style="border-bottom-right-radius: 10px; border-bottom-left-radius: 10px" onclick="localStorage.removeItem('ffffffffffff1'); localStorage.removeItem('ffffffffffff');">
        <div class="w3-row w3-padding-small" id="searchparm">
            <div class="w3-third">
                <select class="w3-round-large input w3-half" id="SubModelnew">
                    <option value="" disabled selected>תת דגם</option>
                </select>
                <select class="w3-round-large input w3-half" id="ModelID" name="ModelID">
                    <option value="" disabled selected>בחר דגם</option>
                </select>
            </div>
            <div class="w3-third">
                <select class="w3-round-large input w3-half" id="ManufacturerID" name="ManufacturerID" onchange="javascript:FillSelect('ModelID',this.value);">
                    <option value="" disabled selected>בחר יצרן</option>
                </select>
                <select class="w3-round-large input w3-half SubModelTypeID" id="SubModelTypeID" name="SubModelTypeID" onchange="javascript:FillSelect('ModelID',document.getElementById('ManufacturerID').value);">
                    <option value="" disabled selected>בחר קטגוריה</option>
                </select>
            </div>
            <div class="w3-third">
                <select class="w3-round-large input ModelTypeID" id="ModelTypeID" name="ModelTypeID" onchange="javascript:FillSelect('SubModelTypeID', this.value); FillSelect('ManufacturerID', this.value);">
                    <option value="0" disabled selected>סוג רכב</option>
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
                <input class="w3-round-large input w3-third text-input" placeholder="עד מחיר" name="EndPrice" id="EndPrice" onkeypress="return numbersonly(this, event)" />
                <input class="w3-round-large input w3-third text-input" placeholder="ממחיר" name="StartPrice" id="StartPrice" onkeypress="return numbersonly(this, event)" />
                <select class="w3-round-large input w3-third" name="EndYear" id="EndYear">
                    <option value="" disabled selected>עד שנה</option>
                    <% For IRun = 1980 To 2019 %>
                    <option value="<% = IRun %>"><% = IRun %></option>
                    <% Next %>
                </select>
            </div>
            <div class="w3-half">
                <select class="w3-round-large input w3-third" name="StartYear" id="StartYear">
                    <option value="" disabled selected>משנה</option>
                    <% For IRun = 1980 To 2019 %>
                    <option value="<% = IRun %>"><% = IRun %></option>
                    <% Next %>
                </select>
                <input id="kilometer" name="kilometer" class="w3-round-large input w3-third text-input" onkeypress="return numbersonly(this, event)" placeholder="קילומטר" />
                <select class="w3-round-large input w3-third" id="Area" name="Area">
                    <option value="" disabled selected>אזור בארץ</option>
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
                <a href="#" id="filterButton" class="filterButtonserchpage filterButtonserchpageM  w3-round w3-red w3-hover-green w3-third" onclick="javascript:  GetModaotListWeb_filter(Page, 'Start');">
                    <span>חיפוש</span><i id="magnifying-glass" class="w3-margin-right"></i>
                </a>
                <select id="HandNumber" name="HandNumber" class="w3-round-large input w3-third">
                    <option value="" disabled selected>יד</option>
                    <% For IRun = 1 To 8 %>
                    <option value="<% = IRun %>"><% = IRun %></option>
                    <% Next %>
                </select>
                <select class="w3-round-large input w3-third" id="Gearbox1" name="Gearbox1">
                    <option value="-1" disabled selected>תיבת הילוכים</option>
                    <option value="100">אוטומט</option>
                    <option value="0">ידני</option>
                </select>
            </div>
            <div class="w3-half">
                <input class="w3-round-large input w3-third text-input" placeholder="צבע" type="text" id="CarColor" name="CarColor" />
                <input class="w3-round-large input w3-third text-input" placeholder="נפח מנוע" id="EngineCapacity" name="EngineCapacity" onkeypress="return numbersonly(this, event)" />
                <select class="w3-round-large input w3-third" id="CarEngineType" name="CarEngineType">
                    <option value="-1" disabled selected>סוג מנוע</option>
                    <option value="2">היברידי</option>
                    <option value="0">בנזין</option>
                    <option value="1">דיזל</option>
                </select>
                <div id="mobileFilter" class="mobileFilter" style="font-size: 25px; margin-top: 80px">
                    <span class="w3-margin-left">סינון</span>
                    <button id="opensearchdiv" class="w3-circle opensearchDiv downbu " style="cursor: pointer" onclick="opensearchdiv()"><i class="i arrow down"></i></button>
                    <button id="closesearchdiv" class="w3-circle opensearchDiv upbu" style="cursor: pointer; display: none" onclick="closesearchdiv()"><i class="i arrow up"></i></button>
                </div>
            </div>
        </div>
    </div>
</div>
<a href="javascript: if (localStorage.getItem('lastsearch1') === window.location.href) { }else if (localStorage.getItem('lastsearch1') === '1') { var f = localStorage.getItem('lastsearch');window.location = f;localStorage.removeItem('lastsearch1'); localStorage.setItem('lastsearch1', '2');}">חיפושים אחרונים</a>
<script type="text/javascript">
    //if (localStorage.getItem("ddddddd") == null || localStorage.getItem("ddddddd") === window.location.href) {  
    setInterval(function(){ var b = window.location.href; localStorage.removeItem('lastsearch'); localStorage.setItem('lastsearch', b);localStorage.removeItem('lastsearch1'); localStorage.setItem('lastsearch1','1'); }, 1000);   
    document.getElementById('ManufacturerID').addEventListener('click', Manufacturerwarn, true);
    function Manufacturerwarn(e) {
        e.preventDefault();
        e.stopPropagation();
        if (document.getElementById('ModelTypeID').value == 0) {
            $('#ModelTypeID').addClass(' w3-border-red ');
            $('#ModelTypeID').css('border-color', '#ed0007 !important');
        }
    }
    document.getElementById('SubModelTypeID').addEventListener('click', Manufacturerwarn, true);
    document.getElementById('lastsearch').addEventListener('click', Manufacturerwarn, true);
    function Manufacturerwarn(e) {
        e.preventDefault();
        e.stopPropagation();
        if (document.getElementById('ModelTypeID').value == 0) {
            $('#ModelTypeID').addClass(' w3-border-red ');
            $('#ModelTypeID').css('border-color', '#ed0007 !important');
        }
    }
    document.getElementById('ModelID').addEventListener('click', Modelwarn, true);
    function Modelwarn(e) {
        e.preventDefault();
        e.stopPropagation();
        if (document.getElementById('ManufacturerID').value == 0) {
            $('#ManufacturerID').addClass('w3-border-red');
            $('#ManufacturerID').css('border-color', '#ed0007 !important');
        }
    }
    document.getElementById('SubModelnew').addEventListener('click', ubModelnewwarn, true);
    function ubModelnewwarn(e) {
        e.preventDefault();
        e.stopPropagation();
        if (document.getElementById('ModelID').value == 0) {
            $('#ModelID').addClass('w3-border-red');
            $('#ModelID').css('border-color', '#ed0007 !important');
        }
    }
    document.getElementById('ModelTypeID').addEventListener('change', ModelTypechange, true);
    function ModelTypechange(e) {
        e.preventDefault();
        e.stopPropagation();
        $('#ModelTypeID').removeClass(' w3-border-red ');
    }
    document.getElementById('ManufacturerID').addEventListener('change', Manufacturerchange, true);
    function Manufacturerchange(e) {
        e.preventDefault();
        e.stopPropagation();
        $('#ManufacturerID').removeClass(' w3-border-red ');
    }
    document.getElementById('ModelID').addEventListener('change', Modelchange, true);
    function Modelchange(e) {
        e.preventDefault();
        e.stopPropagation();
        $('#ModelID').removeClass(' w3-border-red ');
    }
    function opensearchdiv() {
        $('#FilterDivWebSite').css("margin-top", "560px");
        $('.ModaoBoxListsearch').css("margin-top", "1300px");
        $('#FilterDivWebSite').css("position", "absolute");
        $('#closesearchdiv').css("display", "inline-block");
        $('#opensearchdiv').css("display", "none");
    }
    function closesearchdiv() {
        $('#FilterDivWebSite').css("margin-top", "-470px");
        $('.ModaoBoxListsearch').css("margin-top", "300px");
        $('#FilterDivWebSite').css("position", "fixed");
        $('#closesearchdiv').css("display", "none");
        $('#opensearchdiv').css("display", "inline-block");
    }

    if (getBrowser() === "edge") {
        $("#FilterDivWebSite").addClass('searchedge');
        $(".input").addClass('inputedge');
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
    .searchedge {
        background: -moz-linear-gradient(top, rgba(42,42,42,0.5) 0%, rgba(42,42,42,0.5) 1%, rgba(42,42,42,0.5) 99%, rgba(42,42,42,0.5) 100%); /* FF3.6-15 */
        background: -webkit-linear-gradient(top, rgba(42,42,42,0.5) 0%,rgba(42,42,42,0.5) 1%,rgba(42,42,42,0.5) 99%,rgba(42,42,42,0.5) 100%); /* Chrome10-25,Safari5.1-6 */
        background: linear-gradient(to bottom, rgba(42,42,42,0.5) 0%,rgba(42,42,42,0.5) 1%,rgba(42,42,42,0.5) 99%,rgba(42,42,42,0.5) 100%); /* W3C, IE10+, FF16+, Chrome26+, Opera12+, Safari7+ */
        filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#802a2a2a', endColorstr='#802a2a2a',GradientType=0 );
    }

    .inputedge {
        background: rgba(42,42,42,0.5);
    }

    .topBar {
        margin-top: 480px
    }

    .mobileFilter {
        display: none;
    }

    .opensearchDiv {
        z-index: 1111;
        padding: 10px;
        display: inline-block;
        border: 1px solid #c5c4c4;
        margin-bottom: 7px;
        background-color: #161616;
        overflow: hidden;
        text-decoration: none;
        color: inherit;
        background-color: inherit;
        outline: none;
        cursor: pointer;
    }

    .doctitle {
        position: absolute;
    }

    .FilterDivWebSite {
        position: relative;
        margin-top: 50px
    }

    @media only screen and (max-width: 600px) {
        #FilterDivWebSite {
            margin-top: -470px;
        }

        #FilterDivWebSite {
            position: fixed
        }

        #closesearchdiv {
            display: none
        }

        #opensearchdiv {
            display: inline-block
        }

        #ModaoBoxList {
            height: max-content;
        }
    }
</style>
<input type="text" name="noresult" id="noresult" style="display: none" />
<div style="display: flex; align-items: center; justify-content: center; margin-bottom: -170px; position: relative">
    <h1 id="doctitle" class="doctitle"></h1>
</div>
<div id="ModaoBoxList" class="ModaoBoxListsearch ModaoBoxList"></div>
<% If request.QueryString("Mode") = "filter" Then%>
<script type="text/javascript">
    // <![CDATA[
    var ModelTypeID = '<%=Request.QueryString("ModelTypeID")%>';
    $("#ModelTypeID option[value=" + ModelTypeID + "]").attr("selected", true);
    FillSelect('SubModelTypeID', ModelTypeID);
    var SubModelTypeID = '<%=Request.QueryString("SubModelTypeID")%>';
    $("#SubModelTypeID option[value=" + SubModelTypeID + "]").attr("selected", true);
    FillSelect('ManufacturerID', ModelTypeID);
    var ManufacturerID = '<%=Request.QueryString("ManufacturerID")%>';
    $("#ManufacturerID option[value=" + ManufacturerID + "]").attr("selected", true);
    FillSelect('ModelID', ManufacturerID);
    var ModelID = '<%=Request.QueryString("ModelID")%>';
    $("#ModelID option[value=" + ModelID + "]").attr("selected", true);
    var HandNumber = '<%=Request.QueryString("HandNumber")%>';
    $("#HandNumber option[value=" + HandNumber + "]").attr("selected", true);
    var Area = '<%=Request.QueryString("Area")%>';
    $("#Area option[value=" + Area + "]").attr("selected", true);
    var StartYear = '<%=Request.QueryString("StartYear")%>';
    $("#StartYear option[value=" + StartYear + "]").attr("selected", true);
    var EndYear = '<%=Request.QueryString("EndYear")%>';
    $("#EndYear option[value=" + EndYear + "]").attr("selected", true);
    var StartPrice = '<%=Request.QueryString("StartPrice")%>';
    $('#StartPrice').val(StartPrice);
    var EndPrice = '<%=Request.QueryString("EndPrice")%>';
    $('#EndPrice').val(EndPrice);
    var kilometer = '<%=Request.QueryString("kilometer")%>';
    $('#kilometer').val(kilometer);
    var CarEngineType = '<%=Request.QueryString("CarEngineType")%>';
    $("#CarEngineType option[value=" + CarEngineType + "]").attr("selected", true);
    var EngineCapacity = '<%=Request.QueryString("EngineCapacity")%>';
    $('#EngineCapacity').val(EngineCapacity);
    var CarColor = '<%=Request.QueryString("CarColor")%>';
    $('#CarColor').val(CarColor);
    var Gearbox1 = '<%=Request.QueryString("Gearbox1")%>';
    $("#Gearbox1 option[value=" + Gearbox1 + "]").attr("selected", true);

    var Page = 1;
    GetModaotListWeb_f(Page, 'Start', ModelTypeID, SubModelTypeID, ManufacturerID, ModelID, HandNumber, Area, StartYear, EndYear, StartPrice, EndPrice, kilometer, CarEngineType, EngineCapacity, CarColor, Gearbox1);
    $(window).scroll(function () {
        //var hT = $('#scroll-to').offset().top,
        //    hH = $('#scroll-to').outerHeight(),
        //    wH = $(window).height(),
        //    wS = $(this).scrollTop();
        //if (wS > (hT + hH - wH)) {
        Page = Page + 1;
        sessionStorage.Page = Page;
        sessionStorage.scrollPos = $(window).scrollTop();
        GetModaotListWeb_f(Page, 'Pageing', ModelTypeID, SubModelTypeID, ManufacturerID, ModelID, HandNumber, Area, StartYear, EndYear, StartPrice, EndPrice, kilometer, CarEngineType, EngineCapacity, CarColor, Gearbox1);
        //}
    });
        // ]]>
</script>
<%Else %>
<script type="text/javascript">
    // <![CDATA[
    var Page = 1;
    document.getElementById('ModelTypeID').value = 1;
    GetModaotList(Page, 'Start');
    document.getElementById('ModelTypeID').value = 0;
    $(window).scroll(function () {
        //var hT = $('#scroll-to').offset().top,
        //    hH = $('#scroll-to').outerHeight(),
        //    wH = $(window).height(),
        //    wS = $(this).scrollTop();
        //if (wS > (hT + hH - wH)) {
        Page = Page + 1;
        document.getElementById('ModelTypeID').value = 1;
        GetModaotList(Page, 'Pageing');
        document.getElementById('ModelTypeID').value = 0;
        //}
    });
    // ]]>
</script>
<%End If %>
<button class="w3-circle scroolTopBu" style="position: fixed;" onclick="topFunction()" id="scroolTopBusearch"><i class="scroolTopBui arrow up"></i></button>
<button class="w3-circle upDownButton upbu" style="position: fixed" onclick="openFooter()"><i class="i arrow up"></i></button>
<button class="w3-circle upDownButton downbu" style="position: fixed; margin-bottom: 210px; display: none" onclick="openFooter()"><i class="i arrow down"></i></button>

<!--#include file="inc_bottom.asp"-->
<script type="text/javascript">
    if (sessionStorage.Page) {
        $(window).scrollTop(sessionStorage.scrollPos + 20);
        GetModaotList(sessionStorage.Page, 'Pageing');
    }
    var EndPrice = '<%=Request.QueryString("EndPrice")%>';
    if (document.title == 'אוטוספין - האפליקציה שתמצא לך רכב!')
        $('#doctitle').text("");
    else
        $('#doctitle').text(document.title.split("-")[1]);
    if ($(window).width() < 825) {
        $('#Footer').css("visibility", 'collapse');
        $('.upDownButton ').css("visibility", 'collapse');
        $('.scroolTopBu').css('display', 'none');
    }

    $('#Footer').css("position", 'fixed');
    $('#Footer').css("margin-bottom", '-210px');

    function openFooter() {
        if ($('#Footer').css("margin-bottom") != '0px') {
            $('.upbu').css('display', 'none');
            $('#Footer').css("transition", 'margin-bottom 1s');
            $('#Footer').css("margin-bottom", '0px');
            setTimeout(function () {
                $('.downbu').css('display', 'inline-block');
            }, 1000);
        }
        else {
            $('.downbu').css('display', 'none');
            $('#Footer').css("transition", 'margin-bottom 1s');
            $('#Footer').css("margin-bottom", '-210px');
            setTimeout(function () {
                $('.upbu').css('display', 'inline-block');
            }, 1000);
        }
    }

    // When the user scrolls down 20px from the top of the document, show the button
    window.onscroll = function () { scrollFunction() };

    function scrollFunction() {
        if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
            $('.scroolTopBu').css('display', 'inline-block');
        } else {
            $('.scroolTopBu').css('display', 'none');

        }
    }

    // When the user clicks on the button, scroll to the top of the document
    function topFunction() {
        document.body.scrollTop = 0; // For Safari
        document.documentElement.scrollTop = 0; // For Chrome, Firefox, IE and Opera
    }

</script>

<script type="text/javascript">
    document.body.scrollTop = 0; // For Safari
    document.documentElement.scrollTop = 0; // For Chrome, Firefox, IE and Opera

    if ($(window).width() < 825) {
        $('#doctitle').css("display", "none");
    }
    var Page = 1;
    if (document.getElementById("SimilarCarDivHead").textContent == 'לא נמצאו תוצאות לחיפושיך. אולי תמצא עניין באלו') {
        if ($(window).width() < 825) {
            $('.ModaoBoxListsearch').css("margin-top", "-1020");
        }
        var Page = 1;
        if (document.getElementById('ModelTypeID').value == 5)
            document.getElementById('ModelTypeID').value = 1;
        GetModaotList1asSWSWQ(Page, 'Start');
    }

</script>
<style>
    .ModaoBoxList {
        height: max-content;
    }
</style>
