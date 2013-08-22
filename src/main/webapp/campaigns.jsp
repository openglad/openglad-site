<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/includes/header.jsp" />

<h1>Campaigns</h1>

<table>
    <tr>
        <td>Id</td><td>Campaign</td><td></td><td>Upload Time</td>
    </tr>
<c:forEach var="c" items="${it.campaigns}">
    <tr>
        <td>${c.id}</td>
        <td><a href="/campaigns/${c.id}">${c.name}</a></td>
        <td>${c.file}</td>
        <td>${c.uploadTime}</td>
    </tr>
</c:forEach>
</table>

<jsp:include page="/includes/footer.jsp" />
