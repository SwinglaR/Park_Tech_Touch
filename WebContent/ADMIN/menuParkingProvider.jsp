<div id="sidebar">
	<div id="sidebar-scroll">
		<div class="sidebar-content">
			<a href="index.jsp" class="sidebar-brand"> <span
				class="sidebar-nav-mini-hide"><strong>Park</strong>Tech<strong>Touch</strong></span>
			</a>
			<div class="sidebar-section sidebar-user clearfix sidebar-nav-mini-hide">
				<div class="sidebar-user-avatar">
					<a href="#"> <img src="#" alt="">
					</a>
				</div>
				<div class="sidebar-user-name" style="font-size: 16px;">Parking Provider</div>
				<!-- <div class="sidebar-user-links">
					<a href="page_ready_user_profile.php" data-toggle="tooltip"
						data-placement="bottom" title="Profile"><i class="gi gi-user"></i></a>
					<a href="page_ready_inbox.php" data-toggle="tooltip"
						data-placement="bottom" title="Messages"><i
						class="gi gi-envelope"></i></a> <a href="javascript:void(0)"
						class="enable-tooltip" data-placement="bottom" title="Settings"
						onclick="$('#modal-user-settings').modal('show');"><i
						class="gi gi-cogwheel"></i></a> <a href="login.php"
						data-toggle="tooltip" data-placement="bottom" title="Logout"><i
						class="gi gi-exit"></i></a>
				</div> -->
			</div>
						<ul class="sidebar-nav">
				<li><a href="index.jsp" class=" active"><i
						class="gi gi-stopwatch sidebar-nav-icon"></i><span
						class="sidebar-nav-mini-hide">Dashboard</span></a>
				</li>
							
				<li><a href="#" class="sidebar-nav-menu"><i
						class="fa fa-angle-left sidebar-nav-indicator sidebar-nav-mini-hide"></i><i
						class="fa fa-cube sidebar-nav-icon"></i><span
						class="sidebar-nav-mini-hide">Manage Parking lots</span></a>
					<ul>
						<li><a href="${pageContext.request.contextPath}/ParkinglotsController?flag=searchState">Add Parking lots</a></li>
						<li><a href="${pageContext.request.contextPath}/ParkinglotsController?flag=searchLot&parkingProviderId=${sessionScope.ParkingproviderID }">Search Parking lots</a></li>

					</ul></li>
					<li><a href="#" class="sidebar-nav-menu"><i
						class="fa fa-angle-left sidebar-nav-indicator sidebar-nav-mini-hide"></i><i
						class="fa fa-cube sidebar-nav-icon"></i><span
						class="sidebar-nav-mini-hide">Manage Booking</span></a>
					<ul>
					
						<li><a href="<%=request.getContextPath() %>/BookParkingSlotsController?flag=viewContinuousParkingProvider&parkingProviderId=${sessionScope.ParkingproviderID }">For Continuous Period</a></li>
                        <li><a href="<%=request.getContextPath() %>/BookParkingSlotsController?flag=viewMultiDateParkingProvider&parkingProviderId=${sessionScope.ParkingproviderID }">For Multi Date</a></li>
					</ul></li>
										
					<li><a href="#" class="sidebar-nav-menu"><i
						class="fa fa-angle-left sidebar-nav-indicator sidebar-nav-mini-hide"></i><i
						class="fa fa-cube sidebar-nav-icon"></i><span
						class="sidebar-nav-mini-hide">Manage Packages</span></a>
					<ul>
						<li><a href="<%=request.getContextPath()%>/PackageController?flag=loadParkingLotParkingProvider&parkingProviderId=${sessionScope.ParkingproviderID }">Add Packages</a></li>
						<li><a href="<%=request.getContextPath()%>/PackageController?flag=searchPackageParkingProvider&parkingProviderId=${sessionScope.ParkingproviderID }">View Packages</a></li>

					</ul></li>
					<!-- <li><a href="#" class="sidebar-nav-menu"><i
						class="fa fa-angle-left sidebar-nav-indicator sidebar-nav-mini-hide"></i><i
						class="fa fa-cube sidebar-nav-icon"></i><span
						class="sidebar-nav-mini-hide">Manage Payment</span></a>
					<ul>
						
						<li><a href="">Search Payment</a></li>

					</ul></li>
 -->					
					<li><a href="#" class="sidebar-nav-menu"><i
						class="fa fa-angle-left sidebar-nav-indicator sidebar-nav-mini-hide"></i><i
						class="fa fa-cube sidebar-nav-icon"></i><span
						class="sidebar-nav-mini-hide">Manage Feedback</span></a>
					<ul>
						<li><a href="${pageContext.request.contextPath}/FeedbackController?flag=searchParkingProviderFeedback&parkingProviderId=${sessionScope.ParkingproviderID }"> View Feedback </a></li>

					</ul></li>
						<!-- <li><a href="#" class="sidebar-nav-menu"><i
						class="fa fa-angle-left sidebar-nav-indicator sidebar-nav-mini-hide"></i><i
						class="fa fa-cube sidebar-nav-icon"></i><span
						class="sidebar-nav-mini-hide">Manage Complain</span></a>
					<ul>
						
						<li><a href="">Search Complain</a></li>

					</ul></li>
 -->					<!-- <li><a href="#" class="sidebar-nav-menu"><i
						class="fa fa-angle-left sidebar-nav-indicator sidebar-nav-mini-hide"></i><i
						class="fa fa-cube sidebar-nav-icon"></i><span
						class="sidebar-nav-mini-hide">Manage Map</span></a>
					<ul>
						<li><a href="">Add Map</a></li>
						<li><a href="">Search Map</a></li>

					</ul></li>
 -->					
					
			</ul>
			
			</div>
			</div>
			</div>