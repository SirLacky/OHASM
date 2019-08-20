<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Login Page</title>
</head>
<body>
<h1>Login: </h1>

<form method="post" action="/login">
    <c:if test="${param.error !=null}">
        <span>Incorrect Login or Password!</span>
    </c:if>
    <c:if test="${param.logout !=null}">
        <span>You are logged out</span>
    </c:if>
    User Name: <input type="text" name="username" required min="3" max="20"/><br>
    Password: <input type="password" name="password" required min="3" max="20"/><br>
    Stay logged in? <input type="checkbox" name="remember-me"/><br>
    <button type="submit">Log in</button>
</form>
</body>
</html>
