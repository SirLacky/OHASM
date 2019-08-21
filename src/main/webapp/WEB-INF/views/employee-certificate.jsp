<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <style>
        table, th, td {
            border: 1px solid black;
            border-collapse: collapse;
        }
    </style>
    <title>Zaświadczenie</title>
</head>
<body>

..........................<br>
nazwa pracodawcy (pieczęć)<br>
<br>
KARTA SZKOLENIA WSTĘPNEGO<br>
W DZIEDZINIE BEZPIECZEŃSTWA I HIGIENY PRACY<br>

<table style="width: 90%">
    <tr>
        1. Imię i nazwisko osoby<br>
        odbywającej szkolenie ${employee.name} ${employee.surname}.
    </tr>
    <tr>
        2. Nazwa komórki organizacyjnej .....................................
    </tr>
    <tr>
        <th>
            3. Instruktaż ogólny
        </th>
        <th>
            Instruktaż ogólny przeprowadził w dniu ${employee.dateOfEmployment}<br>
            Piotr Kowalski<br>
            (imię i nazwisko przeprowadzającego instruktaż)<br>
            ................................................<br>
            (podpis osoby, której udzielono instruktażu*)<br>

        </th>
    </tr>
    <tr>
        <th>
            4. Instruktaż stanowiskowy
        </th>
        <th>
        <th>
            1) Instruktaż stanowiskowy na stanowisku pracy ${employee.position}<br>
            przeprowadził w dniu: ${employee.dateOfEmployment} .........................<br>
            (imię i nazwisko przeprowadzającego instruktaż)<br>
            Po przeprowadzeniu sprawdzianu wiadomości i umiejętności z zakresu wykonywania pracy<br>
            zgodnie z przepisami i zasadami bezpieczeństwa i higieny pracy Pan(i) ${employee.name}<br>
            ${employee.surname}. został(a) dopuszczony(a) do wykonywania pracy na stanowisku <br>
            ${employee.position}<br>
            ............................... ................................<br>
            podpis osoby, której udzielono instruktażu*) (data i podpis kierownika komórki organizacyjnej)<br>
        </th>
        <th>
            2) Instruktaż stanowiskowy na stanowisku pracy ${employee.position}<br>
            przeprowadził w dniu: ${employee.dateOfEmployment} .........................<br>
            (imię i nazwisko przeprowadzającego instruktaż)<br>
            Po przeprowadzeniu sprawdzianu wiadomości i umiejętności z zakresu wykonywania pracy<br>
            zgodnie z przepisami i zasadami bezpieczeństwa i higieny pracy Pan(i) ${employee.name}<br>
            ${employee.surname}. został(a) dopuszczony(a) do wykonywania pracy na stanowisku <br>
            ${employee.position}<br>
            ............................... ................................<br>
            podpis osoby, której udzielono instruktażu*) (data i podpis kierownika komórki organizacyjnej)<br>
        </th>
        </th>
    </tr>

</table>


${employee.name}<br>
${employee.surname}<br>
${employee.position}<br>
${employee.dateOfEmployment}<br>
</body>
</html>
