<!doctype html> 
<html class="no-js" lang="en">
    <head prefix="og: http://ogp.me/ns# fb: http://ogp.me/ns/fb# parkatmyhouse: http://ogp.me/ns/fb/parkatmyhouse#">
        <meta http-equiv="X-UA-Compatible" content="chrome=1">
        <meta name="apple-mobile-web-app-capable" content="yes" />
        <title>Dashboard ${sessionScope.userName}</title>
        <script>
           dataLayer = [];
        </script>

        <link rel="stylesheet" type="text/css" href="css/fonts.css" />

        <link id="style_core" rel="stylesheet" type="text/css" media="all" href="css/core.min.css?v=1.1.300" />
   
                    <meta name="robots" content="NOODP" />
        
        <meta name="rating" content="general" />

                         
                            
        <!-- All JavaScript at the bottom, except for Modernizr which enables HTML5 elements & feature detects -->
        <script type="text/javascript" src="js/modernizr.min.js?v=1.1.300"></script>        

        <link rel="image_src" href="/media/img/logos/56-colour.png" />




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
    <body lang="en" class="dashboard-home country-gb">

            <div id="fb-root"></div>
        
        <div id="wrapper">
                
                <%@include file="headerLogin.jsp" %>

                                                
                                    <div class="container" id="content">
                        

<div class="row">
  <div class="span2">
    <ul class="nav nav-pills nav-stacked" id="dashboard-navigation">
      		<li>
				<a href="dashboard.jsp">Dashboard</a>
			</li>
			<li class="divider"></li>
			<!-- <li class="dropdown">
				<a class="dropdown-toggle" data-toggle="dropdown" href="#">Bookings <b class="caret"></b></a>
				<ul class="dropdown-menu">
					<li>
						<a href="bookingmade.jsp">Bookings made</a>
					</li>
				</ul>
			</li>
			 -->
			<li class="dropdown">
				<a class="dropdown-toggle" data-toggle="dropdown" href="#">Profile <b class="caret"></b></a>
				<ul class="dropdown-menu">
					<!-- <li>
						<a href="viewprofileuser.jsp">View User Profile</a>
					</li>
                     -->
					
					<li>
						<a href="profileuser.jsp">Update Profile settings</a>
					</li>
					
					<!-- <li>
						<a href="listofvehicles.jsp">Vehicles</a>
					</li> -->
				</ul>
			</li>

			<!-- <li class="dropdown">
				<a class="dropdown-toggle" data-toggle="dropdown" href="#">Billing <b class="caret"></b></a>
				<ul class="dropdown-menu">
					<li><a href="/dashboard/billing/transactions/">Transactions</a></li>
					<li><a href="/dashboard/billing/payment-sources/">Payment sources</a></li>
					<li><a href="/dashboard/billing/withdrawal-methods/">Withdrawal methods</a></li>
				</ul>
			</li> -->
		</ul>

	</div>
	<!-- Left column -->
	<div class="span10">
	<div class="section-container">
	<div class="row">
		
		<div class="span3">
			<!-- <div class="section profile-details">
				<div class="profile-image">
					  <img src="img/avatar-st.png" alt="Default profile photo" width="200" height="200" />
					<form action="/dashboard/profile/photo-upload/" method="post" accept-charset="utf-8" enctype="multipart/form-data">
						<button class="btn btn-info file-handler" type="button"><i class="icon-plus-sign icon-white"></i> Add a photo</button>
						<input type="file" name="photo" />
					</form>
				</div>
			</div> -->
		</div>
		
		<div class="span4">

			<div class="section section-invisible">
				<div class="dashboard-username">
					<h3>${sessionScope.userName}</h3>
				</div>
				<!-- <ul class="trust-centre-items">
	                <li>
						<h5>Bookings Made</h5>
						<p id="val_bookingmade" onload="loadbooking('change')"></p>
					</li>
	            </ul>
 -->
			</div>
		</div>
		
		<div class="span3">
	<!--  		<div id="profile-completion-section" class="section">
				<h6>Profile Completeness</h6>
				<div class="utils">
					<i title="Profile Completeness" data-content="<p>How to complete your profile:</p><ul class='profile-sections-list'><li>Your email address needs to be verified</li><li>Please upload a photo of yourself</li></ul>" rel="popover" data-html="true" data-width="300" class="help-icon" data-placement="left"></i>
				</div>
				<div class="progress progress-striped">
				  <div class="bar bar-danger" style="width: 10%;">10%</div>
				</div>

				<div class="btn-toolbar">
					<a href="/dashboard/profile/" class="btn btn-success btn-block">Update your profile</a>
				</div>
			</div>
-->
			
			<!-- <div id="dashboard-trust" class="section">
				<h6>Profile Information</h6>
				<div class="utils">
					<i title="Become trusted" data-content="<p>Increase your JustPark trust ranking by updating your online profile and conencting with other trusted online services. Parking spaces listed by trusted users appear higher up in our search rankings.</p><p>Trusted drivers also receive priority when multiple enquiries are received by a single property owner.</p>" rel="popover" class="help-icon" data-placement="left"></i>
				</div>
				<table class="table table-condensed table-hover linked">
										<tr>
						<td class="alert-warning"></td>
						<td><a href="/dashboard/profile/change-email/"><strong>Email address</strong></a></td>
					</tr>
					
										<tr>
						<td class="alert-warning"></td>
						<td><a href="/auth/facebook/?next=%2Fdashboard%2F"><strong>Facebook Connected</strong></a></td>
					</tr>
					
					<tr>
						<td class="alert-warning"></td>
						<td><a href="/dashboard/profile/"><strong>Profile photo</strong></a></td>
					</tr>
					
					<tr>
						<td class="alert-warning"></td>
						<td><a href="/dashboard/profile/"><strong>Phone number</strong></a></td>
					</tr>
					
				</table>
			</div>
 -->
			
		</div>
	</div>

</div>
	</div>
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
<script>!window.jQuery && document.write(unescape('%3Cscript src="/media/compressed/js/jquery.min.js"%3E%3C/script%3E'))</script>
            <script type="text/javascript">
	// Google +1
	(function() {
		var po = document.createElement('script');
		po.type = 'text/javascript';
		po.async = true;
		po.src = 'https://apis.google.com/js/plusone.js';
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
	s.src = 'https://platform.twitter.com/widgets.js';
	c.parentNode.insertBefore(s, c);
	})();
</script>
            <script type="text/javascript" src="js/core.min.js?v=1.1.300"></script>
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

          userObject.initialize({
        name: 'Purav D',
        first_name: 'Purav',
        last_name: 'Doshi',
        email: 'puravdoshi14@gmail.com',
        created: new Date('2016-01-26 06:06:07'),
        phone: '',
        gender: '',
        id: 923316,
        mixpanel_status: 0,
        is_owner: !!0,
        is_suspicious: !!0,
        is_trusted: !!0,
        is_email_verified: !!0,
        is_phone_verified: !!0,
        is_temporary: !!0,
        address: {
          country: 'GB',
          city: ''
        }
      });
      }());
</script>

            <script type="text/javascript" src="js/facebook.min.js?v=1.1.300"></script>

            <!--[if lte IE 7 ]>
                <script type="text/javascript" src="/media/compressed/js/ie.min.js?v=1.1.300"></script>            <![endif]-->

        
	<script src="js/in.js" type="text/javascript"></script>
	<script src="js/address_books.js"></script>

	<script type="text/javascript">
		var csPageOptions = {
		  domain_key: "WNA8WJWG5GMQF3UWMS6U",
		  textarea_id: "id_email_data",
		  initiallySelectedContacts: true,
		  sources: ['yahoo', 'gmail', 'windowslive', 'outlook'],
		  performEmailValidation: true,
		  ignoreMultipleEmails: true,
		  skipSourceMenu: true,

		  beforeClosing: function(){
		  	$("#cloudsponge-modal").hideLoading();
		  	if ($("#id_email_data").val()==""){
		  		$("#cloudsponge-modal").modal('hide');
		  	}
		  },
		  afterSubmitContacts: function(contacts, source, owner){
		  	var names = new Array();
		  	for (var i = 0; i < contacts.length; i++) {
			    name = contacts[i].fullName();
			    names.push(name);
			  }

			$("#id_to").val(names.join(", "));
		  	$("#stage-1").hide();
	  		$("#stage-2, #stage-3").show();
		  }
		};


    	$(function (){
		$("#fb-share").on("click", function(event){
			event.preventDefault();
			FB.ui({
			  method: 'feed',
			  link: 'https://www.justpark.com/?invite_code=WII115&channel=facebook',
			  picture: 'http://www.justpark.com/media/img/logos/320-colour.png',
			  description: 'I\'m using JustPark.com to rent a parking space! Really useful around stadiums, airports and train stations. Such an awesome idea! You can also make money if you have an empty parking space by renting it out.',
			  ref: 'referafriend',
			  caption: 'www.justpark.com'
			}, function(response){


			});

            ga('send', 'social', 'facebook', 'share', targetUrl);
		});

		$("#twitter-share").on("click", function(event){
			event.preventDefault();
			window.open($(this).attr("data-url"), 'twitter-sharer', 'width=626,height=436');

            ga('send', 'social', 'twitter', 'share', targetUrl);
		});

    	$(".import").on("click", function(event) {
    		event.preventDefault();
    		$("#cloudsponge-modal").modal('show');


	        ga('send', 'event', 'Email Invite', 'import');
    	});


    	$(".launch").on("click", function(event) {
    		event.preventDefault();
    		cloudsponge.launch($(this).attr("data-source"));

    		ga('send', 'event', 'Email Invite', 'launch');
    	});

    	$("#invite-input").on("click", function(event){
	        event.stopPropagation();
	        $(this).select();
	    });

	});
	</script>

        <script type="text/javascript" src="//assets.zendesk.com/external/zenbox/v2.6/zenbox.js"></script>
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
<script type="text/javascript" src="//www.googleadservices.com/pagead/conversion.js">
</script>
<noscript>
<div style="display:inline;">
<img height="1" width="1" style="border-style:none;" alt="" src="//googleads.g.doubleclick.net/pagead/viewthroughconversion/1065433872/?value=0&amp;label=pA_fCPzjxAUQkPaE_AM&amp;guid=ON&amp;script=0"/>
</div>
</noscript>


        
        
                    <script defer="defer" src="https://www.dwin1.com/6188.js" type="text/javascript"></script>
        <script>
        loadbooking()
        </script>

            
    </body>
</html>