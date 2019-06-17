<link href="../css/newgetCarLotIndexList.css" rel="stylesheet" />
 
<link href="css/newinc_top.css" rel="stylesheet" />
<!DOCTYPE html>
<html id="wholeSite">
<head>
    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-122315664-1"></script>
    <script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
  gtag('config', 'UA-122315664-1');
    </script>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="Author" content="PGN Contact@Pgn.co.il">
    <meta http-equiv="content-language" content="he">
    <link rel="shortcut icon" href="images/favicon.ico">
    <link rel="icon" type="image/png" sizes="16x16" href="images/favicon-16x16.png">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=0" />
    <!--#include file="functions.asp"-->
    <%
    StrTitle = "אוטוספין - " & StrTitle
    StrDescription = " אוטוספין - קנייה ומכירת רכב יד שניה ב-360°!"
    StrKeywords = "מכירת רכב, קניית רכב, אוטוספין, רכבים יד שניה, לוח רכב,  טרייד אין,מגרשי רכב,סוכנויות רכב, אופנועים, קטנועים, אופניים ופנאי, autospin,4x4,ליסינג,לוח יד 2,מחירון יד 2,רכב משומש,רכב יד שניה,רכבים למכירה,מכוניות למכירה,רכב יד 2"
    StrTitleFB = StrTitle
    If PageName = "Ad" or PageName = "modaha" Then
        strSql = "Select Ads.*,  companies.Name As ManufacturerName, models.Name As ModelName"
        strSql = strSql & " From Ads "
        strSql = strSql & " Inner Join companies On companies.ID = Ads.ManufacturerID "
        strSql = strSql & " Inner Join models On models.ID = Ads.ModelID "
        strSql = strSql & " Where Ads.ID = " & Clng(Request("ID")) & " LIMIT 1"
        objRs.Open strSql, objConn, 0, 1
        If Not objRs.Eof Then
            StrTitle = "למכירה " & objRs("ManufacturerName") & " " & objRs("ModelName") & " " & objRs("ModelYear") & " יד " & objRs("CarHandNumber") &" - אוטוספין"
            StrDescription = "למכירה " & objRs("ManufacturerName") & " " & objRs("ModelName") & " " & objRs("ModelYear") & ", אוטוספין - קנייה ומכירת רכב יד שניה ב-360°!"
            StrTitleFB = "למכירה " & objRs("ManufacturerName") & " " & objRs("ModelName") & " " & objRs("ModelYear") & " - אוטוספין"
            If Len(objRs("360VideoImageFileShare")) > 5 Then StrFaceBookImage = "https://autospin.co.il/files/VideosImageFiles/" & objRs("360VideoImageFileShare")
        End if
        objRs.Close
    End if

    If PageName = "search" Then
        If Len(Request("ManufacturerID") & "") >0 Then
        strSql = "Select Name,ImageFile From Companies Where ID = " & Clng(Request("ManufacturerID")) & " LIMIT 1"
        objRs.Open strSql, objConn, 0, 1
        If Not objRs.Eof Then
            StrManufacturerName = objRs("Name")
            If Len(Request("EndPrice") & "") >0 Then
            StrTitle = " אוטוספין-רכבי " & StrManufacturerName & " עד " & Clng(Request("EndPrice")) &  " ₪ " 
            else
            StrTitle = " אוטוספין-רכבי " & objRs("Name") 
            End if
            StrFaceBookImage = "https://autospin.co.il/files/" & objRs("ImageFile")
        End if
        objRs.Close
        End if
        If Len(Request("ModelID") & "") >0 Then
        strSql = "Select Name From models Where ID = " & Clng(Request("ModelID")) & " LIMIT 1"
        objRs.Open strSql, objConn, 0, 1
        If Not objRs.Eof Then
            StrmodelrName = objRs("Name")
            If Len(Request("EndPrice") & "") >0 Then
            StrTitle = " אוטוספין-רכבי " & StrManufacturerName & " " & StrmodelrName & " עד " & Clng(Request("EndPrice")) &  " ₪ "  
            else    
            StrTitle = " אוטוספין-רכבי " & StrManufacturerName & " " & objRs("Name") 
            End if
        End if
        objRs.Close
        End if
    End if
    If PageName = "Brands" Then
        If Len(Request("ModelID") & "") > 0 Then
            strSql = "Select Companies.Name As CompanyName, Companies.ImageFile, models.Name As ModelName From models Inner Join Companies On Companies.ID = models.CompanyID Where models.ID = " & Clng(Request("ModelID")) & " LIMIT 1"
            objRs.Open strSql, objConn, 0, 1
            If Not objRs.Eof Then
                StrTitle = "רכבי " & objRs("CompanyName") & " " & objRs("ModelName") & " יד שניה למכירה באתר אוטוספין"
                StrDescription = StrTitle
                StrTitleFB = StrTitle
                StrManufacturerName = objRs("CompanyName") & " " & objRs("ModelName")
                If Len(objRs("ImageFile")) > 5 Then
                    StrManufacturerImageFile = "https://autospin.co.il/files/" & objRs("ImageFile")
                    StrFaceBookImage = "https://autospin.co.il/files/" & objRs("ImageFile")
                End if
            End if
            objRs.Close
        Else
            strSql = "Select Name, ImageFile From Companies Where ID = " & Clng(Request("ID")) & " LIMIT 1"
            objRs.Open strSql, objConn, 0, 1
            If Not objRs.Eof Then
                StrTitle = "רכבי " & objRs("Name") & " יד שניה למכירה באתר אוטוספין"
                StrDescription = StrTitle
                StrTitleFB = StrTitle
                StrManufacturerName = objRs("Name")
                If Len(objRs("ImageFile")) > 5 Then
                    StrManufacturerImageFile = "https://autospin.co.il/files/" & objRs("ImageFile")
                    StrFaceBookImage = "https://autospin.co.il/files/" & objRs("ImageFile")
                End if
            End if
            objRs.Close
        End if
    End if
    If PageName = "UserAds" Then
        If Len(Request("ID") & "") > 0 Then
            StrSql = "Select Users.IDUser, Users.userFullName, Users.ImageFile , COALESCE(Ads.ID,0) As AdID, Ads.Address, Ads.latitude, Ads.longitude"
            StrSql = StrSql & " From Users Left join ads On ads.UserID = Users.IDUser And Ads.Show = 0 And Ads.ExtraData = 200 "
            StrSql = StrSql & " Where Users.IDUser = " & Clng(Request("ID")) & " Order By Ads.ID DESC LIMIT 1"
            objRs.Open StrSql, objConn, 0, 1
            If Not objRs.Eof Then
                StrTitle = "מבחר המכוניות של " & objRs("userFullName") & " באתר אוטוספין"
                StrDescription = StrTitle
                StrTitleFB = StrTitle
                StruserFullName = objRs("userFullName")
                StrUserAddress = objRs("Address")
                StrUserLatitude = objRs("latitude")
                StrUserLongitude = objRs("longitude")
                StrUserAdID = objRs("AdID")
                If Len(objRs("ImageFile")) > 5 Then
                    StrUserImageFile = "https://autospin.co.il/files/users/" & objRs("ImageFile")
                    StrFaceBookImage = "https://autospin.co.il/files/users/" & objRs("ImageFile")
                Else
                    StrUserImageFile = "https://autospin.co.il/files/AppImages/user_photo.png"
                    StrFaceBookImage = "https://autospin.co.il/files/AppImages/user_photo.png"
                End if
            End if
            objRs.Close
        End if
    End if
    If PageName = "CarLotAds" Then
        If Len(Request("ID") & "") > 0 Then
            StrSql = "Select CarLots.* From CarLots "
            StrSql = StrSql & " Where CarLots.ID = " & Clng(Request("ID")) & " LIMIT 1"
            objRs.Open StrSql, objConn, 0, 1
            If Not objRs.Eof Then
                StrTitle = "מבחר המכוניות של " & objRs("Name") & " באתר אוטוספין"
                StrDescription = StrTitle
                StrTitleFB = StrTitle
                StrCarLotName = objRs("Name")
                StrCarLotShortText = objRs("ShortText")
                StrCarLotAddress = objRs("Address")
                StrCarLotId = objRs("ID")
                StrCarLotPhone = objRs("Phone")
                StrCarLotUserID = objRs("UserID")
                StrIsCarLot = objRs("isCarlot")
                If Len(objRs("ImageFile")) > 5 Then
                    StrUserImageFile = "https://autospin.co.il/files/" & objRs("ImageFile")
                    StrFaceBookImage = "https://autospin.co.il/files/" & objRs("ImageFile")
                Else
                    StrUserImageFile = "https://autospin.co.il/files/AppImages/user_photo.png"
                    StrFaceBookImage = "https://autospin.co.il/files/AppImages/user_photo.png"
                End if
            End if
            objRs.Close
        End if
    End if
        If PageName = "Tips" Then
                StrTitle =  "אוטוספין-חדשות הרכב"
                StrDescription = StrTitle
                StrTitleFB = StrTitle
                StrFaceBookImage = "https://autospin.co.il/files/AppImages/gemeralFacebookImage.PNG"
        End if

        If PageName = "BuyingTips" Then
                StrTitle =  "אוטוספין-טיפים לקניית רכב"
                StrDescription = StrTitle
                StrTitleFB = StrTitle
                StrFaceBookImage ="https://autospin.co.il/files/AppImages//buycar.jpg"
        End if

        If PageName = "SalingTips" Then
                StrTitle =  "אוטוספין-טיפים למכירת רכב"
                StrDescription = StrTitle
                StrTitleFB = StrTitle
                StrFaceBookImage ="https://autospin.co.il/files/AppImages//salecar.jpg"
        End if

        If PageName = "PhotoTips" Then
                StrTitle =  "אוטוספין-טיפים לצילום רכב"
                StrDescription = StrTitle
                StrTitleFB = StrTitle
                StrFaceBookImage ="https://autospin.co.il/files/AppImages//photograph.jpeg"
        End if

    %><meta name="Description" content='<% = StrDescription %>'>
    <meta name="keywords" content='<% = StrKeywords %>'>
    <meta name="abstract" content='<% = StrTitle %>'>
    <meta http-equiv="title" content="<% = StrTitle %>">
    <meta property="og:title" content="<% = StrTitleFB %>" />
    <meta property="og:description" content="<% = StrDescription %>" />
    <meta property="og:image" content="<% = StrFaceBookImage %>" />
    <title><% = StrTitle %></title>
    <script type="text/javascript" src="js/js.js?Time=<% = Now() %>"></script>
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <% = StrJs %>
    <style type="text/css">
        @import url("css/web.css?v=<% = Now() %>");
        @import url("css/webResponsive.css?v=<% = Now() %>");
    </style>
    <link href="css/NewHeadert.css" rel="stylesheet" />
    <link href="css/w3s.css" rel="stylesheet" />
    <!-- Facebook Pixel Code -->
    <script>
!function(f,b,e,v,n,t,s)
{if(f.fbq)return;n=f.fbq=function(){n.callMethod?
n.callMethod.apply(n,arguments):n.queue.push(arguments)};
if(!f._fbq)f._fbq=n;n.push=n;n.loaded=!0;n.version='2.0';
n.queue=[];t=b.createElement(e);t.async=!0;
t.src=v;s=b.getElementsByTagName(e)[0];
s.parentNode.insertBefore(t,s)}(window,document,'script',
'https://connect.facebook.net/en_US/fbevents.js');
fbq('init', '1594689620803942'); 
fbq('track', 'PageView');
    </script>
    <noscript>
        <img height="1" width="1" src="https://www.facebook.com/tr?id=1594689620803942&ev=PageView&noscript=1" />
    </noscript>
    <!-- End Facebook Pixel Code -->
</head>
<body>
    <!--<div id="backgrounnd_360_and_pano" style="display:none;position:absolute;z-index: 11111;position: fixed;padding: 0;margin: 0;top: 0;left: 0;width: 100%;height: 100%;background: #000000eb;"></div>-->
  
    <% If Not Trim(Request.Cookies("HideDownloadAppDiv")) = "true" Then %>
  <div id="DownloadAppDiv">
        <a href="https://autospin.co.il/share" target="_blank">
            <img id="appDownloadimg" class="appDownloadimg" src="images/appDownload.jpg" border="0" style="width: 100%; border: 1px solid #818181;" /></a>
        <a href="javascript:HideDownloadAppDiv();">
            <img src="images/blank.png" border="0" style="position: absolute; top: 25%; right: 0.75%; width: 8%; height: 50%;" />
        </a>
    </div>
  <% End If %>





    <center style="overflow:hidden">
<script type="text/javascript">
    $("html").mouseleave(function(){
        $('#contactUsBackground').css('display', 'block');
    });

    OpenMenu = false;
    $(document).ready(function () {

        $('#nav-icon3').click(function () {
            $(this).toggleClass('open');
            if (OpenMenu == false) {
                document.getElementById("MobileMenu").className = "MobileMenuOn";
                OpenMenu = true;
            } else {
                document.getElementById("MobileMenu").className = "MobileMenu";
                OpenMenu = false;
            }
        });
    });
        var element = "null";
        function w3_open_closee() {
            element = 'menu';
        }
        document.onclick = function () {  
            var display = $('#sideMenuBar').css('display');
            if (element == 'menu')
                $('#sideMenuBar').css('display', 'block');
            if (display == 'block')
                $('#sideMenuBar').css('display', 'none');
            element = "null";
        }

</script>
             <div class="backgroundfreesearch" ></div>

  <div class="w3-bar toplinks toplinks1" id="toplinks1"style="font-weight: 700;background-color:white;    border-bottom: 1px solid #d0cccc;" >
          <% If Not Session("Session_UserWebLoggedIn") = true Then %>
       <a style="display:none;" onclick="javascript:reload(SignInDiv);$('.toplinks1').attr('id', 'topHeight');" id="SignInButton" class="w3-hover-text-grey SignInButton"   ><img id="useLogInimg"class="useLogInimg" src="images/useLogIn.png" /> התחבר </a>
     <div class="backgroundSignInDiv" >
         <div id="SignInDiv" class="SignInDiv"  style=" display: none;position: fixed;top: 1px;bottom: 0;left: 0;right: 0;width: 800px;height: 500px;margin: auto;‏" >
           <button id="btnclose" class="w3-btn1 btnclose" onclick="closesigninDiv1('close');$('.toplinks1').removeAttr('id', 'topHeight');">x</button>
          
            <div id="rightsignin"class="rightsignin" >
                <div class="w3-round-large"style="position: absolute;display: flex;align-items: center;justify-content: center;bottom: 380px;border: 2px solid #161616;width:300px;height:80px;">
                <span class="registration"style="color:#e73834;">לא רשום? </span>
                    <span class="registration"style="font-weight:900;color:#161616;margin-right:5px;margin-left:5px"> &#10095&#10095 </span>
                    <a  onclick="javascript:reload(registrationDiv);closesigninDiv1('close');$('.toplinks1').removeAttr('id', 'topHeight');" href="#" class="registration registrationnow"style="color:#161616;text-decoration: underline;">התחל כאן </a> 
                </div>
            <img src="images/logInImage.PNG" style="height: 300px;width: 380px;top: 122px;position: relative;" />
                <a href="https://itunes.apple.com/us/app/%D7%90%D7%95%D7%98%D7%95%D7%A1%D7%A4%D7%99%D7%9F/id1375533179?l=iw&amp;ls=1&amp;mt=8" target="_blank"><img src="images/AppStoreButton.png" alt="App Store" title="App Store" border="0" style="position: absolute;width: 105px;height:35px; top: 450px;left: 210px;"></a>
                <a href="https://play.google.com/store/apps/details?id=com.appgate.autospin" target="_blank"><img src="images/GoogleButton.png" alt="Google Store" title="Google Store" border="0" style="position:absolute;width:130px;top: 450px;left:70px;height:35px" /></a>
            </div>
            <div id="SignInDivBox"style="height:100%;width:50%;display: flex;align-items: center;justify-content: center;background-color:#161616;">
                <form id="SignIn" name="SignIn"style="display: flex;align-items: center;justify-content: center;width:100%;height:100%;">
                  
                    <span style="color:white;font-size:20pt;top: 40px;position: absolute;height: 30px;">כניסה</span>
                    <input id="SignInEmail"  type="text" name="SignInEmail" class="w3-round-large SignInInput" value="אימייל" onblur="javascript:if(this.value==''){this.value='אימייל'};" onfocus="javascript:if(this.value=='אימייל'){this.value='';}" style="top:100px;background-color:white;" />
                    <div id="SignInErrorEmail" class="InputBoxTextRed" style="position:absolute;top:80px;display:none;">אנא הזן אימייל חוקי.</div>
                    <input type="text" name="SignInPassword" id="SignInPassword" class="w3-round-large SignInInput" value="סיסמה" onclick="PasswordInputA('SignInPassword', 'סיסמה');" onblur="PasswordInputB('SignInPassword', 'סיסמה');" style="top:160px;background-color:white;" />
                
                    <div id="SignInErrorPassword" class="InputBoxTextRed" style="position:absolute;top:142px;display:none;">אנא הזן סיסמה חוקית.</div>
                    <div id="ErrorNotLogin" class="InputBoxTextRed" style="position:absolute;top:142px;display:none;">נתוני ההתחברות אינם נכונים, אנא נסה שנית.</div>
                    <a onclick="closesigninDiv('end')" id="SignInlink" href="javascript:SignIn();"><span class="w3-round-large SignInInput SignInhover" style="    line-height: 2; right: 73px;color: white;background-color:#e73834; position:absolute;top:220px;width:253px;">התחברות</span> </a>
                    <hr style="top: 281px;position: absolute;border: 1px solid #c5c4c4;width: 65%;right: 70px;" />
                    <span style="color:#c5c4c4 ;font-size:16pt;top: 284px;position: absolute;height: 30px;background-color: rgb(22, 22, 22);padding-right: 5px;padding-left: 5px;">או</span>       
                      
                    <a id="facebooklink" href="javascript:void(0);"><div  id="fb-login"class="w3-round-large SignInInput" style="color:white; line-height: 2.3;right:-2px;background-color:#2b69b6; position: relative;top:120px;width:253px;" >   התחברות באמצאות פייסבוק<img src="images/footer/Footer_Facebook_Button.png" style="padding-right: 10px;padding-bottom: 5px;"/> </div></a>
                    <div id="FaceBookStatus" class="InputBoxTextRed" style="position:absolute;top: 321px;display:none;"></div>
                    <div class="w3-round-large registrationid" id="registrationid">
                <span class="registration" style="color:#e73834;">לא רשום?</span>
                    <span class="registration" style="font-weight:900;color:#161616"> &gt;&gt; </span>
                    <a  onclick="javascript:reload(registrationDiv);closesigninDiv1('close');$('.toplinks1').attr('id', 'topHeight');" href="#" class="registration registrationnow"style="color:#161616;text-decoration: underline;">התחל כאן </a> 

                </div>
                </form>
                <script type="text/javascript">
                    (function (d, s, id) {
                        var js, fjs = d.getElementsByTagName(s)[0];
                        if (d.getElementById(id)) return;
                        js = d.createElement(s); js.id = id;
                        js.src = "//connect.facebook.net/en_US/sdk.js";
                        fjs.parentNode.insertBefore(js, fjs);
                    }(document, 'script', 'facebook-jssdk'));

                    window.fbAsyncInit = function () {
                        FB.init({
                            appId: '1473464589418708',
                            cookie: true,
                            xfbml: true,
                            version: 'v2.0'
                        });

                        document.getElementById('fb-login').onclick = function () {
                            FB.login(function (response) {
                                SignIn_checkLoginState(response);
                            }, { scope: 'public_profile,email,user_birthday' });
                        };

                    };

                </script>
            </div>
        </div>
    </div>
      <div class="backgroundregistration" style="display:none;" >
                   <div id="registrationDiv" class="registrationDiv"  style=" display: none;background-color: #161616;width: 400;" >
                              <button id="registrationbtnclose" class="w3-btn1 registrationbtnclose" onclick="closeregistrationDiv1('close');$('.toplinks1').removeAttr('id', 'topHeight');">x</button>
                                   <div id="registrationDivBox">
                                        <form id="registration" name="registration"style="display: flex;align-items: center;justify-content: center;width:100%;height:100%;">
                                            <span style="color:white;font-size:35pt;top: 10px;position: absolute;height: 30px;">הרשמה</span>
                                             <div id="registrationErrorname" class="InputBoxTextRed" style="position:absolute;top:80px;display:none;">אנא הזן שם מלא.</div>
                                            <input type="text" name="registrationname" id="registrationname" class="SignInInput radius8" placeholder="שם מלא" value="שם מלא" onblur="javascript:if(this.value==''){this.value='שם מלא'};" onfocus="javascript:if(this.value=='שם מלא'){this.value='';}" style="top:100px" />
                                            <input id="registrationEmail"  type="text" name="registrationEmail" class="w3-round-large SignInInput" value="אימייל" onblur="javascript:if(this.value==''){this.value='אימייל'};" onfocus="javascript:if(this.value=='אימייל'){this.value='';}" style="top:160px;background-color:white;" />
                                            <div id="registrationErrorEmail" class="InputBoxTextRed" style="position:absolute;top:80px;display:none;">אנא הזן אימייל חוקי.</div>
                                            <input type="text" name="registrationPassword" id="registrationPassword" class="w3-round-large SignInInput" value="סיסמה" onclick="PasswordInputA('registrationPassword', 'סיסמה');" onblur="PasswordInputB('registrationPassword', 'סיסמה');" style="top:220px;background-color:white;" />
                                            <div id="registrationErrorPassword" class="InputBoxTextRed" style="position:absolute;top:142px;display:none;">אנא הזן סיסמה חוקית.</div>
                                            <input type="text" name="registrationPassword2" id="registrationPassword2" class="w3-round-large SignInInput" value="הקלד סיסמה שוב" onclick="PasswordInputA('registrationPassword2', 'הקלד סיסמה שוב');" onblur="PasswordInputB('registrationPassword2', 'הקלד סיסמה שוב');" style="top: 280px;background-color:white;" />
                                            <div id="registrationErrorPassword2" class="InputBoxTextRed" style="position:absolute;top:142px;display:none;">הסיסמאות אינן תואמות אנא נסה שוב.</div>
                                            <a onclick="closeregistrationDiv1('end');$('.toplinks1').removeAttr('id', 'topHeight');" id="registrationlink" href="javascript:registration();"><span class="w3-round-large SignInInput SignInhover registationclose" >הרשמה</span> </a>
                                            <span style="color:white;font-size:10pt;top: 400px;position: absolute;height: 30px;">ההרשמה לאתר מהווה הסכמה על ה<a  href="javascript: window.open('Tos.asp')" class="w3-hover-text-grey toslink">תקנון</a></span>
                                        </form>
                                   </div>
                   </div>
      </div>
          <a id="SiteMenu" href="#" class="w3-hover-text-gray  w3-text-red w3-xxlarge  SiteMenu" onclick="w3_open_closee()" style="color:#f44336" alt="תפריט" title="תפריט">☰</a>            

      <% Else %>
                <a id="SiteMenu" href="#" class="w3-hover-text-gray  w3-text-red w3-xxlarge  SiteMenu" onclick="w3_open_closee()" style="color:#f44336" alt="תפריט" title="תפריט">☰</a>            

        <span class="w3-margin-right" id="usenameheader">שלום, <% = Session("Session_Name") %></span>
    <% End if %>
            <div id="freesearch" class="freesearch" style="direction: rtl;" >
       <div class="w3-panel  tipsTopBar tipsTopBarfreesearch " style="padding: 0;">
    <div class="tipsTopBarbackground tipsTopBarbackgroundfreesearch" style="background: #35353585;width: 100%;display: flex;align-items: center;justify-content: center;" ></div><h1  class="w3-text-white freesearchh1" id="carlotsindextitle">תוצאות החיפוש</h1></div>
         <hr class="newAddsHr1" id="newAddsHr1freesearchcontent"/>
<div class="newAddsText1" id="freesearchcontenttitle" ></div>
<!--  <br /><div id="freesearchcontenttitle"style="max-width: 1200;" ></div><br />-->
          <div id="freesearchcontent"style="max-width: 1200;" ></div>
          <div id="freesearchcontentamore" style="max-width: 1200;" ><a class="hoverred" href="javascript:;$('#freesearchcontent').css('height','max-content');$('#freesearchcontentahidden').css('display','block');$('#freesearchcontentamore').css('display','none');">הצג עוד...</a></div>
          <div id="freesearchcontentahidden" style="max-width: 1200;display:none" ><a class="hoverred" href="javascript:;$('#freesearchcontent').css('height','350');$('#freesearchcontentahidden').css('display','none');$('#freesearchcontentamore').css('display','block');">הסתר</a></div>
                   <hr class="newAddsHr1"id="newAddsHr1freesearchcontentmod"/>
<div class="newAddsText1" id="freesearchcontentmodtitle" ></div>

<!--         <br /> <div id="freesearchcontentmodtitle"style="max-width: 1200;" ></div><br />-->
          <div id="freesearchcontentmod"style="max-width: 1200;" ></div>
                    <div id="freesearchcontentmodtamore" style="max-width: 1200;" ><a class="hoverred" href="javascript:;$('#freesearchcontentmod').css('height','max-content');$('#freesearchcontentmodahidden').css('display','block');$('#freesearchcontentmodtamore').css('display','none');">הצג עוד...</a></div>
          <div id="freesearchcontentmodahidden" style="max-width: 1200;display:none" ><a class="hoverred" href="javascript:;$('#freesearchcontentmod').css('height','280');$('#freesearchcontentmodahidden').css('display','none');$('#freesearchcontentmodtamore').css('display','block');">הסתר</a></div>


      </div>

      <div class="mobileMenu">
    <ul>
            <li><a href="Video.asp" class="w3-margin-right w3-hover-light-gray w3-text-white bar-item w3-margin-top">הוספת מודעה</a><hr class="bar-hr" /></li>
        <li><a href="MyAds.asp" class="w3-margin-right w3-hover-light-gray w3- w3-text-white bar-item">המודעות שלי </a><hr class="bar-hr" /></li>
        <li><a href="MyFavorites.asp" class="w3-margin-right w3-hover-light-gray w3- w3-text-white bar-item"> מועדפים</a><hr class="bar-hr" /></li>
        <li><a href="default.asp?LogOut=true"  onclick="return confirm('האם אתה בטוח שברצונך להתנתק ?')" class="w3-margin-right w3-hover-light-gray w3- w3-text-white bar-item"> התנתקות </a><hr class="bar-hr" /></li>
        <li><a href="javascript:MobileMenuGo('default.asp');">חיפוש רכב</a></li>
        <li><a href="javascript:MobileMenuGo('CarLotIndex.asp');"> מגרשי רכב</a></li>
        <li><a href="javascript:MobileMenuGo('Tutorial.asp');">האפליקציה</a></li>
        <li><a href="javascript:MobileMenuGo('Tips.asp');">חדשות הרכב</a></li>
        <li><a href="javascript:MobileMenuGo('ContactUs.asp');">צור קשר</a></li>
    </ul>
</div>
                  <a id="CarLotSrcam" href="javascript:blur();$('.backgroundfreesearch').css('display','inline-block');$('#btnclosefreesearchm').css('display','inline-block');$('#contentCarLotSrc1').css('display','flex');$('#CarLotSrc1').css('display','inline-block');$('#CarLotSrcam').css('display','none');"><div class="magnifying-glasstopbar6 magnifying-glasstopbar6m""><i id="magnifying-glasstopbar6" class="w3-margin-left"></i></div></a>
                   <button style="display:none;" id="btnclosefreesearchm"onclick="$('.backgroundfreesearch').css('display','none');$('#wholeSite').css('overflow','scroll');$('#freesearch').css('display','none');$('#contentCarLotSrc1').css('display','none');$('#btnclosefreesearchm').css('display','none');$('#CarLotSrc1').css('display','none');$('#CarLotSrcam').css('display','inline-block');">x</button>

    <div id="contentCarLotSrc1"> <div id="CarLotSrc1" class=" w3-round-large CarLotSrc1" style="transform:scale(1.2)"></div> 
        <div style="position:relative;">
           
            <a id="CarLotSrca" href="javascript:$('#freesearchcontent').css('height','350');$('#freesearchcontentmod').css('height','280');freesearch2('1', 'Src');freesearch('1', 'Src',1);document.querySelector('.freesearch').style.display =  'inline-block';$('#wholeSite').css('overflow','hidden'); emptyfree();"><div class="magnifying-glasstopbar6"id="magnifying-glasstopbar6div"><i id="magnifying-glasstopbar6" class="w3-margin-left edgesearch"></i></div></a>
            <input class="CarLotSrcInput"  type="text" id="CarLotSrcInput" name="CarLotSrcInput" value="חפש..." onblur="javascript:if(this.value==''){this.value='חפש...'};" onfocus="javascript:if(this.value=='חפש...'){this.value='';}" onkeydown = "if (event.keyCode == 13) {document.getElementById('CarLotSrca').click();}" />
        </div>
    </div>

        <span style="color:white">-----------</span>
        <a onclick="document.body.scrollTop = 20;document.documentElement.scrollTop = 20;window.location.href='search.asp'" tabindex="1" class="w3-hover-text-grey baritem w3-hide-small">חיפוש רכב<i class="bar">|</i></a>
        <a onclick="document.body.scrollTop = 20;document.documentElement.scrollTop = 20;window.location.href='CarLotIndex.asp'" tabindex="2" class="w3-hover-text-grey baritem w3-hide-small ">מגרשי רכב<i class="bar">|</i></a>
        <a onclick="document.body.scrollTop = 20;document.documentElement.scrollTop = 20;window.location.href='Video.asp'" tabindex="3" class="w3-hover-text-grey baritem large w3-hide-small ">האפליקציה<i class="bar">|</i></a>
        <a onclick="document.body.scrollTop = 20;document.documentElement.scrollTop = 20;window.location.href='Tips.asp'" tabindex="4" class="w3-hover-text-grey baritem large w3-hide-small ">חדשות הרכב<i class="bar">|</i></a>
        <a tabindex="5" href="#" class="contactUsLink w3-hover-text-grey baritem w3-hide-small" onclick="ShowContacUsDiv()">צור קשר</a><span style="color:white">----------</span>
        <a class="aimgheader1"  onclick="document.body.scrollTop = 20;document.documentElement.scrollTop = 20;window.location.href='default.asp'"><img id="imgheader" style="padding-left: 20px;" src="images/logo.png" class="baritem" alt="AutoSpin" title="AutoSpin" border="0" /></a>
</div>

        <script type="text/javascript">
           $(".CarLotSrcInput").on("keypress", function(event){
    if (event.keyCode == 13) {
            event.preventDefault();
            event.target.blur()
        }
})

            window.onload = function () {
                if (document.getElementById('CarLotSrcInput').value != "" && document.getElementById('CarLotSrcInput').value != null && document.getElementById('CarLotSrcInput').value != "חפש...") {
freesearch2('1', 'Src');freesearch('1', 'Src'); $('#freesearch').css('display', 'inline-block');$('#wholeSite').css('overflow','hidden');}
            }



        function closeregistrationDiv1(element) {
                if (element == 'close' || element == 'end'&& document.SubmitMainForm.registrationname != "שם מלא" && document.SubmitMainForm.registrationEmail != "אימייל" && document.SubmitMainForm.registrationPassword != "סיסמה"&& document.SubmitMainForm.registrationPassword2 != "הקלד סיסמה שוב") {
                $('#registrationname').val('שם מלא');
               $('#registrationEmail').val('אימייל');
               $('#registrationPassword').val('סיסמה');
               $('#registrationPassword2').val('הקלד סיסמה שוב');
               
                    $('.backgroundregistration').css('display', 'none');
                     $('#registrationDiv').css('display', 'none');
            }
            closesigninDiv1('close');
            }

             $('.registrationnow').on('click', function () {
                $('.backgroundregistration').css('display', 'inline-block');
                $('#registrationDiv').css('display', 'flex');

            })

            $('.SignInButton').on('click', function () {
                $('.backgroundSignInDiv').css('display', 'inline-block');
                $('#SignInDiv').css('display', 'inline-block');

            })
            function closesigninDiv1(element) {
                if (element == 'close' || element == 'end' && document.SubmitMainForm.SignInEmail != "אימייל" && document.SubmitMainForm.SignInPassword != "סיסמה") {
                $('#SignInEmail').val('אימייל');
                $('#SignInPassword').val('סיסמה');
                    $('.backgroundSignInDiv').css('display', 'none');
                     $('#SignInDiv').css('display', 'none');
                }}
        
            $('.contactUsLink').on('click', function () {
            $('.contactUsBackground').css('display', 'inline-block');
        })
        function closeContactUsDiv(element) {
            if (element == 'close' || element == 'end' && document.SubmitMainForm.Name != "שם מלא" && document.SubmitMainForm.Tel != "טלפון" && document.SubmitMainForm.Text != "דואר אלקטרוני") {
                $('#fullName').val('שם מלא');
                $('#tel').val('טלפון');
                $('#email').val('דואר אלקטרוני');
                $('.contactUsBackground').css('display', 'none');
            }
            }
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
    <div class="w3-sidebar w3-bar-block w3-border-right w3-animate-right" style="display:none" id="sideMenuBar">
        <span id="MainWrapper">
        <div id="mobileHeader" style="z-index:2005;">
            <div style="z-index:2006;">
              <span></span>
            </div>
    </div>
        <% If Not Session("Session_UserWebLoggedIn") = true Then %>  
        <a onclick="javascript:$('.backgroundSignInDiv').css('display','block');reload(SignInDiv);$('.toplinks1').attr('id', 'topHeight');" class="w3-margin-right w3-hover-light-gray w3- w3-text-white bar-item"> התחברות </a><hr class="bar-hr" />
        <% End if %>
        <a href="Video.asp" class="w3-margin-right w3-hover-light-gray w3-text-white bar-item w3-margin-top">הוספת מודעה</a><hr class="bar-hr" />
        <% If Not Session("Session_UserWebLoggedIn") = true Then %>  
        <a onclick="javascript:$('.backgroundSignInDiv').css('display','block');reload(SignInDiv);$('.toplinks1').attr('id', 'topHeight');" class="w3-margin-right w3-hover-light-gray w3- w3-text-white bar-item"> המודעות שלי </a><hr class="bar-hr" />
        <% Else %>
        <a href="MyAds.asp" class="w3-margin-right w3-hover-light-gray w3- w3-text-white bar-item">המודעות שלי </a><hr class="bar-hr" />
        <% End if %>
        <% If Not Session("Session_UserWebLoggedIn") = true Then %>  
        <a  onclick="javascript:$('.backgroundSignInDiv').css('display','block');reload(SignInDiv);$('.toplinks1').attr('id', 'topHeight');" class="w3-margin-right w3-hover-light-gray w3- w3-text-white bar-item"> מועדפים</a><hr class="bar-hr" />
        <% Else %>
        <a href="MyFavorites.asp" class="w3-margin-right w3-hover-light-gray w3- w3-text-white bar-item"> מועדפים</a><hr class="bar-hr" />
        <% End if %>
        <% If  Session("Session_UserWebLoggedIn") = true Then %>  
      <a href="default.asp?LogOut=true"  onclick="return confirm('האם אתה בטוח שברצונך להתנתק ?')" class="w3-margin-right w3-hover-light-gray w3- w3-text-white bar-item"> התנתקות </a><hr class="bar-hr" />
        <% End if %>
      <a href="#" class="w3-margin-right w3-hover-light-gray w3- w3-text-white bar-item" id="dowanloadapp"> הורדת האפליקציה </a><hr class="bar-hr" />
    </div>
        <script type="text/javascript">
            if ($(window).width() > 825)
            {
                $('#dowanloadapp').css("display", "none")
            }
            else {
                if (navigator.platform == "iPhone")
                    $("#dowanloadapp").attr("href", "https://itunes.apple.com/us/app/%D7%90%D7%95%D7%98%D7%95%D7%A1%D7%A4%D7%99%D7%9F/id1375533179?l=iw&amp;ls=1&amp;mt=8");
                else
                    $("#dowanloadapp").attr("href", "https://play.google.com/store/apps/details?id=com.appgate.autospin");
            }
        </script>
<%		
    displayafter="none"
    If Request.QueryString("mode") = "doit" Then
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
    <div class="contactUsBackground" >
        <div class="w3-container w3-padding-64 w3-theme-l5 contactDiv">
        <form name="SubmitMainForm" class="radius10 w3-container w3-card-4 w3-padding-16 contactForm" action="?mode=doit" method="post">
            <i class="closeContactUsDiv" onclick="closeContactUsDiv('close')">x</i>
            <div > 
            <input type="text" name="name_" id="fullName" class="input radius8" placeholder="שם מלא" value="שם מלא" onblur="javascript:if(this.value==''){this.value='שם מלא'};" onfocus="javascript:if(this.value=='שם מלא'){this.value='';}"  />
            </div>
            <div class="w3-section"> 
            <input type="text" name="phone_" id="tel" maxlength="12" class="input radius8" placeholder="טלפון" value="טלפון" onKeyPress="return numbersonly(this, event);" onblur="javascript:if(this.value==''){this.value='טלפון'};" onfocus="javascript:if(this.value=='טלפון'){this.value='';}" />
            </div>
            <div class="w3-section"> 
            <input name="email_" id="email_"  value="דואר אלקטרוני" class="input radius8" placeholder="דואר אלקטרוני" onblur="javascript:if(this.value==''){this.value='דואר אלקטרוני'};" onfocus="javascript:if(this.value=='דואר אלקטרוני'){this.value='';}" />
            </div>
            <div class="w3-section"> 
            <input name="description_" id="description_"  value="הודעה" class="input radius8" placeholder="הודעה" onblur="javascript:if(this.value==''){this.value='הודעה'};" onfocus="javascript:if(this.value=='הודעה'){this.value='';}" />
            </div>
            <input type="submit" value="שליחה" class="w3-button w3-red w3-round w3-section" onclick="closeContactUsDiv('send')"/>  
        </form>
        </div>
    </div>
        <div  style="top: 40%;z-index: 11; left: 45%; position: absolute;">
        <div id="afterdiv" class="w3-container w3-padding-64 w3-theme-l5  w3-card"  style="display:<% =displayafter%>;font-size:20px;background:white; ">
            <i class="closeContactUsDiv" onclick="closeDivAfter()" style=" color: #9a9898;margin-top:-70;">x</i>
            <div style="margin-top:-10px;color:red" >ההודעה נשלחה בהצלחה.</div>
        </div>
        </div>
    <script type="text/javascript">
        function closeDivAfter() {
            $('#afterdiv').css("display", "none");
        }
    </script>

<!--    <div class="windowLeftBackground" >
        <div class="w3-container w3-padding-64 w3-theme-l5 contactDiv">
        <div  class="radius10 w3-container w3-card-4 w3-padding-16 contactForm" >
            <i class="closeContactUsDiv" onclick="closewindowLeftdiv('close')" style="margin-top:-20px">x</i>
            <div class="w3-section"> 
                <span style="padding-top:30px;font-size:20px">האם מצאת את מבוקשך?</span>
            </div>
            <div class="w3-section"> 
            </div>
            <input type="button" class="w3-button w3-red w3-round w3-section" value="כן,תודה" onclick="closewindowLeftdiv('close')"/>  
            <input type="button" class="w3-button w3-red w3-round w3-section" value="לא,אשמח לעזרה" onclick="showContacUsDiv()"/>  
        </div>
        </div>
    </div>
        <script type="text/javascript">
            $(window).load(function () {
                var counter = localStorage.getItem('tabCounter');
                if(counter == null) {
                   counter = 0;
                }
                else {
                   counter = parseInt(localStorage.getItem('tabCounter'));
                }
                counter = counter + 1;
                localStorage.setItem('tabCounter', counter);
            });
            $(window).bind('beforeunload', function (e) {
               var counter = parseInt(localStorage.getItem('tabCounter'));
               counter = counter - 1;
               localStorage.setItem('tabCounter', counter);
                if (counter == 0) {
                    $('.windowLeftBackground').css('display', 'block');
                }
            }); 
            function closewindowLeftdiv(){
                $('.windowLeftBackground').css('display', 'none');
            }
            function showContacUsDiv() {
                $('.windowLeftBackground').css('display', 'none');
                $('.contactUsBackground').css('display', 'block');
            }
        </script>-->

    <%  vAddNewAdDivDisplay = "none"
        If PageName = "AddNewAd" Then vAddNewAdDivDisplay = ""
    %>
    <div id="cover" style="display:none;"><div style="position:absolute;top:0;left:0;width:100%;height:100vh;" onclick="javascript:reloadoff(AddNewAdDiv);reloadoff(cover);"></div></div>
    <div style="width:100%;min-height:675px;">
<div id="OneAdAjaxDiv1" style="display:none;">
    <div id="OneAdAjaxDivData3"></div>
</div>
<div id="OneAdAjaxDiv" style="display:none;">
<img style="display:none" id="img360file" src="images/add_top_bg.png"/>
    <a href="javascript:CloseModaDetails();"></a>
    <div id="OneAdPopUpDiv" >
        <script type="text/javascript">       
        </script>
        <div id="OneAdAjaxDivData1" style="height: 200;position: relative;width: 250;margin-right: 60;"></div>       
        <div id="OneAdAjaxDivPanorama" style="height:250px;   margin-top: -400;display:none;">
            <div id="PanoramaWebDiv" style="width:96%;max-width:92%;margin-right:4%;margin-top:25px;">
                <script type="text/javascript">                    
                    function ReloadPanoramaFullScreen() {  
                    if (document.getElementById("PanoramaFullScreen").style.top == "-150vh") {
                        document.getElementById("PanoramaFullScreen").style.top = "0";
                    }
                    else {
                        document.getElementById("PanoramaFullScreen").style.top = "-150vh";
                          $(".OneAdPopUpDivclose").css('background-color','transparent');
                    $(".OneAdPopUpDivclose").css('color','black');
                    }
}
                </script>
               <button onclick="ReloadPanoramaFullScreen()"><img src="images/fullscreen.png" class="hideinmobile" style="position:absolute;vertical-align:middle;top:10px;right:10px;width:50px;z-index:1200;" /></button>
                <div id="myPano" class="pano" style="height:250px;display:none;">
		            <div class="controls">
			            <a href="javascript:void();" class="left">&raquo;</a>
			            <a href="javascript:void();" class="right">&laquo;</a>
		            </div>
	            </div>             
                <script src="MobilePanoramaPlayer/jquery.pano.js"></script>               
	            <script>	           
                    jQuery(document).ready(function($){
		            $("#myPano").pano({
			           img: ""
		           });
	            });                
	            </script>
            </div>
        </div>       
        <div id="OneAdAjaxDiv360Panorama" style="height:250px;    margin-top: -400;visibility:collapse;margin-top: 400px;z-index: 11111;position: fixed;padding: 0;margin: 0;top: 0; left: 0;width: 100%;height: 100%;background: #000000eb;">
          <div id="Panorama360WebDiv" style="width:96%;max-width:92%;margin-right:4%;margin-top:25px;">
                 <i class="Panorama360WebDivclose" onclick="Panorama360WebDivclose()"style=" font-size: 40px;cursor: pointer;float: left;padding-bottom: 15px;color: white;font-weight: 700;">x</i>
              <div id="container" class="pano" style="height:250px;margin-top: 350px;" ></div>              
              <script src="js/photo-sphere-viewer.min.js"></script>
              <script src="js/three.min.js"></script>                          
          </div>
        </div>
       <!--</div>-->      
    </div>    
    <div id="PanoramaFullScreen" style="top:-150vh;direction:rtl;">
        <div style="position:absolute;top:0;left:0;width:100%;height:100vh;z-index:-100;" onclick="javascript:ReloadPanoramaFullScreen();"></div>
        <a href="javascript:ReloadPanoramaFullScreen();"style=" margin-top: -50;font-size: 40px;cursor: pointer;float: left;padding-bottom: 15px;color: white;font-weight: 700;">x</a>
        <div id="myPano2" class="pano" style="z-index:3500;height:50vh;">
		    <div class="controls">
			    <a href="javascript:void();" class="left">&raquo;</a>
			    <a href="javascript:void();" class="right">&laquo;</a>
		    </div>
	    </div>
	    <script>
	    jQuery(document).ready(function($){
		    $("#myPano2").pano({
			    img: ""
		    });
	    });
	    </script>
    </div>
</div>
<div id="PanoramaFullScreenAdPage" style="direction:rtl;display:none;">
    <div style="position:absolute;top:0;left:0;width:100%;height:100vh;z-index:-100;" onclick="javascript:reloadoff(PanoramaFullScreenAdPage);"></div>
    <a href="javascript:reloadoff(PanoramaFullScreenAdPage);"><img src="images/fullScreenX.png" border="0" style="position:absolute;left:30px;top:30px;width:60px;" /></a>
    <div id="myPano3" class="pano" style="z-index:3500;height:50vh;">
		<div class="controls">
			<a href="javascript:void();" class="left">&raquo;</a>
			<a href="javascript:void();" class="right">&laquo;</a>
		</div>
	</div>
	<script>
	jQuery(document).ready(function($){
		$("#myPano3").pano({
			img: ""
		});
	});
	</script>
</div>
</body>
</html>
<style>
 .hoverred:hover{
        color:#e73834;
    }
    #freesearchcontentamore:hover{
     color:#e73834;
    }
     #freesearchcontentahidden:hover{
     color:#e73834;
    }
     #freesearchcontentmodtamore:hover{
     color:#e73834;
    }
     #freesearchcontentmodahidden:hover{
     color:#e73834;
    }
     #freesearchcontentmod{
         height: 280;
    overflow: hidden;
     }
       #freesearchcontent{
         height: 350;
    overflow: hidden;
     }
    .freesearch {
        display: none;
    }
    .newAddsHr1 {
        margin: 20px 0;
    max-width: 1500;
    margin-top: 40px;
    width: 55%;
    border: 1px solid #e73834;
}
    .newAddsText1 {
    font-size: 25px;
    background: white;
    width: max-content;
    padding: 20px;
    margin-top: -60px;
    font-weight: 700;
}
    @media only screen and (max-width: 600px) {
        #freesearchcontentmodtitle {
            font-size: 15px;
        }
        /*.CarLotSrc1{display:none;}*/
    }
 @media only screen and (min-width: 825px) {
       .registationclose{
line-height: 2;
    right: -26px;
    color: white;
    background-color: #e73834;
    position: absolute;
    top: 340px;
    width: 253px;        }
     #registrationDivBox{
         height:100%;
         width:50%;
         display: flex;
         align-items: center;
         justify-content: center;
         background-color:#161616;
     }
     #contentCarLotSrc1{
    width: 220px;
    height: 38px;
    margin-top: 0px;
    left: 30;
    position: fixed;
    display: -webkit-box;
    margin-right: 20;
     }     
     #CarLotSrcam{
         display:none;
     }  
     #btnclosefreesearchm{
         display:none;
         top: -9;
     }
        #sideMenuBar{
        width: 350px;
        z-index: 11111111111111111111111111;
        background-color: #161616bf;
        margin-top: 90;
    }
   .CarLotSrc1
{
       border: 3px solid #c5c4c4;
    color: #c5c4c4;
    width: 220px;
    height: 38px;
    margin-top: 0px;
    transform: scale(1.2);
    left: 30;
    /* background: #353535a3; */
    border: 1px solid gray;
    position: fixed;
    display: -webkit-box;
    margin-right: 20;
}
   .CarLotSrcInput{
    color: black;
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
   }
   
#magnifying-glasstopbar6 {
    
       font-size: 2em;
    display: inline-block;
    width: 0.4em;
    height: 0.4em;
    border: 0.1em solid black;
    position: absolute;
    border-radius: 0.35em;
    float: left;
    margin-right: 60;
    margin-top: 5;
}

#magnifying-glasstopbar6::before {
    content: "";
    display: inline-block;
    position: absolute;
    right: -0.25em;
    bottom: -0.1em;
    border-width: 0;
    background: black;
    width: 0.35em;
    height: 0.08em;
    -webkit-transform: rotate(45deg);
    -moz-transform: rotate(45deg);
    -ms-transform: rotate(45deg);
    -o-transform: rotate(45deg);
}
.magnifying-glasstopbar6{
    transform: scale(1.4);
}
.freesearch{
    direction: rtl;
  display: none;
    margin-top: 70;
    direction: ltr;
    overflow-y: scroll;
    z-index: 11111;
    position: fixed;
    padding: 0;
    margin: 0;
    top: 0;
    left: 0;
    width: 100%;
    height: 92.5%;
    background-color: white;
    margin-top:80px;
} 
.tipsTopBarfreesearch{
      height:200px;

                         }
.tipsTopBarbackgroundfreesearch{
    height:200px;
}
.freesearchh1{
    text-align: right;
    font-size: 24pt;
    margin: 0px 20px 0px 0px;
    display: inline;
    line-height: 40px;
    vertical-align: text-bottom;
    text-shadow: 0px 0px 13px rgba(255, 255, 255, 0.5);
    position: absolute;
}
    }
    @media only screen and (max-width: 825px) {
        #freesearchcontentmodtitle{
            font-size:15;
        }
        
        .w3-btn1 {
    border: none;
    display: inline-block;
    padding: 8px 16px;
    vertical-align: middle;
    overflow: hidden;
    text-decoration: none;
    color: #e73834;
    text-align: center;
    cursor: pointer;
    white-space: nowrap;
}
        .registationclose{
 line-height: 2; 
 right: 62px;
 color: white;
 background-color:#e73834;
 position:absolute;
 top:340px;
 width:253px;
        }
         #contentCarLotSrc1{
    
    display:none;
  align-items: center;
    justify-content: center;
    width: 100%;
    height: 50;
    margin-top: 72px;
    position: fixed;
    
     }
      
        .aimgheader1{
          margin-left: 260;
    position: absolute;
    left: -130;
    width: 130;
    top: 1;
        }
        .freesearchh1{
            float: left;
    text-align: right;
    font-size: 24pt;
    margin: 0px 20px 0px 0px;
    display: inline;
    line-height: 40px;
    vertical-align: text-bottom;
    text-shadow: 0px 0px 13px rgba(255, 255, 255, 0.5);
    position: absolute;
        }
        .tipsTopBarbackgroundfreesearch{
            height: 100;
        }
        #freesearch{
            margin-top: 80px;
    z-index: 1111111111111111111;
    position: inherit;
    background-color: white;
    margin-bottom: 0;
    top: 50;
    overflow: scroll;
    direction: ltr;
    overflow-y: scroll;
    z-index: 11111;
    position: fixed;
    padding: 0;
    margin: 0;
    /* top: 0; */
    left: 0;
    width: 100%;
    height: 92.5%;
    background-color: white;
        }
        #CarLotSrcInput{
            width: 150px;
            right: -100px;
        }
        .backgroundfreesearch{
            z-index: 111111111111111111111111111;
    position: fixed;
    padding: 0;
    margin: 0;
    top: 0;
    left: 0;
    width: 100%;
    height: 170;
    background: #000000eb;
    display:none;
        }
          #CarLotSrcam{
              margin-right: -40;
        position: absolute;
    display: inline-block;
    left: 0;
     }
       
          #btnclosefreesearchm{
         display:none;
         border: none;
    background: none;
    /* color: white; */
font-size: 32pt;
font-weight: 900;
    position: absolute;
    /* bottom: 500px; */
    left: 2%;
    outline: none;
    color: #e73834;
    top: -10;
     }
        #magnifying-glasstopbar6 {
            font-size: 2em;
            display: inline-block;
            width: 0.4em;
            height: 0.4em;
            border: 0.1em solid black;
            position: absolute;
            border-radius: 0.35em;
            float: left;
            /*margin-right: 60;*/
            margin-top: 5;
            left: 0;
        }

            #magnifying-glasstopbar6::before {
                content: "";
                display: inline-block;
                position: absolute;
                right: -0.25em;
                bottom: -0.1em;
                border-width: 0;
                background: black;
                width: 0.35em;
                height: 0.08em;
                -webkit-transform: rotate(45deg);
                -moz-transform: rotate(45deg);
                -ms-transform: rotate(45deg);
                -o-transform: rotate(45deg);
            }

        .magnifying-glasstopbar6 {
            transform: scale(1.4);
           
        }
       .magnifying-glasstopbar6m {
          transform: scale(1.8);
    margin-top: 4;
    /*margin-right: -80;*/
        }
        #CarLotSrc1{
            display:none;
            transform: scale(1.2);
            color: #c5c4c4;
    width: 220px;
    height: 38px;
    margin-top: 0px;
    transform: scale(1.2);
    /* left: 30; */
    /* background: #353535a3; */
    border: 1px solid gray;
    position: fixed;
    margin-right: 0;
    /* left: 100; */
    top: 95;
    background-color: white;
        }
        #magnifying-glasstopbar6div{
            position: absolute;
    margin-right: 140;
        }
    }
</style>

