<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Registration Page</title>
</head>
<body>
<h1>Register: </h1>

<form:form modelAttribute="registrationForm" method="post">
    <form:errors path="*"/><br>
    User Name: <form:input path="username"/><br>
    Password: <form:password path="password"/><br>
    Confirm Password: <form:password path="confirmedPassword"/><br>
    <button type="submit">Submit</button>
</form:form>
</body>
</html>
