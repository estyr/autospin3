<%@ language="VBScript" codepage="65001" %><% Response.CharSet = "utf-8" %>
<%  
    PageName = "UserAds"
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
<div class="topBar" id="toolbaruserads">
    <div class="tobbarbackground" style="background: #35353585;width:100%">





    <div id="userdetails" class="userdetails" >
    <img class="userimgnew" src="<% = StrUserImageFile %>"  >
     <h1 class="userfullnamenew"><% = StruserFullName %></h1><br />
     <% If Clng(StrUserAdID) > 0 Then %>
     <img class="useradressiconnew" src="images/OneAdBox/7_r.png"  />
 <span onclick="window.location.href='http://maps.google.com/?q=<% = StrUserLatitude %>,<% = StrUserLongitude %>'" class="useradressnew"  ><% = Left(StrUserAddress,32) %> </span>
        <img class="poneiconnew" src="images/OneAdBox/‏‏Phone.png" />
        <a href="javascript:getModaPhone(<% = StrUserAdID %>);">
            <h2 class="userphonenew"  id="PhoneSpan_<% = StrUserAdID %>" >הצג מספר טלפון</h2></a>
          <% End if %>
<!--    <div class="w3-right"id="containuserimage" >
        <img src="<% = StrUserImageFile %>" class="prifileImage w3-circle pImg" id="pImg" >
    </div>
    <div class="containnameuser"id="containnameuser">
        <h2 class="myFavoritesTitle w3-margin-right" id="myFavoritesTitle" ><% = StruserFullName %></h2><br />
    </div>
    <div id="couseradrress">
        <% If Clng(StrUserAdID) > 0 Then %>
        <div id="useradrress" class="useradrress" ><img src="images/OneAdBox/7_r.png"  class="UserPageIcon" />
            <h3 style="display:inline-block"  class="w3-margin-right userName">
                <a id="addressweb" href="http://maps.google.com/?q=<% = StrUserLatitude %>,<% = StrUserLongitude %>" target="_blank">
                    <% = Left(StrUserAddress,32) %>
                    </a></h3></div> <br />
        
        <a id="addressm"class="addressm" href="http://maps.google.com/?q=<% = StrUserLatitude %>,<% = StrUserLongitude %>" target="_blank">
        <div id="userphone"  ><img src="images/OneAdBox/‏‏Phone.png"  style="margin-top:-15px;margin-right:20px;display:inline-block"/><a href="javascript:getModaPhone(<% = StrUserAdID %>);"><h3 style="display:inline-block;padding-right:10px" id="PhoneSpan_<% = StrUserAdID %>" class="w3-margin-right userName" >הצג מספר טלפון</h3></a></div> 
        <% End if %>
    </div>-->
    </div>
</div></div>
<div id="DeleteAdBoxDiv" style="display:none;">
    <div id="DeleteAdBox">
        <a href="javascript:setAdHideStep2(0);"><img src="images/Blank.png" style="width:175px;height:50px;position:absolute;top:133px;right:70px;" /></a>
        <a href="javascript:setAdHideStep2(1);"><img src="images/Blank.png" style="width:175px;height:50px;position:absolute;top:195px;right:70px;" /></a>
        <a href="javascript:setAdHideStep2(2);"><img src="images/Blank.png" style="width:175px;height:50px;position:absolute;top:255px;right:70px;" /></a>
        <input type="hidden" name="DeleteAdID" id="DeleteAdID" />
    </div>
</div>

<div id="WrapList">
<div id="ModaoBoxList" class="ModaoBoxListuseadsmobail ModaoBoxListuseads ModaoBoxList"></div>
</div>
<button class="w3-circle upDownButton upbu" style="position: fixed" onclick="openFooter()"><i class="i arrow up"></i></button>
<button class="w3-circle upDownButton downbu" style="position: fixed; margin-bottom: 210px; display: none" onclick="openFooter()"><i class="i arrow down"></i></button>

<!--#include file="inc_bottom.asp"-->
<style>

    @media only screen and (min-width: 825px) {
        .userimgnew{
            width: 150px;
    height: 150px;
    border: solid 2px #FFFFFF;
    border-radius: 50%;
    margin-left: 50;
    margin-right: -270;
    margin-top: 30;
        }
        .userphonenew{
            position: absolute;
    margin-top: -30;
            color: white;
    font-size: 30px;
    text-shadow: 0px 0px 13px rgba(255, 255, 255, 0.5);
        }
        .userfullnamenew{
            position: absolute;
            text-shadow: 0px 0px 13px rgba(255, 255, 255, 0.5);
    color: white;
    font-size: 40px;
        }
        .useradressnew{
            position: absolute;
    margin-top: -100;
                  color: white;
    font-size: 30px;
    text-shadow: 0px 0px 13px rgba(255, 255, 255, 0.5);
        }
        .tobbarbackground{
            height:200px;
        }
        .useradressiconnew{
            margin-top: -100;
    position: absolute;
    width: 45;
    margin-right: -50;
        }
        .poneiconnew{
            position: absolute;
    margin-right: -50;
    margin-top: -18;
    width: 35;
        }
    }

    @media only screen and (max-width: 600px){

            .userimgnew{
           width: 100px;
    height: 100px;
    border: solid 2px #FFFFFF;
    border-radius: 50%;
    margin-left: 50;
    margin-right: -400;
    margin-top: 10;
        }
        .userphonenew{
     position: absolute;
    margin-top: -8.5;
    color: white;
    font-size: 20;
    text-shadow: 0px 0px 13px rgba(255, 255, 255, 0.5);
    margin-right: -10;
        }
        .userfullnamenew{
          position: absolute;
    text-shadow: 0px 0px 13px rgba(255, 255, 255, 0.5);
    color: white;
    font-size: 30px;
    margin-top: -30;
    margin-right: -100;
        }
        .useradressnew{
       position: absolute;
    margin-top: 20;
    color: white;
    font-size: 20;
    text-shadow: 0px 0px 13px rgba(255, 255, 255, 0.5);
    margin-right: 150;
    text-align: right;
    width: 200;
        }
        
        .useradressiconnew{
   margin-top: 20;
    position: absolute;
    width: 35;
    margin-right: 30;
        }
        .poneiconnew{
        position: absolute;
    margin-right: -155;
    margin-top: 18;
    width: 25;
        }
























        .tobbarbackground{
            height:100px;
        }
    #toolbaruserads{
        height:100px;
        position:fixed;
    }
    .upbu{
        display:none;
    }
   #ModaoBoxList {
    height: max-content;
    }
    #Footer{
       display:none;
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

    var Page = 1;
    GetUserModaotList(Page,<% = Clng(Request("ID")) %>);
    $(window).scroll(function () {
        var hT = $('#scroll-to').offset().top,
            hH = $('#scroll-to').outerHeight(),
            wH = $(window).height(),
            wS = $(this).scrollTop();
        if (wS > (hT + hH - wH)) {
            Page = Page + 1;
            GetUserModaotList(Page,<% = Clng(Request("ID")) %>);
        }
    });
    if ($(window).width() < 825) {
        document.getElementById("addressweb").textContent = "";
        document.getElementById("addressweb").innerHTML = "<input id='addressinputuser' class='addressinputuser' value=' <% = Left(StrUserAddress,32) %>'title='<% = Left(StrUserAddress,32) %>'/>";
    }
</script>
<style>
    @media only screen and (min-width: 825px) {
        #pImg{
            margin-right: 580;
          
        }
    }

</style>
