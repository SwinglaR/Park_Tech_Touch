<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html dir="ltr" lang="en-US">
<head>
  <!-- v8270 -->
  <title>Drivers &ndash; How can we help?</title>

  <meta name="csrf-param" content="authenticity_token" />
<meta name="csrf-token" content="OdEXb4paJCGau3xJNrprwOs6ylMw3Wf4FJJj0Kkt7R0RtM+wuNqhdUt6O7Y2plCsd+0k3SmcjsWTMx7Bg3BDiA==" />
  <link href="https://help.justpark.com/hc/en-us/categories/200424647-Drivers" rel="canonical" />

  <!-- Entypo pictograms by Daniel Bruce â€” www.entypo.com -->
  <link rel="stylesheet" media="all" href="css/application-ce7579b987283314e0e6fb35d61fa0cf.css" id="stylesheet" />
  <link rel="stylesheet" type="text/css" href="css/style-aeadf599bef791ac8b30a8426dfa03f1.css?brand_id=3274556&amp;locale=en-us"></link>
  <link rel="shortcut icon" href="//p6.zdassets.com/hc/settings_assets/13726/200004166/dvfdDcgrXANQZCdNIbGLZQ-favicon_03.png"></link>

  <!--[if lt IE 9]>
  <script>
    //Enable HTML5 elements for <IE9
    'abbr article aside audio bdi canvas data datalist details dialog \
    figcaption figure footer header hgroup main mark meter nav output \
    progress section summary template time video'.replace(/\w+/g,function(n){document.createElement(n)});
  </script>
<![endif]-->

  <script src="js/jquery-52fb0a6133e76d47941c21571bc3a244.js"></script>
  <script>
(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
 (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
 m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
 })(window,document,'script','js/analytics.js','ga');

ga('create', 'UA-11508076-1', 'auto');
ga('send', 'pageview');

</script>

  

  <!-- add code here that should appear in the document head -->

  <script type="text/javascript" src="js/script-aeadf599bef791ac8b30a8426dfa03f1.js?brand_id=3274556&amp;locale=en-us"></script>
</head>
<body class=" ">
 <header class="header">
  <div class="header-inner"> 
    

    <div class="logo"><a href="https://justpark.com">
      <img src="img/justpark-white.svg" alt="Logo">
        </a>
      </div>
  </div>
</header>
<div class="header-below">
  <form role="search" class="search" data-search="" action="/hc/en-us/search" accept-charset="UTF-8" method="get">
  <input name="utf8" type="hidden" value="&#x2713;" />\
  <input type="hidden" name="category" id="category" value="200424647" />

	<input type="submit" name="commit" value="Search" /></form>
</div>
  
  


  <main role="main">
    <nav class="sub-nav clearfix category-breadcrumbs">
  <ol class="breadcrumbs">
  
    <li title="How can we help?">
      
        <a href="/hc/en-us">How can we help?</a>
      
    </li>
  
    <li title="Drivers And Parking Providers">
      
        Drivers And Parking Providers
      
    </li>
  
</ol>

</nav>

<section class="clearfix">
  <h1>Drivers And Parking Providers</h1>
  <p class="category-description"></p>
  
    <div class="section-tree">
      <c:forEach items="${sessionScope.faqCategoryList}" var="i">
      	
        <section class="section">
          <h3>
             <a href="<%=request.getContextPath()%>/FaqCategoryController?flag=searchFaqCategory">${i.val_category} </a>
          </h3>

          	<ul class="article-list">
             	<c:forEach items="${sessionScope.faqList}" var="j">
             		<c:if test="${i.category_id eq j.faqCategoryVO.category_id }">
		             	<li>
		               		<a href="answer.jsp?question=${j.val_question}&answer=${j.val_answer}">${j.val_question }</a>
		              	</li>
		              </c:if>
              	</c:forEach>
            </ul>
	 </section>
	 </c:forEach>
      
  </div>

  
  
      <section class="article-new-question">
    	<!-- <h3>Haven't found what you're looking for?</h3> -->
      <!-- <button><a href="https://help.justpark.com/hc/en-us/requests/new" >Ask a question</a></button> -->
  	</section>
</section>

  </main>

  <footer class="footer">
  <div class="footer-inner">
    <!-- Footer content -->
  </div>
</footer>



  <!-- / -->
  

  <script type="text/javascript" src="js/locales-a527124935253325e42fdfbf1b9b5f41eb66f903.js"></script>
  <script src="js/host.js" data-brand-id="3274556" data-return-to="https://help.justpark.com/hc/en-us/categories/200424647-Drivers" data-theme="hc" data-locale="1" data-auth-origin="3274556,true,true"></script>
  

  <script type="text/javascript">
  /*

    Greetings sourcecode lurker!

    This is for internal Zendesk and legacy usage,
    we don't support or guarantee any of these values
    so please don't build stuff on top of them.

  */

  HelpCenter = {};
  HelpCenter.account = {"subdomain":"justpark","environment":"production","name":"JustPark Support"};
  HelpCenter.user = {"identifier":"da39a3ee5e6b4b0d3255bfef95601890afd80709","email":null,"name":null,"role":"anonymous","avatar_url":"https://assets.zendesk.com/hc/assets/user_avatar.png","organizations":[],"groups":[]};
  HelpCenter.internal = {"current_session":{"locale":"en-us","csrf_token":"Z2vSBnqZqN6fWfWfSxdWEo+B6Jf7mM6oJZC2X9jGpvJPDgrZSBktik6YsmBLC21+E1YGGeLZJ5WiMctO8psIZw==","shared_csrf_token":null},"settings":{"zopim_enabled":true,"spam_filter_enabled":true},"current_record_id":null,"current_record_url":null,"current_record_title":null,"search_results_count":null,"current_text_direction":"ltr","current_brand_url":"https://justpark.zendesk.com","current_path":"/hc/en-us/categories/200424647-Drivers","show_curlybars_ipm":false,"show_new_community_ipm_for_custom_theme":false,"show_new_community_ipm_for_stock_theme":false,"authentication_domain":"https://justpark.zendesk.com"};
</script>

  
  <script src="js/vendor_enduser-85c38f5567d92510295326d892eb513c.js"></script>
  <script src="js/hc_enduser-12d1982aab1ffac55426551e3427474b.js"></script>
  

  <script type="text/javascript">
    (function() {
  var Tracker = {};

  Tracker.track = function(eventName, data) {
    var url = "https://help.justpark.com/hc/tracking/events?locale=en-us";

    var payload = {
      "event": eventName,
      "data": data,
      "referrer": document.referrer
    };

    var xhr = new XMLHttpRequest();

    xhr.open("POST", url, true);
    xhr.setRequestHeader("Content-Type", "application/json; charset=UTF-8");
    xhr.send(JSON.stringify(payload));
  };

    Tracker.track("category_viewed", "BAh7BjoQY2F0ZWdvcnlfaWRpBMc88gs=--f22eef7ce1951ed752edcfe162f813d5b76710a8");
})();

  </script>
</body>
</html>