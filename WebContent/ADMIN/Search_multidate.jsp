<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="${pageContext.request.contextPath }/ADMIN/">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>PTT Search Continuous Booking</title>
<meta name="description"
	content="ProUI is a Responsive Bootstrap Admin Template created by pixelcave and published on Themeforest. This is the demo of ProUI! You need to purchase a license for legal use!">
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
		<div class="preloader themed-background">
			<h1 class="push-top-bottom text-light text-center">
				<strong>Pro</strong>UI
			</h1>
			<div class="inner">
				<h3 class="text-light visible-lt-ie9 visible-lt-ie10">
					<strong>Loading..</strong>
				</h3>
				<div class="preloader-spinner hidden-lt-ie9 hidden-lt-ie10"></div>
			</div>
		</div>
		<div id="page-container"
			class="sidebar-partial sidebar-visible-lg sidebar-no-animations">
			<jsp:include page="menu.jsp"></jsp:include>
			<div id="main-container">
				<jsp:include page="header.jsp"></jsp:include>
				<div id="page-content">
					<div class="content-header">
						<div class="header-section">
							<h1>
								<i class="fa fa-table"></i>MultiDate Booking<br>
							</h1>
						</div>
					</div>
					<ul class="breadcrumb breadcrumb-top">
						<li>Park Tech Touch</li>
						<li>Manage Booking </li>
						<li><a href="SearchContinuous.jsp">MultiDate Booking</a></li>
					</ul>
					<div class="block full">
						<div class="block-title">
							<h2>
								<strong>MultiDate</strong> Booking
							</h2>
						</div>
						<div class="table-responsive">
							<table id="example-datatable"
								class="table table-vcenter table-condensed table-bordered">
								
								<strong style="color:red">${sessionScope.errorMsg }</strong> 
								
								<thead>
									<tr>
										<th class="text-center">Sr. No</th>
										<th class="text-center">User Name</th>
										<th class="text-center">Parking Lots Name</th>
										<th class="text-center">Start Date</th>
										<th class="text-center">Start Time</th>
										<th class="text-center">End Time</th>
										<th class="text-center">No Of Four Wheeler</th>
										<th class="text-center">No Of Two Wheeler</th>
										<th class="text-center">Actions</th>
									</tr>
								</thead>
								<tbody>
								<c:if test="${sessionScope.multidateListProvider ne null}">
								<c:forEach items="${sessionScope.multidateListProvider}" var="i">
								
									<tr>
										<td class="text-center">${i.bookingMultiDate_id}</td>
										<td class="text-center">${i.bookParkingSlotsVO.loginVO.email}</td>
										<td class="text-center">${i.bookParkingSlotsVO.parkinglotsVO.val_plotname2}</td>
										<td class="text-center">${i.start_date}</td>
										<td class="text-center">${i.start_time}</td>
										<td class="text-center">${i.end_time}</td>
										<td class="text-center">${i.bookParkingSlotsVO.fourWheeler}</td>
										<td class="text-center">${i.bookParkingSlotsVO.twoWheeler}</td>
										<td class="text-center">
										<div class="btn-group">
										<a href="<%=request.getContextPath() %>/BookParkingSlotsController?flag=deleteMultiBooking&id=${i.bookingMultiDate_id}" data-toggle="tooltip" title="Delete"class="btn btn-xs btn-danger"><i class="fa fa-times"></i></a>
										</div>
									</tr>
									</c:forEach>
									</c:if>
									<c:if test="${sessionScope.multidateListProvider eq null}">
									<c:forEach items="${sessionScope.multidateList}" var="j">
								
									<tr>
										<td class="text-center">${j.bookingMultiDate_id}</td>
										<td class="text-center">${j.bookParkingSlotsVO.loginVO.email}</td>
										<td class="text-center">${j.bookParkingSlotsVO.parkinglotsVO.val_plotname2}</td>
										<td class="text-center">${j.start_date}</td>
										<td class="text-center">${j.start_time}</td>
										<td class="text-center">${j.end_time}</td>
										<td class="text-center">${j.bookParkingSlotsVO.fourWheeler}</td>
										<td class="text-center">${j.bookParkingSlotsVO.twoWheeler}</td>
										<td class="text-center">
										<div class="btn-group">
										<a href="<%=request.getContextPath() %>/BookParkingSlotsController?flag=deleteMultiBooking&id=${j.bookingMultiDate_id}&parkingProviderId=${sessionScope.ParkingproviderID}" data-toggle="tooltip" title="Delete"class="btn btn-xs btn-danger"><i class="fa fa-times"></i></a>
										</div>
							
									</tr>
									</c:forEach>
									</c:if>
								
								</tbody>
								<c:remove var="errorMsg" scope="session"/>
							</table>
						</div>
					</div>
				</div>
				
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
	</div>
	<script src="js/jquery-1.11.3.min.js"></script>
	<script src="js/bootstrap.min-3.3.js"></script>
	<script src="js/plugins-3.4.js"></script>
	<script src="js/app-3.3.js"></script>
	<script src="js/tablesDatatables.js"></script>
	<script>
		$(function() {
			TablesDatatables.init();
		});
	</script>
	<script>
		(function(i, s, o, g, r, a, m) {
			i['GoogleAnalyticsObject'] = r;
			i[r] = i[r] || function() {
				(i[r].q = i[r].q || []).push(arguments)
			}, i[r].l = 1 * new Date();
			a = s.createElement(o), m = s.getElementsByTagName(o)[0];
			a.async = 1;
			a.src = g;
			m.parentNode.insertBefore(a, m)
		})(window, document, 'script',
				'//www.google-analytics.com/analytics.js', 'ga');
		ga('create', 'UA-16158021-6', 'auto');
		ga('send', 'pageview');
	</script>
</body>
</html>