<%@ language="VBScript" codepage="65001" %><% Response.CharSet = "utf-8" %>
<%  
    PageName = "Ad"
    MenuLink1000 = "On"
%>
<head>
    <title></title>
    <a href="js/opencv.hpp">js/opencv.hpp</a>
</head>
<html>
	<body>
		
	<video width="400" controls id="videoId">
            <source src="https://autospin.co.il/files/VideosFiles/b5e2a935fdff4c9ba111fd59108c714f_18122018103117.mp4" type="video/mp4">
            <source src="http://www.w3schools.com/html/mov_bbb.ogg" type="video/ogg">
            Your browser does not support HTML5 video.
        </video>
        
       
	</body>

</html>
<script type="text/javascript" >
    $(document).keydown(function (e) {
        if (e.keyCode == 82) {
            //alert("You have Pressed R , lets play the video");
            document.getElementById('videoId').play();
        }
    });
</script>



