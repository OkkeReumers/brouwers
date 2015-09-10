<%@page contentType='text/html' pageEncoding='UTF-8' session='false'%>
<%@taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core'%>
<%@taglib prefix='v' uri='http://vdab.be/tags'%>
<!doctype html>
<html lang='nl'>
<head>
<v:head title='Brouwers op alfabet' />
</head>
<body>
	<h1>Brouwers op alfabet</h1>
	<nav>
		<ul>
			<li><a href="<c:url value='/brouwers'/>">Alle brouwers</a></li>
			<li><a href="<c:url value='/brouwers/beginnaam'/>">Brouwers
					op naam</a></li>
			<li><a href="<c:url value='/brouwers/toevoegen'/>">Brouwer
					toevoegen</a></li>
			<li><a href="<c:url value='/brouwers/opalfabet'/>">Brouwer
					op alfabet</a></li>
		</ul>
	</nav>
	<ul class="zonderbolletjes">
		<c:forEach items="${alfabet }" var="letter">
			<c:url value="/brouwers" var="letterURL">
				<c:param name="letter" value="${letter }" />
			</c:url>
			<li><a href="${letterURL }">${letter }</a></li>
		</c:forEach>
	</ul>
	<c:if test="${not empty brouwers }">
		<ul>
			<c:forEach items="${brouwers }" var="brouwer">
				<li>${brouwer.naam }(${brouwer.adres.gemeente })</li>
			</c:forEach>
		</ul>
	</c:if>
</body>
</html>