<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="${pageContext.request.contextPath }/ADMIN/">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>PTT Edit Packages</title>
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
								Manage Package<br>	
							</h1>
						</div>
					</div>
					<ul class="breadcrumb breadcrumb-top">
						<li>Park Tech Touch</li>
						<li>Manage Packages</li>
						<li><a href="Add_Packages.jsp">Add Package</a></li>
					</ul>
					<div class="row">
						<div class="col-md-12">
							<div class="block">
								<div class="block-title">
									<h2>
										<strong>Edit Package</strong>
									</h2>
								</div>
								<form action="${pageContext.request.contextPath}/PackageController"
									method="post" class="form-horizontal form-bordered">
								<c:forEach items="${sessionScope.packageList}" var="i">	
								<input type="hidden" name="flag" value="updatePackage" />
								<input type="hidden" name="package_id" value="${i.package_id}" />
									<fieldset>	
									<div class="form-group">
											<label class="col-md-4 control-label" for="val_plotname2"> Plot Name
												<span class="text-danger">*</span>
											</label>
											<div class="col-md-6">
											<select  name="val_plotname2" id="val_plotname2" class="form-control">
											<option>Choose One</option>
											<c:forEach items="${sessionScope.lotList}" var="x">
											<c:if test="${x.parkinglots_id eq i.parkinglotsVO.parkinglots_id}">
													<option value="${x.parkinglots_id}" selected="selected">${x.val_plotname2}</option>
											</c:if>
											<c:if test="${x.parkinglots_id ne i.parkinglotsVO.parkinglots_id}">
													<option value="${x.parkinglots_id}">-----${x.val_plotname2}</option>
											
											</c:if>
													</c:forEach>
												
											</select>
												
												</div>
												<input type="hidden" name="parkinglots_id" value="${i.parkinglotsVO.parkinglots_id}"/>
										</div>	
																		
										<div class="form-group">
											<label class="col-md-4 control-label"
												for="val_package_name">Package Name
												<span class="text-danger">*</span>
											</label>
											<div class="col-md-6">
												<div class="input-group">
													<input type="text" id="val_package_name"
														name="val_package_name" class="form-control"
														placeholder="Enter name for the Package" value="${i.val_package_name}"> <span
														class="input-group-addon"><i class="fa fa-list-alt"></i></span>
												</div>
											</div>
										</div>
										<div class="form-group">
											<label class="col-md-4 control-label" for="val_package_description">Package
												Description <span class="text-danger">*</span>
											</label>
											<div class="col-md-6">
												<textarea id="val_package_description" name="val_package_description" rows="6"
													class="form-control" placeholder="Enter Description for the Package">${i.val_package_description}</textarea>
											</div>
										</div>
										<div class="form-group">
											<label class="col-md-4 control-label"
												for="val_package_price">Package Price
												<span class="text-danger">*</span>
											</label>
											<div class="col-md-6">
												<div class="input-group">
													<input type="text" id="val_package_price"
														name="val_package_price" class="form-control"
														placeholder="Enter price for the Package" value="${i.val_package_price}"> <span
														class="input-group-addon"><i class="fa fa-money"></i></span>
												</div>
											</div>
										</div>
										<div class="form-group">
											<label class="col-md-4 control-label"
												for="val_package_duration">Package Duration
												<span class="text-danger">*</span>
											</label>
											<div class="col-md-6">
												<div class="input-group">
													<input type="text" id="val_package_duration"
														name="val_package_duration" class="form-control"
														placeholder="Enter duration for the Package" value="${i.val_package_duration}"> <span
														class="input-group-addon"><i class="fa fa-clock-o"></i></span>
												</div>
											</div>
										</div>
										<div class="form-group">
											<label class="col-md-4 control-label"
												for="val_package_hour">No of hours
												<span class="text-danger">*</span>
											</label>
											<div class="col-md-6">
												<div class="input-group">
													<input type="text" id="val_package_hour"
														name="val_package_hour" class="form-control"
														placeholder="Enter the number of hours" value="${i.val_package_hour}"> <span
														class="input-group-addon"><i class="fa fa-clock-o"></i></span>
												</div>
											</div>
										</div>
										<div class="form-group">
											<label class="col-md-4 control-label"
												for="val_package_charge">Charges per hour
												<span class="text-danger">*</span>
											</label>
											<div class="col-md-6">
												<div class="input-group">
													<input type="text" id="val_package_charge"
														name="val_package_charge" class="form-control"
														placeholder="Enter the charges per hour" value="${i.val_package_charge}"> <span
														class="input-group-addon"><i class="fa fa-money"></i></span>
												</div>
											</div>
										</div>
									</fieldset>
									<div class="form-group form-actions">
										<div class="col-md-8 col-md-offset-4">
											<button type="submit" class="btn btn-sm btn-primary">
												<i class="fa fa-arrow-right"></i> Update
											
											</button>
										<button type="reset" class="btn btn-sm btn-warning">
												<i class="fa fa-repeat"></i> Reset
											</button>
										</div>
									</div>
									</c:forEach>
								</form>
														
										</div>
									</div>
								</div>
							</div>
						</div>						
					</div>
				</div>
				<footer class="clearfix">
				
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
	</div>
	<script src="js/jquery-1.11.3.min.js"></script>
	<script src="js/bootstrap.min-3.3.js"></script>
	<script src="js/plugins-3.4.js"></script>
	<script src="js/app-3.3.js"></script>
	<script src="js/formsValidation_3.2.js"></script>
	<script>
		$(function() {
			FormsValidation.init();
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