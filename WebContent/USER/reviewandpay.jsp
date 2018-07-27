<%@ page import="java.util.*" %>
<%@ page import="java.security.*" %>
<%!
public boolean empty(String s)
	{
		if(s== null || s.trim().equals(""))
			return true;
		else
			return false;
	}
%>
<%!
	public String hashCal(String type,String str){
		byte[] hashseq=str.getBytes();
		StringBuffer hexString = new StringBuffer();
		try{
		MessageDigest algorithm = MessageDigest.getInstance(type);
		algorithm.reset();
		algorithm.update(hashseq);
		byte messageDigest[] = algorithm.digest();
            
		
		for (int i=0;i<messageDigest.length;i++) {
			String hex=Integer.toHexString(0xFF & messageDigest[i]);
			if(hex.length()==1) hexString.append("0");
			hexString.append(hex);
		}
			
		}catch(NoSuchAlgorithmException nsae){ }
		
		return hexString.toString();
	}
%>
<% 	
	String merchant_key="gtKFFx";
	String salt="eCwWELxi";
	String action1 ="";
	String base_url="https://test.payu.in";
	int error=0;
	String hashString="";
	
 
	
	Enumeration paramNames = request.getParameterNames();
	Map<String,String> params= new HashMap<String,String>();
    	while(paramNames.hasMoreElements()) 
	{
      		String paramName = (String)paramNames.nextElement();
      
      		String paramValue = request.getParameter(paramName);
		params.put(paramName,paramValue);
	}
	String txnid ="";
	if(empty(params.get("txnid"))){
		Random rand = new Random();
		String rndm = Integer.toString(rand.nextInt())+(System.currentTimeMillis() / 1000L);
		txnid=hashCal("SHA-256",rndm).substring(0,20);
	}
	else
		txnid=params.get("txnid");
	String txn="abcd";
	String hash="";
	String hashSequence = "key|txnid|amount|productinfo|firstname|email|udf1|udf2|udf3|udf4|udf5|udf6|udf7|udf8|udf9|udf10";
	if(empty(params.get("hash")) && params.size()>0)
	{
		if( empty(params.get("key"))
			|| empty(params.get("txnid"))
			|| empty(params.get("amount"))
			|| empty(params.get("firstname"))
			|| empty(params.get("email"))
			|| empty(params.get("phone"))
			|| empty(params.get("productinfo"))
			|| empty(params.get("surl"))
			|| empty(params.get("furl"))	)
			
			error=1;
		else{
			String[] hashVarSeq=hashSequence.split("\\|");
			
			for(String part : hashVarSeq)
			{
				hashString= (empty(params.get(part)))?hashString.concat(""):hashString.concat(params.get(part));
				hashString=hashString.concat("|");
			}
			hashString=hashString.concat(salt);
			
			 hash=hashCal("SHA-512",hashString);
			action1=base_url.concat("/_payment");
		}
	}
	else if(!empty(params.get("hash")))
	{
		hash=params.get("hash");
		action1=base_url.concat("/_payment");
	}
		
%>

<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="function" uri="http://java.sun.com/jsp/jstl/functions" %>
<!doctype html> <!--[if lt IE 7 ]> <html class="no-js ie6 lte9 lte8 lte7 lte6" lang="en"> <![endif]-->
<!--[if IE 7 ]> <html class="no-js ie7 lte9 lte8 lte7" lang="en"> <![endif]-->
<!--[if IE 8 ]> <html class="no-js ie8 lte9 lte8" lang="en"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js" lang="en">
    <!--<![endif]-->
    <head prefix="og: http://ogp.me/ns# fb: http://ogp.me/ns/fb# parkatmyhouse: http://ogp.me/ns/fb/parkatmyhouse#">
        <base href="${pageContext.request.contextPath}/USER/">
        <meta http-equiv="X-UA-Compatible" content="chrome=1">
        <meta name="apple-mobile-web-app-capable" content="yes" />
        <title>Pay for a booking Park Tech Touch </title>
        <meta name="copyright" content="JustPark" />
        <meta name="description" content="Find cheap car parking or rent out your parking space, garage or driveway near a stadium, tube station or airport. Make money by renting out your private parking spot." />
        <meta name="keywords" content="parking spaces for rent, car parking, london parking, rent your driveway, let out your space, garages for rent, stadium parking, airport parking, garage rentals, parking, garages, driveways, rent, let" />
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
        <!-- Google Page -->
        <link href="https://plus.google.com/107589855752054222705" rel="publisher" />


        <!-- Facebook Page -->
        <meta property="fb:admins" content="1205769" />
        <meta property="fb:app_id" content="2555327138" />

        <meta property="twitter:account_id" content="4503599630169227" />

        <!-- Pinterest Page -->
        <meta name="p:domain_verify" content="8c8b28c17ed81b8aeb53008b8475b237"/>

                <meta property="og:site_name" content="JustPark" />
        <meta property="og:type" content="website" />
        <meta property="og:url" content="https://www.justpark.com/" />
        <meta property="og:title" content="JustPark" />
        <meta property="og:image" content="img/320-colour.png" />
        <meta property="og:image:secure_url" content="img/320-colour.png" />

        <meta property="og:description" content="Seriously smart parking. Book a space in advance wherever, whenever, for however long you need." />
        
                <meta name="twitter:card" content="summary">
        <meta name="twitter:site" content="@justpark">
        <meta name="twitter:title" content="JustPark">
        <meta name="twitter:description" content="Seriously smart parking. Book a space in advance wherever, whenever, for however long you need.">
        <meta name="twitter:creator" content="@justpark">
        <meta name="twitter:image:src" content="img/56-colour.png">
        <meta name="twitter:domain" content="www.justpark.com">
        <meta name="twitter:app:id:iphone" content="519652671">
        




        <link rel="image_src" href="img/56-colour.png" />

        <!-- Google Verification -->
        <meta name="OMG-Verify-V1" content="108952-705b794f-1410-4bd3-adab-0b2e913ae350" />
        <link title="JustPark" rel="search" type="application/opensearchdescription+xml" href="https://www.justpark.com/misc/opensearch.xml" />

        <!-- Bing Verification -->
        <meta name="msvalidate.01" content="26E0414C8B8EA441D2349D32E281A2C2" />

        <!-- Pinterest Verification -->
        <meta name="p:domain_verify" content="62b43fa4dfc4ca93b4839838b5b89fea" />

        <!-- Le fav and touch icons -->
        <link rel="shortcut icon" type="image/png" href="img/favicon.png" />

        <!-- iPhone -->
        <link rel="icon" sizes="192x192" href="img/192x192.png" />
        <link rel="apple-touch-icon" sizes="180x180" href="img/180x180.png" />
        <link rel="apple-touch-icon" sizes="152x152" href="img/152x152.png" />
        <link rel="apple-touch-icon" sizes="144x144" href="img/144x144.png" />
        <link rel="apple-touch-icon" sizes="120x120" href="img/120x120.png" />
        <link rel="apple-touch-icon" sizes="114x114" href="img/114x114.png" />
        <link rel="apple-touch-icon" sizes="76x76" href="img/76x76.png" />

        <!-- For first-generation iPad: -->
        <link rel="apple-touch-icon" sizes="72x72" href="img/72x72.png" />
        <!-- For non-Retina iPhone, iPod Touch, and Android 2.1+ devices: -->
        <link rel="apple-touch-icon" href="img/57x57.png" />

        <!-- For nokia devices: -->
        <link rel="shortcut icon" href="img/57x57.png" />
        <link rel="apple-touch-startup-image" href="/media/img/assets/iphone/banners/320x460.png">

        <link rel="sitemap" type="application/xml" title="Sitemap" href="https://www.justpark.com/sitemap.xml">

        <!-- Google Analytics -->
       
        <script type="text/javascript">
          window.JustPark = window.JustPark || {};
          window.JustPark.GOOGLE_MAPS_API_KEY = 'AIzaSyB2bEpYuQa2bDYdfP14jJb4qLCwO2SBm24';
        </script>
                  <script>
            window.is_search_results_page = false;
          </script>
                <script src="js/2756011487.js"></script>

<!-- start Mixpanel --><script type="text/javascript">(function(f,b){if(!b.__SV){var a,e,i,g;window.mixpanel=b;b._i=[];b.init=function(a,e,d){function f(b,h){var a=h.split(".");2==a.length&&(b=b[a[0]],h=a[1]);b[h]=function(){b.push([h].concat(Array.prototype.slice.call(arguments,0)))}}var c=b;"undefined"!==typeof d?c=b[d]=[]:d="mixpanel";c.people=c.people||[];c.toString=function(b){var a="mixpanel";"mixpanel"!==d&&(a+="."+d);b||(a+=" (stub)");return a};c.people.toString=function(){return c.toString(1)+".people (stub)"};i="disable track track_pageview track_links track_forms register register_once alias unregister identify name_tag set_config people.set people.set_once people.increment people.append people.union people.track_charge people.clear_charges people.delete_user".split(" ");
for(g=0;g<i.length;g++)f(c,i[g]);b._i.push([a,e,d])};b.__SV=1.2;a=f.createElement("script");a.type="text/javascript";a.async=!0;a.src="undefined"!==typeof MIXPANEL_CUSTOM_LIB_URL?MIXPANEL_CUSTOM_LIB_URL:"//cdn.mxpnl.com/libs/mixpanel-2-latest.min.js";e=f.getElementsByTagName("script")[0];e.parentNode.insertBefore(a,e)}})(document,window.mixpanel||[]);

  (function() {
    var isDebug = false;

    
    mixpanel.init("227ff3f622bc8de131254686178755ca", {debug: isDebug});
  }());

</script><!-- end Mixpanel -->
        <script>
(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','js/analytics.js','ga');


      ga('create', 'UA-11508076-1', 'justpark.com',
      {
        'userId': '923316',
        'siteSpeedSampleRate': 15
      });
  
    ga('require', 'linkid', 'linkid.js');
    ga('require', 'displayfeatures');
    ga('require', 'ecommerce', 'ecommerce.js');

    ga('set', 'dimension1', 'Registered user'); // member-type

    ga('set', '&uid', 923316); // Set the user ID using signed-in user_id.
    ga('set', 'metric1', '0'); // booking-count
    ga('set', 'metric2', '0'); // booking-received-count

    
    

    ga('set', 'dimension2', 'Google (Organic)'); // first-click
    ga('set', 'dimension4', '20160126'); // join_date
    ga('set', 'dimension5', 'No'); // Facebook Connected

    ga('set', 'dimension3', 'Google (Organic)'); // last-click

    window.optimizely = window.optimizely || {};
    window.optimizely.push("activateUniversalAnalytics");
</script>
        <script>
  url_args_decode = function (url) {
    var result = {};
    url = url.substring(1);
    var splitUrl = url.split('&');

    for (var i = 0; i < splitUrl.length; i++) {
      var splitParam = splitUrl[i].split('=');
      result[decodeURIComponent(splitParam[0])] = decodeURIComponent(splitParam[1]);
    }

    return result;
  };

  (function () {
    // Works with IE 7 and above.
    var hashFragment = window.location.hash;
    var params = url_args_decode(hashFragment);

    var xhr = new XMLHttpRequest();

    xhr.open('POST', '/utm-ajax-track');
    xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');

    var utm_source = params.utm_source || '';

    // We do not want to send ajax request if utm_source is empty.
    if (utm_source === '') {
      return;
    }

    var utm_campaign = params.utm_campaign || '';
    var utm_medium = params.utm_medium || '';
    var utm_term = params.utm_term || '';
    var utm_content = params.utm_content || '';

    xhr.send(
        encodeURI('utm_source=' + utm_source + '&utm_medium=' + utm_medium + '&utm_campaign=' +
        utm_campaign + '&utm_term=' + utm_term + '&utm_content=' + utm_content)
    );
  }());
</script>
        <script>
                            ga('send', 'pageview');
                    </script>

        	<script type="text/javascript">
	var fb_param = {};
	fb_param.pixel_id = '6007950343917';
	fb_param.value = '0.00';
	(function(){
	  var fpw = document.createElement('script');
	  fpw.async = true;
	  fpw.src = 'js/fp.js';
	  var ref = document.getElementsByTagName('script')[0];
	  ref.parentNode.insertBefore(fpw, ref);
	})();
	</script>
	<script>
var hash='<%= hash %>';
function submitPayuForm() {
	
	if (hash == '')
		return;
      var payuForm = document.forms.payuForm;
      payuForm.submit();
    }
</script>
	
	</head>
    
    <body lang="en" class="booking checkout info country-gb" onload="submitPayuForm();">
    <!-- Google Tag Manager -->
<noscript><iframe src="//www.googletagmanager.com/ns.html?id=GTM-PVQC99"
height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
'js/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
})(window,document,'script','dataLayer','GTM-PVQC99');</script>
<!-- End Google Tag Manager -->

            <div id="fb-root"></div>
<script>
var PAMH_FB = {};

window.fbAsyncInit = function() {
        FB.init({
            appId      : '2555327138',
            status     : true,
            cookie     : true,
            xfbml      : true,
            frictionlessRequests: true,
            channelUrl : 'https://www.justpark.com/xd_receiver.htm',
            oauth      : true
        });
        var d = document.getElementsByTagName("body");
        d[0].className = (d[0].ClassName!='') ? d[0].className + " fb-enabled" : "fb-enabled";


        FB.getLoginStatus(function(response) {
              PAMH_FB.status = response.status;
                    });


        FB.Event.subscribe('auth.authResponseChange', function(response) {
            PAMH_FB.status = response.status;
        });

        FB.Event.subscribe('edge.create', function(targetUrl) {
            ga('send', 'social', 'facebook', 'like', targetUrl);
            $.cookie('fb_like', 'hide', { expires: 365, path: '/' });
        });

        FB.Event.subscribe('edge.remove', function(targetUrl) {
            ga('send', 'social', 'facebook', 'unlike', targetUrl);
            $.cookie('fb_like', '', { expires: -1, path: '/' });
        });

        FB.Event.subscribe('message.send', function(targetUrl) {
            ga('send', 'social', 'facebook', 'send', targetUrl);
        });




};

(function(d, debug){
     var js, id = 'facebook-jssdk', ref = d.getElementsByTagName('script')[0];
     if (d.getElementById(id)) {return;}
     js = d.createElement('script'); js.id = id; js.async = true;
     js.src = "//connect.facebook.net/en_GB/all" + (debug ? "/debug" : "") + ".js";
     ref.parentNode.insertBefore(js, ref);
   }(document, false));

</script>

        
        <div id="wrapper">
                <%@include file="header.jsp" %>

                                                
                                    <div class="container" id="content">
                                                                                            
        <h1>Review and pay</h1>

<div class="row">
  <div class="span9">
          
<div id="booking-summary">
<!-- Normal payment -->

	<table class="table table-bordered">

		<thead>
			<tr>
				<th colspan="2">Booking details:</th>
			</tr>
		</thead>
		<tbody>
		
			<tr>
				<c:forEach items="${sessionScope.selectList}" var="i">
				<td class="span3">Parking Lot Name </td>
				<td>${i.val_plotname2}</td>
<c:set var="plotname" value="${i.val_plotname2}" scope="session"></c:set>

<input type="hidden" name="parkingLot" value="${i.val_plotname2}" />${i.val_plotname2}				
		
				</c:forEach>
			</tr>
			
			<tr>
				
				<td class="span3">Entry Date</td>
				<td>
					<c:if test="${not empty sessionScope.startDate }">
						
<input type="hidden" name="sDate" value="${sessionScope.startDate}" />
<c:set var="startingDate" value="${sessionScope.startDate}" scope="session"></c:set>
					
						${sessionScope.startDate}
					
					</c:if>
					
					<c:if test="${not empty sessionScope.multiList }">
						<c:set var="sizeOfList" value="${function:length(sessionScope.multiList) }"></c:set>
						<c:forEach items="${sessionScope.multiList }" var="j" varStatus="k">
						
<input type="hidden" name="s_date" value="${j.start_date } "/>
				
							${j.start_date } 
						
						<c:if test="${k.count ne sizeOfList }">,</c:if>
						
						</c:forEach>
					</c:if>
				</td>
			</tr>
			<tr>
				<td class="span3">Exit Date</td>
				<td>
				
<input type="hidden" name="e_date" value="${sessionScope.end_Date}"/>
				
				${sessionScope.end_Date}
					
				</td>
			</tr>
			<tr>
				<td class="span3">Start Time</td>
				<td>
					<%-- <c:if test="${not empty sessionScope.start_time}">
						${sessionScope.start_time}
					</c:if> --%>
					<c:if test="${not empty sessionScope.multiList }">
						
						<c:set var="sizeOfList" value="${function:length(sessionScope.multiList) }"></c:set>
						
						<c:forEach items="${sessionScope.multiList }" var="j" varStatus="k">
						
<input type="hidden" name="s_time" value="${j.start_time }"/>
<c:set var="startTime" value="${j.start_time }" scope="session" ></c:set>	
												
							
							${j.start_time } 
							
							<c:if test="${k.count ne sizeOfList }">,</c:if>
						
						</c:forEach>
					
					</c:if>
				
				</td>
			</tr>
			<tr>
				<td class="span3">End Time</td>
				<td><%-- 
				<c:if test="${not empty sessionScope.end_time }">
						${sessionScope.end_time}
					</c:if> --%>

					<c:if test="${not empty sessionScope.multiList }">
<input type="hidden" name="e_time" value="${j.end_time }"/>
						
						<c:set var="sizeOfList" value="${function:length(sessionScope.multiList) }"></c:set>
						
						<c:forEach items="${sessionScope.multiList }" var="j" varStatus="k">
						
					<input type="hidden" name="e_time" value="${j.end_time }"/>
					<c:set var="endTime" value="${j.end_time }" scope="session"></c:set>
					
							${j.end_time } 
						
						<c:if test="${k.count ne sizeOfList }">,</c:if>
						
						</c:forEach>
					
					</c:if>
				</td>
			</tr>
			
								</tbody>
	</table>
	<table class="table table-bordered">
           
            <tr>
				<td class="span3">Number Four Wheeler</td>
				<td>
					<c:if test="${empty sessionScope.fourWheeler }">
					
								<input type="hidden" name="twoWheeler" value="0" />0
					</c:if>
					<c:if test="${not empty sessionScope.fourWheeler }">
				
<input type="hidden" name="fourWheeler" value="${sessionScope.fourWheeler }"/>
				
						${sessionScope.fourWheeler }
					
					</c:if>
				</td>
			</tr>
			<tr>
				<td class="span3">Number Two Wheeler</td>
				<td>
					<c:if test="${empty sessionScope.twoWheeler }">
						<input type="hidden" name="twoWheeler" value="0" />0
					</c:if>
					
					<c:if test="${not empty sessionScope.twoWheeler }">
					
<input type="hidden" name="twoWheeler" value="${sessionScope.twoWheeler }" />

						${sessionScope.twoWheeler }
					</c:if>
				</td>
			</tr>
           
	</table>


		<table class="table table-bordered">
			<tr class="checkout-total">
				<td class="span3">Total Amount</td>
				<td>
					
					<c:if test="${not empty sessionScope.Amount1}">
<input type="hidden" name="amount1" value="${sessionScope.Amount1}">
					
						${sessionScope.Amount1}
					</c:if>
					
					 
					<c:if test="${empty sessionScope.Amount1}">
<input type="hidden" name="amount" value="${sessionScope.Amount}"/>
					
						${sessionScope.Amount}
					</c:if>
				</td>									
			</tr>
	</table>


<form action="<%= action1 %>" method="post" name="payuForm">
		<input type="hidden" name="key" value="<%= merchant_key %>" />
      <input type="hidden" name="hash" value="<%= hash %>"/>
      <input type="hidden" name="txnid" value="<%= txnid %>" />
      <input type="hidden" name="firstname" id="firstname" value="${sessionScope.clientName}" />
      <input type="hidden" name="email" id="email" value="${sessionScope.userName}" />	
      <input type="hidden" name="phone" value="${sessionScope.number}" />	
      <input type="hidden" name="productinfo" value="Parking" size="64" />
      <input type="hidden" name="surl" value="http://localhost:8080/PTT/USER/success.jsp" size="64" />
      <input type="hidden" name="furl" value="http://localhost:8080/PTT/USER/login.jsp" size="64" />	
      	<c:if test="${sessionScope.Amount1 ne null}">
          <input type="hidden" name="amount" value="${sessionScope.Amount1}" />
          </c:if>
          <c:if test="${sessionScope.Amount1 eq null}">
          <input type="hidden" name="amount" value="${sessionScope.Amount}" />
          </c:if>
    <table class="table">
				<tr>
				<td class="form-actions">
     			 <button class="btn btn-large btn-success" type="Submit" style="float:right">Pay With PayUMoney</button>
		</tr>
			</table>
</form>
</div>
    
   <!--        <section class="section">
        <div class="alert alert-block alert-info">
          <h4 class="alert-heading">Cancellation policy</h4>
          Please make sure you read the details of the <a
          href="/cancellation-policy/"
          target="_blank">cancellation policy</a> before completing your booking.
        </div>
      </section>
    -->
    
<div class="infobox">
<form action="<%= action1 %>" method="post" name="payuForm">
		<input type="hidden" name="key" value="<%= merchant_key %>" />
      <input type="hidden" name="hash" value="<%= hash %>"/>
      <input type="hidden" name="txnid" value="<%= txnid %>" />
      <input type="hidden" name="firstname" id="firstname" value="${sessionScope.clientName}" />
      <input type="hidden" name="email" id="email" value="${sessionScope.userName}" />	
      <input type="hidden" name="phone" value="${sessionScope.number}" />	
      <input type="hidden" name="productinfo" value="Parking" size="64" />
      <input type="hidden" name="surl" value="http://localhost:8080/Park_Tech_Touch/USER/success.jsp" size="64" />
      <input type="hidden" name="furl" value="http://localhost:8080/Park_Tech_Touch/USER/login.jsp" size="64" />	
      	
      <c:forEach items="${sessionScope.searchPackage}" var="i">
      <input type="hidden" name="amount" value="${i.val_package_price}" />
      
      <table class="table table-bordered">
		<thead>
			<tr>
				<th colspan="2">Package details:</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td class="span3">Package Name</td>
				<td>${i.val_package_name}</td>
			</tr>
			<tr>
				<td class="span3">Package Description</td>
				<td>${i.val_package_description}</td>
			</tr>
			
			<tr>
				<td class="span3">Package Price</td>
				<td>${i.val_package_price}</td>
			</tr>
			<tr>
				<td class="span3">Package Duration</td>
				<td>${i.val_package_duration}</td>
			</tr>
			<tr>
				<td class="span3">Number Of Hours</td>
				<td>${i.val_package_hour}</td>
			</tr>
			<tr>
				<td class="span3">Charges Per Hour</td>
				<td>
        ${i.val_package_charge}</td>
			
			</tr>	
		  
		</tbody>
	</table>
	
	<div class="form-actions" style="text-align:right">
      <button class="btn btn-large btn-success" type="Submit">Buy</button>
    </div>
    </c:forEach>
</form>
<fieldset>
   <div id="current-payment-container" class="avtive" >
   
    
     <!-- <script src="https://www.paypalobjects.com/js/external/paypal-button.min.js?merchant=hiren.ce007@gmail.com" 
    data-button="buynow" 
    data-name="Book Parking" 
     data-amount="30" 
    data-callback="htttp://hirenpatel.in" 
    data-env="sandbox"
></script>
      -->
     </div>
     </fieldset>
  </div>
</fieldset>
</form>
 </div>
 </div>
  <!-- /main -->

  <!-- sidebar -->
  <div class="span3">
<div id="booking-sidebar">
	

		
	
	
</div>
  </div>
  <!-- /sidebar -->
</div>

                                                </div>
                                <div id="wrapper-push"></div>
            </div>
        <!-- End of wrapper -->
                    <%@include file="footer.jsp" %>
                                <div id="pamh_modal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="modal" aria-hidden="true"><div class="modal-content"></div></div>
        

                                    
<script type="text/javascript" src="https://maps-api-ssl.google.com/maps/api/js?v=3.10&key=AIzaSyB2bEpYuQa2bDYdfP14jJb4qLCwO2SBm24&libraries=places&sensor=false"></script>
<script type="text/javascript">
  if (google && google.maps) {
    google.maps.visualRefresh = true;
  }
</script>
            
            <script type="text/javascript" src="js/jquery.min.js"></script>
<script>!window.jQuery && document.write(unescape('%3Cscript src="js/jquery.min.js"%3E%3C/script%3E'))</script>
            <script type="text/javascript">
	// Google +1
	(function() {
		var po = document.createElement('script');
		po.type = 'text/javascript';
		po.async = true;
		po.src = 'js/plusone.js';
		var s = document.getElementsByTagName('script')[0];
		s.parentNode.insertBefore(po, s);
	})();
</script>

<script type="text/javascript">
	// Twitter 
	(function() {
	var s = document.createElement('SCRIPT');
	var c = document.getElementsByTagName('script')[0];
	s.type = 'text/javascript';
	s.async = true;
	s.src = 'js/widgets.js';
	c.parentNode.insertBefore(s, c);
	})();
</script>
            <script type="text/javascript" src="js/core.min.js?v=1453551567"></script>
            <script>
  (function() {
    var userObject = window.JP || window.PAMH || {};
    if (window.JP) {
      userObject = window.JP.mixpanelUser;
    } else if (window.PAMH) {
      userObject = window.PAMH.user;
    } else {
      return;
    }

      }());
</script>

            <script type="text/javascript" src="js/facebook.min.js?v=1453551523"></script>

            <!--[if lte IE 7 ]>
                <script type="text/javascript" src="js/ie.min.js?v=1453551523"></script>            <![endif]-->

        <script type="text/javascript">
 $(function (){
   try {
     PAMH.optimizely_tests.init();
     PAMH.zopim.includeIfNeeded('CHECKOUT_CHAT');
   } catch (err) {
     // Chat is not included.
     Bugsnag.notifyException(err, "Zopim chat haven't been included in checkout.");
   }

   $("#voucher-form").on("submit", function(event){
     event.preventDefault();
     $form = $(this);
     $button = $form.find("button");
     $.ajax({
       type: "POST",
       url: $form.attr("action"),
       dataType: "json",
       data: $form.serialize(),
       beforeSend: function(){
         $button.attr("disabled","disabled");
       }
     })
      .done(function(data, status, response){
	location.reload();
      })
      .fail(function(response, status, error){
	var user_response = $.parseJSON(response.responseText);
	alert(user_response.message);
      })
      .always(function(){
	$button.removeAttr("disabled");
      });

   });
 });
 dataLayer.push({'Owner ID': [653198]});
</script>
<script type="text/javascript" src="js/crafty_clicks.min.js?v=1453551528"></script><script>
  Craftyclicks.initialize();
  $(document).ready(function(){
    $("#id_country").trigger("change");
  });

</script>

        <script type="text/javascript" src="js/zenbox.js"></script>
<style type="text/css" media="screen, projection">
  @import url(css/zenbox.css);
</style>
<script type="text/javascript">
  if (typeof(Zenbox) !== "undefined") {
    Zenbox.init({
      dropboxID:   "20309773",
      url:         "https://justpark.zendesk.com",
      tabTooltip:  "Feedback",
      tabImageURL: "https://assets.zendesk.com/external/zenbox/images/tab_feedback.png",
      tabColor:    "black",
      tabPosition: "Left",
          requester_name: "Purav Doshi",
	requester_email:"puravdoshi14@gmail.com",
    	hide_tab:true
    });
  }
</script>
        <!-- Google Code for Main list -->
<!-- Remarketing tags may not be associated with personally identifiable information or placed on pages related to sensitive categories. For instructions on adding this tag and more information on the above requirements, read the setup guide: google.com/ads/remarketingsetup -->
<script type="text/javascript">
/* <![CDATA[ */
var google_conversion_id = 1065433872;
var google_conversion_label = "pA_fCPzjxAUQkPaE_AM";
var google_custom_params = window.google_tag_params;
var google_remarketing_only = true;
/* ]]> */
</script>
<script type="text/javascript" src="js/conversion.js">
</script>
<noscript>
<div style="display:inline;">
<img height="1" width="1" style="border-style:none;" alt="" src="//googleads.g.doubleclick.net/pagead/viewthroughconversion/1065433872/?value=0&amp;label=pA_fCPzjxAUQkPaE_AM&amp;guid=ON&amp;script=0"/>
</div>
</noscript>


        
        
                    <script defer="defer" src="js/6188.js" type="text/javascript"></script>
        

            
    </body>
</html>