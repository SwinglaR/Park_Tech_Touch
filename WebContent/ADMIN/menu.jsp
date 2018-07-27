	<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
	
		<c:choose>
			 <c:when test="${sessionScope.user_type eq 'admin' }">
			
			<%@include file="menuAdmin.jsp" %>
			
			</c:when>
			<c:when test="${sessionScope.user_type eq 'parkingprovider' }">
			
			<%@include file="menuParkingProvider.jsp" %>
			
			</c:when>
			<c:otherwise>
							
			</c:otherwise>
		</c:choose>
		