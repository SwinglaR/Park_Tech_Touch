<!doctype html> 
<html class="no-js" lang="en">
    <head prefix="og: http://ogp.me/ns# fb: http://ogp.me/ns/fb# parkatmyhouse: http://ogp.me/ns/fb/parkatmyhouse#">
        <meta http-equiv="X-UA-Compatible" content="chrome=1">
        <meta name="apple-mobile-web-app-capable" content="yes" />
        <title>Edit Client profile </title>
        <script>
           dataLayer = [];
        </script>
        <script>
        var msg = false;
        function formValidate()
        { 
        	var id_first_name=document.getElementById("id_first_name");
        	var id_last_name=document.getElementById("id_last_name");
        	var email=document.getElementById("email");
        	var password=document.getElementById("password");
        	var confirmpassword=document.getElementById("confirmpassword");
        	var id_mobile_number=document.getElementById("id_mobile_number");
        	var Msg1=document.getElementById("Msg");
        	
        	if(id_first_name.value=="")
    		{
    		Msg1.innerHTML="Please Enter First Name";
    		return false;
    		}
        	else if(id_last_name.value=="")
        		{
        		Msg1.innerHTML="Please Enter Last Name";
        		return false;
        		}
        	
        	else if(email.value=="")
    		{
    		Msg1.innerHTML="Please Enter Email";
    		return false;
    		}
        	else if(password.value=="")
    		{
    		Msg1.innerHTML="Please Enter Password";
    		return false;
    		}
        	else if(confirmpassword.value=="")
    		{
    		Msg1.innerHTML="Please Enter Confirm Password";
    		return false;
    		}
        	else if(id_mobile_number.value=="")
    		{
    		Msg1.innerHTML="Please Enter Mobile Number";
    		return false;
    		}
        	
        	
        	
        	
        	
        	
        	var error = document.getElementById("error");
        	if(error.style.display == "")
        		{
        			return false;
        		}
        	else 
    		{
    		if(msg == true)
    			{
    			return true;
    			}
    		else
    			{
    			return false;
    			}
    		}
        	
        	
        	
        
        	
        }
        </script>
        <script type="text/javascript">
        function errorPassword()
        {
       	 var password=document.getElementById("password");
       	 var confirmpassword=document.getElementById("confirmpassword");
			  	 
    				if(password.value!=confirmpassword.value)
    				{
    					errorPasswordmsg.innerHTML="Password and Confirm Password must Match";
    					msg = false;
    				}
    				else
    					{
    					errorPasswordmsg.innerHTML="";
    					msg = true;
    					}

    	

       		
        }
        </script>
        

        <link rel="stylesheet" type="text/css" href="css/fonts.css" />

        <link id="style_core" rel="stylesheet" type="text/css" media="all" href="css/core.min.css?v=1.1.300" />

                    <meta name="robots" content="NOODP" />
        
        <meta name="rating" content="general" />

                            
        <!-- All JavaScript at the bottom, except for Modernizr which enables HTML5 elements & feature detects -->
        <script type="text/javascript" src="js/modernizr.min.js?v=1.1.300"></script>        
        <link rel="image_src" href="/media/img/logos/56-colour.png" />

        
        <!-- Le fav and touch icons -->
        <link rel="shortcut icon" type="image/png" href="/media/img/icons/favicon.png" />

        
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
    <body lang="en" class="profile-edit dashboard country-gb">

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
						<a href="/dashboard/bookings/?status=made">Bookings made</a>
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
							
		<h1>Profile settings</h1>

<div class="infobox">
	<form action="<%=request.getContextPath() %>/ClientController" method="post" accept-charset="utf-8" class="form-horizontal"><!-- onsubmit="return formValidate()" -->
		
		<input type="hidden" name="flag" value="updateClient"/>
		
		<fieldset>
				

		<h4 class="legend">Update Account</h4>
			<div class="email-signup hidden1">


		
		<div class="control-group required ">
			<label for="id_first_name" class="sr-only control-label">Full name</label>			
			<div class="controls">
				<input value="" class="input-smedium phorm_field_name" placeholder="First name" id="id_first_name" name="client_first_name" type="text" style="width:125px"/>				
				<input value="" class="input-smedium phorm_field_name" placeholder="Last name" id="id_last_name" name="client_last_name" type="text" style="width:125px"/>											
			</div>
		</div>

		
         <div class="form-group control-group required">
            <label for="id_email" class="sr-only control-label">Email address</label>
              <div class="controls">
                 <input value="" type="email" class="phorm_field_email has-tooltip" title="If possible, please use your personal email address" id="email" name="client_email" onblur="loginErrorMessage()" style="width:250px"/> 
                 <div id="error" style="color:red"></div>
             </div>
         </div>
            		
            		
                <div class="form-group control-group required">
                    <label for="id_password" class="sr-only control-label">Password</label>
                    <div class="controls">
                        <input value="" minlength="6" class="phorm_field_password" id="password" name="client_password" type="password" style="width:250px" style="width:250px"/>
                        
                        <!-- <p class="help-block">Please choose a secure password (min. 6 characters)</p> -->
                    </div>
                </div>
 	
 				<div class="form-group control-group required">
                    <label for="id_confirmpassword" class="sr-only control-label"> Confirm Password</label>
                    <div class="controls">
                        <input value="" minlength="6" class="phorm_field_password" id="confirmpassword" name="client_confirmpassword" type="password" onblur="errorPassword()" style="width:250px"/>
                        
                     <div id="errorPasswordmsg" style="color:red"></div>
                    </div>
                </div>
				                       
		
                <div class="form-group control-group">
                    <label for="id_mobile_number" class="sr-only control-label"><b>Mobile Number</b></label>
                    <div class="controls">
                        <input value="" class="phorm_field_text" id="id_mobile_number" name="client_mobile_number" type="text" style="width:250px"/>
                    </div>
                </div>
            		
            		
                <div class="form-group control-group">
                    
                    <div class="controls">
                        <input value="" class="phorm_field_hidden" id="id_mixpanel_distinct_id" name="mixpanel_distinct_id" type="hidden" />
                        
                        
                    </div>
                </div>
                <div id="Msg" style="color:red"></div>
            
	</div>
	

</fieldset>
<div class="modal-footer">
	<div class="email-signup hidden1">
    	<button type="submit" class="btn btn-large btn-success">Update</button>
    	<button type="reset" class="btn btn-large btn-success">Reset</button>
    	<button type="button" class="btn btn-large btn-success">Cancel</button>

    </div>
</div>

</form>
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
                <script type="text/javascript" src="js/ie.min.js?v=1.1.300"></script>            <![endif]-->

        	<script type="text/javascript">
		$(document).ready(function(){
    		$("#id_first_name, #id_last_name, #id_company_name").on("change", function(){
    			var initial = $("#id_last_name").val().substring(0, 1)
    			var display_name = $("#id_first_name").val() + " " + initial;
    			display_name =  (display_name + '').replace(/^([a-z\u00E0-\u00FC])|\s+([a-z\u00E0-\u00FC])/g, function ($1) {
    					return $1.toUpperCase();
    				});

                                        if ($("#id_company_name").val()){
                                            display_name = $("#id_company_name").val();
                                        }

    			$("#profile-display-name").text(display_name);
    		});

    		    		$("#id_has_vat_number").on("change", function(){
    			if ($("#id_has_vat_number").prop("checked")){
    				$("#vat_number_container").slideDown();
    			} else {
    				$("#vat_number_container").slideUp();
    			}
    		});

    		$("#id_has_vat_number").trigger("change");

    		    	});
	</script>

	<script type="text/javascript" src="js/crafty_clicks.min.js?v=1.1.300"></script><script>
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
<noscript>
<div style="display:inline;">
<img height="1" width="1" style="border-style:none;" alt="" src="//googleads.g.doubleclick.net/pagead/viewthroughconversion/1065433872/?value=0&amp;label=pA_fCPzjxAUQkPaE_AM&amp;guid=ON&amp;script=0"/>
</div>
</noscript>


        
        
                    <script defer="defer" src="js/6188.js" type="text/javascript"></script>
        

            
    </body>
</html>