<%@page import="java.nio.channels.SeekableByteChannel"%>
<%@taglib prefix="function" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!doctype html>
<html class="no-js" lang="en">
    <head prefix="og: http://ogp.me/ns# fb: http://ogp.me/ns/fb# parkatmyhouse: http://ogp.me/ns/fb/parkatmyhouse#">
        <meta http-equiv="X-UA-Compatible" content="chrome=1">
        <meta name="apple-mobile-web-app-capable" content="yes" />
        <title>Search Lot</title>
        <script>
           dataLayer = [];
        </script>

        <link rel="stylesheet" type="text/css" href="css/fonts.css" />

        <link id="style_core" rel="stylesheet" type="text/css" media="all" href="css/core.min.css?v=1453551510" />
 
                    <meta name="robots" content="NOODP" />
        
        <meta name="rating" content="general" />

                            
        <!-- All JavaScript at the bottom, except for Modernizr which enables HTML5 elements & feature detects -->
        <script type="text/javascript" src="js/modernizr.min.js?v=1453551510"></script>
        

                




        <link rel="image_src" href="/media/img/logos/56-colour.png" />

        
        <!-- Le fav and touch icons -->
        <link rel="shortcut icon" type="image/png" href="/media/img/icons/favicon.png" />

        
        <link rel="sitemap" type="application/xml" title="Sitemap" href="https://www.justpark.com/sitemap.xml">

        <!-- Google Analytics -->
        <script type="text/javascript">
          window.JustPark = window.JustPark || {};
          window.JustPark.GOOGLE_MAPS_API_KEY = 'AIzaSyB2bEpYuQa2bDYdfP14jJb4qLCwO2SBm24';
        </script>
          <script>
    window.AB_TEST_PARAMS = {
      is_search_results_page: true,
      activeTestRegions: [],
    }

    window.dataLayer = window.dataLayer || [];
    window.dataLayer.push({
      'event': 'is_search_results_page'
    });
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
              ga('set', 'contentGroup1', 'gb-geocoords-');
	ga('send', 'pageview');
        </script>

        
<meta name="ICBM" content="40.7127837, -74.00594130000002" />
<meta name="geo.position" content="40.7127837;-74.00594130000002" />
<meta name="geo.country" content="" />





<style>
  html {
    font-size: 10px;
  }
</style>
    </head>
    <body lang="en" class="search s-search-results country-gb">
	<script>
	
	  function loadcity(flag)
		{
			var val_statename=document.getElementById("val_statename");
			var val_cityname = document.getElementById("val_cityname");
			
			var xmlhttp;
			
			xmlhttp=new XMLHttpRequest();  
			
			 	removeAllCity();
				removeAllArea();

				 
			
			xmlhttp.onreadystatechange = function() {
				if (xmlhttp.readyState == 4) 
				{
					var hdncityid = document.getElementById("hdncityid");
					var jsonObj = JSON.parse(xmlhttp.responseText);
					
					for(i=0 ; i<jsonObj.length ; i++)
					{
						var createOption=document.createElement("option");
						
						createOption.value=jsonObj[i].city_id;
						createOption.text=jsonObj[i].val_cityname;
						
						val_cityname.options.add(createOption);
						
						if(hdncityid.value == jsonObj[i].city_id)
							createOption.setAttribute("selected", true);
					}
					if(flag == "selectLoad")
					{
						loadarea();				
					}
				}
				
			}

			
			xmlhttp.open("get", "${pageContext.request.contextPath}/ParkinglotsController?flag=loadCity&val_statename="+val_statename.value, true);
			xmlhttp.send();
	}
		
		function removeAllCity()
		{
			var val_cityname = document.getElementById("val_cityname");
			
			var removeCity=val_cityname.options.length;
			
			for(i=removeCity ; i>0 ; i-- )
			{
				val_cityname.remove(i);
			}
			
					}
		

	</script>
<script>

function removeAllCity()
{
	var val_cityname = document.getElementById("val_cityname");
	
	var removeCity=val_cityname.options.length;
	
	for(i=removeCity ; i>0 ; i-- )
	{
		val_cityname.remove(i);
	}
	
			}

</script>
	<script>
	  function loadarea()
		{
			var val_cityname=document.getElementById("val_cityname");
			var val_areaname = document.getElementById("val_areaname");
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
					var hdnareaid = document.getElementById("hdnareaid");
					
					var jsonObj = JSON.parse(xmlhttp.responseText);
					
					for(i=0 ; i<jsonObj.length ; i++)
					{
						var createOption=document.createElement("option");
						
						createOption.value=jsonObj[i].area_id;
						createOption.text=jsonObj[i].val_areaname;
						
						val_areaname.options.add(createOption);
						
						if(hdnareaid.value == jsonObj[i].area_id)
							createOption.setAttribute("selected", true);
					}
				}
				
			}

			
			xmlhttp.open("get", "${pageContext.request.contextPath}/ParkinglotsController?flag=loadArea&val_cityname="+val_cityname.value, true);
			xmlhttp.send();
		}
		
		function removeAllArea()
		{
			var val_areaname = document.getElementById("val_areaname");
			
			var removeArea=val_areaname.options.length;
			
			for(i=removeArea ; i>0 ; i-- )
			{
				val_areaname.remove(i);
			}
			
			}

		</script>
        
        <div id="wrapper">
                
               <%@include file="header.jsp" %>

                                                
                                    <div class="container" id="content">
                                                                                            
        


<h1 class="ab-td-826__title">Search Results</h1>


<form  name="" action="${pageContext.request.contextPath}/SearchController"  method="get" accept-charset="utf-8">
<input type="hidden" name="flag" value="searchParkinglot"/>
  <div id="search-tools" class="clearfix c-search-tools">
    
   <fieldset class="ab-td-826__search-field c-search-tools__fieldset"> 
     
	<label class="c-search-tools__label">State Name</label>
   	<select class="timepicker input-small phorm_field_time" name="val_statename" id="val_statename" style="width:200px" onchange="loadcity('load')">
   	<option> Select </option>
    <c:forEach items="${sessionScope.stateList}" var="x">
      
      <c:if test="${sessionScope.state_id eq x.state_id }">
      	<option value="${x.state_id}" selected="selected">${x.val_statename}</option>
      </c:if>
      <c:if test="${sessionScope.state_id ne x.state_id }">
      	<option value="${x.state_id}">${x.val_statename}</option>
      </c:if>
      
      </c:forEach>
    </select>
      
   </fieldset> 
     
     <fieldset class="ab-td-826__search-field c-search-tools__fieldset">   
             
       <label class="c-search-tools__label">City Name</label>
      <select class="timepicker input-small phorm_field_time" name="val_cityname" id="val_cityname" style="width:200px" onchange="loadarea()">
    <option> Select </option>  
      
      </select>
         
      </fieldset>
      
      <input type="hidden" id="hdncityid" value="${sessionScope.city_id}"/>
      <input type="hidden" id="hdnareaid" value="${sessionScope.area_id}"/>
       
       <fieldset class="ab-td-826__search-field c-search-tools__fieldset">
       
          <label class="c-search-tools__label">Area Name</label>
           <select  class="timepicker input-small phorm_field_time" style="width:200px"  name="val_areaname" id="val_areaname">
           <option> Select </option>
            </select>
            
         </fieldset>  
         
              
    </div>
    <div id="search-tools" class="clearfix c-search-tools" style="color:red"><h4>We provide only hourly vice parking for two wheeler and four wheeler.</h4></div>
 <div id="search-tools" class="clearfix c-search-tools">  
 <fieldset class="ab-td-826__from-field c-search-tools__fieldset">
      <label class="c-search-tools__label">From</label>
      <input id="id_start_date" name="start_date" type="text"
        autocomplete="off" value="${sessionScope.start_date}"
        class="c-search-tools__input datepicker c-search-tools__input--short"
        readonly="readonly"/>
 </fieldset>
<fieldset class="ab-td-826__from-field c-search-tools__fieldset">
 <label class="c-search-tools__label">Time</label>
 <span id="s1" style="display:none">${sessionScope.start_time}</span>       
<select  class="c-search-tools__input c-search-tools__select c-search-tools__input--short timepicker" id="id_start_time" name="start_time" required="required" onchange="fntime(this)">

<option value="${sessionScope.start_time}">${sessionScope.start_time}</option>
<option  value="00:00:00" >12:00am</option>
<option  value="00:30:00" >12:30am</option>
<option  value="01:00:00" >1:00am</option>
<option  value="01:30:00" >1:30am</option>
<option  value="02:00:00" >2:00am</option>
<option  value="02:30:00" >2:30am</option>
<option  value="03:00:00" >3:00am</option>
<option  value="03:30:00" >3:30am</option>
<option  value="04:00:00" >4:00am</option>
<option  value="04:30:00" >4:30am</option>
<option  value="05:00:00" >5:00am</option>
<option  value="05:30:00" >5:30am</option>
<option  value="06:00:00" >6:00am</option>
<option  value="06:30:00" >6:30am</option>
<option  value="07:00:00" >7:00am</option>
<option  value="07:30:00" >7:30am</option>
<option  value="08:00:00" >8:00am</option>
<option  value="08:30:00" >8:30am</option>
<option  value="09:00:00" >9:00am</option>
<option  value="09:30:00" >9:30am</option>
<option  value="10:00:00" >10:00am</option>
<option  value="10:30:00" >10:30am</option>
<option  value="11:00:00" >11:00am</option>
<option  value="11:30:00" >11:30am</option>
<option  value="12:00:00" >12:00pm (Noon)</option>
<option  value="12:30:00" >12:30pm</option>
<option  value="13:00:00" >1:00pm</option>
<option  value="13:30:00" >1:30pm</option>
<option  value="14:00:00" >2:00pm</option>
<option  value="14:30:00" >2:30pm</option>
<option  value="15:00:00" >3:00pm</option>
<option  value="15:30:00" >3:30pm</option>
<option  value="16:00:00" >4:00pm</option>
<option  value="16:30:00" >4:30pm</option>
<option  value="17:00:00" >5:00pm</option>
<option  value="17:30:00" >5:30pm</option>
<option  value="18:00:00" >6:00pm</option>
<option  value="18:30:00" >6:30pm</option>
<option  value="19:00:00" >7:00pm</option>
<option  value="19:30:00" >7:30pm</option>
<option  value="20:00:00" >8:00pm</option>
<option  value="20:30:00" >8:30pm</option>
<option  value="21:00:00" >9:0pm</option>
<option  value="21:30:00" >9:30pm</option>
<option  value="22:00:00" >10:00pm</option>
<option  value="22:30:00" >10:30pm</option>
<option  value="23:00:00" >11:00pm</option>
<option  value="23:30:00" >11:30pm</option>
<option  value="23:59:59" >Midnight</option>
</select>   </fieldset> 
    
    
    <fieldset class="ab-td-826__from-field c-search-tools__fieldset">
      <label class="c-search-tools__label">Until</label>
      <input id="id_end_date" name="end_date" type="text"
        autocomplete="off" value="${sessionScope.end_date}"
        class="c-search-tools__input datepicker c-search-tools__input--short"
        readonly="readonly"/>
     </fieldset>    
 <fieldset class="ab-td-826__from-field c-search-tools__fieldset">
  <label class="c-search-tools__label">Time</label>    
<select  class="c-search-tools__input c-search-tools__select c-search-tools__input--short timepicker" id="id_end_time" name="end_time" required="required">

<option value="${sessionScope.end_time}">${sessionScope.end_time}</option>
<option  value="00:00:00" >12:00am</option>
<option  value="00:30:00" >12:30am</option>
<option  value="01:00:00" >1:00am</option>
<option  value="01:30:00" >1:30am</option>
<option  value="02:00:00" >2:00am</option>
<option  value="02:30:00" >2:30am</option>
<option  value="03:00:00" >3:00am</option>
<option  value="03:30:00" >3:30am</option>
<option  value="04:00:00" >4:00am</option>
<option  value="04:30:00" >4:30am</option>
<option  value="05:00:00" >5:00am</option>
<option  value="05:30:00" >5:30am</option>
<option  value="06:00:00" >6:00am</option>
<option  value="06:30:00" >6:30am</option>
<option  value="07:00:00" >7:00am</option>
<option  value="07:30:00" >7:30am</option>
<option  value="08:00:00" >8:00am</option>
<option  value="08:30:00" >8:30am</option>
<option  value="09:00:00" >9:00am</option>
<option  value="09:30:00" >9:30am</option>
<option  value="10:00:00" >10:00am</option>
<option  value="10:30:00" >10:30am</option>
<option  value="11:00:00" >11:00am</option>
<option  value="11:30:00" >11:30am</option>
<option  value="12:00:00" >12:00pm (Noon)</option>
<option  value="12:30:00" >12:30pm</option>
<option  value="13:00:00" >1:00pm</option>
<option  value="13:30:00" >1:30pm</option>
<option  value="14:00:00" >2:00pm</option>
<option  value="14:30:00" >2:30pm</option>
<option  value="15:00:00" >3:00pm</option>
<option  value="15:30:00" >3:30pm</option>
<option  value="16:00:00" >4:00pm</option>
<option  value="16:30:00" >4:30pm</option>
<option  value="17:00:00" >5:00pm</option>
<option  value="17:30:00" >5:30pm</option>
<option  value="18:00:00" >6:00pm</option>
<option  value="18:30:00" >6:30pm</option>
<option  value="19:00:00" >7:00pm</option>
<option  value="19:30:00" >7:30pm</option>
<option  value="20:00:00" >8:00pm</option>
<option  value="20:30:00" >8:30pm</option>
<option  value="21:00:00" >9:00pm</option>
<option  value="21:30:00" >9:30pm</option>
<option  value="22:00:00" >10:00pm</option>
<option  value="22:30:00" >10:30pm</option>
<option  value="23:00:00" >11:00pm</option>
<option  value="23:30:00" >11:30pm</option>
<option  value="23:59:59" >Midnight</option>
</select>    </fieldset>
    
    <fieldset class="ab-td-826__submit-button c-search-tools__fieldset">
      <button type="submit" class="btn btn-success c-search-tools__submit">
      <i class="icon-search icon-white"></i> Search</button>
    </fieldset>
</div>
</form>


<div class="row">


<!-- results -->
	<div class="span6" id="listings-column">
    
<!-- Main results -->
	<div class="listings-wrapper">
   	<c:forEach items="${sessionScope.listRating}" var="temp" >
   
        <ul class="search-results listings">
              <li id="result-1" class="c-listing-item clearfix indexed  not-integration" listing-id="65860" data-listing-id="65860">
                                                  <div class="listing-container c-listing-item__container">
          <div class="heading clearfix">
            <span class="title"><a href="parkinglot_details"><h3>${temp.parkinglotsVO.val_plotname2 }</h3></a>
             <c:forEach items="${listRating1}" var="i">
    		<c:set var="parkinglots_id" value="${i[1] }"></c:set>
    		<c:set var="rating" value="${i[0] }"></c:set>
    		
    		<c:if test="${parkinglots_id eq temp.parkinglotsVO.parkinglots_id }">
           	<c:forEach begin="1" end="${rating}" var="i">
           	<div style="height:23px;width:23px;background-image:url('img/StarY.png');margin:2px;background-size: 20px auto;background-repeat: no-repeat;float:left"></div>
           	</c:forEach>
   			<c:forEach begin="${rating}" end="4" var="i">
           	<div style="height:23px;width:23px;background-image:url('img/StarW.png');margin:2px;background-size: 20px auto;background-repeat: no-repeat;float:left"></div>
           	</c:forEach>
          
          </c:if>
           
           </c:forEach>
            
		</span>
            
       	<c:forEach items="${sessionScope.priceList}" var="priceList" >
            <c:choose>
			<c:when test="${temp.parkinglotsVO.parkinglots_id eq priceList.parkinglots_id}">
            
            <p class="price">
            <label>4 Wheeler Price</label>&#8377; ${priceList.val_4price} 
            <label>2 Wheeler Price</label>&#8377; ${priceList.val_2price}
 			
 			<c:set var="x1" value="${priceList.val_4price}"></c:set>
            <c:set var="x2" value="${priceList.val_2price}"></c:set>
            </p>
            
            <c:set var="flag" value="false"></c:set>
            
            <c:forEach items="${sessionScope.book1}" var="bookpark" >
            <c:set var="fourwheel" value="${bookpark[0] }"></c:set>
            <c:set var="twowheel" value="${bookpark[1] }"></c:set>
            <c:set var="parkinglotobj" value="${bookpark[2] }"></c:set>
            
            <c:choose>
            <c:when test="${temp.parkinglotsVO.parkinglots_id eq parkinglotobj.parkinglots_id }">
            <p class="price">
            <label>4 wheeler Availablity</label>${parkinglotobj.val_4capacity-fourwheel}
            <label>2 wheeler Availablity</label>${parkinglotobj.val_2capacity-twowheel}
            </p>
            <c:set var="flag" value="true"></c:set>
            </c:when>
            </c:choose>
 			</c:forEach>
 			<c:choose>
 			<c:when test="${flag eq 'false' }">
            
            <p class="price">
            <label>4 wheeler Availablity</label>${priceList.val_4capacity}
            <label>2 wheeler Availablity</label>${priceList.val_2capacity}
            </p>
            </c:when>
            </c:choose>
 			</c:when>
			</c:choose>
			</c:forEach>
			
          </div>
                    
          <!-- end heading -->
          <div class="c-listing-item__content clearfix">
            <a onclick="return fn()" href="${pageContext.request.contextPath}/SearchController?flag=selectLot&var=${temp.parkinglotsVO.parkinglots_id}&price4wheeler=${x1}&price2wheeler=${x2}">
              <span class="c-listing-item__action-button" style="margin-top:0;">
                View details
              </span>
           
            </a>
          
          </div>
        </div>
      </li>
        </ul>
 </c:forEach>
 
    
    
    <c:forEach items="${sessionScope.parkingList}" var="temp" >
	<c:set var="flag" value="false"></c:set>
		<c:forEach items="${sessionScope.listRating}" var="j" >
		<c:if test="${temp.parkinglots_id eq j.parkinglotsVO.parkinglots_id && flag eq 'false'}">
        <c:set var="flag" value="true"></c:set>
         </c:if> 
           </c:forEach>

		 <c:if test="${flag eq 'false'}">
			

        <ul class="search-results listings">
              <li id="result-1" class="c-listing-item clearfix indexed  not-integration" listing-id="65860" data-listing-id="65860">
                                                  <div class="listing-container c-listing-item__container">
          <div class="heading clearfix">
            <span class="title"><a href="parkinglot_details"><h3>${temp.val_plotname2 }</h3></a></span>
			
			<c:forEach items="${sessionScope.priceList}" var="priceList" >
            <c:choose>
			<c:when test="${temp.parkinglots_id eq priceList.parkinglots_id}">
            
            <p class="price">
            <label>4 Wheeler Price</label>&#8377; ${priceList.val_4price} 
            <label>2 Wheeler Price</label>&#8377; ${priceList.val_2price}
 			
 			<c:set var="x1" value="${priceList.val_4price}"></c:set>
            <c:set var="x2" value="${priceList.val_2price}"></c:set>
            </p>
            
            <c:set var="flag" value="false"></c:set>
            
            <c:forEach items="${sessionScope.book1}" var="bookpark" >
            <c:set var="fourwheel" value="${bookpark[0] }"></c:set>
            <c:set var="twowheel" value="${bookpark[1] }"></c:set>
            <c:set var="parkinglotobj" value="${bookpark[2] }"></c:set>
            
            <c:choose>
            <c:when test="${temp.parkinglots_id eq parkinglotobj.parkinglots_id}">
            <p class="price">
            <label>4 wheeler Availablity</label>${parkinglotobj.val_4capacity-fourwheel}
            <label>2 wheeler Availablity</label>${parkinglotobj.val_2capacity-twowheel}
            </p>
            <c:set var="flag" value="true"></c:set>
            
            </c:when>
            </c:choose>
            </c:forEach>
            <c:choose>
 			<c:when test="${flag eq 'false' }" >

            <p class="price">
            <label>4 wheeler Availablity</label>${priceList.val_4capacity}
            <label>2 wheeler Availablity</label>${priceList.val_2capacity}
            </p>
            
            </c:when>
            </c:choose>
            </c:when>
			</c:choose>
			</c:forEach>
			    
          </div>
                    
          <!-- end heading -->
          <div class="c-listing-item__content clearfix">
            <a onclick="return fn()" href="${pageContext.request.contextPath}/SearchController?flag=selectLot&var=${temp.parkinglots_id}&price4wheeler=${x1}&price2wheeler=${x2}">
              <span class="c-listing-item__action-button" style="margin-top:0;">
                View details
              </span>
           
            </a>
          
          </div>
        </div>
      </li>
        </ul>
		</c:if>

    </c:forEach>
    
 <script>
    function fn()
    {
    	var s1 = document.getElementById("s1");
    	if(s1.innerHTML.length > 0)
    		{
    		return true;
    		}
    	else
    		{
    	alert("Please Select Time and Search");
    	return false;
    }
    	}
    </script>
    
    
    </div>
             
           
   
	
	 	</div>

<!-- /results -->

<!-- sidebar -->

	<div style="width: 430px;height: 500px;float:left;margin-left: 10px" id="map-column-12">
	<c:set var="list" value="${sessionScope.parkingList}"></c:set>
	<c:set var="len" value="${function:length(list) }"></c:set>
	<input type="hidden" id="len" value="${len}">
									
							<c:forEach items="${sessionScope.parkingList}" var="i" varStatus="j">
								<input type="hidden" id="mapLatitude${j.count}" value="${i.val_latitude}">
								<input type="hidden" id="mapLongitude${j.count}" value="${i.val_longitude}">
								<input type="hidden" id="mapPoliceStation${j.count}" value="${i.val_plotname2}">
							</c:forEach>
												
	</div>
	
  <%-- 	<c:if test="${sessionScope.listMarker eq null }">
	<div style="width: 430px;height: 500px;float:left;margin-left: 10px" id="map-column-12">
	
	</div>
	</c:if>
	<script>
      function initMap() {
    	  
        var mapDiv = document.getElementById('map-column-12');
        var map = new google.maps.Map(mapDiv, {
          center: {lat: 23.0300, lng: 72.5800},
          zoom: 8
        });
      }
    </script>
    <script src="https://maps.googleapis.com/maps/api/js?callback=initMap"
        async defer></script>
 --%>	
	
	  
<!-- /sidebar -->


</div>
 </div>
<div id="wrapper-push"></div>
</div>
        <!-- End of wrapper -->
                                <div id="pamh_modal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="modal" aria-hidden="true"><div class="modal-content"></div></div>
        <%@include file="footer.jsp"%>

            
            <script type="text/javascript" src="js/jquery.min.js"></script>
<script>!window.jQuery && document.write(unescape('js/jquery.min.js"%3E%3C/script%3E'))</script>
           

            <script type="text/javascript" src="js/core.min.js?v=1453551567"></script>

       <!--      <script type="text/javascript" src="js/facebook.min.js?v=1453551523"></script>
 -->
            <!--[if lte IE 7 ]>
                <script type="text/javascript" src="js/ie.min.js?v=1453551523"></script>            <![endif]-->

        


<script src="js/oct.js" type="text/javascript"></script>






        <script type="text/javascript" src="js/zenbox.js"></script>
<style type="text/css" media="screen, projection">
  @import url(css/zenbox.css);
</style>
<script type="text/javascript" src="js/conversion.js">
</script>


  <script type="text/javascript">
  jQuery(function($) {
    // Asynchronously Load the map API 
    var script = document.createElement('script');
    script.src = "http://maps.googleapis.com/maps/api/js?sensor=false&callback=initialize";
    document.body.appendChild(script);
});
					

function initialize() {
	var lati = [];
	var longt = [];

	var station = [];
	for(var i=1;i<=len.value;i++)
	{
		
		var mapLatitude = document.getElementById("mapLatitude"+i).value;
		var mapLongitude = document.getElementById("mapLongitude"+i).value;
		var mapPoliceStation = document.getElementById("mapPoliceStation"+i).value;
		if(i==len.value)
		{	
			station.push(mapPoliceStation);
			lati.push(mapLatitude);
			longt.push(mapLongitude);
			
		}
		else
		{
			station.push(mapPoliceStation);
			lati.push(mapLatitude);
			longt.push(mapLongitude);
			
		}
	}


	var map;
    var bounds = new google.maps.LatLngBounds();
    var mapOptions = {
        mapTypeId: 'roadmap'
    };
                    
    // Display a map on the page
    map = new google.maps.Map(document.getElementById("map-column-12"), mapOptions);
    map.setTilt(45);
        
    // Multiple Markers
    /* var markers = [
        ['London Eye, London', 51.503454,-0.119562],
        ['Palace of Westminster, London', 51.499633,-0.124755]
    ]; */
      
  /*   var markers = [
                   ['London Eye, London', 23.0060,72.6011],
                   ['Palace of Westminster, London', 23.0137,72.5913]
               ];
   */  // Info Window Content
     var infoWindowContent = [
        ['<div class="info_content">' +
        '<h3>London Eye</h3>' +
        '<p>The London Eye is a giant Ferris wheel situated on the banks of the River Thames. The entire structure is 135 metres (443 ft) tall and the wheel has a diameter of 120 metres (394 ft).</p>' +        '</div>'],
        ['<div class="info_content">' +
        '<h3>Palace of Westminster</h3>' +
        '<p>The Palace of Westminster is the meeting place of the House of Commons and the House of Lords, the two houses of the Parliament of the United Kingdom. Commonly known as the Houses of Parliament after its tenants.</p>' +
        '</div>']
    ];
        
    // Display multiple markers on a map
    var infoWindow = new google.maps.InfoWindow(), marker, i;
    
    // Loop through our array of markers & place each one on the map  
    for( i = 0; i < lati.length; i++ ) {
    /* alert(lati[i]+"::"+longt[i]);
     */	var position = new google.maps.LatLng(parseFloat(lati[i]), parseFloat(longt[i]));
        bounds.extend(position);
        marker = new google.maps.Marker({
            position: position,
            map: map,
            title: station[i]
        });
        
        // Allow each marker to have an info window    
/*         google.maps.event.addListener(marker, 'click', (function(marker, i) {
            return function() {
                infoWindow.setContent(infoWindowContent[i][0]);
                infoWindow.open(map, marker);
            }
        })(marker, i));
 */
        // Automatically center the map fitting all markers on the screen
        map.fitBounds(bounds);
    }

    // Override our map zoom level once our fitBounds function runs (Make sure it only runs once)
    var boundsListener = google.maps.event.addListener((map), 'bounds_changed', function(event) {
        this.setZoom(14);
        google.maps.event.removeListener(boundsListener);
    });
    
}
</script>

        
        
                    <script defer="defer" src="js/6188.js" type="text/javascript"></script>
        
<script>
	loadcity('selectLoad');
	
	function fntime(x)
	{
		
		var array = x.value.split(":");
		
		var s1 = document.getElementById("id_start_time");
		var s2 = document.getElementById("id_end_time");

          for(var i=0;i<s2.options.length;i++)
			{
			var s2array = s2.options[i].value.split(":");
			if(s2array[1]==array[1])
				{
				
					
			s2.options[i].style.display = "";
			}
			else
				{
				s2.options[i].style.display = "none";
					
				}
			}
	}
	</script>
            
    </body>
</html>