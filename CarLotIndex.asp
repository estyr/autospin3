<link href="css/CarLotIndex.css" rel="stylesheet" />
<link href="css/w3s.css" rel="stylesheet" />
<%@ language="VBScript" codepage="65001" %><% Response.CharSet = "utf-8" %>
<%  
    PageName = "CarLotIndex"
    MenuLink6 = "On"
    StrTitle = "אינדקס מגרשי רכב"
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
<%		
    displayafter="none"
    If Request.QueryString("mode") = "saveMessage" Then
        displaycontactdiv="none"
        displayafter="inline-block"
        objRs.Open "SELECT * FROM userscontacts LIMIT 1", objConn, 3, 3
		    objRs.AddNew
			    objRs("name_") = Trim(Request.Form("name_"))
                objRs("phone_") = Trim(Request.Form("phone_"))
                objRs("email_") = Trim(Request.Form("email_"))
                objRs("description_") = Trim(Request.Form("description_"))
                objRs("Show_") = 0
		    objRs.Update
	    objRs.Close
    End if
%>

 <button id="lotscontenthp" style="z-index:11" class="lotscontenthp" onclick="javascript:LotsShowContacUsDiv();  $('#lotscontenthp').css('display','none');">
    <p id="pedge1" style="font-size: 15px;font-weight: bold;color: white;line-height: 10pt;">  בעל מגרש?</p>
    <br />
    <p id="pedge2" style="margin-top: -10;color: white;font-size: 15pt;font-weight: 600;line-height: 10pt;font-size: 17px;font-weight: bold;">להצטרפות חינם!</p>
</button>
<div  class="topBar"id="responsivetopBar" >
    <div id="indexTitle" class="indexTitle" style=" background: #353535a3; z-index: 10; display: inline-block;position: absolute;max-width: 1140px;padding: 20px;margin-top: 5px;border-radius: 30px;">
    <h1 class="w3-text-white" id="carlotsindextitle" >אינדקס מגרשי רכב<span style="color:red">.</span></h1>
    <div id="CarLotSrc" class=" w3-round-large" style="transform:scale(1.2)">
        <div style="position:relative;">
            <a href="javascript:freesearch3lots('1', 'Src',1);"><img src="images/SrcIcon.png" id="SrcBU" style="position:absolute;left:5px;top:7px;" /></a>
            <input style="color: #c5c4c4;" type="text" id="CarLotSrcInput1" name="CarLotSrcInput" value="חפש..." onblur="javascript:if(this.value==''){this.value='חפש...'};" onfocus="javascript:if(this.value=='חפש...'){this.value='';}" onkeydown = "if (event.keyCode == 13) {document.getElementById('SrcBU').click();}" />
        </div>
    </div>
    </div>
</div>
<div id="ModaoBoxList" class="ModaoBoxList" style="height:max-content;"></div>
   <!-- <div class="w3-container w3-padding-64 w3-theme-l5 contactdiv1" id="contactdiv1" style="transform:scale(0.8);display:<% =displaycontactdiv%>;">
    <form name="SubmitMainForm" class="radius10 w3-container w3-card-4 w3-padding-16 contactForm" action="?mode=saveMessage"" method="post" style="background:rgb(218, 218, 218)">
        <i class="closeContactUsDiv" onclick="closeDiv()" style="color:#595959;margin-top:-20px">x</i>
        <div class="_title">השאירו פרטים וניצור עמכם קשר בהקדם</div>
        <div > 
        <input type="text" name="name_" class="input_ input radius8" placeholder="שם מלא" value="שם מלא" onblur="javascript:if(this.value==''){this.value='שם מלא'};" onfocus="javascript:if(this.value=='שם מלא'){this.value='';}"  />
        </div>
        <div class="w3-section"> 
        <input type="text" name="phone_"  maxlength="12" class="input_ input radius8" placeholder="טלפון" value="טלפון" onKeyPress="return numbersonly(this, event);" onblur="javascript:if(this.value==''){this.value='טלפון'};" onfocus="javascript:if(this.value=='טלפון'){this.value='';}" />
        </div>
        <div class="w3-section"> 
        <input name="email_"  value="דואר אלקטרוני" class="input_ input radius8" placeholder="דואר אלקטרוני" onblur="javascript:if(this.value==''){this.value='דואר אלקטרוני'};" onfocus="javascript:if(this.value=='דואר אלקטרוני'){this.value='';}" />
        </div>
        <div class="w3-section"> 
        <input name="description_"   value="הודעה" class="input_ input radius8" placeholder="הודעה" onblur="javascript:if(this.value==''){this.value='הודעה'};" onfocus="javascript:if(this.value=='הודעה'){this.value='';}" />
        </div>
        <input type="submit" value="שליחה" class="w3-button w3-red w3-round w3-section" />  
    </form>
    </div>
    <div id="afterdiv" class="w3-container w3-padding-64 w3-theme-l5 contactdiv1 w3-card"  style="display:<% =displayafter%>;font-size:20px;margin-bottom:180px;background:white">
        <i class="closeContactUsDiv" onclick="closeDivAfter()" style=" color: #9a9898;margin-top:-70;">x</i>
        <div style="margin-top:-10px;color:red" >ההודעה נשלחה בהצלחה.</div>
    </div>
    <script type="text/javascript">
        function closeDiv() {
            $('#contactdiv1').css("display", "none");
        }

        function closeDivAfter() {
            $('#afterdiv').css("display", "none");
        }
    </script>-->

<script type="text/javascript">
    var Page = 1;
    GetCarLotIndexList(Page, 'Regular');
    $(window).scroll(function () {
        //var hT = $('#scroll-to').offset().top,
        //    hH = $('#scroll-to').outerHeight(),
        //    wH = $(window).height(),
        //    wS = $(this).scrollTop();
        //if (wS > (hT + hH - wH)) {
            Page = Page + 1;
            GetCarLotIndexList(Page, 'Regular');
        //}
    });
</script>
<button class="w3-circle scroolTopBu" style="position:fixed;" onclick="topFunction()" id="scroolTopBu"><i class="scroolTopBui arrow up"></i></button>
<button class="w3-circle upDownButton upbu" style="position:fixed" onclick="openFooter()" id="upDownButtonfooter"><i class="i arrow up"></i></button>
<button class="w3-circle upDownButton downbu" style="position:fixed;margin-bottom:210px;display:none" onclick="openFooter()"><i class="i arrow down"></i></button>
<!--#include file="inc_bottom.asp"-->
<style>
    .contactdiv1
    {
        z-index: 100; position: fixed;width: 350px; height: 100px;margin-bottom: 380px;margin-right: -25px; right:0;bottom:0;
    }
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


    @media only screen and (max-width: 600px) {
        #Footer {
            visibility: collapse;
        }
        #contactdiv1{
            display:none;
        }
        #indexTitle {
            transform: scale(0.7);
            width: 100%;
        }

        #responsivetopBar{
            height:100px;
        }

    }
    .ModaoBoxList{
        margin-top:-0.0001px;
    }
</style>
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

    // When the user scrolls down 20px from the top of the document, show the button
    window.onscroll = function() {scrollFunction()};

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
<style>
    .indexTitle{
        width:25%;
    }
    .topBar {
        height:200px;
        position:relative;
        z-index:0
    }

    @media only screen and (max-width: 600px) {
    #ModaoBoxList{
        margin-top:150px;
    }
    #responsivetopBar{
        position:fixed;
        z-index:1
    }
    }    
    @media only screen and (max-width: 1500px) {
     
    #tipsTopBar{
        height:0px;
    }
    
    #CarLotSrc{
        transform:scale(1)
    }
}
</style>
<script>if (getBrowser()=== "edge") {
               $("#sideMenuBar").css('background', 'rgba(42,42,42,0.5)');
                $(".backgroundSignInDiv").css('background', 'rgba(49,49,49,0.5)');
                $(".backgroundregistration").css('background', 'rgba(49,49,49,0.5)');
                $(".contactUsBackground").css('background', 'rgba(49,49,49,0.5)');
                                $(".input").addClass('inputedge');
                $("#pedge2").css('margin-right', '-50px');
                $("#pedge2").css('margin-top', '35px');
                $("#pedge1").css('margin-top', '15px');
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