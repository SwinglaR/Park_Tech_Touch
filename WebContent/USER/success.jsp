<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!doctype html> <!--[if lt IE 7 ]> <html class="no-js ie6 lte9 lte8 lte7 lte6" lang="en"> <![endif]-->
<!--[if IE 7 ]> <html class="no-js ie7 lte9 lte8 lte7" lang="en"> <![endif]-->
<!--[if IE 8 ]> <html class="no-js ie8 lte9 lte8" lang="en"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js" lang="en">
    <!--<![endif]-->
    <head prefix="og: http://ogp.me/ns# fb: http://ogp.me/ns/fb# parkatmyhouse: http://ogp.me/ns/fb/parkatmyhouse#">
        <base href="${pageContext.request.contextPath}/USER/">
        <title>Succession of Payment</title>
        
        <script>
           dataLayer = [];
        </script>

        <link rel="stylesheet" type="text/css" href="css/fonts.css" />

        <link id="style_core" rel="stylesheet" type="text/css" media="all" href="css/core.min.css?v=1453551510" />
        <!--[if lt IE 8 ]>
            <link id="style_ie" rel="stylesheet" type="text/css" media="all" href="css/ie.min.css?v=1453551510" />        <![endif]-->

                    <meta name="robots" content="NOODP" />
        
        <meta name="rating" content="general" />

                            
        <!-- All JavaScript at the bottom, except for Modernizr which enables HTML5 elements & feature detects -->
        <script type="text/javascript" src="js/modernizr.min.js?v=1453551510"></script>        <!--[if lte IE 8 ]>
            <script type="text/javascript" src="js/selectivizr.min.js?v=1453551523"></script>        <![endif]-->
        <link rel="shortcut icon" type="image/png" href="/media/img/icons/favicon.png" />

        <!-- iPhone -->
        <link rel="icon" sizes="192x192" href="/media/img/assets/iphone/icons/192x192.png" />
        <link rel="apple-touch-icon" sizes="180x180" href="/media/img/assets/iphone/icons/180x180.png" />
        <link rel="apple-touch-icon" sizes="152x152" href="/media/img/assets/iphone/icons/152x152.png" />
        <link rel="apple-touch-icon" sizes="144x144" href="/media/img/assets/iphone/icons/144x144.png" />
        <link rel="apple-touch-icon" sizes="120x120" href="/media/img/assets/iphone/icons/120x120.png" />
        <link rel="apple-touch-icon" sizes="114x114" href="/media/img/assets/iphone/icons/114x114.png" />
        <link rel="apple-touch-icon" sizes="76x76" href="/media/img/assets/iphone/icons/76x76.png" />

        <!-- For nokia devices: -->
        <link rel="shortcut icon" href="/media/img/assets/iphone/icons/57x57.png" />
        <link rel="apple-touch-startup-image" href="/media/img/assets/iphone/banners/320x460.png">

        <link rel="sitemap" type="application/xml" title="Sitemap" href="https://www.justpark.com/sitemap.xml">

   </head>
    <body lang="en" >
 <c:if test="${sessionScope.flag ne 'true' }">
    <script>
    window.location.href="${pageContext.request.contextPath }/BookParkingSlotsController?flag=confirmationMail";
    </script>
</c:if>
    
    
    
<%--     <c:if test="${sessionScope.flag ne 'true' }">
    <script>
    window.location.href="${pageContext.request.contextPath }/BookParkingSlotsController?flag=confirmationMail";
    </script>
    </c:if>
 --%>     <%-- <jsp:forward page=""></jsp:forward> --%>

    <%-- <c:redirect url="<%=request.getContextPath() %>/BookParkingSlotsController?flag=confirmationMail" >
    	<c:param  name="flag" value="confirmationMail"></c:param>
    </c:redirect>
     --%>

        <div id="wrapper">
                
                <%@include file="header.jsp"%>

   
                                             
                 <div id="modal-inline" class="modal" style="margin-top:50px">
    </div>
    
       <div class="modal-body">

  <div class="external-logins">
    <p>
      <!-- <a data-href="/auth/facebook/?next=%2Fzendesk%2Flogin%2F%3Fbrand_id%3D3274556%26locale_id%3D1%26return_to%3Dhttps%253A%252F%252Fhelp.justpark.com%252Fhc%252Fen-us%26timestamp%3D1453787580" href="#" class="btn btn-large btn-fb btn-fixed-size fb-connect"><i class="glyphicons icon-facebook"></i> Continue with Facebook</a> -->
    </p>
    <p>
      <!-- <a href="/auth/google/?next=%2Fzendesk%2Flogin%2F%3Fbrand_id%3D3274556%26locale_id%3D1%26return_to%3Dhttps%253A%252F%252Fhelp.justpark.com%252Fhc%252Fen-us%26timestamp%3D1453787580" class="btn btn-large btn-google btn-fixed-size"><i class="jp jp-google"></i> Continue with Gmail</a> -->
    </p>
  </div>

	
	<input value="/zendesk/login/?brand_id=3274556&amp;locale_id=1&amp;return_to=https%3A%2F%2Fhelp.justpark.com%2Fhc%2Fen-us&amp;timestamp=1453787580" class="phorm_field_hidden" id="id_next" name="next" type="hidden" />	
                <div style="width:100px;height:100px;margin:0 auto;background:url('img/check_img.png');background-size:100px ">
                </div>
                <div class="form-group control-group required" style="margin-top:50px">
                    <div><h3 style="color:#26B13E;text-align:center">Your Payment is Done Successfully..</h3></div>
                  </div>
                <div class="form-group control-group required">
                    <div>
                      <h1 style="color: rgba(50, 47, 47, 0.78);text-align:center">Thank You For Booking !!</h1>
            	</div>
                </div>
            	
</div>
            <script type="text/javascript" src="js/jquery.min.js"></script>
<script>!window.jQuery && document.write(unescape('%3Cscript src="js/jquery.min.js"%3E%3C/script%3E'))</script>
            

 <script type="text/javascript" src="js/core.min.js?v=1453551567"></script>


<script src="js/in.js" type="text/javascript"></script>



        <script type="text/javascript" src="js/zenbox.js"></script>

<style type="text/css" media="screen, projection">
  @import url(css/zenbox.css);
</style>
 <script type="text/javascript" src="js/conversion.js">
</script>
 <script defer="defer" src="js/6188.js" type="text/javascript"></script>


     </body>
</html>