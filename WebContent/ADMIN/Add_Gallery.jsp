<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="${pageContext.request.contextPath}/ADMIN/">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>PTT Add_Gallery</title>
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
								Manage Gallery<br>	
							</h1>
						</div>
					</div>
					<ul class="breadcrumb breadcrumb-top">
						<li>Park Tech Touch</li>
						<li>Manage Gallery</li>
						<li><a href="Add_Gallery.jsp">Add_Gallery</a></li>
					</ul>
					<div class="row">
						<div class="col-md-12">
							<div class="block">
								<div class="block-title">
									<h2>
										<strong>Manage Gallery</strong>
									</h2>
								</div>
								<form id="form-validation" action="page_forms_validation.php"
									method="post" class="form-horizontal form-bordered">
									<fieldset>
										<div class="form-group">
											<label class="col-md-4 control-label" for="val_photo">Photo
												<span class="text-danger">*</span>
											</label>
											<div class="col-md-6">
												<div class="input-group">
													<input type="file" id="val_photo_upload" name="val_photo_upload"
														class="form-control"> <span
														class="input-group-addon"><i class="fa fa-picture-o"></i></span>
												</div>
											</div>
										</div>
										<div class="form-group">
											<label class="col-md-4 control-label"
												for="val_photo_name">Photo Name
												<span class="text-danger">*</span>
											</label>
											<div class="col-md-6">
												<div class="input-group">
													<input type="text" id="val_photo_name"
														name="val_photo_name" class="form-control"
														placeholder="Enter name for the Photo"> <span
														class="input-group-addon"><i class="fa fa-camera-retro"></i></span>
												</div>
											</div>
										</div>
										<div class="form-group">
											<label class="col-md-4 control-label" for="val_photo_description">Photo
												Description <span class="text-danger">*</span>
											</label>
											<div class="col-md-6">
												<textarea id="val_photo_description" name="val_photo_description" rows="6"
													class="form-control" placeholder="Enter Description for the Photo"></textarea>
											</div>
										</div>
									</fieldset>
									<div class="form-group form-actions">
										<div class="col-md-8 col-md-offset-4">
											<button type="submit" class="btn btn-sm btn-primary">
												<i class="fa fa-arrow-right"></i> Submit
											</button>
											<button type="reset" class="btn btn-sm btn-warning">
												<i class="fa fa-repeat"></i> Reset
											</button>
										</div>
									</div>
								</form>
														
										</div>
									</div>
								</div>
							</div>
						</div>						
					</div>
				</div>
	<a href="#" id="to-top"><i class="fa fa-angle-double-up"></i></a>
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