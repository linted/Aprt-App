<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
	<head>
		<title>Hello</title>
	</head>
	<body>
		<h1>This is a test. Why u no work HTMl?</h1>
		<h2>List of listings.</h2>
		<c:forEach items="${listings}" var="listing">
            <tr>
            <td>${listing.id}</td>
            <td>${listing.headline}</td>
            <td>${listing.lease}</td>
            <td>${listing.price}</td>
            </tr>
        </c:forEach>
	</body>
</html>