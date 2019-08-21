<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Add Employee</title>
</head>
<body>
<form:form method="post" modelAttribute="employee">
    Imię pracownika <form:input path="name"/>  <br>
    Nazwisko pracownika: <form:input path="surname"/><br>
    Data zatrudnienia [YYYY-MM-DD]: <form:input path="dateOfEmployment"/><br>
    Stanowisko: <form:input path="position"/><br>
    <button type="submit">DODAJ!</button>
</form:form>
</body>
</html>
