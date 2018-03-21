
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>VotingApp</title>
    <link href="${pageContext.servletContext.contextPath}/resources/css/app.css" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

</head>
<body>
<jsp:include page="menu.jsp" />

    <div class="container">
        <div class="row justify-content-md-center">
            <div class="col-sm-3 bg-dark text-white border border-dark rounded-top text-center">
                Uchwały
            </div>
            <div class="col-sm-1"></div>
            <div class="col-sm-3 bg-dark text-white border border-dark rounded-top text-center">
                Budynki
            </div>
            <div class="col-sm-1"></div>
            <div class="col-sm-3 bg-dark text-white border border-dark rounded-top text-center">
                Mieszkania
            </div>
        </div>
        <div class="row justify-content-md-center">
            <div class="col-sm-3 bg-lightgrey border border-dark rounded-bottom">
                Przyjęte uchwały: ${null}<br>
                Odrzucone uchwały: ${null}<br>
            </div>
            <div class="col-sm-1"></div>
            <div class="col-sm-3 bg-lightgrey border border-dark rounded-bottom">
                Ilość budynków: ${buildings.countBuildings()}<br>
                Łączna powierzchnia: ${flats.allFlatsArea()}<br>
            </div>
            <div class="col-sm-1"></div>
            <div class="col-sm-3 bg-lightgrey border border-dark rounded-bottom">
                Łącznie mieszkań: ${flats.countFlats()}<br>
                Srednia pow. mieszkania: ${flats.allFlatsArea()/flats.countFlats()}
            </div>
        </div>
    </div>



<%--    <div class="btn-group btn-group-lg">
        <a href="buildings" class="btn btn-info">Przeglądaj listę budynków</a>
        <a href="resolutions" class="btn btn-info">Podjęte uchwały</a>
        <a href="flats" class="btn btn-info">Lista mieszkań</a>
        <div class="btn-group btn-group-lg">
            <button type="button" class="btn btn-info dropdown-toggle" data-toggle="dropdown">
                Głosowania <span class="caret"></span></button>
            <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                <a class="dropdown-item" href="preVoteForm">Rozpocznij</a>
                <a class="dropdown-item" href="votingHistory">Historia</a>
            </div>
        </div>
    </div>--%>


</body>
</html>
