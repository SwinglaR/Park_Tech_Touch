<div id="sidebar">
	<div id="sidebar-scroll">
		<div class="sidebar-content">
			<a href="index.jsp" class="sidebar-brand"> <!-- <i class="gi gi-flash"></i> -->
			<span class="sidebar-nav-mini-hide"><strong>Park</strong>Tech<strong>Touch</strong></span>
			</a>
			<div class="sidebar-section sidebar-user clearfix sidebar-nav-mini-hide">
				<div class="sidebar-user-avatar">
					<a href="#"> <img src="#" alt="">
					</a>
				</div>
				<div class="sidebar-user-name">Admin</div>
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
				</div>
		 -->	</div>
						<ul class="sidebar-nav">
				<li><a href="index.jsp" class=" active"><i
						class="gi gi-stopwatch sidebar-nav-icon"></i><span
						class="sidebar-nav-mini-hide">Dashboard</span></a>
				</li>
				<li><a href="#" class="sidebar-nav-menu"><i
						class="fa fa-angle-left sidebar-nav-indicator sidebar-nav-mini-hide"></i><i
						class="fa fa-cube sidebar-nav-icon"></i><span
						class="sidebar-nav-mini-hide">Manage State</span></a>
					<ul>
						<li><a href="Add_State.jsp">Add State</a></li>
						<li><a href="<%=request.getContextPath()%>/StateController?flag=searchState">Search State</a></li>

					</ul></li>
				<li><a href="#" class="sidebar-nav-menu"><i
						class="fa fa-angle-left sidebar-nav-indicator sidebar-nav-mini-hide"></i><i
						class="fa fa-cube sidebar-nav-icon"></i><span
						class="sidebar-nav-mini-hide">Manage City</span></a>
					<ul>
						<li><a href="<%=request.getContextPath()%>/CityController?flag=searchState">Add City</a></li>
						<li><a href="<%=request.getContextPath()%>/CityController?flag=searchCity">Search City</a></li>

					</ul></li>
				<li><a href="#" class="sidebar-nav-menu"><i
						class="fa fa-angle-left sidebar-nav-indicator sidebar-nav-mini-hide"></i><i
						class="fa fa-cube sidebar-nav-icon"></i><span
						class="sidebar-nav-mini-hide">Manage Area</span></a>
					<ul>
						<li><a href="<%=request.getContextPath()%>/AreaController?flag=searchStateAndCity">Add Area</a></li>
						<li><a href="<%=request.getContextPath()%>/AreaController?flag=searchArea">Search Area</a></li>

					</ul></li>
				<!-- <li><a href="#" class="sidebar-nav-menu"><i
						class="fa fa-angle-left sidebar-nav-indicator sidebar-nav-mini-hide"></i><i
						class="fa fa-cube sidebar-nav-icon"></i><span
						class="sidebar-nav-mini-hide">Manage Photo</span></a>
					<ul>
						<li><a href="Add_Photo.jsp">Add Photo</a></li>
						<li><a href="">Search Photo</a></li>

					</ul></li> -->
				<li><a href="#" class="sidebar-nav-menu"><i
						class="fa fa-angle-left sidebar-nav-indicator sidebar-nav-mini-hide"></i><i
						class="fa fa-cube sidebar-nav-icon"></i><span
						class="sidebar-nav-mini-hide">Manage Parking Provider</span></a>
					<ul>

						<li><a href="<%=request.getContextPath()%>/ParkingProviderController?flag=searchParkingProvider">Search Parking
								Provider</a></li>
					</ul></li>
					<li><a href="#" class="sidebar-nav-menu"><i
						class="fa fa-angle-left sidebar-nav-indicator sidebar-nav-mini-hide"></i><i
						class="fa fa-cube sidebar-nav-icon"></i><span
						class="sidebar-nav-mini-hide">Manage Client</span></a>
					<ul>

						<li><a href="${pageContext.request.contextPath}/ClientController?flag=searchClient">Search Client</a></li>
					</ul></li>
					<li><a href="#" class="sidebar-nav-menu"><i
						class="fa fa-angle-left sidebar-nav-indicator sidebar-nav-mini-hide"></i><i
						class="fa fa-cube sidebar-nav-icon"></i><span
						class="sidebar-nav-mini-hide">Manage Parking lots</span></a>
					<ul>
<%-- 						<li><a href="${pageContext.request.contextPath}/ParkinglotsController?flag=searchState">Add Parking lots</a></li>
 --%>						<li><a href="${pageContext.request.contextPath}/ParkinglotsController?flag=searchLotAdmin">Search Parking lots</a></li>

					</ul></li>
					<li><a href="#" class="sidebar-nav-menu"><i
						class="fa fa-angle-left sidebar-nav-indicator sidebar-nav-mini-hide"></i><i
						class="fa fa-cube sidebar-nav-icon"></i><span
						class="sidebar-nav-mini-hide">Manage Booking</span></a>
					<ul>
					
						<li><a href="<%=request.getContextPath() %>/BookParkingSlotsController?flag=viewContinuous">For Continuous Period</a></li>
                        <li><a href="<%=request.getContextPath() %>/BookParkingSlotsController?flag=viewMultiDate">For Multi Date</a></li>
					</ul></li>
					<!-- <li><a href="#" class="sidebar-nav-menu"><i
						class="fa fa-angle-left sidebar-nav-indicator sidebar-nav-mini-hide"></i><i
						class="fa fa-cube sidebar-nav-icon"></i><span
						class="sidebar-nav-mini-hide">Manage Cancellation</span></a>
					<ul>
					
						<li><a href="">Search Cancellation</a></li>

					</ul></li> -->
					<li><a href="#" class="sidebar-nav-menu"><i
						class="fa fa-angle-left sidebar-nav-indicator sidebar-nav-mini-hide"></i><i
						class="fa fa-cube sidebar-nav-icon"></i><span
						class="sidebar-nav-mini-hide">Manage Packages</span></a>
					<ul>
						<li><a href="Add_Packages.jsp">Add Packages</a></li>
						<li><a href="<%=request.getContextPath() %>/PackageController?flag=searchPackage">Search Packages</a></li>

					</ul></li>
					<!-- <li><a href="#" class="sidebar-nav-menu"><i
						class="fa fa-angle-left sidebar-nav-indicator sidebar-nav-mini-hide"></i><i
						class="fa fa-cube sidebar-nav-icon"></i><span
						class="sidebar-nav-mini-hide">Manage Payment</span></a>
					<ul>
						
						<li><a href="">Search Payment</a></li>

					</ul></li>
 -->					<!-- <li><a href="#" class="sidebar-nav-menu"><i
						class="fa fa-angle-left sidebar-nav-indicator sidebar-nav-mini-hide"></i><i
						class="fa fa-cube sidebar-nav-icon"></i><span
						class="sidebar-nav-mini-hide">Manage Rating</span></a>
					<ul>
						
						
						<li><a href="">Search Rating</a></li>

					</ul></li> -->
					<li><a href="#" class="sidebar-nav-menu"><i
						class="fa fa-angle-left sidebar-nav-indicator sidebar-nav-mini-hide"></i><i
						class="fa fa-cube sidebar-nav-icon"></i><span
						class="sidebar-nav-mini-hide">Manage Feedback</span></a>
					<ul>
						<li><a href="<%=request.getContextPath() %>/FeedbackController?flag=viewFeedbackAndRatings">View Feedback and Ratings </a></li>

					</ul></li>
											<!-- <li><a href="#" class="sidebar-nav-menu"><i
						class="fa fa-angle-left sidebar-nav-indicator sidebar-nav-mini-hide"></i><i
						class="fa fa-cube sidebar-nav-icon"></i><span
						class="sidebar-nav-mini-hide">Manage Complain</span></a>
					<ul>
						
						<li><a href="">Search Complain</a></li>

					</ul></li>
 -->					
					<!-- <li><a href="#" class="sidebar-nav-menu"><i
						class="fa fa-angle-left sidebar-nav-indicator sidebar-nav-mini-hide"></i><i
						class="fa fa-cube sidebar-nav-icon"></i><span
						class="sidebar-nav-mini-hide">Manage Map</span></a>
					<ul>
						<li><a href="">Add Map</a></li>
						<li><a href="">Search Map</a></li>

					</ul></li> -->
					<li><a href="#" class="sidebar-nav-menu"><i
						class="fa fa-angle-left sidebar-nav-indicator sidebar-nav-mini-hide"></i><i
						class="fa fa-cube sidebar-nav-icon"></i><span
						class="sidebar-nav-mini-hide">Manage FAQ Category</span></a>
					<ul>
						<li><a href="Add_FAQ_Category.jsp">Add FAQ Category</a></li>
						<li><a href="<%=request.getContextPath() %>/FaqCategoryController?flag=searchFaqCategory">Search FAQ Category</a></li>

					</ul></li>
					<li><a href="#" class="sidebar-nav-menu"><i
						class="fa fa-angle-left sidebar-nav-indicator sidebar-nav-mini-hide"></i><i
						class="fa fa-cube sidebar-nav-icon"></i><span
						class="sidebar-nav-mini-hide">Manage FAQ</span></a>
					<ul>
						<li><a href="<%=request.getContextPath()%>/FaqController?flag=loadFaqCategory">Add FAQ</a></li>
						<li><a href="<%=request.getContextPath() %>/FaqController?flag=searchFaq">Search FAQ</a></li>

					</ul></li>
					
					<!-- <li><a href="#" class="sidebar-nav-menu"><i
						class="fa fa-angle-left sidebar-nav-indicator sidebar-nav-mini-hide"></i><i
						class="fa fa-cube sidebar-nav-icon"></i><span
						class="sidebar-nav-mini-hide">Manage Gallery</span></a>
					<ul>
						<li><a href="Add_Gallery.jsp">Add Gallery</a></li>
						<li><a href="page_ecom_orders.php">Search Gallery</a></li>

					</ul></li> -->
					
			</ul>
			
			</div>
			</div>
			</div>