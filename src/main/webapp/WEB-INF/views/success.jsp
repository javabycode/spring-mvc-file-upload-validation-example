<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Success</title>
</head>
<body>

    <h1>Success</h1>
    <c:if test="${not empty filename}">
        ${filename} uploaded successfully.
        <br/><br/>
    </c:if>

    <c:if test="${not empty filenames}">
        <c:forEach var="file" items="${filenames}">
            ${file} uploaded successfully.
            <br/>
        </c:forEach>
        <br/><br/>
    </c:if>

    <a href="<c:url value='/'/>">Upload Page</a>

</body>
</html>