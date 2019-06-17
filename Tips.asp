<%@ language="VBScript" codepage="65001" %><% Response.CharSet = "utf-8" %>
<%  
    PageName = "Tips"
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
<body>
<link href="css/w3s.css" rel="stylesheet" />
<div class="w3-panel tipsTopBar" id="tipsTopBar1">
   <div id="title" class="title" style="background: #353535a3; z-index: 10;display: inline-block;position: absolute; max-width: 1140px;padding: 20px;border-radius: 30px"><h1 class="w3-text-white" style="font-size:50px;">חדשות הרכב<span style="color:red">.</span></h1><br /></div> 
</div>
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

<body>
<div class="w3-row-padding tipsDiv w3-margin-top w3-margin-bottom" style="padding-bottom: 200px;">
    <div >
              <a href="BuyingCarTips.asp" class=" w3-hover-white">
    <div class="tipBox" style="border-radius: 10px;">
        <img style="border-bottom-right-radius: 10px;border-top-right-radius: 10px;" src="images/buycar.jpg" class="tipImage w3-margin-left"/>
        <p class="textRight w3-margin-top w3-margin-right tipBoxTitle">טיפים לקניית רכב יד שניה</p><br />
        <p class="textRight w3-margin-right tipBoxontent">בשעה טובה, החלטתם לרכוש רכב יד שניה?<br />
            אוטוספין רכזה בעבורכם מספר עצות לרכישה נבונה ומוצלחת.</p>
        <a href="BuyingCarTips.asp" class="radius5 w3-button w3-black w3-margin-top w3-right">קרא בהרחבה</a>
    </div></a>
         <a href="photocopyingCarTips.asp" class=" w3-hover-white" >
    <div class="tipBox"style="border-radius: 10px;">
        <img style="border-bottom-right-radius: 10px;border-top-right-radius: 10px;" src="images/photograph.jpeg" class="tipImage w3-margin-left"/>
        <p class="textRight w3-margin-top w3-margin-right tipBoxTitle">טיפים לצילום רכב</p><br />
        <p class="textRight w3-margin-right tipBoxontent">מי לא מכיר את המשפט "תמונה אחת שווה אלף מילים"?<br />
           שוק רכבי היד שניה גדול מאד ומביא לכך שהתחרות על...</p>
        <a href="photocopyingCarTips.asp" class="radius5 w3-button w3-black w3-margin-top w3-right">קרא בהרחבה</a>
    </div></a>
                 <a href="CarSaleTips.asp" class=" w3-hover-white">
    <div class="tipBox"style="border-radius: 10px;" >
        <img style="border-bottom-right-radius: 10px;border-top-right-radius: 10px;" src="images/salecar.jpg" class="tipImage w3-margin-left"/>
        <p class="textRight w3-margin-top w3-margin-right tipBoxTitle">טיפים למכירת רכב יד שניה</p><br />
        <p class="textRight w3-margin-right tipBoxontent">בשעה טובה, החלטתם למכור את הרכב שלכם?<br />
           שוק רכבי היד שניה גדול מאד ומביא לכך שהתחרות על...</p>
        <a href="CarSaleTips.asp"class="radius5 w3-button w3-black w3-margin-top w3-right">קרא בהרחבה</a>
    </div></a>
           <a href="Trade_in_or_car_leasing.asp" class=" w3-hover-white">
    <div class="tipBox"style="border-radius: 10px;" >
        <img style="border-bottom-right-radius: 10px;border-top-right-radius: 10px;" src="images/tradeIn.jpg"  class="tipImage w3-margin-left"/>
        <p class="textRight w3-margin-top w3-margin-right tipBoxTitle">טרייד אין או ליסינג לרכב</p><br />
        <p class="textRight w3-margin-right tipBoxontent">רוצים להתקדם לרכב חדש הרבה יותר, אבל שואלים את עצמכם מה תעשו עם  <br />
          הישן שלכם? איך תגשרו על הפער בין מחיר רכב ישן לחדש?  
</p>
        <a href="Trade_in_or_car_leasing.asp"class="radius5 w3-button w3-black w3-margin-top w3-right">קרא בהרחבה</a>
    </div></a>

            <a href="1.asp" class=" w3-hover-white">
    <div class="tipBox"style="border-radius: 10px;" >
        <img style="border-bottom-right-radius: 10px;border-top-right-radius: 10px;"src="images/WhatsApp%20Image%202018-06-07%20at%2019.15.53.jpeg"   class="tipImage w3-margin-left"/>
        <p class="textRight w3-margin-top w3-margin-right tipBoxTitle">חושבים להתקדם לרכב חדש ?</p><br />
        <p class="textRight w3-margin-right tipBoxontent">אתם מכירים את זה שבכל פעם שאתם נדלקים על רכב כלשהו, אתם פתאום רואים   <br />
        אותו בכל מקום? 

</p>
        <a href="1.asp"class="radius5 w3-button w3-black w3-margin-top w3-right">קרא בהרחבה</a>
    </div></a>
        <a href="2.asp" class=" w3-hover-white">
    <div class="tipBox"style="border-radius: 10px;" >
        <img style="border-bottom-right-radius: 10px;border-top-right-radius: 10px;" src="images/glory.jpg" class="tipImage w3-margin-left"/>
        <p class="textRight w3-margin-top w3-margin-right tipBoxTitle"> המסלול המהיר לרכב שעליו חלמת.
</p><br />
        <p class="textRight w3-margin-right tipBoxontent">כולנו גולשים באתרי אינטרנט, באינסטגרם ובפייסבוק, רואים את הרכבים הנוצצים    <br />
      שאנשים , שלכאורה נראים לנו רגילים לחלוטין, נוהגים עליהם בהנאה גדולה, ושואלים ...
</p>
        <a href="2.asp"class="radius5 w3-button w3-black w3-margin-top w3-right">קרא בהרחבה</a>
    </div></a>
         <a href="4.asp" class=" w3-hover-white">
    <div class="tipBox"style="border-radius: 10px;" >
        <img style="border-bottom-right-radius: 10px;border-top-right-radius: 10px;"  src="images/bigstock-Dealer-Vehicles-In-Stock-93496580.jpg"  class="tipImage w3-margin-left"/>
        <p class="textRight w3-margin-top w3-margin-right tipBoxTitle"> מכונית יד שנייה במגרש מכוניות . 
</p><br />
        <p class="textRight w3-margin-right tipBoxontent" > אפליקציה חכמה לקנייה ומכירת רכב כמו אוטוספין מאפשרת לכם לרכוש או למכור מכונית באופן הכי חדשני ופשוט שיש, דרך אפליקציה.</p>
        <a href="4.asp"class="radius5 w3-button w3-black w3-margin-top w3-right">קרא בהרחבה</a>
    </div></a>
         <a href="3.asp" class=" w3-hover-white">
    <div class="tipBox"style="border-radius: 10px;" >
        <img style="border-bottom-right-radius: 10px;border-top-right-radius: 10px;" src="images/lastips.png"  class="tipImage w3-margin-left"/>
        <p class="textRight w3-margin-top w3-margin-right tipBoxTitle">הדרך להתקדם לרכב חדש יותר

</p><br />
        <p class="textRight w3-margin-right tipBoxontent">לבעל רכב יש שתי  אפשרויות לשדרג עצמו לרכב מתקדם יותר: למכור את הרכב שלו ולהשקיע עוד סכום כסף ברכישה של רכב חדש יותר, או לרכוש מכונית יד שנייה משנתון מתקדם יותר.</p>
        <a href="3.asp"class="radius5 w3-button w3-black w3-margin-top w3-right">קרא בהרחבה</a>
    </div></a>
    
    </div>
  
</div>
<div class=" tipsDiv tips_m "style="margin-top:-190px">
       <a href="BuyingCarTips.asp"  class=" w3-hover-white">
    <div class="tipBox">
        <img src="images/buycar.jpg" class="tipImage w3-margin-left"/>
        <p class="textRight w3-margin-top w3-margin-right tipBoxTitle">טיפים לקניית רכב יד שניה</p><br />
        <p class="textRight w3-margin-right tipBoxontent">בשעה טובה, החלטתם לרכוש רכב יד שניה?<br />
            אוטוספין רכזה בעבורכם מספר עצות לרכישה נבונה ומוצלחת.</p>
        <a href="BuyingCarTips.asp" style="border-radius: 5px;font-size:10px" class="radius5 w3-button w3-black w3-margin-top w3-right">קרא בהרחבה</a>
    </div></a>
     <a href="photocopyingCarTips.asp" class=" w3-hover-white" >
    <div class="tipBox">
        <img src="images/photograph.jpeg" class="tipImage w3-margin-left"/>
        <p class="textRight w3-margin-top w3-margin-right tipBoxTitle">טיפים לצילום רכב</p><br />
        <p class="textRight w3-margin-right tipBoxontent">מי לא מכיר את המשפט "תמונה אחת שווה אלף מילים"?<br />
           שוק רכבי היד שניה גדול מאד ומביא לכך שהתחרות על...</p>
        <a href="photocopyingCarTips.asp" style="border-radius: 5px;font-size:10px;background-color:red" class=" radius5 w3-button w3-black w3-margin-top w3-right">קרא בהרחבה</a>
    </div></a>
     <a href="CarSaleTips.asp"  class=" w3-hover-white">
    <div class="tipBox" >
        <img src="images/salecar.jpg" class="tipImage w3-margin-left"/>
        <p class="textRight w3-margin-top w3-margin-right tipBoxTitle">טיפים למכירת רכב יד שניה</p><br />
        <p class="textRight w3-margin-right tipBoxontent">בשעה טובה, החלטתם למכור את הרכב שלכם?<br />
           שוק רכבי היד שניה גדול מאד ומביא לכך שהתחרות על...</p>
        <a href="CarSaleTips.asp" style="border-radius: 5px;font-size:10px"class="w3-button w3-black w3-margin-top w3-right">קרא בהרחבה</a>
    </div></a>
               <a href="Trade_in_or_car_leasing.asp" class=" w3-hover-white">
    <div class="tipBox"style="border-radius: 10px;" >
        <img style="border-bottom-right-radius: 10px;border-top-right-radius: 10px;" src="images/tradeIn.jpg" class="tipImage w3-margin-left"/>
        <p class="textRight w3-margin-top w3-margin-right tipBoxTitle">טרייד אין או ליסינג לרכב</p><br />
        <p class="textRight w3-margin-right tipBoxontent">רוצים להתקדם לרכב חדש הרבה יותר, אבל שואלים את עצמכם מה תעשו עם 
          הישן שלכם?  
</p>
        <a href="Trade_in_or_car_leasing.asp"class="radius5 w3-button w3-black w3-margin-top w3-right">קרא בהרחבה</a>
    </div></a>
                <a href="1.asp" class=" w3-hover-white">
    <div class="tipBox"style="border-radius: 10px;" >
        <img style="border-bottom-right-radius: 10px;border-top-right-radius: 10px;" src="images/WhatsApp%20Image%202018-06-07%20at%2019.15.53.jpeg" class="tipImage w3-margin-left"/>
        <p class="textRight w3-margin-top w3-margin-right tipBoxTitle">חושבים להתקדם לרכב חדש </p><br />
        <p class="textRight w3-margin-right tipBoxontent">אתם מכירים את זה שבכל פעם שאתם נדלקים על רכב כלשהו, אתם פתאום רואים  

</p>
        <a href="1.asp"class="radius5 w3-button w3-black w3-margin-top w3-right">קרא בהרחבה</a>
    </div></a>
        <a href="2.asp" class=" w3-hover-white">
    <div class="tipBox"style="border-radius: 10px;" >
        <img style="border-bottom-right-radius: 10px;border-top-right-radius: 10px;" src="images/glory.jpg" class="tipImage w3-margin-left"/>
        <p class="textRight w3-margin-top w3-margin-right tipBoxTitle"> המסלול המהיר לרכב שעליו חלמת.
</p><br />
        <p class="textRight w3-margin-right tipBoxontent">כולנו גולשים באתרי אינטרנט, באינסטגרם ובפייסבוק, רואים את ... 
</p>
        <a href="2.asp"class="radius5 w3-button w3-black w3-margin-top w3-right">קרא בהרחבה</a>
    </div></a>
         <a href="4.asp" class=" w3-hover-white">
    <div class="tipBox"style="border-radius: 10px;" >
        <img style="border-bottom-right-radius: 10px;border-top-right-radius: 10px;"  src="images/bigstock-Dealer-Vehicles-In-Stock-93496580.jpg"  class="tipImage w3-margin-left"/>
        <p class="textRight w3-margin-top w3-margin-right tipBoxTitle"> מכונית יד שנייה במגרש מכוניות . 

</p><br />
        <p class="textRight w3-margin-right tipBoxontent" > אפליקציה חכמה לקנייה ומכירת רכב כמו אוטוספין מאפשרת לכם לרכוש ...</p>
        <a href="4.asp"class="radius5 w3-button w3-black w3-margin-top w3-right">קרא בהרחבה</a>
    </div></a>
         <a href="CarSaleTips.asp" class=" w3-hover-white">
    <div class="tipBox"style="border-radius: 10px;" >
        
        <img style="border-bottom-right-radius: 10px;border-top-right-radius: 10px;" src="images/lastips.png" " class="tipImage w3-margin-left"/>
        <p class="textRight w3-margin-top w3-margin-right tipBoxTitle">הדרך להתקדם לרכב חדש יותר

</p><br />
        <p class="textRight w3-margin-right tipBoxontent">לבעל רכב יש שתי  אפשרויות לשדרג עצמו לרכב מתקדם יותר...  
</p>
        <a href="3.asp"class="radius5 w3-button w3-black w3-margin-top w3-right">קרא בהרחבה</a>
    </div></a>

</div>
</body>

<!--#include file="inc_bottom.asp"-->
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
        margin-bottom: 340px;
        margin-right: -25px; 
        right:0;
        bottom:0;
    }

    .Footer{
        margin-top: 200;
        position:relative;
    }
    .tipsTopBar{
        height:200px
    }
    .title{
        margin-top:20px
    }
    @media only screen and (max-width: 600px) {
                #contactdiv1{
            display:none;
        }

        #Footer {
            margin-top: 0;
            position: relative;
        }
        #tipsTopBar1{
            height:100px;
        }
        #title{
            margin-top:5px;
            transform: scale(0.7);
        }
    }
</style>
    <script>
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