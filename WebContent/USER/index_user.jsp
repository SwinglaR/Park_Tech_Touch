	<%@taglib prefix="v" uri="http://java.sun.com/jstl/core_rt" %>
<!doctype html>
<html>

    <head prefix="og: http://ogp.me/ns# fb: http://ogp.me/ns/fb# parkatmyhouse: http://ogp.me/ns/fb/parkatmyhouse#">
        <base href="${pageContext.request.contextPath}/USER/">
        <meta http-equiv="X-UA-Compatible" content="chrome=1">
        <meta name="apple-mobile-web-app-capable" content="yes" />
        <title>Home Page Park Tech Touch</title>
        <script>
           dataLayer = [];
        </script>

        <link rel="stylesheet" type="text/css" href="css/fonts.css" />
        <link rel="stylesheet" type="text/css" href="css/home.min.css" />
        
        <meta name="rating" content="general" />

                            
        <!-- All JavaScript at the bottom, except for Modernizr which enables HTML5 elements & feature detects -->
        <script type="text/javascript" src="js/modernizr.min.js?v=1453551510"></script>          
        <link rel="image_src" href="img/57x57.png" />

 
        <!-- Le fav and touch icons -->
        <link rel="shortcut icon" type="image/png" href="img/favicon.png" />

 
        <link rel="sitemap" type="application/xml" title="Sitemap" href="https://www.justpark.com/sitemap.xml">

        <script src="js/bugsnag-2.min.js" data-apikey="18f2e5ddb745842bb36117517e83d1a4"></script>

        <script src="js/2756011487.js"></script>

<!-- start Mixpanel --><script type="text/javascript">(function(f,b){if(!b.__SV){var a,e,i,g;window.mixpanel=b;b._i=[];b.init=function(a,e,d){function f(b,h){var a=h.split(".");2==a.length&&(b=b[a[0]],h=a[1]);b[h]=function(){b.push([h].concat(Array.prototype.slice.call(arguments,0)))}}var c=b;"undefined"!==typeof d?c=b[d]=[]:d="mixpanel";c.people=c.people||[];c.toString=function(b){var a="mixpanel";"mixpanel"!==d&&(a+="."+d);b||(a+=" (stub)");return a};c.people.toString=function(){return c.toString(1)+".people (stub)"};i="disable track track_pageview track_links track_forms register register_once alias unregister identify name_tag set_config people.set people.set_once people.increment people.append people.union people.track_charge people.clear_charges people.delete_user".split(" ");
for(g=0;g<i.length;g++)f(c,i[g]);b._i.push([a,e,d])};b.__SV=1.2;a=f.createElement("script");a.type="text/javascript";a.async=!0;a.src="undefined"!==typeof MIXPANEL_CUSTOM_LIB_URL?MIXPANEL_CUSTOM_LIB_URL:"js/mixpanel-2-latest.min.js";e=f.getElementsByTagName("script")[0];e.parentNode.insertBefore(a,e)}})(document,window.mixpanel||[]);

  (function() {
    var isDebug = false;

    
    mixpanel.init("227ff3f622bc8de131254686178755ca", {debug: isDebug});
  }());

</script><!-- end Mixpanel -->
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

    </head>
    
    <body lang="en">
      
    	<div id="fb-root"></div>


<script>
function loadstate() {
	
	var val_statename=document.getElementById("val_statename");
	
	var xmlhttp;
	
	if (window.XMLHttpRequest)
	  {// code for IE7+, Firefox, Chrome, Opera, Safari
	  	xmlhttp=new XMLHttpRequest();
	  }
	else
	  {// code for IE6, IE5
	  	xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
	  }
	
	
	
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4) 
		{
			var jsonObj = JSON.parse(xmlhttp.responseText);
			
			for(i=0 ; i<jsonObj.length ; i++)
			{
				var createOption=document.createElement("option");
				
				createOption.value=jsonObj[i].state_id;
				createOption.text=jsonObj[i].val_statename;
				
				document.index_user_form.val_statename.options.add(createOption);
				
			}
		}
		
	}

	xmlhttp.open("get", "${pageContext.request.contextPath}/StateController?flag=loadstate_index", true);
	xmlhttp.send();

}


 function loadCity()
{
	var val_statename=document.getElementById("val_statename");
	
	var xmlhttp;
	
	if (window.XMLHttpRequest)
	  {// code for IE7+, Firefox, Chrome, Opera, Safari
	  	xmlhttp=new XMLHttpRequest();
	  }
	else
	  {// code for IE6, IE5
	  	xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
	  }
	
	removeAllCity();
	
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4) 
		{
			var jsonObj = JSON.parse(xmlhttp.responseText);
			
			for(i=0 ; i<jsonObj.length ; i++)
			{
				var createOption=document.createElement("option");
				
				createOption.value=jsonObj[i].city_id;
				createOption.text=jsonObj[i].val_cityname;
				
				document.index_user_form.val_cityname.options.add(createOption);
				
			}
		}
		
	}

	xmlhttp.open("get", "${pageContext.request.contextPath}/AreaController?flag=loadCity_index&val_statename="+val_statename.value, true);
	xmlhttp.send();
}

function removeAllCity()
{
	var removeCity=document.index_user_form.val_cityname.options.length;
	for(i=removeCity ; i>0 ; i-- )
	{
		document.index_user_form.val_cityname.remove(i);
	}
}
function loadArea()
{
	var val_cityname=document.getElementById("val_cityname");
	
	var xmlhttp;
	
	if (window.XMLHttpRequest)
	  {// code for IE7+, Firefox, Chrome, Opera, Safari
	  	xmlhttp=new XMLHttpRequest();
	  }
	else
	  {// code for IE6, IE5
	  	xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
	  }
	
	removeAllArea();
	
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4) 
		{
			var jsonObj = JSON.parse(xmlhttp.responseText);
			
			for(i=0 ; i<jsonObj.length ; i++)
			{
				var createOption=document.createElement("option");
				
				createOption.value=jsonObj[i].area_id;
				createOption.text=jsonObj[i].val_areaname;
				
				document.index_user_form.val_areaname.options.add(createOption);
				
			}
		}
		
	}

	xmlhttp.open("get", "${pageContext.request.contextPath}/AreaController?flag=loadArea_index&val_cityname="+val_cityname.value, true);
	xmlhttp.send();
}

function removeAllArea()
{
	var removeArea=document.index_user_form.val_areaname.options.length;
	for(i=removeArea ; i>0 ; i-- )
	{
		document.index_user_form.val_areaname.remove(i);
	}
}

</script>
        
    

<!-- start example for car image -->
<div id="bg-extend">
	<div id="bg">
	<v:if test="${sessionScope.userID eq null}">
	
	<%@include file="headerindex.jsp" %>
	
	</v:if>	
	
	<v:if test="${sessionScope.userID ne null}">
	
	<%@include file="headerindexLogin.jsp" %>
	
	</v:if>
	
		
		<div id="intro-content">
			<p id="home-logo">JustPark</p>
			<h1 id="intro-text">Find your perfect parking space</h1>
			
		</div>

		
		
			<form action="${pageContext.request.contextPath}/SearchController" method="get" name="index_user_form" id="index_user_form">
				<input type="hidden" name="flag" value="searchParking"/>
				<div id="search-area">
				<select class="timepicker input-small phorm_field_time" name="val_statename" id="val_statename" style="width:200px" onchange="loadCity()" required="required" >
                 <option value="">Choose State</option>
                 </select>
				 
				 <select  class="timepicker input-small phorm_field_time" style="width:200px" name="val_cityname" id="val_cityname" onchange="loadArea()" required="required">
                  <option value="">Choose City</option>
                 </select>
		
		
				 <select  class="timepicker input-small phorm_field_time" style="width:200px"  name="val_areaname" id="val_areaname" required="required">
                  <option value="">Choose Area</option>
                 </select>
			</div>
		
		
		<div id="search-area">
					<input id="id_start_date" class="datepicker" type="text" placeholder="From" name="start_date" required="required"/>
		
					<input type="text" class="datepicker" name="end_date" placeholder="Until" id="id_end_date" required="required"/>
			</div>
			<div id="search-area">
				<button type="submit" class="btn btn-jp-green" id="search_button">Search</button>
		
		
		</div>
			</form>
		</div>
</div>
<!-- end example for car image -->
 


<div id="content">

	<div id="divider"></div>


	<div id="divider2"></div>

	<div id="map12" class="hideme" style="width:980px;height:480px">



	</div>

 
	<!-- GOOGLE MAP CODE -->
	<script>
      function initMap() {
        var mapDiv = document.getElementById('map12');
        var map = new google.maps.Map(mapDiv, {
          center: {lat: 21.0000, lng: 78.0000},
          zoom: 5
        });
      }
    </script>
    
    <script src="https://maps.googleapis.com/maps/api/js?callback=initMap"
        async defer>
    </script>
	



	<div id="featured" class="hideme">
		
	</div>

</div>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script>!window.jQuery && document.write(unescape('%3Cscript src="js/jquery.min.js"%3E%3C/script%3E'))</script>

<script type="text/javascript" src="https://maps-api-ssl.google.com/maps/api/js?v=3.10&key=AIzaSyB2bEpYuQa2bDYdfP14jJb4qLCwO2SBm24&libraries=places&sensor=false"></script>
<script type="text/javascript">
  if (google && google.maps) {
    google.maps.visualRefresh = true;
  }
</script>



<script type="text/javascript" src="js/core.min.js?v=1453551567">
</script>
<script type="text/javascript" src="js/home.min.js"></script>
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

          userObject.initialize('guest');
      }());
</script>
<script type="text/javascript" src="js/facebook.min.js?v=1453551523"></script>



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
<script src="js/oct.js" type="text/javascript"></script>
        <script type="text/javascript">
          jQuery.getScript("js/oct.js").done(function(){
            twttr.conversion.trackPid('l4swo');
          });
        </script>
        <noscript>
        <img height="1" width="1" style="display:none;" alt="" src="https://analytics.twitter.com/i/adsct?txn_id=l4swo&p_id=Twitter" />
        <img height="1" width="1" style="display:none;" alt="" src="//t.co/i/adsct?txn_id=l4swo&p_id=Twitter" />
        </noscript>

<script type="application/ld+json">
{
  "@context": "http://schema.org",
  "@type": "WebSite",
  "url": "https://www.justpark.com/",
  "potentialAction": {
    "@type": "SearchAction",
    "target": "https://www.justpark.com/search/?q={search_term_string}",
    "query-input": "required name=search_term_string"
  }
}
</script>


<script>

loadstate()
</script>
</body>
</html>