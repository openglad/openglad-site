<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/includes/header.jsp" />

<h1>Campaigns</h1>

<table>
    <tr>
        <td>Title</td>
        <td>Author</td>
        <td>Description</td>
        <td>Download</td>
    </tr>
<c:forEach var="c" items="${it.campaigns}">
    <tr>
        <td><a href="/campaigns/${c.id}">${c.title}</a></td>
        <td>${c.authors}</td>
        <td>${c.description}</td>
        <td><a href="/campaigns/${c.id}/file">Download</a></td>
    </tr>
</c:forEach>
</table>

<jsp:include page="/includes/footer.jsp" />
