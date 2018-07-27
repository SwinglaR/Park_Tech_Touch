<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<c:if test="${sessionScope.user_type eq 'admin'}">
<header class="navbar navbar-default">
				<ul class="nav navbar-nav-custom">
					<li><a href="javascript:void(0)"
						onclick="App.sidebar('toggle-sidebar');this.blur();"> <i
							class="fa fa-bars fa-fw"></i>
					</a></li>
					<!-- <li class="dropdown"><a href="javascript:void(0)"
						class="dropdown-toggle" data-toggle="dropdown"> <i
							class="gi gi-settings"></i>
					</a>
						<ul class="dropdown-menu dropdown-custom dropdown-options">
							<li class="dropdown-header text-center">Header Style</li>
							<li>
								<div class="btn-group btn-group-justified btn-group-sm">
									<a href="javascript:void(0)" class="btn btn-primary"
										id="options-header-default">Light</a> <a
										href="javascript:void(0)" class="btn btn-primary"
										id="options-header-inverse">Dark</a>
								</div>
							</li>
							<li class="dropdown-header text-center">Page Style</li>
							<li>
								<div class="btn-group btn-group-justified btn-group-sm">
									<a href="javascript:void(0)" class="btn btn-primary"
										id="options-main-style">Default</a> <a
										href="javascript:void(0)" class="btn btn-primary"
										id="options-main-style-alt">Alternative</a>
								</div>
							</li>
						</ul></li> -->
				</ul>
<!--  				<form action="page_ready_search_results.php" method="post"
					class="navbar-form-custom">
					<div class="form-group">
						<input type="text" id="top-search" name="top-search"
							class="form-control" placeholder="Search..">
					</div>
				</form>-->
				<ul class="nav navbar-nav-custom pull-right">
						<li class="dropdown"><a href="javascript:void(0)"
						class="dropdown-toggle" data-toggle="dropdown"> <img
							src="" alt="${sessionScope.user_type}"> <i
							class="fa fa-angle-down"></i>
					</a>
						<ul class="dropdown-menu dropdown-custom dropdown-menu-right">
							<li class="dropdown-header text-center">Account</li>
							<!-- <li><a href="page_ready_timeline.php"> <i
									class="fa fa-clock-o fa-fw pull-right"></i>Update Account
							</a> --> <!-- <a href="page_ready_inbox.php"> <i
									class="fa fa-envelope-o fa-fw pull-right"></i>Messages
							</a> <a href="page_ready_pricing_tables.php"><i
									class="fa fa-magnet fa-fw pull-right"></i>Subscriptions </a> 
									<a href="page_ready_faq.php"><i
									class="fa fa-question fa-fw pull-right"></i>FAQ </a></li>
							<li class="divider"></li> -->
							<!-- <li><a href="page_ready_user_profile.php"> 
								<i class="fa fa-user fa-fw pull-right"></i>View Profile</a> 
							 -->	<!-- <a href="#modal-user-settings" data-toggle="modal"> 
								<i class="fa fa-cog fa-fw pull-right"></i> Settings</a>
 -->							</li>
							<li class="divider"></li>
							<li><!-- <a href="page_ready_lock_screen.php"><i
									class="fa fa-lock fa-fw pull-right"></i> 
								Lock Account</a> --> 
								<a href="${pageContext.request.contextPath}/*?flag=logout">
								<i class="fa fa-ban fa-fw pull-right"></i>
								Logout</a></li>
						</ul>
						</li>
				</ul>
				</header>
		</c:if>
		<c:if test="${sessionScope.user_type eq 'parkingprovider'}">
		<header class="navbar navbar-default">
				<ul class="nav navbar-nav-custom">
					<li><a href="javascript:void(0)"
						onclick="App.sidebar('toggle-sidebar');this.blur();"> <i
							class="fa fa-bars fa-fw"></i>
					</a></li>
					<!-- <li class="dropdown"><a href="javascript:void(0)"
						class="dropdown-toggle" data-toggle="dropdown"> <i
							class="gi gi-settings"></i>
					</a>
						<ul class="dropdown-menu dropdown-custom dropdown-options">
							<li class="dropdown-header text-center">Header Style</li>
							<li>
								<div class="btn-group btn-group-justified btn-group-sm">
									<a href="javascript:void(0)" class="btn btn-primary"
										id="options-header-default">Light</a> <a
										href="javascript:void(0)" class="btn btn-primary"
										id="options-header-inverse">Dark</a>
								</div>
							</li>
							<li class="dropdown-header text-center">Page Style</li>
							<li>
								<div class="btn-group btn-group-justified btn-group-sm">
									<a href="javascript:void(0)" class="btn btn-primary"
										id="options-main-style">Default</a> <a
										href="javascript:void(0)" class="btn btn-primary"
										id="options-main-style-alt">Alternative</a>
								</div>
							</li>
						</ul></li> -->
				</ul>
<!--  				<form action="page_ready_search_results.php" method="post"
					class="navbar-form-custom">
					<div class="form-group">
						<input type="text" id="top-search" name="top-search"
							class="form-control" placeholder="Search..">
					</div>
				</form>-->
				<ul class="nav navbar-nav-custom pull-right">
						<li class="dropdown"><a href="javascript:void(0)"
						class="dropdown-toggle" data-toggle="dropdown"> <img
							src="" alt="${sessionScope.parkingprovider_name}"> <i
							class="fa fa-angle-down"></i>
					</a>
						<ul class="dropdown-menu dropdown-custom dropdown-menu-right">
							<li class="dropdown-header text-center">Account</li>
							<li><a href="${pageContext.request.contextPath}/ParkingProviderController?flag=searchProvider"> <i
									class="fa fa-clock-o fa-fw pull-right"></i>Update Account
							</a> <!-- <a href="page_ready_inbox.php"> <i
									class="fa fa-envelope-o fa-fw pull-right"></i>Messages
							</a> <a href="page_ready_pricing_tables.php"><i
									class="fa fa-magnet fa-fw pull-right"></i>Subscriptions </a> 
									<a href="page_ready_faq.php"><i
									class="fa fa-question fa-fw pull-right"></i>FAQ </a></li>
							<li class="divider"></li> -->
							<!-- <li><a href="page_ready_user_profile.php"> 
								<i class="fa fa-user fa-fw pull-right"></i>View Profile</a> 
								<a href="#modal-user-settings" data-toggle="modal"> 
								<i class="fa fa-cog fa-fw pull-right"></i> Settings</a>
							</li>
							 -->
							<li class="divider"></li>
							<li><!-- <a href="page_ready_lock_screen.php"><i
									class="fa fa-lock fa-fw pull-right"></i> 
								Lock Account</a> --> 
								<a href="${pageContext.request.contextPath}/*?flag=logout">
								<i class="fa fa-ban fa-fw pull-right"></i>
								Logout</a></li>
						</ul>
						</li>
				</ul>
				</header>
				</c:if>