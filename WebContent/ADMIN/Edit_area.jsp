<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="${pageContext.request.contextPath }/ADMIN/">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>PTT Add_Area</title>
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
								Manage Area<br>
								
							</h1>
						</div>
					</div>
					<ul class="breadcrumb breadcrumb-top">
						<li>Park Tech Touch</li>
						<li>Manage Area</a></li>
						<li><a href="Add_Area.jsp">Search Area</a></li>
					</ul>
					<div class="row">
						<div class="col-md-12">
							<div class="block">
								<div class="block-title">
									<h2>
										<strong>Edit Area</strong> 
									</h2>
								</div>
								
								
								<c:forEach items="${sessionScope.areaList}" var="i">
								<form action="${pageContext.request.contextPath}/AreaController?flag=updateArea"
									method="post" class="form-horizontal form-bordered">
									
									<fieldset>
										<div class="form-group">
											<label class="col-md-4 control-label" for="val_statename">State 
												Name <span class="text-danger">*</span>
											</label>
											
											<div class="col-md-6">
												<select id="val_statename" name="val_statename" class="form-control" onchange="loadcity('change')">
												
												<c:forEach items="${sessionScope.stateList }" var="x">
													<c:choose>
													<c:when test="${x.state_id eq i.v1.state_id }">
													<option selected="selected" value="${x.state_id }">${x.val_statename}</option>
													</c:when>
													<c:otherwise>
													<option  value="${x.state_id }">${x.val_statename}</option>
													</c:otherwise>
													</c:choose>
													</c:forEach>
												</select>
											</div>
										</div>
										
										
										<input type="hidden" id="hdncityid" value="${i.v2.city_id}"/>
									<div class="form-group">
											<label class="col-md-4 control-label" for="val_cityname">City
												Name <span class="text-danger">*</span>
											</label>
											<div class="col-md-6">
												<select id="val_cityname" name="val_cityname" class="form-control">
												<option>Select City</option>
												<%-- 	<c:forEach items="${sessionScope.CityList}" var="x1">
													<option value="${x1.city_id }">${x1.val_cityname}</option>
													</c:forEach>
												 --%>
												</select>
											</div>
										</div>
										
										<div class="form-group">
											<label class="col-md-4 control-label" for="val_areaname">Area Name
												<span class="text-danger">*</span>
											</label>
											<div class="col-md-6">
												<div class="input-group">
													<input type="text" id="val_areaname" name="val_areaname"
														class="form-control"value="${i.val_areaname}" placeholder="Enter AreaName..">
													<span class="input-group-addon"><i class="fa fa-font"></i></span>
												</div>
											</div>
										</div>
									</fieldset>
									<div class="form-group form-actions">
										<div class="col-md-8 col-md-offset-4">
											<button type="submit" class="btn btn-sm btn-primary">
												<i class="fa fa-arrow-right"></i> Update
											</button>
											<input type="hidden" name="flag" value="updateArea"/>
											<input type="hidden" name="area_id" value="${i.area_id}"/>
									
											<button type="reset" class="btn btn-sm btn-warning">
												<i class="fa fa-repeat"></i> Reset
											</button>
										</div>
									</div>
								</form>
								</c:forEach>
								
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
	//var flag= false;
	  function loadcity(flag)
		{
			var val_stateName=document.getElementById("val_statename");
			var var_cityname = document.getElementById("val_cityname");
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
						
						var_cityname.options.add(createOption);
						
					}
					if(flag == "load")
						{
						selectcity();					
						}
				}
				
			}

			xmlhttp.open("get", "${pageContext.request.contextPath}/AreaController?flag=loadCity&val_statename="+val_statename.value, true);
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
			var var_cityname = document.getElementById("val_cityname");
			
			var removeCity=var_cityname.options.length;
			
			if(removeCity!= "undefined"){
			for(i=removeCity ; i>0 ; i-- )
			{
				var_cityname.remove(i);
			}}
		}

	</script>

	<script>
	loadcity("load");
	
	function selectcity()
	{
	var var_cityname = document.getElementById("val_cityname");
	var hdncityid = document.getElementById("hdncityid");
	
	
	
	var removeCity=var_cityname.options.length;
	
	if(removeCity!= "undefined"){
		var cityarr=var_cityname.options;
		
		for(i=0 ; i<removeCity ; i++ )
	{
			
			var ci = cityarr[i].value;
			var hc = cityarr[i].value==hdncityid.value;
			
		if(	cityarr[i].value==hdncityid.value)
			{
			cityarr[i].selected="selected";
			}
	}}
	}
	</script>
	
	
	
</body>
</html>