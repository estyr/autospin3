<%@ language="VBScript" codepage="65001" %><% Response.CharSet = "utf-8" %>
<%  
    PageName = "Ad"
    MenuLink1000 = "On"
    StrJs = "<link rel=""stylesheet"" href=""PanoramaPlayer/dist/css/paver.min.css?v=" & Now() & """ /><script type=""text/javascript"" src=""js/video.min.js""></script><link href=""css/video-js.min.css"" rel=""stylesheet"">"
%>
<!--#include file="inc_top.asp"-->
<link href="css/w3s.css" rel="stylesheet" />
<link href="css/NewHeadert.css" rel="stylesheet" />
<script>
  fbq('track', 'ViewContent');
</script>
<%  
    If Request.QueryString("mode") = "report" Then
        objConn.execute "Update Ads Set reported=1 Where Ads.ID = " & Trim(Request.Form("id_"))
        Response.Redirect "ad.asp?ID= " & Trim(Request.Form("id_"))
    end if
            

    If Session("Session_UserWebLoggedIn") = true Then vIDUser = Session("Session_IDUser") Else vIDUser = 0
    strSql = "Select Ads.*, Users.ImageFile As UserImageFile, Users.userFullName, companies.Name As ManufacturerName, companies.ImageFile As ManufacturerImageFile, models.Name As ModelName "
    strSql = strSql & " , COALESCE((Select AdID From favorites Where favorites.UserID = " & vIDUser & " And favorites.AdID = Ads.ID And favorites.Show = 0),0) As isFavorite "
    strSql = strSql & " From Ads "
    strSql = strSql & " Inner Join Users On Users.IDUser = Ads.UserID "
    strSql = strSql & " Inner Join companies On companies.ID = Ads.ManufacturerID "
    strSql = strSql & " Inner Join models On models.ID = Ads.ModelID "
    strSql = strSql & " Where Ads.Show = 0 And Ads.ExtraData = 200 And Ads.ID = " & Clng(Request("ID")) & " LIMIT 1"
	objRs.Open strSql, objConn, 0, 1
	If Not objRs.EOF Then
        if objRs("reported") =1 then wasReported="w3-disabled" end if
        If Len(objRs("UserImageFile")) < 5 Then vUserImageFile = "files/AppImages/user_photo.png" Else vUserImageFile = "https://autospin.co.il/files/users/" & objRs("UserImageFile")       
        If Len(objRs("PanoramicImageFile")) < 5 Then  vImagePanoramaFile = "images/OneAdBox/PanoramaTemp2.png" Else vImagePanoramaFile = "files/WebPanoramicFiles/" & objRs("PanoramicImageFile")   
        If Len(objRs("360ImageFile")) < 5 Then vImage360PanoramaFile = "images/OneAdBox/PanoramaTemp2.png" Else vImage360PanoramaFile = "files/WebPanoramicFiles/" & objRs("360ImageFile")
        If Len(objRs("PanoramicImageFile")) < 5 Then VIsPanoramicFile = "0" Else VIsPanoramicFile = "1"
   
   
%>
<head>
    <title></title>
    ‎<!-- Global site tag (gtag.js) - Google Ads: 774923385 --> 
    <script async src="https://www.googletagmanager.com/gtag/js?id=AW-774923385"></script> 
    <script> window.dataLayer = window.dataLayer || []; function gtag(){dataLayer.push(arguments);} 
        gtag("js", new Date()); gtag("config", "AW-774923385"); </script> ‎
</head>
 <a href="#" onclick="javascript:window.history.go(-1);">
    <div   style="z-index: 1111111;padding-bottom: 4;border: 2px solid #888888!important;border-radius: 50%;position: absolute;width: 12%;color: #e73834;font-size: 20pt;font-weight: 900;/* font-family: Arial; */margin-top: 30px;background-color: white;background-color: white;text-shadow: 0 0 black;/* background-color: #888888; */" >x</div></a>
    <div id="OneAdBox" style="height:auto;">
                <% If Not Session("Session_UserWebLoggedIn") = true Then %>
        <a href="javascript:alert('אנא בצע התחברות');">
            <div class="containheartdetails1">
            <div class="heartdetails heartwhitedetails" ></div></div></a>
        <% Else %>
        <% If Request("Mode") = "MyAds" Then %>
        <a href="javascript:setAdHide(<% = objRs("ID") %>);">
            <img src="images/BoxAd/DeleteButton.png" class="AdBoxFevoritOneAd" /></a>
        <% Else %>
        <% If Clng(objRs("isFavorite")) = 0 Then vFevoritImg = "heartwhitedetails" Else vFevoritImg = "heartreddetails" %>
        <a href="javascript:SetAdFavorite(<% = objRs("ID") %>);">
            <div class="containheartdetails1"  >
            <div class="heartdetails <% = vFevoritImg %>" id="Favorite_<% = objRs("ID") %>"></div></div></a>
        <% End if %>
        <% End if %>
    

    <% If Len(objRs("360VideoImageFile")) < 5 Then vImageFile = "images/blank.png" Else vImageFile = "https://autospin.co.il/files/VideosImageFiles/" & objRs("360VideoImageFile") %>
    <button class="btnvideo"onclick="b()"style="background-image:url(<% = vImageFile %>);">
        <img src="images/playbutton.png" style="width:70;height:70"/>
    </button>
    <video id="video" class="video-js vjs-default-skin AdVideo" onplay="document.getElementsByClassName('OneAdBoxUserImg2')[0].style.bottom='160px'"  controls ="true" "preload="yes" style=" margin-top:-213; z-index:-1111;width: 310;height: 200;">
        <source src="https://autospin.co.il/files/VideosFiles/<% = objRs("360VideoFile") %>" type="video/mp4">
    </video>  
    <a  href="UserAds.asp?ID=<% = objRs("UserID") %>"><img src="<% = vUserImageFile %>" class="OneAdBoxUserImg "  style="border-radius:50%" id="OneAdBoxUserImg"/></a>
    <a href="UserAds.asp?ID=<% = objRs("UserID") %>" ><img style="display:none;" src="<% = vUserImageFile %>" class="OneAdBoxUserImg2" "/></a>
    </div>
    <style>
    .containheartdetails1 {
        margin-top: 160;
        margin-bottom: -200;
        transform: rotate(90deg) scale(0.7);
        width: 50;
        z-index: 10000;
        position: relative;
        float: left;
        left: 20;
    }


    .btnvideo{
        width: 310;
        height: 200;
        margin-top: 150;
        background-size:contain;
        outline: none;
        border: none;
        background-repeat: no-repeat;
        background-color: white;
        }
    </style>
    <script type="text/javascript">
        function b(){
            $("#video")[0].play();
               $("#video").css("z-index", "111");
                 $(".btnvideo").css(" background-color", "transparent");
        }
    </script>


<style>
.heartwhitedetails {
    background-color: white;
}
.heartwhitedetails:before,
.heartwhitedetails:after {
    background-color: white
}

.heartreddetails {
    background-color: #e73834
}
.heartreddetails:before,
.heartreddetails:after {
    background-color: #e73834
}

.heartdetails {
    height: 30px;
    transform: rotate(-45deg);
    width: 30px;
}

.heartdetails:before,
.heartdetails:after {
    content: "";
    border-radius: 50%;
    height: 30px;
    position: absolute;
    width: 30px;
}

.heartdetails:before {
    top: -15px;
    left: 0;
}
@media only screen and (max-width: 600px) {
    #containheartdetails{
        margin-right: -140;
        margin-top: 110px;
    }
}
.dd{
    height:50;
    width:50;
}
</style>

<div style="width:100%;text-align:right;min-height:380px;z-index:5000;">
    <div class="OneAdDataMargin">
        <%  Select Case Cint(objRs("WhoAmI"))
                Case 0 vWhoAmI = "פרטי"
                Case 100 vWhoAmI = "סוחר"
            End Select

            Select Case Cint(objRs("Gearbox"))
                Case 0 vGearbox = "ידני"
                Case 100 vGearbox = "אוטומט"
            End Select

            Select Case Cint(objRs("CarEngineType"))
                Case 0 vCarEngineType = "בנזין"
                Case 1 vCarEngineType = "דיזל"
                Case 2 vCarEngineType = "היברידי"
            End Select

            Select Case (objRs("ModelMonth") & "")
                Case "" vModelMonth = "-"
                Case "1" vModelMonth = "ינואר "
                Case "2" vModelMonth = "פברואר "
                Case "3" vModelMonth = "מרץ "
                Case "4" vModelMonth = "אפריל "
                Case "5" vModelMonth = "מאי "
                Case "6" vModelMonth = "יוני "
                Case "7" vModelMonth = "יולי "
                Case "8" vModelMonth = "אוגוסט "
                Case "9" vModelMonth = "ספטמבר "
                Case "10" vModelMonth = "אוקטובר "
                Case "11" vModelMonth = "נובמבר "
                Case "12" vModelMonth = "דצמבר "
            End Select

        %>
            
        <div class="OneAdDataM" style="display:<% If Len(objRs("PanoramicImageFile")) < 5 Then Response.Write "none" %>;" onclick="javascript:document.body.scrollTop = 20;document.documentElement.scrollTop = 20;window.location.href='MobilePanoramaPlayer/index.asp?AdID=<% = Clng(Request("ID")) %>&Image=<% = vImagePanoramaFile %>&IsPanorama360File=<% = 0 %>';"><a href="MobilePanoramaPlayer/index.asp?AdID=<% = Clng(Request("ID")) %>&Image=<% = vImagePanoramaFile %>&IsPanorama360File=<% = 0 %>"> <div style=" display: flex;align-items: center;justify-content: center;">  <div id="btn360" class="btn360 w3-round  w3-border" style="background-color:#e73834;color: white;" >לצפיה בפנים הרכב ב-360°</div>
        </div></a></div>
        <div class="OneAdDataM" style="display:<% If Len(objRs("360ImageFile")) < 5 Then Response.Write "none" %>;" onclick="javascript:document.body.scrollTop = 20;document.documentElement.scrollTop = 20;window.location.href='MobilePanoramaPlayer/index.asp?AdID=<% = Clng(Request("ID")) %>&Image=<% = vImage360PanoramaFile %>&IsPanorama360File=<% = 1 %>';"><a href="MobilePanoramaPlayer/index.asp?AdID=<% = Clng(Request("ID")) %>&Image=<% = vImage360PanoramaFile %>&IsPanorama360File=<% = 1 %>"> <div style=" display: flex;align-items: center;justify-content: center;">  <div id="btn360" class="btn360 w3-round  w3-border" style="background-color:#e73834;color: white;" >לצפיה בפנים הרכב ב-360°</div>
        </div></a></div>
      
            <%  Select Case Cint(objRs("AreaID"))
                Case 0 vArea = "כל האזורים"
                Case 100 vArea = "מרכז"
                Case 200 vArea = "שרון"
                Case 300 vArea = "שפלה"
                Case 400 vArea = "צפון"
                Case 500 vArea = "ירושלים"
                Case 600 vArea = "דרום"
            End Select
        %>
    <hr style="border: 0.5px solid  #e7e7e7;  width:102%;  margin-right: -20px;"/>
        <div id="rightdetailsmobail"style="width:60%;margin-bottom:-20;margin-right:25%">
            <div style="margin-bottom:5px">  <span class="redspan">יצרן:</span> <a class=" w3-border-black w3-round " style="cursor:pointer;padding-left:5px;padding-right:5px;border: 2px solid #000 !important" href="Brands.asp?ID=<% = objRs("ManufacturerID") %>"><span2 id="ManufacturerName1"><% = objRs("ManufacturerName") %></span2></a></div> 
                <span class="redspan">דגם:</span> <a class=" w3-border-black w3-round" style="cursor:pointer;   padding-left:5px;padding-right:5px;  border: 2px solid #000 !important" href="Brands.asp?ID=<% = objRs("ManufacturerID") %>&ModelID=<% = objRs("ModelID") %>"><span2 id="ModelName1"><% = objRs("ModelName") %></span2></a><br />
                <span class="redspan">שנת ייצור:</span> <span2 id="ModelYear1"><% = vModelMonth %> <% = objRs("ModelYear") %></span2><br />
                <span class="redspan">תיבת הילוכים:</span> <span2><% = vGearbox %></span2> <br />
                <span class="redspan">סוג מנוע:</span> <span2><% = vCarEngineType %></span2><br />
            <span class="redspan">טסט עד:</span> <span2><% = GetMonthName(objRs("CarTestMonth")) %> / <% = objRs("CarTestYear") %></span2><br />
            <span class="redspan">ק"מ:</span> <span2><% = objRs("CarKilometers") %></span2><br />
            <span class="redspan">אזור:</span> <span2><% = vArea %> | <% = objRs("Street")  & " " & objRs("HomeNumber") & ", " & objRs("City") %></span2><br />
        </div> 
        <div id="leftdetailsmobail"style="margin-right:25%">
                <span class="redspan">יד:</span> <span2><% = objRs("CarHandNumber") %></span2><br />
                <span class="redspan">בעלות:</span> <span2><% = vWhoAmI %></span2><br />
                <span class="redspan">נפח:</span> <span2><% = objRs("EngineCapacity") %></span2><br />
                <span class="redspan">צבע:</span> <span2><% = objRs("CarColor") %></span2><br />
                <span class="redspan">איש קשר:</span> <a class="w3-border-black w3-round w3-hover-text-red" style="cursor:pointer;  padding-left:5px;padding-right:5px; border: 2px solid #000 !important" href="UserAds.asp?ID=<% = objRs("UserID") %>"><span2><% = objRs("OwnerName") %></span2></a> <span></span> <span2><a href="javascript:getMobileModaPhone(<% = objRs("ID") %>);"></a></span2>

                
        </div> 
        
            <div class="OneAdData" style="margin-top:15px;margin-bottom:10px;text-align:center">
                <% If Len(objRs("Remarks") & "") > 2 Then %>
                    <span2>הערות:</span2><span13 style="font-size:10pt;font-weight:normal;"><% = objRs("Remarks") %></span13><% End If %>
                <br />
                <span>מחיר מבוקש:</span> <span2 style="color: #e73834;font-weight: 900;">₪<% = objRs("Price") %></span2><br />
                    <form action="?mode=report"" method="post">
                        <input  type="submit" value="דווח על תוכן לא הולם" class="report <%=wasReported %>"/>
                        <input  name="id_" value="<% = objRs("ID") %>" hidden/>
                    </form>
            </div>
        <style>
            .report{
                border:2px solid #e73834;
                background:white;
                margin:10px;
                margin-bottom:-5px;
                border-radius:5px;
                padding:5px;
            }
        </style>

                       

                <hr  id="hruserbottom" style="border: 0.5px solid  #e7e7e7; width:102%; margin-right: -20px;"/>

        <div id="ShareDivMobile" class="OneAdData" style="position:relative;display: flex;align-items: center;justify-content: center">
               
            <span>שיתוף:</span> 
            <div style="text-align:right;display:inline;vertical-align:text-bottom;">

                <span2><a href="whatsapp://send?text=היי, ראיתי <% = objRs("ManufacturerName") %> - <% = objRs("ModelName") %> באפליקציית אוטוספין שאתה חייב לראות, לצפייה במודעה לחץ על הקישור הבא:%0A%0A http%3A//autospin.co.il/Ad.asp?ID%3D<% = Clng(Trim(Request("ID"))) %>" data-action="share/whatsapp/share" target="_blank"><img src="images/WaShare.png" border="0" style="height:24px;margin-right:5px;vertical-align:text-bottom;" /></a></span2>
                <span2><a href="https://www.facebook.com/sharer/sharer.php?u=http%3A//autospin.co.il/Ad.asp?ID=<% = Clng(Trim(Request("ID"))) %>" target="_blank"><img src="images/FBShare.png" border="0" style="height:24px;margin-right:5px;vertical-align:text-bottom;" /></a></span2>
                <span2><a href="https://twitter.com/share?url=http%3A//autospin.co.il/Ad.asp?ID=<% = Clng(Trim(Request("ID"))) %>&amp;text=היי, ראיתי <% = objRs("ManufacturerName") %> - <% = objRs("ModelName") %> באפליקציית אוטוספין שאתה חייב לראות, לצפייה במודעה לחץ על הקישור הבא:" target="_blank"><img src="images/TWShare.png" border="0" style="height:24px;margin-right:5px;vertical-align:text-bottom;" /></a></span2>

            </div>
        </div>
                <hr style="border: 0.5px solid  #e7e7e7;width:102%;   margin-right: -20px;"/>

        <div id="ShareDiv" class="OneAdData" style="position:relative;">
            <img src="images/OneAdBox/8.png" class="OneAdDataIcon" />
            <span>שיתוף</span> 
            <div style="text-align:right;display:inline;vertical-align:text-bottom;">
                    
                <span2><a href="https://web.whatsapp.com/send?text=היי, ראיתי <% = objRs("ManufacturerName") %> - <% = objRs("ModelName") %> באפליקציית אוטוספין שאתה חייב לראות, לצפייה במודעה לחץ על הקישור הבא:%0A%0A http%3A//autospin.co.il/Ad.asp?ID%3D<% = objRs("ID") %>" target="_blank"><img src="images/WaShare.png" border="0" style="height:24px;margin-right:5px;vertical-align:text-bottom;" /></a></span2>
                <span2><a href="https://www.facebook.com/sharer/sharer.php?u=http%3A//autospin.co.il/Ad.asp?ID=<% = objRs("ID") %>" target="_blank"><img src="images/FBShare.png" border="0" style="height:24px;margin-right:5px;vertical-align:text-bottom;" /></a></span2>
                <span2><a href="https://twitter.com/share?url=http%3A//autospin.co.il/Ad.asp?ID=<% = objRs("ID") %>&amp;text=היי, ראיתי <% = objRs("ManufacturerName") %> - <% = objRs("ModelName") %> באפליקציית אוטוספין שאתה חייב לראות, לצפייה במודעה לחץ על הקישור הבא:" target="_blank"><img src="images/TWShare.png" border="0" style="height:24px;margin-right:5px;vertical-align:text-bottom;" /></a></span2>
                <span2><a href="javascript:copyToClipboard('http%3A//autospin.co.il/Ad.asp?ID=<% = objRs("ID") %>');"><img src="images/copyToClipBord.png" border="0" style="height:24px;margin-right:5px;vertical-align:text-bottom;" /></a></span2>

            </div>
        </div>

          
    </div>
</div>

</div>



<% If VIsPanoramicFile = "1" Then %>
<div id="PanoramaWebDiv" style="display:<% If Len(objRs("PanoramicImageFile")) < 5 Then Response.Write "none" %>;">

    <a href="javascript:reloadon(PanoramaFullScreenAdPage);"><img src="images/fullScreen.png" class="HideInMobile" style="position:absolute;vertical-align:middle;top:10px;right:10px;width:50px;z-index:1200;" /></a>
    <div id="myPanoAdPage" class="pano">
		<div class="controls">
			<a href="javascript:void();" class="left">&raquo;</a>
			<a href="javascript:void();" class="right">&laquo;</a>
		</div>
	</div>
	<script src="MobilePanoramaPlayer/jquery.pano.js"></script>
	<script>
	jQuery(document).ready(function($){
		$("#myPanoAdPage").pano({
			img: "https://autospin.co.il/<% = vImagePanoramaFile %>"
		});
	});
	</script>
</div>
<% Else %>
<% If VIsPanoramicFile = "0" Then %> 
<div id="PanoramaWebDiv1" style="display:<% If Len(objRs("360ImageFile")) < 5 Then Response.Write "none" %>;">
    <div id="container1"></div>
    <style>
#sms{
   z-index: 11;
    color: transparent;
}


        #container1 {
            width: 100%;
            height: 100%;
        }
    
    </style>
    <script src="js/three.min.js"></script>
<script src="js/photo-sphere-viewer.min.js"></script>
    <script>
		    var div = document.getElementById("container1");
		    var PSV = new PhotoSphereViewer({
		        panorama: "https://autospin.co.il/<% = vImage360PanoramaFile %>",
		        container: div,
		        time_anim: 3000,                
		        navbar: true,
		        navbar_style: {
		            backgroundColor: 'rgba(58, 67, 77, 0.7)'
		        },
		    });
           
	</script>

</div>

<% End If %>
<% End If %>


<div id="PanoramaFullScreen" style="top:-150vh;direction:rtl;">
    <div style="position:absolute;top:0;left:0;width:100%;height:100vh;z-index:-100;" onclick="javascript:ReloadPanoramaFullScreen();"></div>
    <a href="javascript:ReloadPanoramaFullScreen();"><img src="images/fullScreenX.png" border="0" style="position:absolute;left:30px;top:30px;width:60px;" /></a>
    <div id="myPanoAdPage2" class="pano" style="z-index:3000;height:50vh;">
		<div class="controls">
			<a href="javascript:void();" class="left">&raquo;</a>
			<a href="javascript:void();" class="right">&laquo;</a>
		</div>
	</div>
	<script>
	    jQuery(document).ready(function($){
		    $("#myPanoAdPage2").pano({
			    img: "https://autospin.co.il/<% = vImagePanoramaFile %>"
		    });
	    });

        jQuery(document).ready(function($){
		    $("#myPano3").pano({
			    img: "https://autospin.co.il/<% = vImagePanoramaFile %>"
		    });
	    });
	</script>
</div>

<%    
    If vWhoAmI = "סוחר" Then

        'נותן קדימות למכוניות דומות של הסוחר
        vWhoAmIHeadLine = "מודעות נוספות שיעניינו אותך"
        strSql = " Select Ads.*, 1 as isUser, Users.ImageFile As UserImageFile, companies.Name As ManufacturerName, companies.ImageFile As ManufacturerImageFile, models.Name As ModelName "
        strSql = strSql & " , COALESCE((Select AdID From favorites Where favorites.UserID = " & vIDUser & " And favorites.AdID = Ads.ID And favorites.Show = 0),0) As isFavorite "
        strSql = strSql & " From Ads "
        strSql = strSql & " Inner Join Users On Users.IDUser = Ads.UserID "
        strSql = strSql & " Inner Join companies On companies.ID = Ads.ManufacturerID "
        strSql = strSql & " Inner Join models On models.ID = Ads.ModelID "
        strSql = strSql & " Where Ads.Show = 0 And Ads.ExtraData = 200 "
        strSql = strSql & " And Ads.ModelTypeID = " & objRs("ModelTypeID") & " "
        'strSql = strSql & " And Ads.SubModelTypeID = " & objRs("SubModelTypeID") & " "
        strSql = strSql & " And Ads.Price >= (" & objRs("Price") & " * 0.8) And Ads.Price <= (" & objRs("Price") & " * 1.15) "
        If Cint(objRs("AreaID")) > 0 Then
            strSql = strSql & " And ( Ads.AreaID = 0 Or Ads.AreaID = " & objRs("AreaID") & ") "
        End if
        strSql = strSql & " And Ads.UserID = " & objRs("UserID") & " "
        strSql = strSql & " And Ads.ID <> " & objRs("ID") & " "

        strSql = strSql & " Union "

        strSql = strSql & " Select Ads.*, 0 as isUser, Users.ImageFile As UserImageFile, companies.Name As ManufacturerName, companies.ImageFile As ManufacturerImageFile, models.Name As ModelName "
        strSql = strSql & " , COALESCE((Select AdID From favorites Where favorites.UserID = " & vIDUser & " And favorites.AdID = Ads.ID And favorites.Show = 0),0) As isFavorite "
        strSql = strSql & " From Ads "
        strSql = strSql & " Inner Join Users On Users.IDUser = Ads.UserID "
        strSql = strSql & " Inner Join companies On companies.ID = Ads.ManufacturerID "
        strSql = strSql & " Inner Join models On models.ID = Ads.ModelID "
        strSql = strSql & " Where Ads.Show = 0 And Ads.ExtraData = 200 "
        strSql = strSql & " And Ads.ModelTypeID = " & objRs("ModelTypeID") & " "
        'strSql = strSql & " And Ads.SubModelTypeID = " & objRs("SubModelTypeID") & " "
        strSql = strSql & " And Ads.Price >= (" & objRs("Price") & " * 0.8) And Ads.Price <= (" & objRs("Price") & " * 1.15) "
        If Cint(objRs("AreaID")) > 0 Then
            strSql = strSql & " And ( Ads.AreaID = 0 Or Ads.AreaID = " & objRs("AreaID") & ") "
        End if

        strSql = strSql & " And Ads.ID <> " & objRs("ID") & " "
        strSql = strSql & " And Ads.UserID <> " & objRs("UserID") & " "
        strSql = strSql & " Order BY isUser DESC, ID DESC Limit 5"

        'Response.Write strSql

    Else

        '//-- פרטי
        vWhoAmIHeadLine = "מודעות נוספות שיעניינו אותך"
        strSql = "Select Ads.*, Users.ImageFile As UserImageFile, companies.Name As ManufacturerName, companies.ImageFile As ManufacturerImageFile, models.Name As ModelName "
        strSql = strSql & " , COALESCE((Select AdID From favorites Where favorites.UserID = " & vIDUser & " And favorites.AdID = Ads.ID And favorites.Show = 0),0) As isFavorite "
        strSql = strSql & " From Ads "
        strSql = strSql & " Inner Join Users On Users.IDUser = Ads.UserID "
        strSql = strSql & " Inner Join companies On companies.ID = Ads.ManufacturerID "
        strSql = strSql & " Inner Join models On models.ID = Ads.ModelID "
        strSql = strSql & " Where Ads.Show = 0 And Ads.ExtraData = 200 "
        strSql = strSql & " And Ads.ModelTypeID = " & objRs("ModelTypeID") & " "
        'strSql = strSql & " And Ads.SubModelTypeID = " & objRs("SubModelTypeID") & " "
        strSql = strSql & " And Ads.Price >= (" & objRs("Price") & " * 0.8) And Ads.Price <= (" & objRs("Price") & " * 1.15) "
        If Cint(objRs("AreaID")) > 0 Then
            strSql = strSql & " And ( Ads.AreaID = 0 Or Ads.AreaID = " & objRs("AreaID") & ") "
        End if

        strSql = strSql & " And Ads.ID <> " & objRs("ID") & " "
        strSql = strSql & " Order BY ID DESC Limit 5"

    End if

   
    'Response.Write strSql & strOrder
	objRsF.Open strSql, objConn, 3, 1
	HowMany = 0
    If Not objRsF.EOF Then
%>


<!--<div id="Div1" style="margin-top:<% If Len(objRs("PanoramicImageFile")) < 5 Then Response.Write "0" Else Response.Write  "-300px" %>;"> Gila 27.11.18 -->
<div id="SimilarCarBox" >

<!--<div id="SimilarCarBox">-->
    <div id="SimilarCarDivHead"><% = vWhoAmIHeadLine %></div>
    <div id="SimilarCarDiv">
        <div class="SimilarCarDivInner" style="margin-right:10px">
        <% Do While Not objRsF.EOF %>
        <div id="SimilarCarAdBox">
            <% If Len(objRsF("360VideoImageFile")) < 5 Then vImageFile = "images/blank.png" Else vImageFile = "https://autospin.co.il/files/VideosImageFiles/" & objRsF("360VideoImageFile") %>
            <a href="javascript:getModaDetails(<% = objRsF("ID") %>);"><div class="SimilarCarAdBoxImageFile" style="background-image:url(<% = vImageFile %>);"></div></a>
            <div class="SimilarCarAdBoxText">
                <% = objRsF("ManufacturerName") & " " & objRsF("ModelName") & " " & objRsF("ModelYear") %>
            </div>
        </div>
        <%	HowMany = HowMany + 1
	        objRsF.MoveNext
	        Loop
        %>
        </div>
    </div>
</div>
<div id="conecticon"  >
    <div  class="w3-col m4 margtest">
    <div id="sms" class="w3-col s4  " style="display: flex;align-items: center; justify-content: center">
      <a title="my title text" id="sms_a"   class="dd">        
          <img src="images/smsicone.png" width="40" height="40" id="smsicone" />
    </a>
    </div>   
        <div  class="w3-col s4 " style="display: flex;align-items: center;justify-content: center">
        <a   href="javascript:getMobileModaPhone(<% = objRs("ID") %>);">
            <img src="images/OneAdBox/‏‏Phone.png"  style="width:38px" />
        </a>
      </div>
      <div id="whatsapp" class="w3-col s4  " style="display: flex;align-items: center;justify-content: center">
             <a title="my title text" id="whatsapp_a">
                 <img src="images/wahtsappicon.jpg" width="40" height="40" id="wahtsappicon">
             </a>
      </div>
    </div>
    <div class="w3-col m4 margtest">
      <div class="w3-col s4  w3-center">
        <p>שלח sms</p>
      </div>
      <div class="w3-col s4 w3-center ">
        <p>חייג עכשיו</p>
      </div>
      <div class="w3-col s4  w3-center ">
        <p >שלח הודעה</p>
      </div>
    </div>
</div>
<script type="text/javascript">
    $(SimilarCarDiv).animate({
        scrollLeft: 200
    }, 700);
</script>
<%	End if
    objRsF.close
%>
<br><br><br>
<%	
   End If
    objRs.close

%>


<!--#include file="inc_bottom.asp"-->

 <script type="text/javascript">
     var AdID = '<%=Request.QueryString("ID") %>';
     var ManufacturerName = document.getElementById("ManufacturerName1").textContent;
     var ModelName1 = document.getElementById("ModelName1").textContent;
     var ModelYear1 = document.getElementById("ModelYear1").textContent;
    StrUrl = "web_Services/getModaPhone.asp?Rand=" + Math.random() + "&AdID=" + AdID + "&hash=" + "111";
    http = createRequestObject();
    http.open('get', StrUrl, false);
    http.setRequestHeader("Connection", "close");
     http.send(null);
     var phone = http.responseText;
     phone = phone.substring(1);
     if (http.readyState == 4) {
         if (http.responseText.length < 15) {
             $("#sms_a").attr("href","sms:+972"+phone+"?body=היי בקשר ל"  +ManufacturerName+" %20"+ModelName1+"%20 שנת "+ModelYear1+" אפשר פרטים בבקשה?");
             $("#whatsapp_a").attr("href", "https://api.whatsapp.com/send?phone=+972"+phone+"&text=היי בקשר ל"  +ManufacturerName+" %20"+ModelName1+"%20 שנת "+ModelYear1+" אפשר פרטים בבקשה?");
         }
     }
 </script>
