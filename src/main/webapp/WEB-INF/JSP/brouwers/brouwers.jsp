<%-- <%@page contentType='text/html' pageEncoding='UTF-8' session='false'%>
<%@taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core'%>
<%@taglib prefix='v' uri='http://vdab.be/tags'%>
<!doctype html>
<html lang='nl'>
<head>
<v:head title='Brouwers' />
</head>
<body>
	<h1>Brouwers</h1>
	<nav>
		<ul>
			<li><a href="<c:url value='/brouwers'/>">Alle brouwers</a></li>
			<li><a href="<c:url value='/brouwers/beginnaam'/>">Brouwers
					op naam</a></li>
			<li><a href="<c:url value='/brouwers/toevoegen'/>">Brouwer
					toevoegen</a></li>
		</ul>
	</nav>
	<c:forEach items='${brouwers}' var='brouwer'>
		<h2>${brouwer.naam}</h2>
		<h2>${brouwer.omzet }</h2>
		<p>${brouwer.adres.straat}
			${brouwer.adres.huisNr}<br> ${brouwer.adres.postcode}
			${brouwer.adres.gemeente}
		</p>
	</c:forEach>
</body>
</html> --%>


<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix='v' uri='http://vdab.be/tags' %>
<!doctype html>
<html lang="nl">
<head>
<v:head title="Alle brouwers"/>
<style>
td:first-child, td:last-child {
text-align:right;
}
</style>
</head>
<body>
<div><a href="<c:url value='/'/>">Menu</a></div>
<h1>Alle brouwers</h1>
<table>
<thead>
<tr>
<th>Nummer</th>
<th>Naam</th>
<th>Straat</th>
<th>HuisNr</th>
<th>Postcode</th>
<th>Gemeente</th>
<th>Omzet</th>
</tr>
</thead>
<tbody>
<c:forEach items="${brouwers}" var="brouwer">
<tr>
<td class="rechts">${brouwer.id}</td>
<td>${brouwer.naam}</td>
<td>${brouwer.adres.straat}</td>
<td>${brouwer.adres.huisNr}</td>
<td>${brouwer.adres.postcode}</td>
<td>${brouwer.adres.gemeente}</td>
<td class="rechts"><fmt:formatNumber value="${brouwer.omzet}" /></td>
</tr>
</c:forEach>
</tbody>
</table>
</body>
</html>