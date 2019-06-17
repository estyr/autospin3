<%@ language="VBScript" codepage="65001" %><% Response.CharSet = "utf-8" %>
<%  
    PageName = "Brands"
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
<div class="w3-panel tipsTopBar" style="padding: 0;">
    <div class="tipsTopBarbackground" style="background: #35353585;width: 100%;display: flex;align-items: center;justify-content: center;" >
        <div id="title" class="title">
            <div ><img src="<% = StrManufacturerImageFile %>" class="ModelProfileImg"  id="ModelProfileImg"/></div>
            <div  class="ModelListtitle" style="width:max-content;"><h1  id="titleModelList" style="font-weight:600;text-shadow: 5px 8px 20px #0f0f0f;color:white">רכבי <% = StrManufacturerName %> יד שניה     </h1>
       </div>
    </div>
</div>
</div>
<div id="ModelsBoxList" >
    <div id="ModelListcontent" style="display: flex;align-items: center;justify-content: center;">
   <div id="ModelList" style="width: max-content;" class="ModelListbtn">
    <%  HowMany = 0
        strSql = "SELECT Models.ID As ModelID, Models.Name FROM Models Where Models.Show = 0 And Models.CompanyID = " & Clng(Request("ID")) & " ORDER BY Name DESC"
	    objRs.Open strSql & strOrder, objConn, 0, 1
	    Do While Not objRs.EOF
        If HowMany = 12 Then
            Response.Write "<span><a href=""javascript:reload(MoreModels);marginModaoBoxList()"">הצג עוד...</a></span>"
            Response.Write "<div id=""MoreModels"" style=""display:none;"">"
        End if
    %>
        <span><a href="Brands.asp?ID=<% = Clng(Request("ID")) %>&ModelID=<% = objRs("ModelID") %>"><% = objRs("Name") %></a> </span>
    <%	HowMany = HowMany + 1
        objRs.MoveNext
	    Loop
        objRs.close
        If HowMany > 12 Then Response.Write "</div>"
    %>
    </div>
</div>
    <input type="text" name="ManufacturerID" id="ManufacturerID" value="<% = Clng(Request("ID")) %>" style="display:none;" />
    <% if Len(Request("ModelID") & "") > 0 Then vModelID = Clng(Request("ModelID")) Else vModelID = 0 %>
    <input type="text" name="ModelID" id="ModelID" value="<% = Clng(vModelID) %>" style="display:none;" />
</div>
<div id="carlotdesc" class="carlotdesc">
<%  If Len(Request("ModelID") & "") > 0 Then %> 
    מתעניין ב<% = StrManufacturerName %> יד שנייה? בחירה מעולה! <span id="readmoreless" style="color:#f44336 !important;cursor:pointer" onclick="showDetails()">קרא עוד...</span> <br />
    <div id="divdetails" style="display:none">
        בעמוד זה תמצא רכבי  <% = StrManufacturerName %> יד שנייה מכל השנתונים הצבעים והדגמים... <br />
        לא מצאת את ה<% = StrManufacturerName %> שאתה מחפש? נשמח לעזור...<br />
        השאר לנו הודעה עם פרטי ה<% = StrManufacturerName %> שאתה מחפש ואנחנו כבר נמצא לך את ה<% = StrManufacturerName %> שלך...
    </div>
<%Else%>
    מתעניין ב<% = StrManufacturerName %> יד שנייה? בחירה מעולה! <span id="readmoreless1" style="color:#f44336 !important;cursor:pointer" onclick="showDetails1()">קרא עוד...</span> <br />
    <div id="divdetails1" style="display:none">
        בעמוד זה תמצא רכבי <% = StrManufacturerName %> יד שנייה מכל הדגמים והסוגים:<br /> רכבי  <% = StrManufacturerName %> פרטיים, רכבי <% = StrManufacturerName %> משפחתיים, מבחר ג'יפים <% = StrManufacturerName %>, ג'יפונים <% = StrManufacturerName %> וכמובן רכבי <% = StrManufacturerName %> מסחרי.    <br />
        יודע כבר מה הדגם שאתה מחפש?<br />
        לחץ על הדגם המבוקש ותועבר לדף עם מבחר רכבי ה<% = StrManufacturerName %> שאתה מחפש.<br />
        לא מצאת את ה<% = StrManufacturerName %> שאתה מחפש? נשמח לעזור...<br />
        השאר לנו הודעה עם פרטי ה<% = StrManufacturerName %> שאתה מחפש ואנחנו כבר נמצא לך את ה<% = StrManufacturerName %> שלך...
    </div>
<% End if %>
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
<div id="ModaoBoxList" class="ModaoBoxList" style="margin-top:50px;"></div>
<!--#include file="inc_bottom.asp"-->
<script type="text/javascript">
    var Page = 1;
    GetBrandsModaotList(Page, 'Start');
    $(window).scroll(function () {
        var hT = $('#scroll-to').offset().top,
            hH = $('#scroll-to').outerHeight(),
            wH = $(window).height(),
            wS = $(this).scrollTop();
        if (wS > (hT + hH - wH)) {
            Page = Page + 1;
            GetBrandsModaotList(Page, 'Pageing');
        }
    });
    if (document.getElementById("SimilarCarDivHead").textContent == 'לא נמצאו תוצאות לחיפושיך. אולי תמצא עניין באלו') {
        $('#carlotdesc').css("display", "none");
        var Page = 1;
                 GetBrandsModaotList1(Page, 'Start');    }
    function marginModaoBoxList() {
        var a = document.getElementById('ModelListcontent').clientHeight;
        var b;
        if ($(window).width() < 825)
            b = 90;
        else
            b = 80;
        var MoreModels=document.getElementById('MoreModels')
        if (MoreModels.style.display == "") {
             if ($(window).width() < 825)
                $('#ModaoBoxList').css('margin-top', a - 10);
            else
            $('#ModaoBoxList').css('margin-top', a -75);
      }
        else {
            $('#ModaoBoxList').css('margin-top', 50);

        }
    }
</script>
<style>
    .carlotdesc{
        margin-top:10px;
        margin-bottom:-50px;
        padding-left:400px;
        padding-right:400px;
        font-size:20px;
    }
    .title{
        margin-top:40px;
    }
    #Footer{
        position:relative;
    }#simi{
         margin-top:0;
     }
    @media only screen and (max-width: 600px) {
        
        #title{
            margin-top:50px;
        }
        #carlotdesc {
            margin-bottom: -70;
            padding: 20px;        
        }

        #readmoreless{
            margin-right:30px;
        }

        .ModelListtitle{
                height: 90;
        }
     #ModaoBoxList {
         height:max-content;
    }
     #titleModelList{
         font-size:20;
     }
      .tipsTopBar{
            height:100px;
        }
            .tipsTopBar{
            height:100px;
        }
      .tipsTopBarbackground{
            height:100px;
        }
    }
    @media only screen and (min-width: 825px) {
        .tipsTopBar{
            height:200px;
        }
       .tipsTopBarbackground{
            height:200px;
        }
        
           .ModelListbtn{
            margin-top:70;
        }
    }

</style>