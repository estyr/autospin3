<link href="css/newcarlotsad.css" rel="stylesheet" />
<%@ language="VBScript" codepage="65001" %><% Response.CharSet = "utf-8" %>
<%  
    PageName = "CarLotAds"
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

<div  id="CarLotAdsDiv" class="CarLotAdsDiv" >
    <div id="bg"class="bg">
    <div class="divInsideHeaderWhite" id="divInsideHeaderWhite" >
        <div  id="Car_Lot_Ads_image_and_name" class="Car_Lot_Ads_image_and_name ">
        <img  src="<% = StrUserImageFile %>" class="Car_Lot_Pro_file_Img" style="border-radius: 50%;margin-top:0.9%;"id="Car_Lot_Pro_file_Img"/>
        <div line-height: 1;" class="lots_name"id="lots_name">
            <span style=" font-weight: 400;"class="text1 span_lots_name"id="text1 span_lots_name" ><% = StrCarLotName %></span>
         <br />
            <span class="text2 span_carlots"id="text2 span_carlots"><% = StrCarLotShortText %></span><br />
        </div>
        </div>
        <div class="lotdetails"id="lotdetails">
        <div>    <img src="images/OneAdBox/7_r.png" class="UserPageIcon" /><div class="Car_Lot_Box_Param "><a href="https://maps.google.com/?q=<% = StrCarLotAddress %>" target="_blank"><% = Left(StrCarLotAddress,32) %></a></div>
          </div>  
            <br />
          <div>   <img  src="images/OneAdBox/‏‏Phone.png" class="UserPageIcon" /><div class="Car_Lot_Box_Param"><% = StrCarLotPhone %></div>
               </div>   <br />
        </div>
         <div class="lotdetails lotdetailsm"id="lotdetailsm"style="width: 600;margin-left: -200;">
             <div class="row"style="margin-top:90">
              <div class="column" >
                    <img  src="images/OneAdBox/‏‏Phone.png" style="margin-top: -27;width: 45;;" />
                         <div class="Car_Lot_Box_Param"><% = StrCarLotPhone %></div>
              </div>
              <div class="column" >
                    <img src="images/OneAdBox/7_r.png" />
                         <a style="color: white;font-size: 25;" href="https://maps.google.com/?q=<% = StrCarLotAddress %>" target="_blank"><% = Left(StrCarLotAddress,32) %></a>
              </div>
        </div>         
        </div>
    </div>
    </div>
</div>
<br />
<div style="display:none" id="iscarlot"><% = StrIsCarLot%></div>
<div id="carlotdesc" class="carlotdesc" style="display:none">
    נא להכיר : סוכנות  הרכב <% = StrCarLotName %>. <span id="readmoreless" style="color:#f44336 !important;cursor:pointer" onclick="showDetails()">קרא עוד...</span> <br />
    <div id="divdetails" style="display:none">
        סוכנות הרכב <% = StrCarLotName %>  הממוקמת ב<% = Left(StrCarLotAddress,32) %>, עוסקת בקנייה ומכירת רכב יד שנייה, טרייד אין לרכב יד שנייה, ליסינג לרכב יד שנייה וכמובן מימון לרכב יד שנייה לאלו שצריכים...<br />
        הרכבים המוצעים עי" סוכנות הרכב <% = StrCarLotName %>  עוברים בדיקה מקיפה וקפדנית על מנת להבטיח כי לקוחותיהם אשר רוכשים רכב מיד שנייה או עסקת טרייד אין, יהיו לקוחות מרוצים וחוזרים.<br />
        בסוכנות הרכב <% = StrCarLotName %>  תמצאו מגוון עשיר של רכבי יד שנייה, מכל הסוגים והקטגוריות : רכב פרטי, רכב משפחתי, רכבי יוקרה, רכבי מיני, רכבי ספורט, רכב מסחרי על כל סוגיו, מבחר של ג'יפים עירוניים, ג'יפים יוקרתיים וכמובן שגם רכבי שטח לאוהבי האדרנלין...<br />
        אנו, ב<% = StrCarLotName %>  , מאמינים כי הנכס היקר לנו מכל הוא אתם, לקוחותינו הנאמנים החוזרים אלינו, ואף ממליצים עלינו לאחרים..<br />
        אז אם בא לכם להחליף את הרכב או סתם לבקר...
        <% = StrCarLotName %><span> </span>  <% = Left(StrCarLotAddress,32) %>.
    </div>
</div>
<div id="motorcyclelotdesc" class="motorcyclelotdesc" style="display:none">
    נא להכיר : סוכנות  האופנועים והקטנועים <% = StrCarLotName %>. <span id="readmoreless1" style="color:#f44336 !important;cursor:pointer" onclick="showDetails1()">קרא עוד...</span> <br />
    <div id="divdetails1" style="display:none">
        סוכנות האופנועים והקטנועים <% = StrCarLotName %>  הממוקמת ב<% = Left(StrCarLotAddress,32) %>, עוסקת בקנייה ומכירת אופנועים וקטנועים יד שנייה, טרייד אין לאופנועים וקטנועים יד שנייה, ליסינג לאופנועים וקטנועים יד שנייה וכמובן מימון לאופנועים וקטנועים יד שנייה לאלו שצריכים...<br />
        האופנועים והקטנועים המוצעים עי" סוכנות האופנועים והקטנועים <% = StrCarLotName %>  עוברים בדיקה מקיפה וקפדנית על מנת להבטיח כי לקוחותיהם אשר רוכשים אופנועים וקטנועים מיד שנייה או עסקת טרייד אין, יהיו לקוחות מרוצים וחוזרים.<br />
        בסוכנות האופנועים והקטנועים <% = StrCarLotName %>  תמצאו מגוון עשיר של דו גלגליים יד שנייה, מכל הסוגים והקטגוריות :אופנועים,קטנועים,אופנועי,שטח,אופנועי משלוחים ועוד. ...<br />
        אנו, ב<% = StrCarLotName %>  , מאמינים כי הנכס היקר לנו מכל הוא אתם, לקוחותינו הנאמנים החוזרים אלינו, ואף ממליצים עלינו לאחרים..<br />
        אז אם בא לכם להחליף את האופנוע או סתם לבקר...
        <% = StrCarLotName %><span> </span>  <% = Left(StrCarLotAddress,32) %>.
    </div>
</div>
<script type="text/javascript">
    if ($('#iscarlot').text() == '0') {
        $('.motorcyclelotdesc').css("display", "block");
    }
    else {
        $('.carlotdesc').css("display", "block");
    }

    function showDetails() {
        if ($('#readmoreless').text() == "קרא עוד...") {
            $('#readmoreless').text(" הסתר. ");
            $('#divdetails').css("display", "block");
        }
        else {
            $('#readmoreless').text("קרא עוד...");
            $('#divdetails').css("display", "none");
        }
    }
    function showDetails1() {
        if ($('#readmoreless1').text() == "קרא עוד...") {
            $('#readmoreless1').text(" הסתר. ");
            $('#divdetails1').css("display", "block");
        }
        else {
            $('#readmoreless1').text("קרא עוד...");
            $('#divdetails1').css("display", "none");
        }
    }
</script>
<div id="WrapList">
<div id="CarLotBoxList"class="CarLotBoxList"></div>
    </div>

<script type="text/javascript">
    if (getBrowser()=== "edge") {
                $("#CarLotSrcInput").css("margin-right", "0");
                $(".edgesearch").css("margin-right", "150px");
                $("#sideMenuBar").css('background', 'rgba(42,42,42,0.5)');
                $(".backgroundSignInDiv").css('background', 'rgba(49,49,49,0.5)');
                $(".backgroundregistration").css('background', 'rgba(49,49,49,0.5)');
                $(".contactUsBackground").css('background', 'rgba(49,49,49,0.5)');
                $(".input").addClass('inputedge');
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
    var Page = 1;
    GetUserModaotListForCarLots(Page,<% = Clng(StrCarLotUserID) %>);
    $(window).scroll(function () {
        var hT = $('#scroll-to').offset().top,
            hH = $('#scroll-to').outerHeight(),
            wH = $(window).height(),
            wS = $(this).scrollTop();
        if (wS > (hT + hH - wH)) {
            Page = Page + 1;
            GetUserModaotListForCarLots(Page,<% = Clng(StrCarLotUserID) %>);
        }
    });
</script>
<!--#include file="inc_bottom.asp"-->
<style>
    .carlotdesc{
        margin-top: 260;
        margin-bottom: -250;        
        padding-left:400px;
        padding-right:400px;
        font-size:20px;
    }
    .motorcyclelotdesc{
        margin-top: 260;
        margin-bottom: -250;        
        padding-left:400px;
        padding-right:400px;
        font-size:20px;
    }

    @media only screen and (min-width: 825px) {
        #Car_Lot_Ads_image_and_name{
            margin-top: 5%;}
        }
        #lotdetails{
            margin-top: 5%;
        }
        .CarLotBoxList{
                margin-top: 250;
        }
        .CarLotAdsDiv{
            height:200;
        }
        .divInsideHeaderWhite{
              transform: scale(0.7);
              margin-top: 10;
          }
        #Footer{
            position:relative;
            }
        #CarLotAdsDiv {
            background-image: url(../images/topbarimg.png);
        }
    @media only screen and (max-width: 1500px) {
        #CarLotAdsDiv{
            position: fixed;
            margin-top: 25;
        }
        #Footer{
            position:relative;
        }
    }
    * {
  box-sizing: border-box;
}

/* Create two equal columns that floats next to each other */
.column {
  float: left;
  width: 50%;
  padding: 10px;
  height: 100px; /* Should be removed. Only for demonstration */
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}
    @media only screen and (max-width: 600px) {
        #carlotdesc {
        margin-top: 150;
        margin-bottom: -210;
        padding: 20px;        
        }
        #readmoreless{
            margin-right:30px;
        }
        #motorcyclelotdesc {
        margin-top: 150;
        margin-bottom: -210;
        padding: 20px;        
        }
        #readmoreless1{
            margin-right:30px;
        }
    }

</style>