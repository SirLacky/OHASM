<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>List of Employees</title>
</head>
<body>
<h1>Wszyscy pracownicy:</h1>

<c:forEach items="${employeeList}" var="employee">
    Imię:
    <c:out value="${employee.name}"/><br>
    Nazwisko:
    <c:out value="${employee.surname}"/><br>
    Stanowisko:
    <c:out value="${employee.position}"/><br>
    Data zatrudnienia:
    <c:out value="${employee.dateOfEmployment}"/><br>
    <button><a href="/employee-list/print?id=${employee.id}">Drukuj zaświadczenie</a></button><br>
    <hr>
</c:forEach>

</body>
</html>
