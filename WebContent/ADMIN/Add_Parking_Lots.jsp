<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="${pageContext.request.contextPath}/ADMIN/">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>PTT Add Parking Lots</title>
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
<script>

function loadCity()
{
	var val_statename=document.getElementById("val_statename");
	
	var xmlhttp;
	
	if (window.XMLHttpRequest)
	  {// code for IE7+, Firefox, Chrome, Opera, Safari
	  	xmlhttp=new XMLHttpRequest();
	  }
	else
	  {// code for IE6, IE5
	  	xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
	  }
	
	removeAllCity();
	
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4) 
		{
			var jsonObj = JSON.parse(xmlhttp.responseText);
			
			for(i=0 ; i<jsonObj.length ; i++)
			{
				var createOption=document.createElement("option");
				
				createOption.value=jsonObj[i].city_id;
				createOption.text=jsonObj[i].val_cityname;
				
				document.parkinglotsform.val_cityname.options.add(createOption);
				
			}
		}
		
	}

	xmlhttp.open("get", "${pageContext.request.contextPath}/ParkinglotsController?flag=loadCity&val_statename="+val_statename.value, true);
	xmlhttp.send();
	/* jQuery(".chosen-select1").chosen({'width':'100%','white-space':'nowrap'}); */
	/* Holds the status of the XMLHttpRequest. Changes from 0 to 4:
		0: request not initialized
		1: server connection established
		2: request received
		3: processing request
		4: request finished and response is ready */
}

function removeAllCity()
{
	var removeCity=document.parkinglotsform.val_cityname.options.length;
	for(i=removeCity ; i>0 ; i-- )
	{
		document.parkinglotsform.val_cityname.remove(i);
	}
}
function loadArea()
{
	var val_cityname=document.getElementById("val_cityname");
	
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
			var jsonObj = JSON.parse(xmlhttp.responseText);
			
			for(i=0 ; i<jsonObj.length ; i++)
			{
				var createOption=document.createElement("option");
				
				createOption.value=jsonObj[i].area_id;
				createOption.text=jsonObj[i].val_areaname;
				
				document.parkinglotsform.val_areaname.options.add(createOption);
				
			}
		}
		
	}

	xmlhttp.open("get", "${pageContext.request.contextPath}/ParkinglotsController?flag=loadArea&val_cityname="+val_cityname.value, true);
	xmlhttp.send();
	/* jQuery(".chosen-select1").chosen({'width':'100%','white-space':'nowrap'}); */
	/* Holds the status of the XMLHttpRequest. Changes from 0 to 4:
		0: request not initialized
		1: server connection established
		2: request received
		3: processing request
		4: request finished and response is ready */
}

function removeAllArea()
{
	var removeArea=document.parkinglotsform.val_areaname.options.length;
	for(i=removeArea ; i>0 ; i-- )
	{
		document.parkinglotsform.val_areaname.remove(i);
	}
}

function addFile()
{
	var fileUpload = document.getElementById("fileUpload");
	
	var newFile = document.createElement("input");
	newFile.setAttribute("type", "file");
	newFile.setAttribute("name", "val_image");
	
	fileUpload.appendChild(newFile);
}

</script>
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
								Manage Parking Lots<br>
								
							</h1>
						</div>
					</div>
					<ul class="breadcrumb breadcrumb-top">
						<li>Park Tech Touch</li>
						<li>Manage Area</li>
						<li><a href="Add_Parking_Lots.jsp">Add Parking Lots</a></li>
					</ul>
					<div class="row">
						<div class="col-md-12">
							<div class="block">
								<div class="block-title">
									<h2>
										<strong>Add Parking Lots</strong> 
									</h2>
								</div>
								<form id="form-validation" action="${pageContext.request.contextPath}/ParkinglotsController"
									method="post" class="form-horizontal form-bordered" name="parkinglotsform" enctype="multipart/form-data">
									<fieldset>
							<input type="hidden" name="parkingProviderId" value="${sessionScope.ParkingproviderID }" />
							
										<div class="form-group">
											<label class="col-md-4 control-label" for="val_statename">State 
												Name <span class="text-danger">*</span>
											</label>
											<div class="col-md-6">
												<select id="val_statename" name="val_statename" class="form-control" onchange="loadCity()" required="">
													<option value="">Chooose One</option>
													<c:forEach items="${sessionScope.ls}" var="x">
													<option value="${x.state_id}">${x.val_statename}</option>
													</c:forEach>					
												</select>
											</div>
										</div>
										<div class="form-group">
											<label class="col-md-4 control-label" for="val_cityname">City
												Name <span class="text-danger">*</span>
											</label>
											<div class="col-md-6">
												<select id="val_cityname" name="val_cityname" class="form-control" onchange="loadArea()" required="">
												
												<option value="">Choose One</option>
												<!--  	<c:forEach items="${sessionScope.ls1 }" var="x1">
													<option value="${x1.city_id }">${x1.val_cityname}</option>
													</c:forEach>--> 
												
												</select>
											</div>
										</div>
										<div class="form-group">
											<label class="col-md-4 control-label" for="val_areaname">Area Name
												<span class="text-danger">*</span>
											</label>
											<div class="col-md-6">
												<select id="val_areaname" name="val_areaname" class="form-control" required="">
												<option value=""> Choose One</option>
												<!-- 	<c:forEach items="${sessionScope.ls2 }" var="x2">
													<option value="${x2.area_id }">${x2.val_areaname}</option>
													</c:forEach> -->
												
												</select>
											</div>											
										</div>
										<div class="form-group">
											<label class="col-md-4 control-label" for="val_plotname2">Parking Lot Name
												<span class="text-danger">*</span>
											</label>
											<div class="col-md-6">
												<div class="input-group">
													<input type="text" id="val_plotname2" name="val_plotname2"
														class="form-control" placeholder="Enter ParkingLot Name..">
													<span class="input-group-addon"><i class="fa fa-font"></i></span>
												</div>
											</div>
										</div>
										
										<div class="form-group">
											<label class="col-md-4 control-label" for="val_latitude">Latitude
												<span class="text-danger">*</span>
											</label>
											<div class="col-md-6">
												<div class="input-group">
													<input type="text" id="val_latitude" name="val_latitude"
														class="form-control" placeholder="Enter Latitude..">
													<span class="input-group-addon"><i class="fa fa-globe"></i></span>
												</div>
											</div>
										</div>
										<div class="form-group">
											<label class="col-md-4 control-label" for="val_longitude">Longitude
												<span class="text-danger">*</span>
											</label>
											<div class="col-md-6">
												<div class="input-group">
													<input type="text" id="val_longitude" name="val_longitude"
														class="form-control" placeholder="Enter Longitude..">
													<span class="input-group-addon"><i class="fa fa-globe"></i></span>
												</div>
											</div>
										</div>
										
										<div class="form-group">
											<label class="col-md-4 control-label" for="val_contactpersonname">Contact Person Name
												<span class="text-danger">*</span>
											</label>
											<div class="col-md-6">
												<div class="input-group">
													<input type="text" id="val_contactpersonname" name="val_contactpersonname"
														class="form-control" placeholder="Enter Contact Person Name..">
													<span class="input-group-addon"><i class="fa fa-font"></i></span>
												</div>
											</div>
										</div>
										<div class="form-group">
											<label class="col-md-4 control-label" for="val_contactnumber">Contact Number
												<span class="text-danger">*</span>
											</label>
											<div class="col-md-6">
												<div class="input-group">
													<input type="text" id="val_contactnumber" name="val_contactnumber"
														class="form-control" placeholder="Enter Contact Number..">
													<span class="input-group-addon"><i class="fa fa-font"></i></span>
												</div>
											</div>
										</div>
								 		<div class="form-group">
											<label class="col-md-4 control-label" for="val_2capacity">Two Wheeler Capacity <span class="text-danger">*</span></label>
											<div class="col-md-6">
												<div class="input-group">
												<input type="text" id="val_2capacity" name="val_2capacity" class="form-control" placeholder="Add two Wheeler Capacity">
												<span class="input-group-addon"><i class="fa fa-motorcycle"></i></span>
												</div>
											</div>
										</div>
										
										<div class="form-group">
											<label class="col-md-4 control-label" for="val_2price">Two Wheeler Price <span class="text-danger">*</span></label>
											<div class="col-md-6">
												<div class="input-group">
												<input type="text" id="val_2price" name="val_2price" class="form-control" placeholder="Add Two Wheeler Price">
												<span class="input-group-addon"><i class="fa fa-money"></i></span>
												</div>
											</div>
										</div>
										
										<div class="form-group">
											<label class="col-md-4 control-label" for="val_4capacity">Four Wheeler Capacity <span class="text-danger">*</span></label>
											<div class="col-md-6">
												<div class="input-group">
												<input type="text" id="val_4capacity" name="val_4capacity" class="form-control" placeholder="Add Four Wheeler Capacity">
												<span class="input-group-addon"><i class="fa fa-car"></i></span>
												</div>
											</div>
										</div>
										
										<div class="form-group">
											<label class="col-md-4 control-label" for="val_4price">Four Wheeler Price <span class="text-danger">*</span></label>
											<div class="col-md-6">
												<div class="input-group">
												<input type="text" id="val_4price" name="val_4price" class="form-control" placeholder="Add Four Wheeler Price">
												<span class="input-group-addon"><i class="fa fa-money"></i></span>
												</div>
											</div>
										</div>
								 		
								 		<div class="form-group">
											<label class="col-md-4 control-label" for="val_image">Image
												<span class="text-danger">*</span>
											</label>
											<div class="col-md-6">
												<div class="">
													<div class="col-md-12" id="fileUpload"> 
														<input type="file" name="val_image" class=""> 
														 <span class="input-group-addon">
														<i class="fa fa-picture-o"></i>
														</span> 
													</div>
													<div class="col-md-12">
														<input type="button" class="btn btn-primary" onclick="addFile()" value="Add" />
													</div>
												</div>
											</div>
										</div>
										<div class="form-group">
											<label class="col-md-4 control-label" for="val_address">Address
											 <span class="text-danger">*</span>
											</label>
											<div class="col-md-6">
												<textarea id="val_address" name="val_address" rows="6"
													class="form-control" placeholder="Enter Address"></textarea>
											</div>
										</div>
										<div class="form-group">
											<label class="col-md-4 control-label" for="val_description">Description
											 <span class="text-danger">*</span>
											</label>
											<div class="col-md-6">
												<textarea id="val_description" name="val_description" rows="6"
													class="form-control" placeholder="Enter Description"></textarea>
											</div>
										</div>
									</fieldset>
									<div class="form-group form-actions">
										<div class="col-md-8 col-md-offset-4">
											<button type="submit" class="btn btn-sm btn-primary">
												<i class="fa fa-arrow-right"></i> Submit
											</button>
											<input type="hidden" name="flag" value="insert"/>
											<button type="reset" class="btn btn-sm btn-warning">
												<i class="fa fa-repeat"></i> Reset
											</button>
										</div>
									</div>
								</form>
								
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