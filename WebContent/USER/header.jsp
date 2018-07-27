 <%@taglib prefix="cc" uri="http://java.sun.com/jstl/core_rt"%>

	 <cc:if test="${sessionScope.userID eq null}">
	 
	 <%@include file="headerGuest.jsp"%>
	 
	 </cc:if>
	 
	 <cc:if test="${sessionScope.userID ne null}">
	 
	 <%@include file="headerLogin.jsp" %>
	 
	 </cc:if>
	 