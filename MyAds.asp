<%@ language="VBScript" codepage="65001" %><% Response.CharSet = "utf-8" %>
<%  
    PageName = "MyAds"
    MenuLink3 = "On"

    StrTitle = "המודעות שלי"
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
<link href="css/w3s.css" rel="stylesheet" />
<link href="css/NewHeadert.css" rel="stylesheet" />
<div id="responsivetopBar" class="topBar responsivetopBar" style="padding-top:30px;">
    <div id="title" class="title" style="border-radius: 30px;z-index: 10; display: inline-block; max-width: 1140px;padding: 20px;padding-top:40px;margin-top:-25px;margin-right: -30%;">
    <div class="w3-right">
        <img src="<% = Session("Session_UserImage") %>" class="prifileImage w3-circle" style="margin-top:-60px" id="prifileImageFavorite"/>
        <div style="display:inline-block">
            <h1 id="myFavoritesTitle" class="myFavoritesTitle w3-margin-right">המודעות שלי</h1><br />
            <h2 id="userNameFavorites" class="w3-margin-right userName" style="color:white"><% = Session("Session_Name") %></h2>
        </div>
    </div>
    </div>
</div>



<div id="DeleteAdBoxDiv" style="display:none;">
    <div id="DeleteAdBox">
        <a href="javascript:setAdHideStep2(0);"><img src="images/Blank.png" style="width:175px;height:50px;position:absolute;top:133px;right:70px;" /></a>
        <a href="javascript:setAdHideStep2(1);"><img src="images/Blank.png" style="width:175px;height:50px;position:absolute;top:195px;right:70px;" /></a>
        <a href="javascript:setAdHideStep2(2);"><img src="images/Blank.png" style="width:175px;height:50px;position:absolute;top:255px;right:70px;" /></a>
        <input type="hidden" name="DeleteAdID" id="DeleteAdID" />
    </div>
</div>
<div id="copyAddRes"></div>
<div id="ModaoBoxList"class="ModaoBoxList" style="height:max-content"></div>

<!--#include file="inc_bottom.asp"-->
<style>
    .ModaoBoxList{
        margin-top:250px;
    }

    .title{
        background-color: #353535a3;
    }
    @media only screen and (max-width: 600px) {
    #Footer{
        position:relative;
    }
    }

</style>
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
    GetMyModaotList(Page);
    $(window).scroll(function () {
        var hT = $('#scroll-to').offset().top,
            hH = $('#scroll-to').outerHeight(),
            wH = $(window).height(),
            wS = $(this).scrollTop();
        if (wS > (hT + hH - wH)) {
            Page = Page + 1;
            GetMyModaotList(Page);
        }
    });
</script>
<style>
    @media only screen and (max-width: 600px) {
    .responsivetopBar {
        position: relative;
    }
    #title{
        background-color:transparent;
    }

    #ModaoBoxList{
        margin-top:0px;
    }
        #Footer {
        position: relative;
    }

}
</style>