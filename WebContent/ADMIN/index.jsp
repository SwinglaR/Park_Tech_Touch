<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="${pageContext.request.contextPath}/ADMIN/">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>PARK TECH TOUCH</title>
<meta name="author" content="pixelcave">
<meta name="robots" content="noindex, nofollow">
<meta name="viewport"
	content="width=device-width,initial-scale=1,maximum-scale=1.0">
	
<link rel="shortcut icon" href="img/favicon.png">
<link rel="apple-touch-icon" href="img/icon57.png" sizes="57x57">
<link rel="apple-touch-icon" href="img/icon72.png" sizes="72x72">
<link rel="apple-touch-icon" href="img/icon76.png" sizes="76x76">
<link rel="apple-touch-icon" href="img/icon114.png" sizes="114x114">
<link rel="apple-touch-icon" href="img/icon120.png" sizes="120x120">
<link rel="apple-touch-icon" href="img/icon144.png" sizes="144x144">
<link rel="apple-touch-icon" href="img/icon152.png" sizes="152x152">
<link rel="apple-touch-icon" href="img/icon180.png" sizes="152x180">
<link rel="stylesheet" href="css/bootstrap.min-3.3.css">
<link rel="stylesheet" href="css/plugins-3.4.css">
<link rel="stylesheet" href="css/main-3.3.css">
<link rel="stylesheet" href="css/themes-3.1.css">
<script src="js/modernizr-respond.min.js"></script>

</head>
<body>
	<div id="page-wrapper">
		<div id="page-container"
			class="sidebar-partial sidebar-visible-lg sidebar-no-animations">
			<jsp:include page="menu.jsp"></jsp:include>
			<div id="main-container">
				<jsp:include page="header.jsp"></jsp:include>
				<div id="page-content">
					<div class="content-header content-header-media">
						<div class="header-section">
						  	<div class="row">
								<div class="col-md-4 col-lg-6 hidden-xs hidden-sm">
									<h1>
										<c:if test="${sessionScope.user_type eq 'parkingprovider' }">	
										Welcome, <strong>${sessionScope.parkingprovider_name} ${sessionScope.parkingprovider_name1}</strong><br>
										 </c:if>
										 <c:if test="${sessionScope.user_type eq 'admin' }">	
										Welcome, <strong>Admin</strong><br>
										 </c:if>		
									</h1>
								</div>
								<div class="col-md-8 col-lg-6">
									<div class="row text-center">
									</div>
								</div>
							</div> 
						</div>
						<img src="img/dashboard_header.jpg" alt="header image"
							class="animation-pulseSlow">
					</div>
				<c:if test="${sessionScope.user_type eq 'parkingprovider' }">	
				<div class="row">
					<div class="col-md-12">
					<div class="widget" align="center">
								
								<div class="widget-extra themed-background-dark">
									<h3 class="widget-content-light">
										Parking Lots
									</h3>
								</div>
								<div>
								<table id="example-datatable"
								class="table table-vcenter table-condensed table-bordered">
								<thead>
								
									<tr>
										<th class="text-center">Parking Lot Name</th>
										<th class="text-center">Two Wheeler Capacity</th>
										<th class="text-center">Four Wheeler Capacity</th>
										<th class="text-center">Actions</th>
									</tr>
								</thead>
								<tbody>
								<c:forEach items="${sessionScope.ParkingSlotsOfProvider}" var="i">
									<tr>
										<c:forEach items="${sessionScope.lotList}" var="x">
												 	<c:choose>
													<c:when test="${x.parkinglots_id eq i.parkinglots_id}">
														<td class="text-center">${x.val_plotname2}</td>
													</c:when>
													</c:choose>
													
										</c:forEach>  
									
										<td class="text-center">${i.val_2capacity}</td>
										<td class="text-center">${i.val_4capacity}</td>
										<td class="text-center"><a href="${pageContext.request.contextPath}/InoutController?flag=inOut&parkinglots_id=${i.parkinglots_id}&val_plotname2=${i.val_plotname2}">View</a></td>
									</tr>
								</c:forEach>		
								</tbody>
							</table>
								
															
					</div>
				</div>
				</div>
				</div>
				</c:if>
			<c:if test="${sessionScope.user_type eq 'admin'}">
			<div class="row">
						<div class="col-sm-6 col-lg-3">
							<a href="${pageContext.request.contextPath}/ClientController?flag=searchClient&user_type=admin" class="widget widget-hover-effect1">
								<div class="widget-simple">
								  	<div class="widget-icon pull-left themed-background-spring animation-fadeIn">
										<i class="gi gi-group"></i>
									</div>
									<h3 class="widget-content text-right animation-pullDown">
										 <strong>${sessionScope.totalClient}</strong><br><small>Clients</small>
									</h3>
								</div>
							</a>
						</div>
						<div class="col-sm-6 col-lg-3">
							<a href="<%=request.getContextPath()%>/ParkingProviderController?flag=searchParkingProvider&user_type=admin" class="widget widget-hover-effect1">
								<div class="widget-simple">
								  	<div class="widget-icon pull-left themed-background-spring animation-fadeIn">
										<i class="fa fa-user"></i>
									</div>
									<h3 class="widget-content text-right animation-pullDown">
										 <strong>${sessionScope.totalParkingProvider}</strong><br><small>Parking Provider</small>
									</h3>
								</div>
							</a>
						</div>
						<div class="col-sm-6 col-lg-3">
							<a href="<%=request.getContextPath() %>/BookParkingSlotsController?flag=viewContinuous&user_type=admin" class="widget widget-hover-effect1">
								<div class="widget-simple">
								  	<div class="widget-icon pull-left themed-background-spring animation-fadeIn">
										<i class="fa fa-check-square-o"></i>
									</div>
									<h3 class="widget-content text-right animation-pullDown">
										 <strong>${sessionScope.totalContinous}</strong><br><small>Continous Period Booking</small>
									</h3>
								</div>
							</a>
						</div>
						<div class="col-sm-6 col-lg-3">
							<a href="<%=request.getContextPath() %>/BookParkingSlotsController?flag=viewMultiDate&user_type=admin" class="widget widget-hover-effect1">
								<div class="widget-simple">
								  	<div class="widget-icon pull-left themed-background-spring animation-fadeIn">
										<i class="fa fa-check-square-o"></i>
									</div>
									<h3 class="widget-content text-right animation-pullDown">
										 <strong>${sessionScope.totalMulti}</strong><br><small>Multi Date Booking</small>
									</h3>
								</div>
							</a>
						</div>
			</div>
	
			<div class="row">
			<iframe src="chart.jsp" style="height:400px;width:1100px "></iframe>
			</div>
			</c:if>
			<!--  		<div class="row">
						<div class="col-sm-6 col-lg-3">
							<a href="page_comp_charts.php"
								class="widget widget-hover-effect1">
								<div class="widget-simple">
								  	<div
										class="widget-icon pull-left themed-background-spring animation-fadeIn">
										<i class="gi gi-usd"></i>
									</div>
									<h3 class="widget-content text-right animation-pullDown">
										+ <strong>250%</strong><br> <small>Sales Today</small>
									</h3>
								</div>
							</a>
						</div>
						<div class="col-sm-6 col-lg-3">
							<a href="page_ready_inbox.php"
								class="widget widget-hover-effect1">
								<div class="widget-simple">
									<div
										class="widget-icon pull-left themed-background-fire animation-fadeIn">
										<i class="gi gi-envelope"></i>
									</div>
									<h3 class="widget-content text-right animation-pullDown">
										5 <strong>Messages</strong> <small>Support Center</small>
									</h3>
								</div>
							</a>
						</div>
						<div class="col-sm-6 col-lg-3">
							<a href="page_comp_gallery.php"
								class="widget widget-hover-effect1">
								<div class="widget-simple">
									<div
										class="widget-icon pull-left themed-background-amethyst animation-fadeIn">
										<i class="gi gi-picture"></i>
									</div>
									<h3 class="widget-content text-right animation-pullDown">
										+30 <strong>Photos</strong> <small>Gallery</small>
									</h3>
								</div>
							</a>
						</div>
						<div class="col-sm-6">
							<a href="page_comp_charts.php"
								class="widget widget-hover-effect1">
								<div class="widget-simple">
									<div
										class="widget-icon pull-left themed-background animation-fadeIn">
										<i class="gi gi-wallet"></i>
									</div>
									<div class="pull-right">
										<span id="mini-chart-sales"></span>
									</div>
									<h3 class="widget-content animation-pullDown visible-lg">
										Latest <strong>Sales</strong> <small>Per hour</small>
									</h3>
								</div>
							</a>
						</div>
						<div class="col-sm-6">
							<a href="page_widgets_stats.php"
								class="widget widget-hover-effect1">
								<div class="widget-simple">
									<div
										class="widget-icon pull-left themed-background animation-fadeIn">
										<i class="gi gi-crown"></i>
									</div>
									<div class="pull-right">
										<span id="mini-chart-brand"></span>
									</div>
									<h3 class="widget-content animation-pullDown visible-lg">
										Our <strong>Brand</strong> <small>Popularity over time</small>
									</h3>
								</div>
							</a>
						</div>
					</div>
					<div class="row">
						<div class="col-md-6">
							<div class="widget">
								<div class="widget-extra themed-background-dark">
									<div class="widget-options">
										<div class="btn-group btn-group-xs">
											<a href="javascript:void(0)" class="btn btn-default"
												data-toggle="tooltip" title="Edit Widget"><i
												class="fa fa-pencil"></i></a> <a href="javascript:void(0)"
												class="btn btn-default" data-toggle="tooltip"
												title="Quick Settings"><i class="fa fa-cog"></i></a>
										</div>
									</div>
									<h3 class="widget-content-light">
										Latest <strong>News</strong> <small><a
											href="page_ready_timeline.php"><strong>View all</strong></a></small>
									</h3>
								</div>
								<div class="widget-extra">
									<div class="timeline">
										<ul class="timeline-list">
											<li class="active">
												<div class="timeline-icon">
													<i class="gi gi-airplane"></i>
												</div>
												<div class="timeline-time">
													<small>just now</small>
												</div>
												<div class="timeline-content">
													<p class="push-bit">
														<a href="page_ready_user_profile.php"><strong>Jordan
																Carter</strong></a>
													</p>
													<p class="push-bit">The trip was an amazing and a life
														changing experience!!</p>
													<p class="push-bit">
														<a href="page_ready_article.php"
															class="btn btn-xs btn-primary"><i class="fa fa-file"></i>
															Read the article</a>
													</p>
													<div class="row push">
														<div class="col-sm-6 col-md-4">
															<a href="img/photo1.jpg" data-toggle="lightbox-image">
																<img src="img/photo1.jpg" alt="image">
															</a>
														</div>
														<div class="col-sm-6 col-md-4">
															<a href="img/photo22.jpg" data-toggle="lightbox-image">
																<img src="img/photo22.jpg" alt="image">
															</a>
														</div>
													</div>
												</div>
											</li>
											<li class="active">
												<div
													class="timeline-icon themed-background-fire themed-border-fire">
													<i class="fa fa-file-text"></i>
												</div>
												<div class="timeline-time">
													<small>5 min ago</small>
												</div>
												<div class="timeline-content">
													<p class="push-bit">
														<a href="page_ready_user_profile.php"><strong>Administrator</strong></a>
													</p>
													<strong>Free courses</strong> for all our customers at A1
													Conference Room - 9:00 <strong>am</strong> tomorrow!
												</div>
											</li>
											<li class="active">
												<div class="timeline-icon">
													<i class="gi gi-drink"></i>
												</div>
												<div class="timeline-time">
													<small>3 hours ago</small>
												</div>
												<div class="timeline-content">
													<p class="push-bit">
														<a href="page_ready_user_profile.php"><strong>Ella
																Winter</strong></a>
													</p>
													<p class="push-bit">
														<strong>Happy Hour!</strong> Free drinks at <a
															href="javascript:void(0)">Cafe-Bar</a> all day long!
													</p>
													<div id="gmap-timeline" class="gmap"></div>
												</div>
											</li>
											<li class="active">
												<div class="timeline-icon">
													<i class="fa fa-cutlery"></i>
												</div>
												<div class="timeline-time">
													<small>yesterday</small>
												</div>
												<div class="timeline-content">
													<p class="push-bit">
														<a href="page_ready_user_profile.php"><strong>Patricia
																Woods</strong></a>
													</p>
													<p class="push-bit">Today I had the lunch of my life!
														It was delicious!</p>
													<div class="row push">
														<div class="col-sm-6 col-md-4">
															<a href="img/photo23.jpg" data-toggle="lightbox-image">
																<img src="img/photo23.jpg" alt="image">
															</a>
														</div>
													</div>
												</div>
											</li>
											<li class="active">
												<div
													class="timeline-icon themed-background-fire themed-border-fire">
													<i class="fa fa-smile-o"></i>
												</div>
												<div class="timeline-time">
													<small>2 days ago</small>
												</div>
												<div class="timeline-content">
													<p class="push-bit">
														<a href="page_ready_user_profile.php"><strong>Administrator</strong></a>
													</p>
													To thank you all for your support we would like to let you
													know that you will receive free feature updates for life!
													You are awesome!
												</div>
											</li>
											<li class="active">
												<div class="timeline-icon">
													<i class="fa fa-pencil"></i>
												</div>
												<div class="timeline-time">
													<small>1 week ago</small>
												</div>
												<div class="timeline-content">
													<p class="push-bit">
														<a href="page_ready_user_profile.php"><strong>Nicole
																Ward</strong></a>
													</p>
													<p class="push-bit">Consectetur adipiscing elit.
														Maecenas ultrices, justo vel imperdiet gravida, urna
														ligula hendrerit nibh, ac cursus nibh sapien in purus.
														Mauris tincidunt tincidunt turpis in porta. Integer
														fermentum tincidunt auctor. Vestibulum ullamcorper, odio
														sed rhoncus imperdiet, enim elit sollicitudin orci, eget
														dictum leo mi nec lectus. Nam commodo turpis id lectus
														scelerisque vulputate.</p>
													Integer sed dolor erat. Fusce erat ipsum, varius vel
													euismod sed, tristique et lectus? Etiam egestas fringilla
													enim, id convallis lectus laoreet at. Fusce purus nisi,
													gravida sed consectetur ut, interdum quis nisi. Quisque
													egestas nisl id lectus facilisis scelerisque? Proin rhoncus
													dui at ligula vestibulum ut facilisis ante sodales!
													Suspendisse potenti. Aliquam tincidunt sollicitudin sem nec
													ultrices. Sed at mi velit. Ut egestas tempor est, in cursus
													enim venenatis eget! Nulla quis ligula ipsum.
												</div>
											</li>
											<li class="text-center"><a href="javascript:void(0)"
												class="btn btn-xs btn-default">View more..</a></li>
										</ul>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-6">
							<div class="widget">
								<div class="widget-extra themed-background-dark">
									<div class="widget-options">
										<div class="btn-group btn-group-xs">
											<a href="javascript:void(0)" class="btn btn-default"
												data-toggle="tooltip" title="Edit Widget"><i
												class="fa fa-pencil"></i></a> <a href="javascript:void(0)"
												class="btn btn-default" data-toggle="tooltip"
												title="Quick Settings"><i class="fa fa-cog"></i></a>
										</div>
									</div>
									<h3 class="widget-content-light">
										Your <strong>VIP Plan</strong> <small><a
											href="page_ready_pricing_tables.php"><strong>Upgrade</strong></a></small>
									</h3>
								</div>
								<div class="widget-extra-full">
									<div class="row text-center">
										<div class="col-xs-6 col-lg-3">
											<h3>
												<strong>35</strong> <small>/50</small><br> <small><i
													class="fa fa-folder-open-o"></i> Projects</small>
											</h3>
										</div>
										<div class="col-xs-6 col-lg-3">
											<h3>
												<strong>25</strong> <small>/100GB</small><br> <small><i
													class="fa fa-hdd-o"></i> Storage</small>
											</h3>
										</div>
										<div class="col-xs-6 col-lg-3">
											<h3>
												<strong>65</strong> <small>/1k</small><br> <small><i
													class="fa fa-building-o"></i> Clients</small>
											</h3>
										</div>
										<div class="col-xs-6 col-lg-3">
											<h3>
												<strong>10</strong> <small>k</small><br> <small><i
													class="fa fa-envelope-o"></i> Emails</small>
											</h3>
										</div>
									</div>
								</div>
							</div>
							<div class="widget">
								<div class="widget-advanced widget-advanced-alt">
									<div class="widget-header text-center themed-background">
										<h3
											class="widget-content-light text-left pull-left animation-pullDown">
											<strong>Sales</strong> &amp; <strong>Earnings</strong><br>
											<small>Last Year</small>
										</h3>
										<div id="dash-widget-chart" class="chart"></div>
									</div>
									<div class="widget-main">
										<div class="row text-center">
											<div class="col-xs-4">
												<h3 class="animation-hatch">
													<strong>7.500</strong><br> <small>Clients</small>
												</h3>
											</div>
											<div class="col-xs-4">
												<h3 class="animation-hatch">
													<strong>10.970</strong><br> <small>Sales</small>
												</h3>
											</div>
											<div class="col-xs-4">
												<h3 class="animation-hatch">
													$<strong>31.230</strong><br> <small>Earnings</small>
												</h3>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="widget">
								<div class="widget-advanced widget-advanced-alt">
									<div class="widget-header text-left">
										<img src="img/widget5_header.jpg" alt="background"
											class="widget-background animation-pulseSlow">
										<h3
											class="widget-content widget-content-image widget-content-light clearfix">
											<span class="widget-icon pull-right"> <i
												class="fa fa-sun-o animation-pulse"></i>
											</span> Weather <strong>Station</strong><br> <small><i
												class="fa fa-location-arrow"></i> The Mountain</small>
										</h3>
									</div>
									<div class="widget-main">
										<div class="row text-center">
											<div class="col-xs-6 col-lg-3">
												<h3>
													<strong>10&deg;</strong> <small>C</small><br> <small>Sunny</small>
												</h3>
											</div>
											<div class="col-xs-6 col-lg-3">
												<h3>
													<strong>80</strong> <small>%</small><br> <small>Humidity</small>
												</h3>
											</div>
											<div class="col-xs-6 col-lg-3">
												<h3>
													<strong>60</strong> <small>km/h</small><br> <small>Wind</small>
												</h3>
											</div>
											<div class="col-xs-6 col-lg-3">
												<h3>
													<strong>5</strong> <small>km</small><br> <small>Visibility</small>
												</h3>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="widget">
								<div class="widget-advanced">
									<div class="widget-header text-center themed-background-dark">
										<h3 class="widget-content-light clearfix">
											Awesome <strong>Gallery</strong><br> <small>4
												Photos</small>
										</h3>
									</div>
									<div class="widget-main">
										<a href="page_comp_gallery.php" class="widget-image-container">
											<span class="widget-icon themed-background"><i
												class="gi gi-picture"></i></span>
										</a>
										<div class="gallery gallery-widget"
											data-toggle="lightbox-gallery">
											<div class="row">
												<div class="col-xs-6 col-sm-3">
													<a href="img/photo15.jpg" class="gallery-link"
														title="Image Info"> <img src="img/photo15.jpg"
														alt="image">
													</a>
												</div>
												<div class="col-xs-6 col-sm-3">
													<a href="img/photo5.jpg" class="gallery-link"
														title="Image Info"> <img src="img/photo5.jpg"
														alt="image">
													</a>
												</div>
												<div class="col-xs-6 col-sm-3">
													<a href="img/photo6.jpg" class="gallery-link"
														title="Image Info"> <img src="img/photo6.jpg"
														alt="image">
													</a>
												</div>
												<div class="col-xs-6 col-sm-3">
													<a href="img/placeholders/photos/photo13.jpg"
														class="gallery-link" title="Image Info"> <img
														src="img/photo13.jpg" alt="image">
													</a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<footer class="clearfix">
				<div class="pull-right">
					Crafted with <i class="fa fa-heart text-danger"></i> by <a
						href="http://goo.gl/vNS3I" target="_blank">pixelcave</a>
				</div>
				<div class="pull-left">
					<span id="year-copy"></span> &copy; <a href="http://goo.gl/TDOSuC"
						target="_blank">ProUI 3.4</a>
				</div>
				</footer>
			</div>
		</div>
	</div>
	<a href="#" id="to-top"><i class="fa fa-angle-double-up"></i></a>
	<div id="modal-user-settings" class="modal fade" tabindex="-1"
		role="dialog" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header text-center">
					<h2 class="modal-title">
						<i class="fa fa-pencil"></i> Settings
					</h2>
				</div>
				<div class="modal-body">
					<form action="index.php" method="post"
						enctype="multipart/form-data"
						class="form-horizontal form-bordered" onsubmit="return false;">
						<fieldset>
							<legend>Vital Info</legend>
							<div class="form-group">
								<label class="col-md-4 control-label">Username</label>
								<div class="col-md-8">
									<p class="form-control-static">Admin</p>
								</div>
							</div>
							<div class="form-group">
								<label class="col-md-4 control-label" for="user-settings-email">Email</label>
								<div class="col-md-8">
									<input type="email" id="user-settings-email"
										name="user-settings-email" class="form-control"
										value="admin@example.com">
								</div>
							</div>
							<div class="form-group">
								<label class="col-md-4 control-label"
									for="user-settings-notifications">Email Notifications</label>
								<div class="col-md-8">
									<label class="switch switch-primary"> <input
										type="checkbox" id="user-settings-notifications"
										name="user-settings-notifications" value="1" checked>
										<span></span>
									</label>
								</div>
							</div>
						</fieldset>
						<fieldset>
							<legend>Password Update</legend>
							<div class="form-group">
								<label class="col-md-4 control-label"
									for="user-settings-password">New Password</label>
								<div class="col-md-8">
									<input type="password" id="user-settings-password"
										name="user-settings-password" class="form-control"
										placeholder="Please choose a complex one..">
								</div>
							</div>
							<div class="form-group">
								<label class="col-md-4 control-label"
									for="user-settings-repassword">Confirm New Password</label>
								<div class="col-md-8">
									<input type="password" id="user-settings-repassword"
										name="user-settings-repassword" class="form-control"
										placeholder="..and confirm it!">
								</div>
							</div>
						</fieldset>
						<div class="form-group form-actions">
							<div class="col-xs-12 text-right">
								<button type="button" class="btn btn-sm btn-default"
									data-dismiss="modal">Close</button>
								<button type="submit" class="btn btn-sm btn-primary">Save
									Changes</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div> -->
	<!--[if IE 8]><script src="js/excanvas.min.js"></script><![endif]-->
	<script src="js/jquery-1.11.3.min.js"></script>
	<script src="js/bootstrap.min-3.3.js"></script>
	<script src="js/plugins-3.4.js"></script>
	<script src="js/app-3.3.js"></script>
	<script src="js/gmaps.min.js"></script>
	<script src="js/index.js"></script>
	<script>$(function(){ Index.init(); });</script>
	
</body>
</html>