
<html>
<head>
    <title>Classe</title>
    <style type="text/css">
        <%@include file="assets/css/margin.css" %>
    </style>
</head>
<body>
<%--verification de la session--%>
<%--<%@include file="session.jsp" %>--%>
<c:if test="${!empty sessionScope.email}">
    <%@include file="inc/navbarConnecter.jsp" %>
</c:if>
<c:if test="${empty sessionScope.email}">
    <%@include file="inc/navbar.jsp" %>
</c:if>


<div class="main">
    <div class="container">
        <div class="row">
            <div class="col-6 col-md-12">
                <c:if test="${!empty sessionScope.email}">
                    <h3 class="text-capitalize">Bonjour M/Me :<c:out value="${sessionScope.nom}"></c:out></h3>
                </c:if>
            </div>
        </div>
        <div class="row">
            <div class="col-8 col-lg-8 col-md-8">
                <form class="publier mt-5 px-4 py-4" action="creerClasse" method="post" enctype="multipart/form-data">
                    <h4>Creer une nouvelle classe</h4>
                    <div class="form-group"><label for="nom_classe">Nom classe</label>
                        <input class="form-control" type="text" name="nom_classe" id="nom_classe" required>
                    </div>
                    <div class="form-group"><label for="niveau_classe">Niveau Classe</label>
                        <input class="form-control" type="text" name="niveau_classe" id="niveau_classe" required>
                    </div>
                    <input type="submit" class="btn btn-success" value="Creer">
                </form>
            </div>
        </div>

    </div>

</div>


</body>
</html>
