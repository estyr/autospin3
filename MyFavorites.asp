<%@ language="VBScript" codepage="65001" %><% Response.CharSet = "utf-8" %>
<%  
    PageName = "MyFavorites"
    MenuLink4 = "On"

    StrTitle = "מועדפים"
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
<div id="responsivetopBar" class="responsivetopBar topBar"  style="padding-top:30px;">
    <div id="title" class="title" style="border-radius: 30px;z-index: 10; display: inline-block; max-width: 1140px;padding: 20px;padding-top:40px;margin-top:-25px;margin-right: -30%;">
    <div class="w3-right">
        <img src="<% = Session("Session_UserImage") %>" style="margin-top:-60px" class="prifileImage w3-circle" id="prifileImageFavorite"/>
        <div style="display:inline-block">
            <h1 id="myFavoritesTitle" class="myFavoritesTitleM w3-margin-right"style="color:white;">המועדפים שלי</h1><br />
            <h2 id="userNameFavorites" class="w3-margin-right userName" style="color:white"><% = Session("Session_Name") %></h2>
        </div>
    </div>
    </div>
</div>
<div id="ModaoBoxList" class="ModaoBoxList" style="height:max-content"></div>
<!--#include file="inc_bottom.asp"-->
<style>
    .Footer {
        position:fixed;
    }
    .ModaoBoxList{
        margin-top:250px;
    }
        .title{
        background-color: #353535a3;
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
    //$('.Footer').css("position", 'fixed');
    var Page = 1;
    GetMyFavoritesList(Page);
    $(window).scroll(function () {
        var hT = $('#scroll-to').offset().top,
            hH = $('#scroll-to').outerHeight(),
            wH = $(window).height(),
            wS = $(this).scrollTop();
        if (wS > (hT + hH - wH)) {
            Page = Page + 1;
            GetMyFavoritesList(Page);
        }
    });
</script>

<style>
    @media only screen and (max-width: 600px) {
    #title{
        background-color:transparent;
    }

    }
    @media only screen and (max-width: 1500px) {
    #responsivetopBar {
        position: relative;
    }

    #ModaoBoxList{
        margin-top:0px;
    }
        #Footer {
        position: relative;
    }

}
</style>