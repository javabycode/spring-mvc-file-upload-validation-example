<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Error</title>

    <style>
        .error {
            color: red;
        }
    </style>
</head>
<body>

    <h1>Error</h1>
    <span class="error">${errors}</span>
    <br/><br/>

    <a href="<c:url value='/'/>">Upload Page</a>

</body>
</html>