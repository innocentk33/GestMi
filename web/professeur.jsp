
<html>
<head>
    <title>Espace Membre</title>
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
                <form class="publier mt-5 px-4 py-4" action="espace" method="post" enctype="multipart/form-data">
                    <h4>Creer un nouveau professeur</h4>
                    <div class="form-group"><label for="nom_prof">Nom professeur</label>
                        <input class="form-control" type="text" name="nom_prof" id="nom_prof" required>
                    </div>
                    <div class="form-group"><label for="prenom_prof">Prenom professeur</label>
                        <input class="form-control" type="text" name="prenom_prof" id="prenom_prof" required>
                    </div>
                    <div class="form-group"><label for="pseudo">Pseudo</label>
                        <input class="form-control" type="text" name="pseudo" id="pseudo" required>
                    </div>
                    <div class="form-group"><label for="motdepasse">Mot de passe</label>
                        <input class="form-control" type="password" name="motdepasse" id="motdepasse" required>
                    </div>
                    <div class="form-group"><label for="adresse_prof">Adresse professeur</label>
                        <input class="form-control" type="text" name="adresse_prof" id="adresse_prof">
                    </div>
                    <input type="submit" class="btn btn-success" value="Creer">
                </form>
            </div>
        </div>

    </div>

</div>


</body>
</html>
