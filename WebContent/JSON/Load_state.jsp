<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@taglib prefix="function" uri="http://java.sun.com/jsp/jstl/functions"%>

<c:set var="list" value="${sessionScope.lsForIndex }"></c:set>
<c:set var="len" value="${function:length(list) }"></c:set>
[
<c:forEach items="${sessionScope.lsForIndex }" var="i" varStatus="j">
		
		{"state_id":"${i.state_id }","val_statename":"${i.val_statename }"}<c:if test="${len ne j.count }">,</c:if>
	
</c:forEach>
]


