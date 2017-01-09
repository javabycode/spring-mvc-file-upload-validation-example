<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Spring MVC File Upload Example + Validator</title>

    <style>
        .error {
            color: red;
        }
    </style>
</head>
<body>

    <h1>Spring MVC File Upload Example + Validator</h1>
    <form:form method="post" modelAttribute="fileModel" enctype="multipart/form-data">

        Upload File: <form:input type="file" path="file" id="file"/>
        <br/>

        <form:errors path="file" cssClass="error"/>
        <br/><br/>

        <input type="submit" value="Upload">

    </form:form>

</body>
</html>