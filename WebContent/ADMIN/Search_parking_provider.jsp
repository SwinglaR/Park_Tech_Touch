<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="${pageContext.request.contextPath}/ADMIN/">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ProUI - Responsive Bootstrap Admin Template | DEMO</title>
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
			<div id="sidebar-alt">
				<div id="sidebar-alt-scroll">
					<div class="sidebar-content">
						<a href="page_ready_chat.php" class="sidebar-title"> <i
							class="gi gi-comments pull-right"></i> <strong>Chat</strong>UI
						</a>
						<ul class="chat-users clearfix">
							<li><a href="javascript:void(0)" class="chat-user-online">
									<span></span> <img src="img/avatar12.jpg" alt="avatar"
									class="img-circle">
							</a></li>
							<li><a href="javascript:void(0)" class="chat-user-online">
									<span></span> <img src="img/avatar15.jpg" alt="avatar"
									class="img-circle">
							</a></li>
							<li><a href="javascript:void(0)" class="chat-user-online">
									<span></span> <img src="img/avatar10.jpg" alt="avatar"
									class="img-circle">
							</a></li>
							<li><a href="javascript:void(0)" class="chat-user-online">
									<span></span> <img src="img/avatar4.jpg" alt="avatar"
									class="img-circle">
							</a></li>
							<li><a href="javascript:void(0)" class="chat-user-away">
									<span></span> <img src="img/avatar7.jpg" alt="avatar"
									class="img-circle">
							</a></li>
							<li><a href="javascript:void(0)" class="chat-user-away">
									<span></span> <img src="img/avatar9.jpg" alt="avatar"
									class="img-circle">
							</a></li>
							<li><a href="javascript:void(0)" class="chat-user-busy">
									<span></span> <img src="img/avatar16.jpg" alt="avatar"
									class="img-circle">
							</a></li>
							<li><a href="javascript:void(0)"> <span></span> <img
									src="img/avatar1.jpg" alt="avatar" class="img-circle">
							</a></li>
							<li><a href="javascript:void(0)"> <span></span> <img
									src="img/avatar4.jpg" alt="avatar" class="img-circle">
							</a></li>
							<li><a href="javascript:void(0)"> <span></span> <img
									src="img/avatar3.jpg" alt="avatar" class="img-circle">
							</a></li>
							<li><a href="javascript:void(0)"> <span></span> <img
									src="img/avatar13.jpg" alt="avatar" class="img-circle">
							</a></li>
							<li><a href="javascript:void(0)"> <span></span> <img
									src="img/avatar5.jpg" alt="avatar" class="img-circle">
							</a></li>
						</ul>
						<div class="chat-talk display-none">
							<div class="chat-talk-info sidebar-section">
								<button id="chat-talk-close-btn"
									class="btn btn-xs btn-default pull-right">
									<i class="fa fa-times"></i>
								</button>
								<img src="img/avatar5.jpg" alt="avatar"
									class="img-circle pull-left"> <strong>John</strong> Doe
							</div>
							<ul class="chat-talk-messages">
								<li class="text-center"><small>Yesterday, 18:35</small></li>
								<li class="chat-talk-msg animation-slideRight">Hey admin?</li>
								<li class="chat-talk-msg animation-slideRight">How are you?</li>
								<li class="text-center"><small>Today, 7:10</small></li>
								<li
									class="chat-talk-msg chat-talk-msg-highlight themed-border animation-slideLeft">I'm
									fine, thanks!</li>
							</ul>
							<form action="index.php" method="post" id="sidebar-chat-form"
								class="chat-form">
								<input type="text" id="sidebar-chat-message"
									name="sidebar-chat-message"
									class="form-control form-control-borderless"
									placeholder="Type a message..">
							</form>
						</div>
						<a href="javascript:void(0)" class="sidebar-title"> <i
							class="fa fa-globe pull-right"></i> <strong>Activity</strong>UI
						</a>
						<div class="sidebar-section">
							<div class="alert alert-danger alert-alt">
								<small>just now</small><br> <i
									class="fa fa-thumbs-up fa-fw"></i> Upgraded to Pro plan
							</div>
							<div class="alert alert-info alert-alt">
								<small>2 hours ago</small><br> <i class="gi gi-coins fa-fw"></i>
								You had a new sale!
							</div>
							<div class="alert alert-success alert-alt">
								<small>3 hours ago</small><br> <i class="fa fa-plus fa-fw"></i>
								<a href="page_ready_user_profile.php"><strong>John
										Doe</strong></a> would like to become friends!<br> <a
									href="javascript:void(0)" class="btn btn-xs btn-primary"><i
									class="fa fa-check"></i> Accept</a> <a href="javascript:void(0)"
									class="btn btn-xs btn-default"><i class="fa fa-times"></i>
									Ignore</a>
							</div>
							<div class="alert alert-warning alert-alt">
								<small>2 days ago</small><br> Running low on space<br>
								<strong>18GB in use</strong> 2GB left<br> <a
									href="page_ready_pricing_tables.php"
									class="btn btn-xs btn-primary"><i class="fa fa-arrow-up"></i>
									Upgrade Plan</a>
							</div>
						</div>
						<a href="page_ready_inbox.php" class="sidebar-title"> <i
							class="fa fa-envelope pull-right"></i> <strong>Messages</strong>UI
							(5)
						</a>
						<div class="sidebar-section">
							<div class="alert alert-alt">
								Debra Stanley<small class="pull-right">just now</small><br>
								<a href="page_ready_inbox_message.php"><strong>New
										Follower</strong></a>
							</div>
							<div class="alert alert-alt">
								Sarah Cole<small class="pull-right">2 min ago</small><br> <a
									href="page_ready_inbox_message.php"><strong>Your
										subscription was updated</strong></a>
							</div>
							<div class="alert alert-alt">
								Bryan Porter<small class="pull-right">10 min ago</small><br>
								<a href="page_ready_inbox_message.php"><strong>A
										great opportunity</strong></a>
							</div>
							<div class="alert alert-alt">
								Jose Duncan<small class="pull-right">30 min ago</small><br>
								<a href="page_ready_inbox_message.php"><strong>Account
										Activation</strong></a>
							</div>
							<div class="alert alert-alt">
								Henry Ellis<small class="pull-right">40 min ago</small><br>
								<a href="page_ready_inbox_message.php"><strong>You
										reached 10.000 Followers!</strong></a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<jsp:include page="menu.jsp"></jsp:include>
			<div id="main-container">
				<jsp:include page="header.jsp"></jsp:include>
				<div id="page-content">
					<div class="content-header">
						<div class="header-section">
							<h1>
								<i class="fa fa-table"></i>Datatables<br>
							</h1>
						</div>
					</div>
					<ul class="breadcrumb breadcrumb-top">
						<li>Tables</li>
						<li><a href="">Datatables</a></li>
					</ul>
					<div class="block full">
						<div class="block-title">
							<h2>
								<strong>Search</strong> Parking Provider
							</h2>
						</div>
						<div class="table-responsive">
							<table id="example-datatable"
								class="table table-vcenter table-condensed table-bordered">
								<thead>
									<tr>
										<th class="text-center">FirstName</th>
										<th class="text-center">LastName</th>
										<th class="text-center">Mobile Number</th>
										
										
									</tr>
								</thead>
								<tbody>
								<c:forEach items="${sessionScope.parkingProviderList}" var="i">
									<tr>
										<td class="text-center">${i.parkingprovider_first_name }</td>
										<td class="text-center">${i.parkingprovider_last_name}</td>
										<td class="text-center">${i.parkingprovider_mobile_number}</td>
										
									
										
										
										<!-- <td><span class="label label-success"></span></td>
										<td class="text-center">
											  <div class="btn-group">
												<a href="javascript:void(0)" data-toggle="tooltip"
													title="Edit" class="btn btn-xs btn-default"><i
													class="fa fa-pencil"></i></a> <a href="javascript:void(0)"
													data-toggle="tooltip" title="Delete"
													class="btn btn-xs btn-danger"><i class="fa fa-times"></i></a>
										</div>
										</td>-->
									</tr>
									</c:forEach>
								</tbody>
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