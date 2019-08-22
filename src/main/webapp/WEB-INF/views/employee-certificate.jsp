<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <style>
        table, th, td {
            font-size:16px;
            text-shadow: 0 1px 1px LightGray;
            font-family: "Arial Light", Arial, sans-serif;
            border: 1px solid black;
            border-collapse: collapse;
            padding: 20px;
        }
        div {
            margin-top: 10px;
            margin-bottom: 10px;
            text-align: left;
        }
        #sidetext {
            margin-top: 10px;
            margin-bottom: 10px;
            margin-left: 20%;
            text-align: center;
            writing-mode: sideways-lr
        }
    </style>
    <title>Zaświadczenie</title>
</head>
<body>

..........................................................<br>
nazwa pracodawcy (pieczęć)<br>
<br>
KARTA SZKOLENIA WSTĘPNEGO<br>
W DZIEDZINIE BEZPIECZEŃSTWA I HIGIENY PRACY<br>

<table style="width: 90%">

    <tr>
        <th colspan="2">
            <div>
                1. Imię i nazwisko osoby<br>
                odbywającej szkolenie ${employee.name} ${employee.surname}.
            </div>
        </th>
    </tr>
    <tr>
        <th colspan="2">
            <div>
                2. Nazwa komórki organizacyjnej  ..................................................................................................................
                <div>
        </th>
    </tr>
    <tr>
        <th width="10%">
            <div id="sidetext">
                3. Instruktaż<br>
                ogólny
            </div>
        </th>
        <th>
            <div>
                Instruktaż ogólny przeprowadził w dniu ${employee.dateOfEmployment}<br>
                Piotr Kowalski<br>
                (imię i nazwisko przeprowadzającego instruktaż)<br>
                ................................................<br>
                (podpis osoby, której udzielono instruktażu*)<br>
            </div>
        </th>
    </tr>
    <tr>
        <th width="10%">
            <div id="sidetext">
                4. Instruktaż stanowiskowy
            </div>
        </th>
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
    </tr>

</table>


</body>
</html>
