<%@ language="VBScript" codepage="65001" %><% Response.CharSet = "utf-8" %>
<%  
    PageName = "Video"
    MenuLink6 = "On"
    StrFaceBookImage = "https://autospin.co.il/files/AppImages/appimage.PNG"
    StrTitle = " האפליקציה שתמכור לך את הרכב!"
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
    <link href="css/NewHeadert.css" rel="stylesheet" />
    <link href="css/w3s.css" rel="stylesheet" />
    <link href="css/HomePage.css" rel="stylesheet" />

</head>  
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
    </script>

<a href="https://itunes.apple.com/us/app/%D7%90%D7%95%D7%98%D7%95%D7%A1%D7%A4%D7%99%D7%9F/id1375533179?l=iw&amp;ls=1&amp;mt=8" class="w3-margin-right" target="_blank">
<div id="applestore"class="applestore" ></div></a>
<a href="https://play.google.com/store/apps/details?id=com.appgate.autospin" target="_blank">
<div id="googleplay" class="googleplay" ></div></a>
<img src="images/shimshonit-red.jpg" id="shimshonit"class="shimshonit" />
<div class="w3-row-padding GuideVideo app" style="transform:scale(0.9);margin-right:110px">    
    <div class="w3-half " id="appVideo" >
        <iframe width="400" height="250" src="https://www.youtube.com/embed/q3nH9feLTc8" border="0" onscroll="no" frameborder="0" style="border:none;"  allow="autoplay; encrypted-media" allowfullscreen></iframe>
        <div >
        <p class="videoTitle boldText">רוצים לפרסם?</p>
        <p class="videoContent boldText">הורידו את האפליקציה חינם:</p>
        <p id="afterSend" class="videoInput w3-border w3-border-gray w3-margin-top w3-round">קישור נשלח בהצלחה</p>
        <form id="InviteSmsForm" name="InviteSmsForm" action="CheckAndSubmitInviteSms();" style="display:inline-block" method="post">
            <input type="text" class="videoInput w3-border w3-border-gray w3-margin-top radius5"  name="InviteSmsPhone" id="InviteSmsPhone" maxlength="12"  value="הכנס מספר טלפון" onKeyPress="return numbersonly(this, event);" onblur="javascript:if(this.value==''){this.value='הכנס מספר טלפון'};" onfocus="javascript:if(this.value=='הכנס מספר טלפון'){this.value='';}" />
            <a class="sendButton w3-black w3-round" href="javascript:CheckAndSubmitInviteSms();">שלח קישור</a>  
        </form>
        </div>
    </div>
    <div class="w3-half appText" id="appText" style="padding-right:0px;" >
        <p class="description">הורד עכשיו את אפליקציית אוטוספין ותתחיל להנות מחוויה שטרם הכרת.<br /> עם הטכנולוגיה הייחודית לאוטוספין לצילום והצגת פנים הרכב ב- 360 מעלות.</p><br />
        <p class="description"><span class="boldText">מוכר? </span>בדקות ספורות רכבך יפורסם בכל מקום אפשרי לחשיפה מירבית ומכירה מהירה.</p><br />
        <p class="description"><span class="boldText">סוג הרכב? תקציב? </span>עם פילוח מדוייק תמצא את מבוקשך.<br />אוטוספין, פלטפורמה לרכישה ומכירת רכבי יד שניה.</p>
    </div>    
</div>
<div class="GuideVideo app_m">  
    <div >
        <p class="description">הורד עכשיו את אפליקציית אוטוספין ותתחיל להנות מחוויה שטרם הכרת.<br /> עם הטכנולוגיה הייחודית לאוטוספין לצילום והצגת פנים הרכב ב- 360 מעלות.</p><br />
        <p class="description"><span class="boldText">מוכר? </span>בדקות ספורות רכבך יפורסם בכל מקום אפשרי לחשיפה מירבית ומכירה מהירה.</p><br />
        <p class="description"><span class="boldText">סוג הרכב? תקציב? </span>עם פילוח מדוייק תמצא את מבוקשך.<br />אוטוספין, פלטפורמה לרכישה ומכירת רכבי יד שניה.</p>
    </div>    
    <br />
    <div style="margin-right:-3px">
        <div style="margin-right:-3">
        <p class="videoTitle boldText">רוצים לפרסם?</p>
        <p class="videoContent boldText">הורידו את האפליקציה חינם:</p>
        <p id="afterSend_app" style="display:none" class="videoInput w3-border w3-border-gray w3-margin-top w3-round">קישור נשלח בהצלחה</p>
        <form id="InviteSmsForm_app" name="InviteSmsForm_app" action="CheckAndSubmitInviteSms_app();" style="display:inline-block;    border: none;" method="post">
            <input type="text" class="videoInput w3-border w3-border-gray w3-margin-top radius5"  name="InviteSmsPhone_app" id="InviteSmsPhone_app" maxlength="12"  value="הכנס מספר טלפון" onKeyPress="return numbersonly(this, event);" onblur="javascript:if(this.value==''){this.value='הכנס מספר טלפון'};" onfocus="javascript:if(this.value=='הכנס מספר טלפון'){this.value='';}" />
            <a class="sendButton w3-black w3-round" href="javascript:CheckAndSubmitInviteSms_app();">שלח קישור</a>  
        </form>
        </div>
        <br />
        <iframe width="400" height="250" src="https://www.youtube.com/embed/q3nH9feLTc8" border="0" onscroll="no" frameborder="0" style="border:none;margin-right: -20;transform: scale(0.9);"  allow="autoplay; encrypted-media" allowfullscreen></iframe>
    </div>
</div>
<!--<div class="appImg" id="appImg"><img src="images/יד.png" /></div>-->
<button id="upDownButton" class="w3-circle upDownButton upbu"  onclick="openFooter()"><i class="i arrow up"></i></button>
<button class="w3-circle upDownButton downbu" style="position: fixed; margin-bottom: 210px; display: none" onclick="openFooter()"><i class="i arrow down"></i></button>



<!--#include file="inc_bottom.asp"-->
<script type="text/javascript">
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

</script>
<style>
        ._title{
        color: #161616;
        font-size: 22;
        text-shadow: 0px 0px 1px #161616;
        padding-bottom: 20px;
        padding-top: 20;
    }
    .input_{
        border: 2px solid #a0a0a0;
        background: white;
        color: black;
    }

    .contactdiv1{
        z-index: 100;
        position: fixed;
        width: 350px;
        height: 100px;
        margin-bottom: 380px;
        margin-right: -25px; 
        right:0;
        bottom:0;
    }

    .upDownButton{
        position: fixed
    }
     .Footer{
            position: fixed;
        }
     .shimshonit{
         margin-top: 100px; width: 1020px; height: 400px ;
     }
     .applestore{
height: 30;
    margin-top: 310;
    width: 120;
    position: absolute;
    margin-right: 610;
    cursor: pointer;
        }
     .googleplay{
height: 30;
    margin-top: 310;
    width: 120;
    position: absolute;
    margin-right: 485;
    cursor: pointer;
       }
     .applestore1{
         height: 30;margin-top:-188;width: 120;position: absolute;margin-right: 680;cursor: pointer;
     }
     .googleplay1{
height: 30;margin-top:-188;width: 120 ;position: absolute;margin-right: 550;cursor: pointer;
     }
    @media only screen and (min-width: 1500px) {
          .applestore{
height: 30;
    margin-top: 310;
    width: 120;
    position: absolute;
    margin-right: 940;
    cursor: pointer;
       }
     .googleplay{
height: 30;
    margin-top: 310;
    width: 120;
    position: absolute;
    margin-right: 814;
    cursor: pointer;
     }
    }
    @media only screen and (max-width: 600px) {
                #contactdiv1{
            display:none;
        }

        #googleplay{
               height: 20;
    margin-top: 130;
    width: 50;
    position: absolute;
    margin-right: 152;
    z-index: 2;
        }
        #applestore{
    height: 20;
    margin-top: 130;
    width: 50;
    position: absolute;
    margin-right: 203;
    z-index: 2;
        }
        #shimshonit{
            margin-top: 30px;
    width: 100%;
    height: 200;
    margin-bottom: -80;
        }
        #Footer{
            position: relative;
        }
        #upDownButton{
           display: none;
        }
    }

</style>