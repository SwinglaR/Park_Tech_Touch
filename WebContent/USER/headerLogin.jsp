<header>
                    <div class="navbar navbar-fixed-top">
                        <div class="navbar-inner">
                            <div class="container">
                                <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                </a>
                                <div class="nav-collapse">
                                    <ul class="nav pull-right">
                                        <li class="dropdown">
                                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">${sessionScope.userName}<b class="caret"></b></a>
                                            <ul class="dropdown-menu">
                                                <li>
                                                    <a href="dashboard.jsp">Dashboard</a>
                                                </li>
                                                
                                                <li class="divider"></li>
                                                
                                               <!--  <li>
                                                    <a href="bookingmade.jsp">Bookings</a>
                                                </li>
                                                
                                                 
                                                <li class="divider"></li>
                                                --> <li>
                                                    <a href="profileuser.jsp">Profile settings</a>
                                                </li>
                                                <li class="divider"></li>
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/abc?flag=logout">Log out</a>
                                                </li>
                                            </ul>
                                        </li>
                                        <li class="dropdown">
  												<a href="faq.jsp">Help</a>
  										</li>
  									</ul>
                                </div>
                            </div>
                        </div><!-- /topbar-inner -->
                    </div><!-- /topbar -->
                    <div id="content-push"></div>
                  	<div id="blue-heading">
                            <div class="container">
                                <a href="index_user.jsp" rel="home" id="logo" class="png_bg "></a>
                             </div>
                        </div>
                </header>
