<link href="css/w3s.css" rel="stylesheet" />
<link href="css/HomePage.css" rel="stylesheet" />

    </script>
    <hr class="moreArtHr" id="moreArtHr">
    <div id="newAddsText" class="newAddsText" id="carlotstext" style="cursor:pointer" onclick="javascript:window.location.href='Tips.asp'">מאמרים נוספים:</div>
    <div class="w3-row-padding">
        <div class="w3-third w3-container w3-margin-bottom" onclick="javascript:window.location.href='BuyingCarTips.asp'">
          <img src="images/buycar.jpg" alt="Norway" style="width:320px" class="w3-hover-opacity img">
          <div class="w3-container w3-white text">
            <p><b>טיפים לקניית רכב יד שניה</b></p>
            <p>בשעה טובה, החלטתם לרכוש רכב יד שניה?<br>
            אוטוספין רכזה בעבורכם מספר עצות לרכישה נבונה ומוצלחת.</p >        
          </div>
        </div>
        <div class="w3-third w3-container w3-margin-bottom" onclick="javascript:window.location.href='CarSaleTips.asp'">
          <img src="images/salecar.jpg" alt="Norway" id="img2" class="w3-hover-opacity img img2">
          <div class="w3-container w3-white text">
            <p><b>טיפים למכירת רכב יד שניה</b></p>
            <p>בשעה טובה, החלטתם למכור את הרכב ?<br>
            שוק רכבי היד שניה גדול מאד ומביא לכך שהתחרות על...</p>
          </div>
        </div>
        <div class="w3-third w3-container" onclick="javascript:window.location.href='Trade_in_or_car_leasing.asp'">
          <img src="images/tradeIn.jpg" alt="Norway" id="img3"  class="w3-hover-opacity img img3">
          <div class="w3-container w3-white text">
            <p><b>טרייד אין או ליסינג לרכב</b></p>
            <p>רוצים להתקדם לרכב חדש הרבה יותר, אבל שואלים את עצמכם מה תעשו עם  <br>
            הישן שלכם?  </p>         
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
        margin-bottom: 430px;
        margin-right: 1px; 
        right:0;
        bottom:0;
    }
   .img{
       border-radius:16;
       cursor:pointer;
   }
   .img2{
       width: 300px;
       height: 207px;
   }
   .img3{
       width:100%;
   }
   .moreArtHr{
        margin-top: 40px;
        width: 90%;
        border: 1px solid #e73834
   }
   .text{
       cursor:pointer;
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
        #img2{
            width: 320px;
        }
        #img3{
            width: 320px;
        }
    }
</style>