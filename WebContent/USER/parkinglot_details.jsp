<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!doctype html> 
<html class="no-js" lang="en">
    <head prefix="og: http://ogp.me/ns# fb: http://ogp.me/ns/fb# parkatmyhouse: http://ogp.me/ns/fb/parkatmyhouse#">
        <base href="${pageContext.request.contextPath}/USER/">
        <meta http-equiv="X-UA-Compatible" content="chrome=1">
        <meta name="apple-mobile-web-app-capable" content="yes" />
        <title>Details Of Parking Lot </title>
        <meta name="copyright" content="JustPark" />
        <meta name="description" content="Hoboken Driveway for rent. We can accommodate normal-sized cars or small to mid-sized SUV\'s in the spot. We are located conveniently in Midtown, near Amanda\'s, Robbongi,..." />
        <meta name="keywords" content="parking spaces for rent, car parking, london parking, rent your driveway, let out your space, garages for rent, stadium parking, airport parking, garage rentals, parking, garages, driveways, rent, let" />
        <script>
           dataLayer = [];
        </script>

        <link rel="stylesheet" type="text/css" href="css/fonts.css" />

        <link id="style_core" rel="stylesheet" type="text/css" media="all" href="css/core.min.css?v=1453551510" />
        
                    <meta name="robots" content="NOODP" />
        
        <meta name="rating" content="general" />

                            
        <!-- All JavaScript at the bottom, except for Modernizr which enables HTML5 elements & feature detects -->
        <script type="text/javascript" src="js/modernizr.min.js?v=1453551510"></script>        
             <!-- Le fav and touch icons -->
        <link rel="shortcut icon" type="image/png" href="/media/img/icons/favicon.png" />

       
        <link rel="sitemap" type="application/xml" title="Sitemap" href="https://www.justpark.com/sitemap.xml">

        <script type="text/javascript">
          window.JustPark = window.JustPark || {};
          window.JustPark.GOOGLE_MAPS_API_KEY = 'AIzaSyB2bEpYuQa2bDYdfP14jJb4qLCwO2SBm24';
        </script>
                  <script>
            window.is_search_results_page = false;
          </script>
                <script src="js/2756011487.js"></script>

<!-- start Mixpanel --><script type="text/javascript">(function(f,b){if(!b.__SV){var a,e,i,g;window.mixpanel=b;b._i=[];b.init=function(a,e,d){function f(b,h){var a=h.split(".");2==a.length&&(b=b[a[0]],h=a[1]);b[h]=function(){b.push([h].concat(Array.prototype.slice.call(arguments,0)))}}var c=b;"undefined"!==typeof d?c=b[d]=[]:d="mixpanel";c.people=c.people||[];c.toString=function(b){var a="mixpanel";"mixpanel"!==d&&(a+="."+d);b||(a+=" (stub)");return a};c.people.toString=function(){return c.toString(1)+".people (stub)"};i="disable track track_pageview track_links track_forms register register_once alias unregister identify name_tag set_config people.set people.set_once people.increment people.append people.union people.track_charge people.clear_charges people.delete_user".split(" ");
for(g=0;g<i.length;g++)f(c,i[g]);b._i.push([a,e,d])};b.__SV=1.2;a=f.createElement("script");a.type="text/javascript";a.async=!0;a.src="undefined"!==typeof MIXPANEL_CUSTOM_LIB_URL?MIXPANEL_CUSTOM_LIB_URL:"js/mixpanel-2-latest.min.js";e=f.getElementsByTagName("script")[0];e.parentNode.insertBefore(a,e)}})(document,window.mixpanel||[]);

  (function() {
    var isDebug = false;

    
    mixpanel.init("227ff3f622bc8de131254686178755ca", {debug: isDebug});
  }());

</script><!-- end Mixpanel -->
        <script>
                            ga('send', 'pageview');
                    </script>
<script>
function fn(x)
{
	var hdn = document.getElementById("rating");
	hdn.value=x;
	for(var i =1; i<=5; i++)
	{
	var dv = document.getElementById("dv"+i);
	dv.style.backgroundImage="url('img/StarW.png')";
	}
	for(var i =1; i<=x; i++)
		{
		var dv = document.getElementById("dv"+i);
		dv.style.backgroundImage="url('img/StarY.png')";
		}
}


</script>
   </head>
    <body lang="en" class="listing-detail  country-gb">
        <div id="wrapper">
                
                <%@include file="header.jsp"%>

                                                
                                    <div class="container" id="content">
                                                                                            
        

<div class="section-container clearfix" itemscope itemtype="http://schema.org/Product">
        <div class="section-container-top">
            <div class="section-container-heading clearfix">
				                
            </div>
		
		<c:forEach items="${sessionScope.selectList}" var="selectList">
            <div class="section-container-title clearfix">
                <div id="listing_title" class="clearfix">
                    
                    <div class="listing-title-content">
                        <h1><span>
                                ${selectList.val_plotname2}
                            </span></h1>
                    </div>
                </div>
<div style="margin-top:0!important;"class="listing-rating" itemprop="aggregateRating" itemscope itemtype="http://schema.org/AggregateRating">
                            

                            
                    </div>
                    

        </div>
        

    <div class="left-column">

        
        

        <div class="section">
            <div id="map-section" class="clearfix">
                <!-- Map / street view -->

                <div id="main-map12" style="height: 300px;" class="map-holder"></div>
  <style>
  .google-map {
	background: #E5E3DF;
	height: 400px;
	margin: -35px 0 30px 0;
	width: 100%;
}

.google-map.small {
	height: 250px;
	border-radius: 6px;
	margin: 0;
	clear: both;
}

.google-map img {
	max-width: 9999px;
}

.google-map-borders {
	border: 1px solid #DDD;
	padding: 4px;
	border-radius: 4px;
}
  </style>
    
             </div>
        </div>

        
        

                   
        <div class="section">
            <div class="section-heading"><h4>Description</h4></div>
            <div class="user-content">
          <p > ${selectList.val_description }
                  				 </p>

                <hr />

                    <input type="hidden" id="latitude" name="latitude" value="${selectList.val_latitude}"/>
                    <input type="hidden" id="longitude" name="longitude" value="${selectList.val_longitude}"/>
            		<input type="hidden" id="parkingLotName" name="parkingLotName" value="${selectList.val_plotname2}"/>
            		<input type="hidden" id="parkingLotDetails" name="parkingLotDetails" value="${selectList.val_description}">
            </div>
        </div>

 <form action="${pageContext.request.contextPath}/FeedbackController" method="post" onsubmit="return fnvalidate()">
<input type="hidden" name="flag" value="insertFeedback"/>
     				
<div class="section">
            <div class="section-heading"><h4>Feedback</h4></div>
            <div class="user-content">
          		<textarea cols="10" rows="10" name="feedback"></textarea>
                <hr />
            </div>
            <div class="btn-toolbar">
                    <button type="submit" class="btn btn-large btn-success">Submit Feedback</button>
     				<input type="hidden" name="parkinglots_id" value="${selectList.parkinglots_id}"/>
     				<input type="hidden" name="rating" id="rating"/>	                   
                    <div style="height:10px;width:220px;float:left" >
	                    <div id="dv1" style="height:25px;width:25px;float:left;background-image:url('img/StarW.png');margin:5px;background-size: 25px auto;background-repeat: no-repeat" onclick="fn('1')" ></div>
	                    <div id="dv2" style="height:25px;width:25px;background-image:url('img/StarW.png');margin:5px;background-size: 25px auto;background-repeat: no-repeat;float:left" onclick="fn('2')"></div>
	                    <div id="dv3" style="height:25px;width:25px;background-image:url('img/StarW.png');margin:5px;background-size: 25px auto;background-repeat: no-repeat;float:left" onclick="fn('3')"></div>
	                    <div id="dv4" style="height:25px;width:25px;background-image:url('img/StarW.png');margin:5px;background-size: 25px auto;background-repeat: no-repeat;float:left" onclick="fn('4')"></div>
	                    <div id="dv5" style="height:25px;width:25px;background-image:url('img/StarW.png');margin:5px;background-size: 25px auto;background-repeat: no-repeat;float:left" onclick="fn('5')"></div>     
                    </div>
                    
                  
                    </div>
        </div>
   </form>     
 </c:forEach>
        

            
</div>




    </div>


    <div class="right-column">
                                    <div class="booking-box bg-color section">
                <form action="booking.jsp" method="get" accept-charset="utf-8" onsubmit="return validate()">
                  <input type="hidden" id="userID" value="${sessionScope.userID}">
                    <div class="hidden">
                        <input value="65860" class="phorm_field_hidden" id="id_listing_id" name="listing_id" type="hidden" />                        <label class="radio "><input value="twodates" class="hidden phorm_field_multiplechoice" id="id_booking_type_0" name="booking_type[]" type="radio" checked="checked" /> For a continuous period of time</label>
<label class="radio "><input value="specificdates" class="hidden phorm_field_multiplechoice" id="id_booking_type_1" name="booking_type[]" type="radio" /> For a multi-date booking</label>
                        <input value="" class="phorm_field_hidden" id="id_vehicle_type" name="vehicle_type" type="hidden" />                    </div>
                    <fieldset>
                       <div class="control-group">
                          <label>From:</label>
                          <input value="${sessionScope.start_date}" class="datepicker input-small phorm_field_date" style="height: 28px; width: 29% !important;" placeholder="Date" id="id_start_date" name="start_date" type="text" disabled="disabled" />                 
<select  class="timepicker input-small phorm_field_time" id="id_start_time" name="start_time" readonly="readonly" >
<option value="">${sessionScope.start_time}</option>
</select>                       
</div>
  </fieldset>
                    <fieldset>
                      <div class="control-group">
                          <label>Until:</label>
                          <input value="${sessionScope.end_date}" class="datepicker input-small phorm_field_date" style="height: 28px; width: 29% !important;" placeholder="Date" id="id_end_date" name="end_date" type="text" disabled="disabled" />
<select  class="timepicker input-small phorm_field_time" id="id_end_time" name="end_time" readonly="readonly" >
<option value="">${sessionScope.end_time}</option>
</select>                      </div>
                    </fieldset>

<!--                     <div class="subtotal-calculation"></div>
                    <div class="availability_info alert alert-error hidden">
  <span class="availability-message-old-wrapper">
    <span class="availability-message">Sorry, but we don't have availability on these dates.</span>
    Why not <a href="/us/parking/hoboken/">try another search</a>.
  </span>
</div>
                    <div class="max-booking-length-error alert alert-error hidden">
  <span class="availability-message-booking-length">
    This listing has a maximum booking length of <span class="js-max-booking-length-hours"></span> hours.
  </span>
</div>
                                                            
<div class="delayed-start-error alert alert-error hidden">
    <span class="availability-message">This listing must be booked 0 hours in advance. Please select different times or <a
            href="/us/parking/hoboken/?0=08%3A00%3A00&1=18%3A00%3A00">search
        again</a>.</span>
</div>
 -->                   
 				 <div class="btn-toolbar">
                    <button type="submit" class="btn btn-large btn-success">Book Now</button>
                 </div>
                </form>
            </div>
        
<script>
function validate()
{
var userID = document.getElementById("userID");

if(userID.value == "")
	{
	
	window.location.assign("login.jsp");
	return false;
	}
}
function fnvalidate()
{
	
	var userID = document.getElementById("userID");

	if(userID.value == "")
		{
		
		window.location.assign("login.jsp");
		return false;
		}	
	var rating = document.getElementById("rating");

	if(rating.value == "")
		{
		alert("Please Select Rating");
		return false;
				}	
	
	
	
	}
</script>

        






        <!-- Other parking spaces tab -->
<c:forEach items="${sessionScope.selectList}" var="selectListagain">
    <div class="section">
        <div class="section-heading"><h4>Other Parking Spaces</h4></div>
        
        <ul class="listings-small">
                          
                            <li>
          <c:forEach items="${sessionScope.recommendationList}" var="recommendationList" >
                    <div class="listing-container">
                    
            		
				<span class="title">
				<c:if test="${recommendationList.val_plotname2 ne selectListagain.val_plotname2}">
					
					<h4>${recommendationList.val_plotname2}</h4>
					
				</c:if>
				</span>
			<div class="clearfix">
				<p class="price">
			  
			<c:forEach items="${sessionScope.rateList}" var="rateList" >
            <c:choose>
				<c:when test="${recommendationList.parkinglots_id eq rateList.parkinglots_id}">
            	<c:if test="${recommendationList.val_plotname2 ne selectListagain.val_plotname2}">
            
            		<label>4 Wheeler Price</label>&#8377; ${rateList.val_4price} 
            		<label>2 Wheeler Price</label>&#8377; ${rateList.val_2price}
 			<label><a href="${pageContext.request.contextPath}/SearchController?flag=Select&var=${recommendationList.parkinglots_id}&4rate=${rateList.val_4price}&2rate=${rateList.val_2price}">View Details</a></label>
 			 	</c:if>
 				</c:when>
			</c:choose>
			</c:forEach>
			  		</p>
			<hr>
					
			</div>
			</div>
			</c:forEach>
                </li>
                    </ul>
            </div>
    </c:forEach>
        
    </div>
</div>


                                                </div>
                                <div id="wrapper-push"></div>
            </div>
        <!-- End of wrapper -->
        <%@include file="footer.jsp" %>
                                <div id="pamh_modal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="modal" aria-hidden="true"><div class="modal-content"></div></div>
        

        
            <script type="text/javascript" src="js/jquery.min.js"></script>
<script>!window.jQuery && document.write(unescape('%3Cscript src="js/jquery.min.js"%3E%3C/script%3E'))</script>
            
          
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

          userObject.initialize('guest');
      }());
</script>

 <!--            <script type="text/javascript" src="js/facebook.min.js?v=1453551523"></script>
 -->
            <!--[if lte IE 7 ]>
                <script type="text/javascript" src="js/ie.min.js?v=1453551523"></script>            <![endif]-->

        
<script src="js/in.js" type="text/javascript"></script>

<script type="text/javascript">
setTimeout(function(){var a=document.createElement("script");
var b=document.getElementsByTagName("script")[0];
a.src=document.location.protocol+"js/9489.js?"+Math.floor(new Date().getTime()/3600000);
a.async=true;a.type="text/javascript";b.parentNode.insertBefore(a,b)}, 1);
</script>


        <script type="text/javascript" src="js/zenbox.js"></script>

<style type="text/css" media="screen, projection">
  @import url(css/zenbox.css);
</style>
 <script type="text/javascript" src="js/conversion.js">
</script>

 <script defer="defer" src="js/6188.js" type="text/javascript"></script>


 <!-- GOOGLE MAP CODE -->      
       <script src="http://maps.google.com/maps/api/js?sensor=false"></script>
               
               <script>
               
               var l1=document.getElementById("latitude");
               var l2=document.getElementById("longitude");
               var uluru = {lat: parseFloat(l1.value), lng: parseFloat(l2.value)};
               var parkingLotName=document.getElementById("parkingLotName");
               var parkingLotDeatils=document.getElementById("parkingLotDetails");
               
               var map = new google.maps.Map(document.getElementById('main-map12'), 
            	{
                 zoom: 16,
                 center: uluru
               });

               /* var contentString = '<div id="content">'+
                   '<div id="siteNotice">'+
                   '</div>'+
                   '<h1 id="firstHeading" class="firstHeading">Gita Mandir Parking Lot</h1>'+
                   '<div id="bodyContent">'+
                   '<p><b>Uluru</b>, also referred to as <b>Ayers Rock</b>, is a large ' +
                   'sandstone rock formation in the southern part of the '+
                   'Northern Territory, central Australia. It lies 335&#160;km (208&#160;mi) '+
                   'south west of the nearest large town, Alice Springs; 450&#160;km '+
                   '(280&#160;mi) by road. Kata Tjuta and Uluru are the two major '+
                   'features of the Uluru - Kata Tjuta National Park. Uluru is '+
                   'sacred to the Pitjantjatjara and Yankunytjatjara, the '+
                   'Aboriginal people of the area. It has many springs, waterholes, '+
                   'rock caves and ancient paintings. Uluru is listed as a World '+
                   'Heritage Site.</p>'+
                   '<p>Attribution: Uluru, <a href="https://en.wikipedia.org/w/index.php?title=Uluru&oldid=297882194">'+
                   'https://en.wikipedia.org/w/index.php?title=Uluru</a> '+
                   '(last visited June 22, 2009).</p>'+
                   '</div>'+
                   '</div>';
               */
               var infowindow = new google.maps.InfoWindow({
                 /* content: contentString */
            	   content: parkingLotDetails.value
               });

               var marker = new google.maps.Marker({
                 position: uluru,
                 map: map,
                 title: parkingLotName.value
               });
               marker.addListener('click', function() {
                 infowindow.open(map, marker);
               });
              
    </script>
<!-- GOOGLE MAP CODE ENDS -->            
    
    </body>
</html>