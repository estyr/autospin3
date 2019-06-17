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

<iframe width='853' height='480' src='https://my.matterport.com/show/?m=mhsHXjCEqV3' frameborder='0' allowfullscreen allow='vr'style="margin-top: 60;height: 68%; width: 100%;"></iframe>
<div id="SimilarCarDiv1" style=" visibility:collapse;">
<div id="WrapList">
<div id="CarLotBoxList" class="CarLotBoxList" style="width: max-content;max-width: max-content;margin-top:5;background-color: transparent;"></div>
<div id="CarLotBoxList1" class="CarLotBoxList" style="width: max-content;max-width: max-content;margin-top:5;background-color: transparent;"></div>
    </div>
    </div>
<a id="a_glassvip" href="javascript: if($('#contentCarLotSrc1vip').css('visibility')=='visible') { $('#contentCarLotSrc1vip').css('visibility','collapse');}else{$('#contentCarLotSrc1vip').css('visibility','visible'); $('#SimilarCarDiv1').css('visibility','collapse');$('#SimilarCarDiv1').removeClass('w3-animate-left');}"><div class="magnifying-glasstopbar6vip "><i id="magnifying-glasstopbar6vip" class="w3-margin-left"></i></div></a>
<div id="contentCarLotSrc1vip"style="visibility:collapse;" > <div id="CarLotSrc1vip" class=" CarLotSrc1vip" style="transform:scale(1.2);"></div> 
        <div id="divCarLotSrcavip" style="position:relative;">
           
            <a id="CarLotSrcavip" class="CarLotSrcavip" href="javascript:$('#contentCarLotSrc1vip').css('visibility','collapse');$('#CarLotBoxList').css('display','none');freesearchlotvip('1', 'Lotvipsrc'); if($('#SimilarCarDiv1').css('visibility')=='collapse') {$('#SimilarCarDiv1').css('visibility','visible');$('#SimilarCarDiv1').attr('class','w3-animate-left');}"><div class="magnifying-glasstopbar6" id="magnifying-glasstopbar6div"><i id="magnifying-glasstopbar6vip2" class="w3-margin-left edgesearch"></i></div></a>
            <input class="CarLotSrcInputvip" type="text" id="CarLotSrcInputvip" name="CarLotSrcInputvip" value="חפש..." onblur="javascript:if(this.value==''){this.value='חפש...'};" onfocus="javascript:if(this.value=='חפש...'){this.value='';}" onkeydown="if (event.keyCode == 13) {document.getElementById('CarLotSrcavip').click();}">
            <input class="CarLotSrcInputvip" type="text" id="CarLotSrcInputvip1" name="CarLotSrcInputvip1" value="<%=StrCarLotUserID %>" style="display:none;" >
        </div>
    </div>
<div id="lotAdbtnvip" onclick="if($('#SimilarCarDiv1').css('visibility')=='visible') { $('#SimilarCarDiv1').css('visibility','collapse');$('#CarLotBoxList').css('display','block');$('#SimilarCarDiv1').removeClass('w3-animate-left');}else{$('#contentCarLotSrc1vip').css('visibility','collapse');$('#SimilarCarDiv1').css('visibility','visible');$('#SimilarCarDiv1').attr('class','w3-animate-left');}"><p id="parrow"> <i class="arrow up"></i></p><br>למבחר המכוניות של <%=StrCarLotName %></div>
<script type="text/javascript">
 
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
<style>
    @media only screen and (min-width: 825px) {
        #lotAdbtnvip1
    {
            font-weight: 600;
    color: aliceblue;
    text-shadow: 0 0 5px rgba(0,0,0,.9);
    /* outline: rgba(255,255,255,.9); */
    text-decoration: underline;
    cursor: pointer;
        }
        #emptyCarLotBoxList1vip{
            width: 1600;
    text-align: center;
    font-size: 20pt;
    font-weight: 600;
    color: rgba(255,255,255,.9);
    text-shadow: 0 0 5px rgba(0,0,0,.9);
        }
        #contentCarLotSrc1vip {
  margin-top: -360;
    width: 220px;
    height: 38px;
    /* margin-top: 0px; */
    left: 150;
    /* position: fixed; */
    display: -webkit-box;
    /* margin-right: 800; */
    position: absolute;
}
        .CarLotSrc1vip {
    color: rgba(255,255,255,.9);
    text-shadow: 0 0 5px rgba(0,0,0,.9);
    /* height: 67; */
    background-color: rgba(0,0,0,.3);
    /* color: #c5c4c4; */
    width: 220px;
    height: 38px;
    margin-top: 0px;
    transform: scale(1.2);
    left: 150;
    /* background: #353535a3; */
    position: fixed;
    display: -webkit-box;
    margin-right: 20;
}
        .magnifying-glasstopbar6 {
    transform: scale(1.4);
}
        #magnifying-glasstopbar6vip2 {
    font-size: 2em;
    display: inline-block;
    width: 0.4em;
    height: 0.4em;
    border: 0.1em solid rgba(255,255,255,.9);
    position: absolute;
    border-radius: 0.35em;
    float: left;
    margin-right: 60;
    margin-top: 5;
}
        #magnifying-glasstopbar6vip2::before {
    content: "";
    display: inline-block;
    position: absolute;
    right: -0.25em;
    bottom: -0.1em;
    border-width: 0;
    background: rgba(255,255,255,.9);
    width: 0.35em;
    height: 0.08em;
    -webkit-transform: rotate(45deg);
    -moz-transform: rotate(45deg);
    -ms-transform: rotate(45deg);
    -o-transform: rotate(45deg);
}
        .CarLotSrcInputvip {
    background-color: transparent;
    /* color: black; */
    position: absolute;
    right: 0px;
    top: 5px;
    height: 28px;
    border: none;
    width: 170px;
    padding: 5px;
    font-size: 13pt;
    float: right;
    left: 30;
    margin-right: -100;
    color: rgba(255,255,255,.9);
    text-shadow: 0 0 5px rgba(0,0,0,.9);
}
        #a_glassvip {
   position: absolute;
    display: inline-block;
    left: 40;
    bottom: 15;
}
        .magnifying-glasstopbar6vip {
    color: rgba(255,255,255,.9);
    text-shadow: 0 0 5px rgba(0,0,0,.9);
    width: 67;
    display: flex;
    align-items: center;
    justify-content: center;
    height: 67;
    transform: scale(1.4);
}
        #magnifying-glasstopbar6vip {
    font-size: 2em;
    display: inline-block;
    width: 0.4em;
    height: 0.4em;
    border: 0.1em solid rgba(255,255,255,.9);
    position: absolute;
    border-radius: 0.35em;
    float: left;
    /* margin-right: 60; */
    /* margin-top: 5; */
}
        #magnifying-glasstopbar6vip::before {
    content: "";
    display: inline-block;
    position: absolute;
    right: -0.25em;
    bottom: -0.1em;
    border-width: 0;
    background: rgba(255,255,255,.9);
    width: 0.35em;
    height: 0.08em;
    -webkit-transform: rotate(45deg);
    -moz-transform: rotate(45deg);
    -ms-transform: rotate(45deg);
    -o-transform: rotate(45deg);
}
        .w3-animate-left {
    position: relative;
    animation: animateleft 0.4s
}

@keyframes animateleft {
    from {
        left: -300px;
        opacity: 0
    }

    to {
        left: 0;
        opacity: 1
    }
}

        .up {
    transform: rotate(-135deg);
    -webkit-transform: rotate(-135deg);
}
        i {
    border: solid rgba(255,255,255,.9);
    border-width: 0 2px 2px 0;
    display: inline-block;
    padding: 3px;
}
        #parrow {
    transform: scale(1.8);
}
        #lotAdbtnvip {
    padding: 10;
    margin-top: -500;
    margin-left: -65;
    background-color: rgba(0,0,0,.3);
    float: left;
    transform: rotate(90deg);
    font-family: OpenSans,sans-serif;
    font-weight: 400;
    font-size: 17pt;
    color: rgba(255,255,255,.9);
    text-shadow: 0 0 5px rgba(0,0,0,.9);
}

#SimilarCarDiv1::-webkit-scrollbar-track
{
	-webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.3);
	border-radius: 10px;
	background-color: #F5F5F5;
    height:10px;
}
#SimilarCarDiv1::-webkit-scrollbar
{
	width: 10px;
	background-color: #F5F5F5;
    height:10px;

}
#SimilarCarDiv1::-webkit-scrollbar-thumb
{
	border-radius: 10px;
	-webkit-box-shadow: inset 0 0 6px rgba(0,0,0,.3);
	background-color: #fc0236;
    height:10px;
}
        #SimilarCarDiv1 {
    top: -340;
    display: block;
    position: relative;
    width: 100%;
    max-width: 1600px;
    text-align: center;
    overflow-x: scroll;
    overflow-y: hidden;
    height: 250px;
    background-color: transparent;
}
        #wholeSite {
    overflow: hidden;
}
    }






    .carlotdesc{
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
  height: 300px; /* Should be removed. Only for demonstration */
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
    }

</style>