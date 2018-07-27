<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!doctype html>
<html class="no-js" lang="en">
<head
	prefix="og: http://ogp.me/ns# fb: http://ogp.me/ns/fb# parkatmyhouse: http://ogp.me/ns/fb/parkatmyhouse#">
<meta http-equiv="X-UA-Compatible" content="chrome=1">
<meta name="apple-mobile-web-app-capable" content="yes" />
<title>Make a booking</title>
<script>
           dataLayer = [];
        </script>

<link rel="stylesheet" type="text/css" href="css/fonts.css" />

<link id="style_core" rel="stylesheet" type="text/css" media="all"
	href="css/core.min.css?v=1453551510" />
<meta name="robots" content="NOODP" />
<meta name="rating" content="general" />
<!-- All JavaScript at the bottom, except for Modernizr which enables HTML5 elements & feature detects -->
<script type="text/javascript" src="js/modernizr.min.js?v=1453551510"></script>




<meta property="og:site_name" content="JustPark" />
<meta property="og:type" content="website" />
<meta property="og:url" content="https://www.justpark.com/" />
<meta property="og:title" content="JustPark" />
<meta property="og:image"
	content="http://www.justpark.com/media/img/logos/320-colour.png" />
<meta property="og:image:secure_url"
	content="https://www.justpark.com/media/img/logos/320-colour.png" />

<meta property="og:description"
	content="Seriously smart parking. Book a space in advance wherever, whenever, for however long you need." />
<link rel="image_src" href="/media/img/logos/56-colour.png" />
<!-- Le fav and touch icons -->
<link rel="shortcut icon" type="image/png"
	href="/media/img/icons/favicon.png" />
<script type="text/javascript">
          window.JustPark = window.JustPark || {};
          window.JustPark.GOOGLE_MAPS_API_KEY = 'AIzaSyB2bEpYuQa2bDYdfP14jJb4qLCwO2SBm24';
        </script>
<script>
            window.is_search_results_page = false;
          </script>
<script src="js/2756011487.js"></script>

<!-- start Mixpanel -->
<script type="text/javascript">(function(f,b){if(!b.__SV){var a,e,i,g;window.mixpanel=b;b._i=[];b.init=function(a,e,d){function f(b,h){var a=h.split(".");2==a.length&&(b=b[a[0]],h=a[1]);b[h]=function(){b.push([h].concat(Array.prototype.slice.call(arguments,0)))}}var c=b;"undefined"!==typeof d?c=b[d]=[]:d="mixpanel";c.people=c.people||[];c.toString=function(b){var a="mixpanel";"mixpanel"!==d&&(a+="."+d);b||(a+=" (stub)");return a};c.people.toString=function(){return c.toString(1)+".people (stub)"};i="disable track track_pageview track_links track_forms register register_once alias unregister identify name_tag set_config people.set people.set_once people.increment people.append people.union people.track_charge people.clear_charges people.delete_user".split(" ");
for(g=0;g<i.length;g++)f(c,i[g]);b._i.push([a,e,d])};b.__SV=1.2;a=f.createElement("script");a.type="text/javascript";a.async=!0;a.src="undefined"!==typeof MIXPANEL_CUSTOM_LIB_URL?MIXPANEL_CUSTOM_LIB_URL:"js/mixpanel-2-latest.min.js";e=f.getElementsByTagName("script")[0];e.parentNode.insertBefore(a,e)}})(document,window.mixpanel||[]);

  (function() {
    var isDebug = false;

    
    mixpanel.init("227ff3f622bc8de131254686178755ca", {debug: isDebug});
  }());

</script>
<!-- end Mixpanel -->
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
<script>
function validation()
{
	var fourWheelercheckbox=document.getElementById("fourWheelercheckbox");
	var fourWheeler=document.getElementById("fourWheeler");
	var twoWheelercheckbox=document.getElementById("twoWheelercheckbox");
	var twoWheeler=document.getElementById("twoWheeler");
	var errorMessage=document.getElementById("errorMessage");
	
	
	if(fourWheelercheckbox.checked==false && fourWheeler.value=="" && twoWheelercheckbox.checked==false && twoWheeler.value=="")
		{
		alert("NO data entered!!");
		errorMessage.innerHTML="Please choose either fourWheeler or twoWheeler";
		return false;
		}
	else if(fourWheelercheckbox.checked==false && fourWheeler.value!="")
{
		errorMessage.innerHTML="Please check four wheeler";
		return false;
}		
	else if(fourWheelercheckbox.checked==true && fourWheeler.value=="")
	{
			errorMessage.innerHTML="Please Enter four wheeler";
			return false;
	}	
	else if(twoWheelercheckbox.checked==false && twoWheeler.value!="")
	{
			errorMessage.innerHTML="Please check two wheeler";
			return false;
	}	
	else if(twoWheelercheckbox.checked==true && twoWheeler.value=="")
	{
			errorMessage.innerHTML="Please Enter two wheeler";
			return false;
	}	
	
}
</script>
<script>
function deletebutton(x)
{
	var dv = x.parentNode;
	var maindv = x.parentNode.parentNode;
	
	maindv.removeChild(dv);
}
</script>
                    

</head>
<body lang="en" class="booking info country-gb">
	
	<div id="fb-root"></div>
	
	<div id="wrapper">

		<%@include file="header.jsp"%>


		<div class="container" id="content">

			<h1>Book a parking space</h1>

			<div class="row">
				<div class="span9">
					<div class="infobox">
						<input type="hidden" name="temp_id" value="tbk56a70f73a1a79" />
						<c:forEach items="${sessionScope.selectList}" var="selectList">
							<form
								action="${pageContext.request.contextPath}/BookParkingSlotsController"
								method="post" accept-charset="utf-8" class="form-horizontal" onsubmit="return validation()">
								<input type="hidden" name="flag" value="insertBookParkingSlots" />
								<div class="parking-space-info">
									<div class="compact-listing clearfix">
										<div class="main-area">
											<div class="heading clearfix">
												<h3>${selectList.val_plotname2}</h3>
											</div>
											<!-- Summary snippet -->
											<div class="summary">
												<p class="summary">${selectList.val_description}</p>
											</div>
										</div>
										<div class="map-area"></div>
									</div>
								</div>


								<fieldset>

									<h4 class="legend">When would you like to park?</h4>





									<input value="65860" class="phorm_field_hidden" id="id_pid"
										name="pid" type="hidden" />


									<div class="form-group control-group required">
										<label for="id_booking_type" class="sr-only control-label">Booking
											period</label>
										<div class="controls">
											<label class="radio "> <input
												class="selection-chooser phorm_field_multiplechoice"
												id="id_booking_type_0" name="booking_type" type="radio"
												checked="checked" value="continuous" /> For a continuous
												period of time
											</label> <label class="radio "> <input
												class="selection-chooser phorm_field_multiplechoice"
												id="id_booking_type_1" name="booking_type" type="radio"
												value="multi" /> For a multi-date booking
											</label>
										</div>
									</div>
									<hr />
									<div class="form-group control-group">
										<div class="controls">
											<input value="0" class="phorm_field_hidden" id="id_extending"
												name="extending" type="hidden" />
										</div>
									</div>

									<div id="booking_type-twodates"
										class="selection-container booking_type">
										<div class="control-group required ">
											<label class="control-label">From</label>
											<div class="controls">
												<input value="${sessionScope.start_date}"
													class="datepicker input-small availability-calendar phorm_field_date"
													placeholder="Date" id="id_start_date" name="start_date"
													readonly="readonly" type="text" /> 
												<select	class="timepicker input-small phorm_field_time"
													id="id_start_time" name="start_time">
													<option value="${sessionScope.start_time}">${sessionScope.start_time}</option>
													<option value="00:00:00">12:00am</option>
													<option value="00:30:00">12:30am</option>
													<option value="01:00:00">1:00am</option>
													<option value="01:30:00">1:30am</option>
													<option value="02:00:00">2:00am</option>
													<option value="02:30:00">2:30am</option>
													<option value="03:00:00">3:00am</option>
													<option value="03:30:00">3:30am</option>
													<option value="04:00:00">4:00am</option>
													<option value="04:30:00">4:30am</option>
													<option value="05:00:00">5:00am</option>
													<option value="05:30:00">5:30am</option>
													<option value="06:00:00">6:00am</option>
													<option value="06:30:00">6:30am</option>
													<option value="07:00:00">7:00am</option>
													<option value="07:30:00">7:30am</option>
													<option value="08:00:00">8:00am</option>
													<option value="08:30:00">8:30am</option>
													<option value="09:00:00">9:00am</option>
													<option value="09:30:00">9:30am</option>
													<option value="10:00:00">10:00am</option>
													<option value="10:30:00">10:30am</option>
													<option value="11:00:00">11:00am</option>
													<option value="11:30:00">11:30am</option>
													<option value="12:00:00">12:00pm (Noon)</option>
													<option value="12:30:00">12:30pm</option>
													<option value="13:00:00">1:00pm</option>
													<option value="13:30:00">1:30pm</option>
													<option value="14:00:00">2:00pm</option>
													<option value="14:30:00">2:30pm</option>
													<option value="15:00:00">3:00pm</option>
													<option value="15:30:00">3:30pm</option>
													<option value="16:00:00">4:00pm</option>
													<option value="16:30:00">4:30pm</option>
													<option value="17:00:00">5:00pm</option>
													<option value="17:30:00">5:30pm</option>
													<option value="18:00:00">6:00pm</option>
													<option value="18:30:00">6:30pm</option>
													<option value="19:00:00">7:00pm</option>
													<option value="19:30:00">7:30pm</option>
													<option value="20:00:00">8:00pm</option>
													<option value="20:30:00">8:30pm</option>
													<option value="21:00:00">9:00pm</option>
													<option value="21:30:00">9:30pm</option>
													<option value="22:00:00">10:00pm</option>
													<option value="22:30:00">10:30pm</option>
													<option value="23:00:00">11:00pm</option>
													<option value="23:30:00">11:30pm</option>
													<option value="23:59:59">Midnight</option>
												</select>
											</div>
										</div>


										<!-- <div class="form-group control-group">
											<label class="control-label"></label>
											<div class="controls">
												<label for="id_infinite"><input value="on"
													class="phorm_field_checkbox" id="id_infinite"
													name="infinite" type="checkbox" /> I would like a
													recurring weekly or monthly booking lasting <strong>longer
														than 6 weeks</strong></label>


											</div>
										</div>
 -->
 
										<div id="enddate-container">
											<div class="control-group required ">
												<label class="control-label">Until</label>
												<div class="controls">
													<input value="${sessionScope.end_date}"
														class="datepicker input-small availability-calendar phorm_field_date"
														placeholder="Date" id="id_end_date" name="end_date"
														readonly="readonly" type="text" /> <select
														class="timepicker input-small phorm_field_time"
														id="id_end_time" name="end_time">
														<option value="${sessionScope.end_time}">${sessionScope.end_time}</option>
														<option value="00:00:00">12:00am</option>
														<option value="00:30:00">12:30am</option>
														<option value="01:00:00">1:00am</option>
														<option value="01:30:00">1:30am</option>
														<option value="02:00:00">2:00am</option>
														<option value="02:30:00">2:30am</option>
														<option value="03:00:00">3:00am</option>
														<option value="03:30:00">3:30am</option>
														<option value="04:00:00">4:00am</option>
														<option value="04:30:00">4:30am</option>
														<option value="05:00:00">5:00am</option>
														<option value="05:30:00">5:30am</option>
														<option value="06:00:00">6:00am</option>
														<option value="06:30:00">6:30am</option>
														<option value="07:00:00">7:00am</option>
														<option value="07:30:00">7:30am</option>
														<option value="08:00:00">8:00am</option>
														<option value="08:30:00">8:30am</option>
														<option value="09:00:00">9:00am</option>
														<option value="09:30:00">9:30am</option>
														<option value="10:00:00">10:00am</option>
														<option value="10:30:00">10:30am</option>
														<option value="11:00:00">11:00am</option>
														<option value="11:30:00">11:30am</option>
														<option value="12:00:00">12:00pm (Noon)</option>
														<option value="12:30:00">12:30pm</option>
														<option value="13:00:00">1:00pm</option>
														<option value="13:30:00">1:30pm</option>
														<option value="14:00:00">2:00pm</option>
														<option value="14:30:00">2:30pm</option>
														<option value="15:00:00">3:00pm</option>
														<option value="15:30:00">3:30pm</option>
														<option value="16:00:00">4:00pm</option>
														<option value="16:30:00">4:30pm</option>
														<option value="17:00:00">5:00pm</option>
														<option value="17:30:00">5:30pm</option>
														<option value="18:00:00">6:00pm</option>
														<option value="18:30:00">6:30pm</option>
														<option value="19:00:00">7:00pm</option>
														<option value="19:30:00">7:30pm</option>
														<option value="20:00:00">8:00pm</option>
														<option value="20:30:00">8:30pm</option>
														<option value="21:00:00">9:00pm</option>
														<option value="21:30:00">9:30pm</option>
														<option value="22:00:00">10:00pm</option>
														<option value="22:30:00">10:30pm</option>
														<option value="23:00:00">11:00pm</option>
														<option value="23:30:00">11:30pm</option>
														<option value="23:59:59">Midnight</option>
													</select>
												</div>
											</div>
										</div>

										<div id="weekday-container" class="hidden">

											<div class="form-group control-group">
												<label for="id_weekdays" class="sr-only control-label">On
													the following days</label>
												<div class="controls">
													<label class="checkbox wide checkbox"><input
														value="0" class="inline phorm_field_multiplechoice"
														id="id_weekdays_0" name="weekdays[]" type="checkbox"
														checked="checked" /> Sunday</label> <label
														class="checkbox wide checkbox"><input value="1"
														class="inline phorm_field_multiplechoice"
														id="id_weekdays_1" name="weekdays[]" type="checkbox"
														checked="checked" /> Monday</label> <label
														class="checkbox wide checkbox"><input value="2"
														class="inline phorm_field_multiplechoice"
														id="id_weekdays_2" name="weekdays[]" type="checkbox"
														checked="checked" /> Tuesday</label> <label
														class="checkbox wide checkbox"><input value="3"
														class="inline phorm_field_multiplechoice"
														id="id_weekdays_3" name="weekdays[]" type="checkbox"
														checked="checked" /> Wednesday</label> <label
														class="checkbox wide checkbox"><input value="4"
														class="inline phorm_field_multiplechoice"
														id="id_weekdays_4" name="weekdays[]" type="checkbox"
														checked="checked" /> Thursday</label> <label
														class="checkbox wide checkbox"><input value="5"
														class="inline phorm_field_multiplechoice"
														id="id_weekdays_5" name="weekdays[]" type="checkbox"
														checked="checked" /> Friday</label> <label
														class="checkbox wide checkbox"><input value="6"
														class="inline phorm_field_multiplechoice"
														id="id_weekdays_6" name="weekdays[]" type="checkbox"
														checked="checked" /> Saturday</label>



												</div>
											</div>
										</div>

									</div>

									<div id="booking_type-explicit_dates"
										class="selection-container booking_type">
										<div class="control-group required ">
											<label class="control-label">Dates</label>
											<div class="controls">
												<div id="specific-date-container">
													<input value="" class="phorm_field_hidden"
														id="id_specific_dates" name="specific_dates" type="hidden" />
													<div class="duplicate-specific-dates">
														<input value="${sessionScope.start_date}"
															class="datepicker input-small specific_dates_date phorm_field_date"
															placeholder="Date" id="id_start_date" name="start_date"
															readonly="readonly" type="text" /> <select
															class="timepicker input-small specific_dates_from phorm_field_time"
															id="id_start_time" name="start_time">
															<option value="${sessionScope.start_time}">${sessionScope.start_time}</option>
															<option value="00:00:00">12:00am</option>
															<option value="00:30:00">12:30am</option>
															<option value="01:00:00">1:00am</option>
															<option value="01:30:00">1:30am</option>
															<option value="02:00:00">2:00am</option>
															<option value="02:30:00">2:30am</option>
															<option value="03:00:00">3:00am</option>
															<option value="03:30:00">3:30am</option>
															<option value="04:00:00">4:00am</option>
															<option value="04:30:00">4:30am</option>
															<option value="05:00:00">5:00am</option>
															<option value="05:30:00">5:30am</option>
															<option value="06:00:00">6:00am</option>
															<option value="06:30:00">6:30am</option>
															<option value="07:00:00">7:00am</option>
															<option value="07:30:00">7:30am</option>
															<option value="08:00:00">8:00am</option>
															<option value="08:30:00">8:30am</option>
															<option value="09:00:00">9:00am</option>
															<option value="09:30:00">9:30am</option>
															<option value="10:00:00">10:00am</option>
															<option value="10:30:00">10:30am</option>
															<option value="11:00:00">11:00am</option>
															<option value="11:30:00">11:30am</option>
															<option value="12:00:00">12:00pm (Noon)</option>
															<option value="12:30:00">12:30pm</option>
															<option value="13:00:00">1:00pm</option>
															<option value="13:30:00">1:30pm</option>
															<option value="14:00:00">2:00pm</option>
															<option value="14:30:00">2:30pm</option>
															<option value="15:00:00">3:00pm</option>
															<option value="15:30:00">3:30pm</option>
															<option value="16:00:00">4:00pm</option>
															<option value="16:30:00">4:30pm</option>
															<option value="17:00:00">5:00pm</option>
															<option value="17:30:00">5:30pm</option>
															<option value="18:00:00">6:00pm</option>
															<option value="18:30:00">6:30pm</option>
															<option value="19:00:00">7:00pm</option>
															<option value="19:30:00">7:30pm</option>
															<option value="20:00:00">8:00pm</option>
															<option value="20:30:00">8:30pm</option>
															<option value="21:00:00">9:00pm</option>
															<option value="21:30:00">9:30pm</option>
															<option value="22:00:00">10:00pm</option>
															<option value="22:30:00">10:30pm</option>
															<option value="23:00:00">11:00pm</option>
															<option value="23:30:00">11:30pm</option>
															<option value="23:59:59">Midnight</option>
														</select> <select
															class="timepicker input-small specific_dates_until phorm_field_time"
															id="id_end_time" name="end_time">
															<option value="${sessionScope.end_time}">${sessionScope.end_time}</option>
															<option value="00:00:00">12:00am</option>
															<option value="00:30:00">12:30am</option>
															<option value="01:00:00">1:00am</option>
															<option value="01:30:00">1:30am</option>
															<option value="02:00:00">2:00am</option>
															<option value="02:30:00">2:30am</option>
															<option value="03:00:00">3:00am</option>
															<option value="03:30:00">3:30am</option>
															<option value="04:00:00">4:00am</option>
															<option value="04:30:00">4:30am</option>
															<option value="05:00:00">5:00am</option>
															<option value="05:30:00">5:30am</option>
															<option value="06:00:00">6:00am</option>
															<option value="06:30:00">6:30am</option>
															<option value="07:00:00">7:00am</option>
															<option value="07:30:00">7:30am</option>
															<option value="08:00:00">8:00am</option>
															<option value="08:30:00">8:30am</option>
															<option value="09:00:00">9:00am</option>
															<option value="09:30:00">9:30am</option>
															<option value="10:00:00">10:00am</option>
															<option value="10:30:00">10:30am</option>
															<option value="11:00:00">11:00am</option>
															<option value="11:30:00">11:30am</option>
															<option value="12:00:00">12:00pm (Noon)</option>
															<option value="12:30:00">12:30pm</option>
															<option value="13:00:00">1:00pm</option>
															<option value="13:30:00">1:30pm</option>
															<option value="14:00:00">2:00pm</option>
															<option value="14:30:00">2:30pm</option>
															<option value="15:00:00">3:00pm</option>
															<option value="15:30:00">3:30pm</option>
															<option value="16:00:00">4:00pm</option>
															<option value="16:30:00">4:30pm</option>
															<option value="17:00:00">5:00pm</option>
															<option value="17:30:00">5:30pm</option>
															<option value="18:00:00">6:00pm</option>
															<option value="18:30:00">6:30pm</option>
															<option value="19:00:00">7:00pm</option>
															<option value="19:30:00">7:30pm</option>
															<option value="20:00:00">8:00pm</option>
															<option value="20:30:00">8:30pm</option>
															<option value="21:00:00">9:00pm</option>
															<option value="21:30:00">9:30pm</option>
															<option value="22:00:00">10:00pm</option>
															<option value="22:30:00">10:30pm</option>
															<option value="23:00:00">11:00pm</option>
															<option value="23:30:00">11:30pm</option>
															<option value="23:59:59">Midnight</option>
														</select> <a href="" class="delete-specific-date" title="Delete" id="deletebutton" onclick="return deletebutton(this)">Delete</a>
													</div>
												</div>
												<p class="help-block">
													<a id="btn1" style="cursor: pointer;">+ Add another date</a>
												</p>
											</div>
										</div>
									</div>

								</fieldset>

								<div class="standalone" id="availability-status"></div>

								<fieldset>
									<!-- Vehicles -->
									<h4 class="legend">How many will you be parking?</h4>
									<div class="form-group control-group required">
										<label class="sr-only control-label" for="id_booking_type">Type
											of Vehicle</label>
										<div class="controls">
											<label class="checkbox wide checkbox"> <input
												class="inline phorm_field_multiplechoice" 
												name="vehicleCheckbox" id="fourWheelercheckbox" value="fourWheelerChkbox"
												type="checkbox" />Four Wheeler
											</label> <strong> No of Vehicle </strong> <input id="fourWheeler"
												name="fourWheeler" style="width: 50px" type="text" /><br />
											<br /> <label class="checkbox wide checkbox"> <input
												class="inline phorm_field_multiplechoice" id="twoWheelercheckbox"
												name="vehicleCheckbox" value="twoWheelerChkbox"
												type="checkbox" />Two Wheeler
											</label> <strong> No of Vehicle </strong> <input id="twoWheeler"
												name="twoWheeler" style="width: 50px" type="text" /><br />

											<div id="errorMessage" style="color: red"></div>
											

										</div>
									</div>








								</fieldset>
								<div class="form-actions">
									<button type="submit" class="btn btn-large btn-primary">Continue</button>
								</div>
							</form>
						</c:forEach>
					</div>
				</div>
				<!-- /main -->

				<!-- sidebar -->
				<div class="span3"></div>
				<!-- /sidebar -->
			</div>

		</div>
		<div id="wrapper-push"></div>
	</div>
	<!-- End of wrapper -->
	<%@include file="footer.jsp"%>
	<div id="pamh_modal" class="modal hide fade" tabindex="-1"
		role="dialog" aria-labelledby="modal" aria-hidden="true">
		<div class="modal-content"></div>
	</div>



	<script type="text/javascript"
		src="https://maps-api-ssl.google.com/maps/api/js?v=3.10&key=AIzaSyB2bEpYuQa2bDYdfP14jJb4qLCwO2SBm24&libraries=places&sensor=false"></script>
	<script type="text/javascript">
  if (google && google.maps) {
    google.maps.visualRefresh = true;
  }
</script>

	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script>!window.jQuery && document.write(unescape('%3Cscript src="js/jquery.min.js"%3E%3C/script%3E'))</script>
	

	
	<script type="text/javascript" src="js/core.min.js?v=1453551567"></script>
	
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
		<div style="display: inline;">
			<img height="1" width="1" style="border-style: none;" alt=""
				src="//googleads.g.doubleclick.net/pagead/viewthroughconversion/1065433872/?value=0&amp;label=pA_fCPzjxAUQkPaE_AM&amp;guid=ON&amp;script=0" />
		</div>
	</noscript>




	<script defer="defer" src="js/6188.js" type="text/javascript"></script>

<script>
$(document).ready(function(){
	$("#btn1").click(function(){
		$("#specific-date-container").append("<input value='' class='phorm_field_hidden' name='specific_dates' type='hidden' />													<div class='duplicate-specific-dates'>														<input value='${sessionScope.start_date}'															class='datepicker input-small specific_dates_date phorm_field_date'															placeholder='Date'  name='start_date'															readonly='readonly' type='text' /> <select															class='timepicker input-small specific_dates_from phorm_field_time'															 name='start_time'>															<option value='${sessionScope.start_time}'>${sessionScope.start_time}</option>															<option value='00:00:00'>12:00am</option>															<option value='00:30:00'>12:30am</option>															<option value='01:00:00'>1:00am</option>															<option value='01:30:00'>1:30am</option>															<option value='02:00:00'>2:00am</option>															<option value='02:30:00'>2:30am</option>															<option value='03:00:00'>3:00am</option>															<option value='03:30:00'>3:30am</option>															<option value='04:00:00'>4:00am</option>															<option value='04:30:00'>4:30am</option>															<option value='05:00:00'>5:00am</option>															<option value='05:30:00'>5:30am</option>															<option value='06:00:00'>6:00am</option>															<option value='06:30:00'>6:30am</option>															<option value='07:00:00'>7:00am</option>															<option value='07:30:00'>7:30am</option>															<option value='08:00:00'>8:00am</option>															<option value='08:30:00'>8:30am</option>															<option value='09:00:00'>9:00am</option>															<option value='09:30:00'>9:30am</option>															<option value='10:00:00'>10:00am</option>															<option value='10:30:00'>10:30am</option>															<option value='11:00:00'>11:00am</option>															<option value='11:30:00'>11:30am</option>															<option value='12:00:00'>12:00pm (Noon)</option>															<option value='12:30:00'>12:30pm</option>															<option value='13:00:00'>1:00pm</option>															<option value='13:30:00'>1:30pm</option>															<option value='14:00:00'>2:00pm</option>															<option value='14:30:00'>2:30pm</option>															<option value='15:00:00'>3:00pm</option>															<option value='15:30:00'>3:30pm</option>															<option value='16:00:00'>4:00pm</option>															<option value='16:30:00'>4:30pm</option>															<option value='17:00:00'>5:00pm</option>															<option value='17:30:00'>5:30pm</option>															<option value='18:00:00'>6:00pm</option>															<option value='18:30:00'>6:30pm</option>															<option value='19:00:00'>7:00pm</option>															<option value='19:30:00'>7:30pm</option>															<option value='20:00:00'>8:00pm</option>															<option value='20:30:00'>8:30pm</option>															<option value='21:00:00'>9:00pm</option>															<option value='21:30:00'>9:30pm</option>															<option value='22:00:00'>10:00pm</option>															<option value='22:30:00'>10:30pm</option>															<option value='23:00:00'>11:00pm</option>															<option value='23:30:00'>11:30pm</option>															<option value='23:59:59'>Midnight</option>														</select> <select															class='timepicker input-small specific_dates_until phorm_field_time'															 name='end_time'>															<option value='${sessionScope.end_time}'>${sessionScope.end_time}</option>															<option value='00:00:00'>12:00am</option>															<option value='00:30:00'>12:30am</option>															<option value='01:00:00'>1:00am</option>															<option value='01:30:00'>1:30am</option>															<option value='02:00:00'>2:00am</option>															<option value='02:30:00'>2:30am</option>															<option value='03:00:00'>3:00am</option>															<option value='03:30:00'>3:30am</option>															<option value='04:00:00'>4:00am</option>															<option value='04:30:00'>4:30am</option>															<option value='05:00:00'>5:00am</option>															<option value='05:30:00'>5:30am</option>															<option value='06:00:00'>6:00am</option>															<option value='06:30:00'>6:30am</option>															<option value='07:00:00'>7:00am</option>															<option value='07:30:00'>7:30am</option>															<option value='08:00:00'>8:00am</option>														<option value='08:30:00'>8:30am</option>															<option value='09:00:00'>9:00am</option>															<option value='09:30:00'>9:30am</option>															<option value='10:00:00'>10:00am</option>															<option value='10:30:00'>10:30am</option>															<option value='11:00:00'>11:00am</option>															<option value='11:30:00'>11:30am</option>															<option value='12:00:00'>12:00pm (Noon)</option>															<option value='12:30:00'>12:30pm</option>															<option value='13:00:00'>1:00pm</option>															<option value='13:30:00'>1:30pm</option>															<option value='14:00:00'>2:00pm</option>															<option value='14:30:00'>2:30pm</option>															<option value='15:00:00'>3:00pm</option>															<option value='15:30:00'>3:30pm</option>															<option value='16:00:00'>4:00pm</option>															<option value='16:30:00'>4:30pm</option>															<option value='17:00:00'>5:00pm</option>															<option value='17:30:00'>5:30pm</option>															<option value='18:00:00'>6:00pm</option>															<option value='18:30:00'>6:30pm</option>															<option value='19:00:00'>7:00pm</option>															<option value='19:30:00'>7:30pm</option>															<option value='20:00:00'>8:00pm</option>															<option value='20:30:00'>8:30pm</option>															<option value='21:00:00'>9:00pm</option>															<option value='21:30:00'>9:30pm</option>															<option value='22:00:00'>10:00pm</option>														<option value='22:30:00'>10:30pm</option>															<option value='23:00:00'>11:00pm</option>															<option value='23:30:00'>11:30pm</option>															<option value='23:59:59'>Midnight</option>														</select> <button class='delete-specific-date' type='button' onclick='deletebutton(this)' title='Delete'>Delete</button>													</div>");
	});
});
</script>

</body>
</html>