<link href="css/w3s.css" rel="stylesheet" />
<link href="css/HomePage.css" rel="stylesheet" />
<body>

    <hr class="moreArtHr" id="moreArtHr">
    <div id="newAddsText" class="newAddsText" id="carlotstext" style="cursor:pointer" onclick="javascript:window.location.href='Tips.asp'">מאמרים נוספים:</div>
    <div class="w3-row-padding">
        <div class="w3-third w3-container w3-margin-bottom" onclick="javascript:window.location.href='BuyingCarTips.asp'">
          <img src="images/glory.jpg" alt="Norway" id="img1" class="w3-hover-opacity img img1">
          <div class="w3-container w3-white text">
            <p><b> המסלול המהיר לרכב שעליו חלמת.</b></p>
            <p> באתרי אינטרנט, באינסטגרם ובפייסבוק, רואים את הרכבים הנוצצים שאנשים , שלכאורה נראים לנו ...  </div>
        </div>
        <div class="w3-third w3-container w3-margin-bottom" onclick="javascript:window.location.href='CarSaleTips.asp'">
          <img src="images/bigstock-Dealer-Vehicles-In-Stock-93496580.jpg" alt="Norway" id="img2" class="w3-hover-opacity img img2">
          <div class="w3-container w3-white text">
            <p><b> מכונית יד שנייה במגרש מכוניות . </b></p>
            <p> אפליקציה חכמה לקנייה ומכירת רכב כמו אוטוספין מאפשרת לכם לרכוש או למכור מכונית  ....</p>
          </div>
        </div>
        <div class="w3-third w3-container" onclick="javascript:window.location.href='Trade_in_or_car_leasing.asp'">
          <img src="images/lastips.png" alt="Norway" id="img3"  class="w3-hover-opacity img img3">
          <div class="w3-container w3-white text">
            <p><b>הדרך להתקדם לרכב חדש יותר</b></p>
            <p>לבעל רכב יש שתי  אפשרויות לשדרג עצמו לרכב מתקדם יותר: למכור את הרכב שלו ולהשקיע   ....</p>
          </div>
        </div>
      </div></body>
<script type="text/javascript">
    function closeDiv() {
        $('.contactdiv1').css('display', 'none');
    }
</script>

<style>
    .contactdiv1{
        margin-bottom:340PX;
    }
    ._title{
        color: #161616;
        font-size: 22;
        text-shadow: 0px 0px 1px #161616;
        padding-bottom: 20;
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
        margin-bottom: 430px;
        margin-right: 1px; 
        right:0;
        bottom:0;
    }

   .img{
       border-radius:16px;
       cursor:pointer;
   }
   .img2{
       width: 300;height: 207;
   }
   .img3{
        width: 300;
        height: 207;   
   }
   .moreArtHr{
        margin-top: 40px;
        width: 90%;
        border: 1px solid #e73834
   }
   .text{
       cursor:pointer;
   }
   .img1{
        width: 300;
        height: 207;
   }
    @media only screen and (max-width: 600px) {
        #contactdiv1{
            display:none;
        }
        #moreArtHr{
            display:none;
        }
        #newAddsText{
            margin-top:0px;
            margin-bottom:20px
        }
        #img1{
            width:320px
        }
        #img2{
            width: 320;
        }
        #img3{
            width: 320;
        }
    }
</style>