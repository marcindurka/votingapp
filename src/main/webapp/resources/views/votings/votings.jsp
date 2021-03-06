<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Głosowania</title>
    <jsp:include page="../include/resurces.jsp"/>
</head>
<body>
<jsp:include page="../include/menu.jsp" />
    <div class="container justify-content-xl-center">

        <jsp:include page="../include/votingsHeader.jsp" />
        <h4>${kindOfVotings}</h4>

        <input type="text" id="myInput" onkeyup="filterByColumn(3)" placeholder="Filtruj po tytule" class="form-control text-center">
        <table id="myTable" class="table table-hover">
            <tr class="header bg-dark text-white">
                <th scope="col-sm-1">ID</th>
                <th scope="col-sm-3">Adres:</th>
                <th scope="col-sm-2">Data:</th>
                <th scope="col-sm-5">Tytuł:</th>
                <th scope="col-sm-1">Wynik:</th>
            </tr>
            <c:forEach items="${votings}" var="voting">
                <tr scope="row" class="row-striped border-left border-right border-bottom text-dark">
                    <td class="text-dark">${voting.id}</td>
                    <td class="text-dark">${voting.adres}</td>
                    <td class="text-dark">${voting.date}</td>
                    <td><a href="${pageContext.servletContext.contextPath}/votings/${voting.id}" class="text-dark">${voting.title}</a></td>
                    <td class="text-dark">
                        <c:if test="${voting.result == true}">uchwalona</c:if>
                        <c:if test="${voting.result == false}">odrzucona</c:if>
                    </td>
                </tr>
            </c:forEach>
            <tr class="row-striped border-left border-right border-bottom bg-dark text-white">
                <td colspan="5" class="text-center">Ilość przeprowadzonych głosowań: ${countVotings}, przyjęto uchwał: ${countResolutions}</td>
            </tr>
        </table>
    </div>
<jsp:include page="../include/footer.jsp" />
</body>
</html>
