<%@ language="VBScript" codepage="65001" %><% Response.CharSet = "utf-8" %>
<%  
    PageName = "modaha"
    MenuLink1000 = "On"
    StrJs = "<link rel=""stylesheet"" href=""PanoramaPlayer/dist/css/paver.min.css?v=" & Now() & """ /><script type=""text/javascript"" src=""js/video.min.js""></script><link href=""css/video-js.min.css"" rel=""stylesheet"">"
%>
<!--#include file="inc_top.asp"-->
<script>
  fbq('track', 'ViewContent');
</script>
<%  
    If Request.QueryString("mode") = "report" Then
        objConn.execute "Update Ads Set reported=1 Where Ads.ID = " & Trim(Request.Form("id_"))
        Response.Redirect "modaa.asp?ID= " & Trim(Request.Form("id_"))
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
        If Len(objRs("UserImageFile")) < 5 Then vUserImageFile = "files/AppImages/user_photo.png" Else vUserImageFile = "files/users/" & objRs("UserImageFile")       
        If Len(objRs("PanoramicImageFile")) < 5 Then  vImagePanoramaFile = "images/OneAdBox/PanoramaTemp2.png" Else vImagePanoramaFile = "files/WebPanoramicFiles/" & objRs("PanoramicImageFile")   
        If Len(objRs("360ImageFile")) < 5 Then vImage360PanoramaFile = "images/OneAdBox/PanoramaTemp2.png" Else vImage360PanoramaFile = "files/WebPanoramicFiles/" & objRs("360ImageFile")
        If Len(objRs("PanoramicImageFile")) < 5 Then VIsPanoramicFile = "0" Else VIsPanoramicFile = "1"

   
%>
<head>
    <title></title>
    <link href="../css/Newaddetails.css" rel="stylesheet" />
    <link href="css/w3s.css" rel="stylesheet" />
    ‎<!-- Global site tag (gtag.js) - Google Ads: 774923385 --> 
    <script async src="https://www.googletagmanager.com/gtag/js?id=AW-774923385"></script> 
    <script> window.dataLayer = window.dataLayer || []; function gtag(){dataLayer.push(arguments);} 
        gtag("js", new Date()); gtag("config", "AW-774923385"); </script> ‎
</head>
<div  style="height:auto;">
     <a href="#" onclick="javascript:window.history.go(-1);">
        <div   style="position: fixed;right: -4vh;width: 12%;z-index: 5000;color: #e73834;font-size: 50pt;font-weight: 900;font-family: Arial;margin-top:40px;" >x</div></a>
    <div>
<style>
.containheartdetails1 {
    top: 55;
    transform: rotate(90deg) scale(0.6);
    width: 50px;
    z-index: 10000;
    position: relative;
    left: 30;
}

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
    .OnemodBox360VideoImageFile2 {
    position: absolute;
    left: 12px;
    height: 300px;
    width: 500px;
    background-size: cover;
    background-color: transparent;
    z-index: 1004;
    }
    #video{
        background-color:transparent;
    }
    .OnemodDataMargin2{
        margin-top: 100px;
        margin-right: 100px;
    }
    #rightdetailsmobail{
        display:inline-block;
    }
    #leftdetailsmobail{
        display:inline-block;
        margin-right:50px;

    }
    #Footer{
        position:relative;
    }
    #OnemodDataM2360{
        display:inline-block;
            position: absolute;

    } #OnemodDataM2p{
        display:inline-block;
            position: absolute;

    }
    
         .NewOnemodBoxUserDivSplit2 {
             position: relative;
             width: 49%;
             display: inline-block;
           
             vertical-align: top;
             text-align: right;
         }
         .PhoneSpan{
             display: inline-block;
         }
         #NewOnemodBoxUserBox1{
             margin-top: -10px;
         }
         .btn360 {
     margin-right: -100px;
    margin-top: 8px;
    border: none;
    display: inline-block;
    padding: 8px 16px;
    vertical-align: middle;
    overflow: hidden;
    text-decoration: none;
    color: inherit;
    background-color: inherit;
    text-align: center;
    cursor: pointer;
    white-space: nowrap;
}
</style>
 
        </div>
</div>
<div id="OnemodBox" class="OnemodBox" style="width: 96%; max-width: 92%; margin-right: 4%; height: auto;margin-top: 100px;">

    <% If Len(objRs("360VideoImageFile")) < 5 Then vImageFile = "images/blank.png" Else vImageFile = "https://autospin.co.il/files/VideosImageFiles/" & objRs("360VideoImageFile") %>
    <div class="OnemodBox360VideoImageFile2" >
        <!--onplay - Gila 28.11.18-->
        <div id="videoContainer" class="videoContainer"style="width:100%;position:absolute; ">
              <% If Not Session("Session_UserWebLoggedIn") = true Then %>
                <a href="javascript:alert('אנא בצע התחברות');">
                    <div  class="containheartdetails1" >
                    <div class="heartdetails heartwhitedetails" ></div></div></a>
                <% Else %>
                <% If Request("Mode") = "MyAds" Then %>
                <a href="javascript:setAdHide(<% = objRs("ID") %>);">
                    <img src="images/BoxAd/DeleteButton.png" class="AdBoxFevoritOneAd" /></a>
                <% Else %>
                <% If Clng(objRs("isFavorite")) = 0 Then vFevoritImg = "heartwhitedetails" Else vFevoritImg = "heartreddetails" %>
                <a href="javascript:SetAdFavorite(<% = objRs("ID") %>);">
                    <div  class="containheartdetails1" >
                    <div  class="heartdetails <% = vFevoritImg %>" id="Favorite_<% = objRs("ID") %>"></div></div></a>
                <% End if %>
                <% End if %>

            <video id="video" autoplay loop muted playsinline  class="video-js vjs-default-skin modVideo myvideo" onplay="document.getElementsByClassName('OneAdBoxUserImg2')[0].style.bottom='160px'"  controls preload="auto" data-setup='{}'>
              <source src="https://autospin.co.il/files/VideosFiles/<% = objRs("360VideoFile") %>" type="video/mp4">
            </video>
        </div>
  </div>
    <div class="imageBottom"  id="imageBottom">
          <div id="OnemodDataM2p" class="OneAdDataM" style="display:<% If Len(objRs("PanoramicImageFile")) < 5 Then Response.Write "none" %>;" onclick="javascript:document.body.scrollTop = 20;document.documentElement.scrollTop = 20;window.location.href='MobilePanoramaPlayer/index.asp?AdID=<% = Clng(Request("ID")) %>&Image=<% = vImagePanoramaFile %>&IsPanorama360File=<% = 0 %>';"><a href="MobilePanoramaPlayer/index.asp?AdID=<% = Clng(Request("ID")) %>&Image=<% = vImagePanoramaFile %>&IsPanorama360File=<% = 0 %>"> <div style=" display: flex;align-items: center;justify-content: center;">  <div id="btn360" class="btn360 w3-round  w3-border" style="background-color:#e73834;color: white;" >לצפיה בפנים הרכב ב-360°</div>
            </div></a></div>
            <div id="OnemodDataM2360" class="OneAdDataM" style="display:<% If Len(objRs("360ImageFile")) < 5 Then Response.Write "none" %>;" onclick="javascript:document.body.scrollTop = 20;document.documentElement.scrollTop = 20;window.location.href='MobilePanoramaPlayer/index.asp?AdID=<% = Clng(Request("ID")) %>&Image=<% = vImage360PanoramaFile %>&IsPanorama360File=<% = 1 %>';"><a href="MobilePanoramaPlayer/index.asp?AdID=<% = Clng(Request("ID")) %>&Image=<% = vImage360PanoramaFile %>&IsPanorama360File=<% = 1 %>"> <div style=" display: flex;align-items: center;justify-content: center;">  <div id="btn360" class="btn360 w3-round  w3-border" style="background-color:#e73834;color: white;" >לצפיה בפנים הרכב ב-360°</div>
            </div></a></div>
            <div id="ShareDivMobile1" class="OneAdData ShareDivMobile1" >
               
                <span>שיתוף:</span> 
                <div style="text-align:right;display:inline;vertical-align:text-bottom;">
                   <span2><a href="https://web.whatsapp.com/send?text=היי, ראיתי <% = objRs("ManufacturerName") %> - <% = objRs("ModelName") %> באפליקציית אוטוספין שאתה חייב לראות, לצפייה במודעה לחץ על הקישור הבא:%0A%0A http%3A//autospin.co.il/Ad.asp?ID%3D<% = Clng(Trim(Request("ID"))) %>" data-action="share/whatsapp/share" target="_blank"><img src="images/WaShare.png" border="0" style="height:24px;margin-right:5px;vertical-align:text-bottom;" /></a></span2>
                    <span2><a href="https://www.facebook.com/sharer/sharer.php?u=http%3A//autospin.co.il/modaa.asp?ID=<% = Clng(Trim(Request("ID"))) %>" target="_blank"><img src="images/FBShare.png" border="0" style="height:24px;margin-right:5px;vertical-align:text-bottom;" /></a></span2>
                    <span2><a href="https://twitter.com/share?url=http%3A//autospin.co.il/modaa.asp?ID=<% = Clng(Trim(Request("ID"))) %>&amp;text=היי, ראיתי <% = objRs("ManufacturerName") %> - <% = objRs("ModelName") %> באפליקציית אוטוספין שאתה חייב לראות, לצפייה במודעה לחץ על הקישור הבא:" target="_blank"><img src="images/TWShare.png" border="0" style="height:24px;margin-right:5px;vertical-align:text-bottom;" /></a></span2>
                </div>
<!--                <div>דרוג:</div>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star"></span>
                <span class="fa fa-star"></span>-->
                <form action="?mode=report"" method="post" >
                    <input  type="submit" value="דווח על תוכן לא הולם" class="report <%=wasReported %>"/>
                    <input  name="id_" value="<% = objRs("ID") %>" hidden/>
                </form>

                </div>

      </div>
            <style>
            .checked {
              color: orange;
            }
            .report{
                transform:scale(0.7);
                border:2px solid #e73834;
                background:white;
                margin:10px;
                margin-bottom:-5px;
                border-radius:5px;
                padding:5px;
            }
        </style>

    <div class="w3-text-light-gray w3-border-bottom‏"></div>
         <div id="details"class="details">
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
            <div id="rightdetails"  style="width:50%;display:inline-block;">
                <span>יצרן:</span>
                <a class="w3-border-black w3-round w3-hover-text-red" href="Brands.asp?ID=<% = objRs("ManufacturerID") %>" style=" border: 2px solid #000 !important;padding-right: 5;padding-left: 5;">
                    <span class="Bold_text"><% = objRs("ManufacturerName") %></span></a>
                <br />
                <span>דגם:</span>
                 <a class="w3-border-black w3-round w3-hover-text-red" href="Brands.asp?ID=<% = objRs("ManufacturerID") %>&ModelID=<% = objRs("ModelID") %>" style=" border: 2px solid #000 !important;padding-right:5px">
                     <span class="Bold_text"><% = objRs("ModelName") %></span>
                 </a>

                <br />
                <span>שנת יצור:</span>
                    <span class="Bold_text"><% = vModelMonth %> <% = objRs("ModelYear") %></span>
                <br />
                <span>יד:</span>
                <span class="Bold_text"><% = objRs("CarHandNumber") %></span>
                <br />
                <span>תיבת הילוכים:</span>
                <span class="Bold_text"><% = vGearbox %></span>
                <br />
                <span>בעלות:</span>
                <span class="Bold_text"><% = vWhoAmI %></span>
                <br />
                <span>סוג מנוע:</span>
                <span class="Bold_text"><% = vCarEngineType %></span>
            </div>
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
         
                    <div id="leftdetails"class="w3-display-topmiddle w3-hide-small  leftdetails" style="    padding-right: 100px; margin-top: 125px;">
                       <span>נפח:</span>
                        <span class="Bold_text"><% = objRs("EngineCapacity") %></span>
                        <br />
                        <span>טסט עד:</span>
                        <span class="Bold_text"><% = GetMonthName(objRs("CarTestMonth")) %> / <% = objRs("CarTestYear") %></span>
                        <br />
                        <span>צבע:</span>
                        <span class="Bold_text"><% = objRs("CarColor") %></span>
                        <br />
                        <span>ק"מ:</span>
                        <span class="Bold_text"><% = objRs("CarKilometers") %></span>
                        <br />
                        <span>אזור:</span>
                        <span class="Bold_text"><% = vArea %> | <% = objRs("Street")  & " " & objRs("HomeNumber") & ", " & objRs("City") %></span>
                        <br />
                        <span>מחיר:</span>
                        <span class="Bold_text" style="color: #e73834;font-weight: 900;font-size: 20;">₪<% = objRs("Price") %></span>
                        <br />
                        <span>איש קשר:</span> 
                        <a class="w3-border-black w3-round w3-hover-text-red" style="    font-weight: 700;cursor:pointer;  border: 2px solid #000 !important;padding-right: 5;padding-left: 5;" href="UserAds.asp?ID=<% = objRs("UserID") %>"><span2><% = objRs("OwnerName") %></span2></a> <span></span> <span2><a href="javascript:getMobileModaPhone(<% = objRs("ID") %>);"></a></span2>
                        <br />
                    </div>
                    <br />
                    <div id="Note"class="note">
                        <% If Len(objRs("Remarks") & "") > 2 Then %>
                         <span class="Bold_text">הערות:</span>
                        <span ><% = objRs("Remarks") %></span>
                        <% End If %>
                    </div>
                    <br />
                    <div id="user_phone_and_image"class="user_phone_and_image">
                        <!--<hr style="position: absolute;border: 0.6px solid #383838; width: 35%;margin-top: 0.6%; "/>-->
                           <% If Len(objRs("UserImageFile"))< 5 Then vImageFile = "files/AppImages/user_photo.png" Else vImageFile = "https://autospin.co.il/files/users/" & objRs("UserImageFile") %>
                        <a href="UserAds.asp?ID=<% = objRs("UserID") %>">
                            <img  class="w3-circle userimage"  src="<% = vImageFile %>"id="userimage1" />
                         </a>
                                    <!--<img  class="w3-circle userimage" src="../images/favicon-16x16.png" />-->
                            <!-- <img class="w3-circle" src="<% = vImageFile %>" />      
                         </a>-->
                         <img src="images/OneAdBox/‏‏Phone.png" class="FloatPhone" style="margin-right:2%;" />       
                         <a href="javascript:getModaPhone(<% = objRs("ID") %>);">
                            <div id="PhoneSpan_<% = objRs("ID") %>" class="PhoneSpan"style="margin-right:3%;">הצג מספר טלפון</div>
                        </a>
                        <!--<hr style="position: absolute;border: 0.6px solid #383838; width: 35%; "/>-->
                </div>
        </div>
                   
</div>


<% If VIsPanoramicFile = "1" Then %>
<% Else %>
<% If VIsPanoramicFile = "0" Then %> 

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
    <hr style="border: 1px solid #383838;margin-top: 70px;width: 96%;    max-width: 982px;"/>

<!--<div id="Div1" style="margin-top:<% If Len(objRs("PanoramicImageFile")) < 5 Then Response.Write "0" Else Response.Write  "-300px" %>;"> Gila 27.11.18 -->
<div id="SimilarCarBox" style="margin-top:<% If Len(objRs("PanoramicImageFile")) < 5 Then Response.Write "0" Else Response.Write  "0" %>;">
<!--position: relative;
    width: 100%;
    max-width: 1070px;
    text-align: center;
    overflow-x: scroll;
    overflow-y: hidden;-->
<!--<div id="SimilarCarBox">-->
    <div id="SimilarCarDivHead" ><% = vWhoAmIHeadLine %></div>
    <div id="SimilarCarDiv">
        <div class="SimilarCarDivInner">
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
<script type="text/javascript">
    
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
<style>
    #Footer{
        margin-left:-20px;
    }
    @media only screen and (max-width: 1500px){
#videoContainer{
    transform: scale(1.2);
}
#containheartdetails{
    margin-right: -250px;
}
#containheartdetails1{
    margin-right: -250px;
}
.imageBottom{
    transform: scale(1.3);
    margin-top: 360;
    
}
#btn360{
    margin-right: -80px;
}
#ShareDivMobile1{
    margin-top: 50px;
    margin-right: 210px;
}
    }
    .ShareDivMobile1{
    position: relative;
    display: inline-block;
    align-items: center;
    justify-content: center;
    margin-top: 40px;
    height: 250px;
    margin-right: 140px;
    padding-right: 10px;
    }



    .videoContainer{
    transform: scale(1.2);
}

.imageBottom{
    transform: scale(1.4);
    margin-top: 360;
    
}
#userimage1{
    display: inline-block;
    width: 80px;
    height: 80px;
    z-index: 4;
    margin-bottom: 4px;
    margin-right: 2%;
    margin-top:3;
}
</style>
<script>if (getBrowser()=== "edge") {
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
            }</script>