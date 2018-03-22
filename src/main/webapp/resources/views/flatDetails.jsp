<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Szczegóły Mieszkania</title>
    <jsp:include page="include/resurces.jsp"/></head>
<body>
<jsp:include page="include/menu.jsp" />
<div class="container justify-content-lg-center">
    Szczegóły Mieszkania:
    <div class="w-100"></div>
    ID: ${flat.id}
    <div class="w-100"></div>
    Powierzchnia: ${flat.area}
    <div class="w-100"></div>
    Adres: ${flat.building.adres}
    <div class="w-100"></div>
    Numer mieszkania: ${flat.flatNumber}
    <div class="w-100"></div>
    Właściciel: ${flat.authorizedVoter.name} ${flat.authorizedVoter.surname}
</div>
<jsp:include page="include/footer.jsp" />
</body>
</html>
