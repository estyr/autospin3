
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

    <div class="w3-container w3-padding-64 w3-theme-l5 contactdiv1" id="contactdiv1" style="transform:scale(0.8);display:<% =displaycontactdiv%>">
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
    </script>
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
        margin-bottom: 380px;
        margin-right: -25px; 
        right:0;
        bottom:0;
    }
    @media only screen and (max-width: 600px) {
        #contactdiv1 {
            display: none;
        }
    }
</style>



<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous"><link href="css/w3s.css" rel="stylesheet" />
<link href="css/newfooter.css" rel="stylesheet" />
      <div class="footerbackgroundregistration" style="display:none;" >
                   <div id="footerregistrationDiv" class="footerregistrationDiv"  style=" display: none;width: 400;" >
                              <button id="footerregistrationbtnclose" class="w3-btn1 footerregistrationbtnclose" onclick="footerregistrationbtnclose('close');">x</button>
                                   <div id="registrationDivBox"style="height:100%;width:100%;display: flex;align-items: center;justify-content: center;background-color:#161616;">
                                        <form id="footerregistration" name="footerregistration"style="display: flex;align-items: center;justify-content: center;width:100%;height:100%;">
                                            <span style="color:white;font-size:35pt;top: 10px;position: absolute;height: 30px;">הרשמה</span>
                                             <div id="registrationErrorname" class="InputBoxTextRed" style="position:absolute;top:80px;display:none;">אנא הזן שם מלא.</div>
                                            <input type="text" name="footerregistrationname" id="footerregistrationname" class="SignInInput radius8" placeholder="שם מלא" value="שם מלא" onblur="javascript:if(this.value==''){this.value='שם מלא'};" onfocus="javascript:if(this.value=='שם מלא'){this.value='';}" style="top:100px" />
                                            <input id="footerregistrationEmail"  type="text" name="footerregistrationEmail" class="w3-round-large SignInInput" value="אימייל" onblur="javascript:if(this.value==''){this.value='אימייל'};" onfocus="javascript:if(this.value=='אימייל'){this.value='';}" style="top:160px;background-color:white;" />
                                            <div id="registrationErrorEmail" class="InputBoxTextRed" style="position:absolute;top:80px;display:none;">אנא הזן אימייל חוקי.</div>
                                            <input type="Password" name="footerregistrationPassword" id="footerregistrationPassword" class="w3-round-large SignInInput" value="סיסמה" onclick="PasswordInputA('footerregistrationPassword', 'סיסמה');" onblur="PasswordInputB('footerregistrationPassword', 'סיסמה');" style="top:220px;background-color:white;" />
                                            <div id="registrationErrorPassword" class="InputBoxTextRed" style="position:absolute;top:142px;display:none;">אנא הזן סיסמה חוקית.</div>
                                            <input type="Password" name="footerregistrationPassword2" id="footerregistrationPassword2" class="w3-round-large SignInInput" value="הקלד סיסמה שוב" onclick="PasswordInputA('footerregistrationPassword2', 'הקלד סיסמה שוב');" onblur="PasswordInputB('footerregistrationPassword2', 'הקלד סיסמה שוב');" style="top: 280px;background-color:white;" />
                                            <div id="registrationErrorPassword2" class="InputBoxTextRed" style="position:absolute;top:142px;display:none;">הסיסמאות אינן תואמות אנא נסה שוב.</div>
                                            <a onclick="footerregistrationbtnclose('end')" id="registrationlink" href="javascript:registration();"><span class="w3-round-large SignInInput SignInhover" style="    line-height: 2; right: 73px;color: white;background-color:#e73834; position:absolute;top:340px;width:253px;">הרשמה</span> </a>
                                            <span style="color:white;font-size:10pt;top: 400px;position: absolute;height: 30px;">ההרשמה לאתר מהווה הסכמה על ה<a  href="javascript: window.open('Tos.asp')" class="w3-hover-text-grey toslink">תקנון</a></span>
                                        </form>
                                   </div>
                   </div>
      </div>
<%		
    If Request.QueryString("mode") = "saveCLMessage" Then
        objRs.Open "SELECT * FROM carLotsMessages LIMIT 1", objConn, 3, 3
		    objRs.AddNew
			    objRs("name_") = Trim(Request.Form("name_"))
			    objRs("carLotName_") = Trim(Request.Form("carLotName_"))
			    objRs("city_") = Trim(Request.Form("city_"))
                objRs("phone_") = Trim(Request.Form("phone_"))
                objRs("email_") = Trim(Request.Form("email_"))
                objRs("description_") = Trim(Request.Form("description_"))
                objRs("Show_") = 0
		    objRs.Update
	    objRs.Close
    End if
%>

    <div id="scroll-to" style="position:absolute;bottom:50px;"></div>
    <div class="Lotscontactusbackgraound1">
        <div class="w3-container w3-padding-64 w3-theme-l5 Lotscontactusdiv">
        <form name="LotsSubmitMainForm" style="margin-top:-80px" class="radius10 w3-container w3-card-4 w3-padding-16 LotscontactForm" action="?mode=saveCLMessage"" method="post">
            <i class="LotscloseContactUsDiv" onclick="LotscloseContactUsDiv('close')">x</i>
            <div>
                <input type="text" name="name_" id="fullName" class="Lotsinput radius8" placeholder="שם מלא" value="שם מלא" onblur="javascript:if(this.value==''){this.value='שם מלא'};" onfocus="javascript:if(this.value=='שם מלא'){this.value='';}"  />
            </div>
             <div class="w3-section">
                <input type="text" name="carLotName_" id="LotName" class="Lotsinput radius8" placeholder="שם המגרש" value="שם המגרש" onblur="javascript:if(this.value==''){this.value='שם המגרש'};" onfocus="javascript:if(this.value=='שם המגרש'){this.value='';}"  />
            </div>
             <div class="w3-section">
                <input type="text" name="city_" id="Lotcity" class="Lotsinput radius8" placeholder="עיר" value="עיר" onblur="javascript:if(this.value==''){this.value='עיר'};" onfocus="javascript:if(this.value=='עיר'){this.value='';}"  />
            </div>
            <div class="w3-section">
                <input type="text" name="phone_" id="tel" maxlength="12" class="Lotsinput radius8" placeholder="טלפון" value="טלפון" onKeyPress="return numbersonly(this, event);" onblur="javascript:if(this.value==''){this.value='טלפון'};" onfocus="javascript:if(this.value=='טלפון'){this.value='';}" />
            </div>
             <div class="w3-section"> 
            <input name="email_" id="email"  value="דואר אלקטרוני" class="Lotsinput radius8" placeholder="דואר אלקטרוני" onblur="javascript:if(this.value==''){this.value='דואר אלקטרוני'};" onfocus="javascript:if(this.value=='דואר אלקטרוני'){this.value='';}" />
            </div>
            <div class="w3-section"> 
            <input name="description_"   value="הודעה" class="Lotsinput radius8" placeholder="הודעה" onblur="javascript:if(this.value==''){this.value='הודעה'};" onfocus="javascript:if(this.value=='הודעה'){this.value='';}" />
            </div>
            <input type="submit" value="שליחה" class="w3-button w3-red w3-round w3-section"/>  
            </form>
        </div>
    </div>
 <script type="text/javascript">
       function footerregistrationbtnclose(element) {
                if (element == 'close' || element == 'end'&& document.SubmitMainForm.footerregistrationname != "שם מלא" && document.SubmitMainForm.footerregistrationEmail != "אימייל" && document.SubmitMainForm.footerregistrationPassword != "סיסמה"&& document.SubmitMainForm.footerregistrationPassword2 != "הקלד סיסמה שוב") {
                    $('#footerregistrationname').val('שם מלא');
               $('#footerregistrationEmail').val('אימייל');
               $('#footerregistrationPassword').val('סיסמה');
               $('#footerregistrationPassword2').val('הקלד סיסמה שוב');             
                    $('.footerbackgroundregistration').css('display', 'none');
                     $('#footerregistrationDiv').css('display', 'none');
            }
            }
             $('.registrationnow').on('click', function () {
                $('.backgroundregistration').css('display', 'inline-block');
                $('#registrationDiv').css('display', 'flex');

            })
       function FooterShowregistrationDiv()
     {
            $('.footerbackgroundregistration').css('display', 'inline-block');
     }
     function LotsShowContacUsDiv()
     {
            $('.Lotscontactusbackgraound1').css('display', 'inline-block');
     }
        function LotscloseContactUsDiv(element) {
            if (element == 'close' || element == 'end' && document.SubmitMainForm.Name != "שם מלא" && document.SubmitMainForm.Tel != "טלפון" && document.SubmitMainForm.Text != "דואר אלקטרוני") {
                $('#fullName').val('שם מלא');
                $('#tel').val('טלפון');
                $('#email').val('דואר אלקטרוני');
                $('#Lotcity').val('עיר');
                 $('#LotName').val('שם המגרש');
                $('.Lotscontactusbackgraound1').css('display', 'none');
                 $('.footercontactUsBackground').css('display', 'none');
            }        
     }
     function FooterShowContacUsDiv()
     {
            $('.footercontactUsBackground').css('display', 'inline-block');
     }

     if (getBrowser() === "edge") {
         Lotscontactusbackgraound1
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


<%		
    If Request.QueryString("mode") = "saveMessage" Then
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

    <div id="cdiv" class="footercontactUsBackground">
        <div class="w3-container w3-padding-64 w3-theme-l5 contactDiv">
        <form name="FooterSubmitMainForm" class="radius10 w3-container w3-card-4 w3-padding-16 contactForm" action="?mode=saveMessage"" method="post">
            <i class="closeContactUsDiv" onclick="javascript:$('#cdiv').css('display','none')">x</i>
            <div > 
            <input type="text" name="name_" id="name_" class="input radius8" placeholder="שם מלא" value="שם מלא" onblur="javascript:if(this.value==''){this.value='שם מלא'};" onfocus="javascript:if(this.value=='שם מלא'){this.value='';}"  />
            </div>
            <div class="w3-section"> 
            <input type="text" name="phone_" id="phone_" maxlength="12" class="input radius8" placeholder="טלפון" value="טלפון" onKeyPress="return numbersonly(this, event);" onblur="javascript:if(this.value==''){this.value='טלפון'};" onfocus="javascript:if(this.value=='טלפון'){this.value='';}" />
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
    <div id="Footer"class="w3-bottom w3-row-padding w3-padding-32 Footer">
        <div class="footer1"id="footer1">            
          <a class=" textfooter"href="default.asp" >דף הבית</a>
            <br />
            <span style=" margin-top:100px;">
             <a class="textfooter"href="search.asp" style:" margin-top:80px;">חיפוש רכב</a></span>
            <br />
             <a class="textfooter"href="CarLotIndex.asp" >מגרשי רכב</a>
            <br />
             <a class="textfooter"href="Tips.asp" >חדשות הרכב</a>
        </div>
        <div class="footer2 ">
            <% If Session("Session_UserWebLoggedIn") = true Then %>
              <a class=" textfooter"href="MyAds.asp" >המודעות שלי</a>
            <br />
             <a class="textfooter"href="MyFavorites.asp">מועדפים</a>
            <br />
            <% Else %>
            <a class=" textfooter" href="#" onclick="alert('אנא התחבר למערכת בכדי לצפות במודעות שלך')">המודעות שלי</a>
            <br />
             <a class="textfooter" href="#" onclick="alert('אנא התחבר למערכת בכדי לצפות במועדפים שלך')">מועדפים</a>
            <br />
            <% End if %>
             <a class="textfooter"href="Video.asp" >פרסום מודעה</a>
            <br />
            <a tabindex="5" href="#" class="FootercontactUsLink textfooter" onclick="FooterShowContacUsDiv()">צור קשר</a>
             <!--<a  class="contactUsLink textfooter" href="#" onclick="ShowContacUsDiv()">?צור קשר</a>-->
        </div>
        <div class="footer3"id="footer3">
            <a  onclick="FooterShowregistrationDiv();reload(footerregistrationDiv);" href="#" class="textfooter  registrationnow">הרשמה לאתר </a> 
            <br />
             <a class="textfooter"href="Tos.asp">תנאי שימוש</a>
            <br />
             <a class="textfooter"href="Video.asp" >הורדת האפליקציה</a>
            <br />             
               <a class=" textfooter"style="color: transparent;" >מודעות רכב חדשות</a>
        </div>     
        <div class="footer4">
           <a onclick="document.body.scrollTop = 20;document.documentElement.scrollTop = 20;window.location.href='default.asp'"> <img src="images/New%20image/Layer%2014.png" class="centeritem" /></a>
            <br />
            <br />
            <div  class="centeritem" >
       <a href="https://www.instagram.com/autospinisrael/" target="_blank" style="top:245px;right:95px;"><img src="images/footer/Footer_Instegram_Button.png" style="right:0px;"></a>   
                <a href="https://www.facebook.com/autospin.app.il/" target="_blank" style="margin-right: 6%;top:245px;right:55px;"><img src="images/footer/Footer_Facebook_Button.png" style="right:0px;"></a>
     </div> 
           <br />
            </div>
         <div class="footer5">
             <img src="images/New%20image/Layer%2018.png" class="footerimg"id="footerimg"/>     
        </div>
         <div class="footer6" id="footer6">
           <button id="lotscontent" class="w3-circle userimage lotscontent" style="border: 2.5px solid #ddd;"onclick="LotsShowContacUsDiv()">
             <p style=" color: white;font-size: 15pt;font-weight:800;   line-height: 10pt;">  בעל מגרש?</p>
               <br />
               <p style=" color: white;font-size: 15pt;font-weight:600;line-height: 10pt;"> הצטרף אלינו!</p>               
           </button>
             <br />
             <br />
        </div>
        <style>
            .hrfooter{
position: absolute;border: 1px solid #383838;width: 100%;margin-top: 4px;
            }
            .spanfooter{
                 position: absolute; width: 100%;text-align:center; color: #383838;margin-top: 5px;
            }
        </style>
        <hr class="hrfooter" id="hrfooter"/>
        <br />
        <span class="spanfooter" id="spanfooter" >כל הזכויות שמורות לאוטוספין</span>
        <!--<img src="images/footer/FooterCar2v2.png" class="FooterLogo" alt="AutoSpin" title="AutoSpin" border="0" />-->
        <!--<img src="images/footer/FooterIphone.png" class="FooterIphone" border="0" />-->
      <!--  <div id="FooterText">
            <b>אוטוספין</b>, פלטפורמה לרכישה ומכירת רכב יד שנייה.<br />
            סוג הרכב? תקציב? עם פילוח מדויק תמצא את מבוקשך.<br />
            מוכר? בדקות ספורות רכבך יפורסם בכל מקום אפשרי לחשיפה מרבית, ומכירה מהירה.<br />
            הורד עכשיו את אפליקציית אוטוספין, ותתחיל ליהנות מחוויה שטרם הכרת. עם הטכנולוגיה הייחודית לאוטוספין לצילום והצגת פנים וחוץ הרכב ב- 360 מעלות
            <a href="https://itunes.apple.com/us/app/%D7%90%D7%95%D7%98%D7%95%D7%A1%D7%A4%D7%99%D7%9F/id1375533179?l=iw&ls=1&mt=8" target="_blank"><img src="images/AppStoreButton.png" alt="App Store" title="App Store" border="0" style="position:absolute;width:105px;top:190px;right:0px;" /></a>
            <a href="https://play.google.com/store/apps/details?id=com.appgate.autospin" target="_blank"><img src="images/GoogleButton.png" alt="Google Store" title="Google Store" border="0" style="position:absolute;width:105px;top:190px;right:120px;" /></a>
        </div>-->
        <!--<div id="FooterLinks" class="FooterLinks">
            <a href="Tos.asp" style="top:0px;right:95px;">תנאי שימוש</a><img src="images/footer/Footer_Tos_Icon.png" style="top:2px;" />
            <a href="javascript:reloadon(AddNewAdDiv);reloadon(cover);" style="top:40px;right:95px;">הוסף מודעה</a><img src="images/footer/Footer_Add_Message_Icon.png" style="top:43px;" />
            <a href="MyAds.asp" style="top:80px;right:91px;">המודעות שלי</a><img src="images/footer/Footer_My_Message_Icon.png" style="top:83px;" />
            <a href="MyFavorites.asp" style="top:120px;right:95px;">מועדפים</a><img src="images/footer/Footer_Fevorit_Icon.png" style="top:123px;" />
            <a href="Video.asp" style="top:160px;right:95px;">סרטון הדרכה</a><img src="images/footer/Footer_My_Message_Icon.png" style="top:163px;" />
            <a href="ContactUs.asp" style="top:200px;right:95px;" class="WebContactUSLink">צור קשר</a><img src="images/footer/Footer_Tos_Icon.png" class="WebContactUSLink" style="top:203px;" />

            <a href="https://www.facebook.com/autospin.app.il/" target="_blank" style="top:245px;right:55px;"><img src="images/footer/Footer_Facebook_Button.png" style="right:0px;" /></a>
            <a href="https://www.instagram.com/autospinisrael/" target="_blank" style="top:245px;right:95px;"><img src="images/footer/Footer_Instegram_Button.png" style="right:0px;" /></a>-->
            <!--a href="XXX" style="top:245px;right:137px;"><img src="images/footer/Footer_Pinterest_Button.png" style="right:0px;" /></a>
            <a href="XXX" style="top:245px;right:179px;"><img src="images/footer/Footer_Youtube_Button.png" style="right:0px;" /></a-->
       <!-- </div>-->

       <!-- <div id="FooterContactUs">
        <form name="SubmitMainForm" id="SubmitMainForm" action="CheckAndSubmitMainContact();" method="post">
            <input type="text" name="Name" class="inputContactUs" value="שם מלא" onblur="javascript:if(this.value==''){this.value='שם מלא'};" onfocus="javascript:if(this.value=='שם מלא'){this.value='';}" style="position:absolute;right:19px;top:40px;" />
            <input type="text" name="Tel" maxlength="12" class="inputContactUs" value="טלפון" onKeyPress="return numbersonly(this, event);" onblur="javascript:if(this.value==''){this.value='טלפון'};" onfocus="javascript:if(this.value=='טלפון'){this.value='';}" style="position:absolute;right:19px;top:78px;" />
            <textarea name="Text" class="inputContactUs" onblur="javascript:if(this.value==''){this.value='פרטים נוספים'};" onfocus="javascript:if(this.value=='פרטים נוספים'){this.value='';}" style="position:absolute;right:19px;top:120px;height:90px;font-size:13pt;font-family:Arial;">פרטים נוספים</textarea>
            <a href="javascript:CheckAndSubmitMainContact();"><img src="images/blank.png" style="position:absolute;left:5px;bottom:0px;width:122px;height:35px;" /></a>  
        </form>
        </div>-->
        <div id="FooterContactUsAfter" style="display:none;"></div>
    </div>
    <div id="FooterMobile">
        <img src="images/footer/FooterCar2v2.png" class="FooterLogo" alt="AutoSpin" title="AutoSpin" border="0" />
        <div id="FooterTextMobile">
            <b>אוטוספין</b>, פלטפורמה לרכישה ומכירת רכב יד שנייה.<br />
            סוג הרכב? תקציב? עם פילוח מדויק תמצא את מבוקשך.<br />
            מוכר? בדקות ספורות רכבך יפורסם בכל מקום אפשרי לחשיפה מרבית, ומכירה מהירה.<br />
            הורד עכשיו את אפליקציית אוטוספין, ותתחיל ליהנות מחוויה שטרם הכרת. עם הטכנולוגיה הייחודית לאוטוספין לצילום והצגת פנים וחוץ הרכב ב- 360 מעלות
            <br />
            <a href="https://itunes.apple.com/us/app/%D7%90%D7%95%D7%98%D7%95%D7%A1%D7%A4%D7%99%D7%9F/id1375533179?l=iw&ls=1&mt=8" target="_blank"><img src="images/AppStoreButton.png" alt="App Store" title="App Store" border="0" style="width:105px;display:inline-block;margin-top:15px;" /></a>
            <a href="https://play.google.com/store/apps/details?id=com.appgate.autospin" target="_blank"><img src="images/GoogleButton.png" alt="Google Store" title="Google Store" border="0" style="width:105px;display:inline-block;margin-top:15px;margin-right:15px;" /></a>
        </div>
        <div id="FooterLinksMobile">
            <a href="Tos.asp" style="top:18px;">תנאי שימוש</a><img src="images/footer/Footer_Tos_Icon.png" style="top:20px;" />
            <a href="javascript:reloadon(AddNewAdDiv);reloadon(cover);" style="top:62px;">הוסף מודעה</a><img src="images/footer/Footer_Add_Message_Icon.png" style="top:65px;" />
            <a href="MyAds.asp" style="top:107px;">המודעות שלי</a><img src="images/footer/Footer_My_Message_Icon.png" style="top:110px;" />
            <a href="MyFavorites.asp" style="top:152px;">מועדפים</a><img src="images/footer/Footer_Fevorit_Icon.png" style="top:155px;" />
            <a href="ContactUs.asp" style="top:197px;">צור קשר</a><img src="images/footer/Footer_Fevorit_Icon.png" style="top:200px;" />

            <a href="https://www.facebook.com/autospin.app.il/" target="_blank" style="top:245px;right:5px;"><img src="images/footer/Footer_Facebook_Button.png" style="right:0px;" /></a>
            <a href="https://www.instagram.com/autospinisrael/" target="_blank" style="top:245px;right:45px;"><img src="images/footer/Footer_Instegram_Button.png" style="right:0px;" /></a>
            <!--a href="XXX" style="top:245px;right:87px;"><img src="images/footer/Footer_Pinterest_Button.png" style="right:0px;" /></a>
            <a href="XXX" style="top:245px;right:129px;"><img src="images/footer/Footer_Youtube_Button.png" style="right:0px;" /></a-->
        </div>
    </div>   
</div>
</center>
</body>
</html><%	objConn.Close 
	Set objConn = Nothing
	Set objRs = Nothing
	Set objRsF = Nothing
%>