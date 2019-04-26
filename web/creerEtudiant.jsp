<%--
  Created by IntelliJ IDEA.
  User: inno-kirito
  Date: 24/08/2018
  Time: 00:05
  To change this template use File | Settings | File Templates.
--%>

<html>
<head>
    <title>Etudiant</title>
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
                    <h4>Creer un Etudiant</h4>
                    <div class="form-group"><label for="nom_etudiant">Nom etudiant</label>
                        <input class="form-control" type="text" name="nom_etudiant" id="nom_etudiant" required>
                    </div>
                    <div class="form-group"><label for="prenom_etudiant">Prenom etudiant</label>
                        <input class="form-control" type="text" name="prenom_etudiant" id="prenom_etudiant" required>
                    </div>
                    <div class="form-group"><label for="matricul_etudiant">Matricule Etudiant</label>
                        <input class="form-control" type="text" name="matricul_etudiant" id="matricul_etudiant" required>
                    </div>
                    <div class="form-group"><label for="dat_naissance">Date de naissance</label>
                        <input class="form-control" type="date" name="dat_naissance" id="dat_naissance" required>
                    </div>
                    <div class="form-group"><label for="lieu_naissance">Lieu de naissance</label>
                        <input class="form-control" type="text" name="lieu_naissance" id="lieu_naissance">
                    </div>
                    <div class="form-group"><label for="tel_etudiant">Telephone</label>
                        <input class="form-control" type="tel" name="tel_etudiant" id="tel_etudiant">
                    </div>

                    <select class="form-control" name="matiere" id="matiere" required>
                        <optgroup label="Matiere">
                         <%--  ToDo:Ajouter une boucle foreach ici--%>
                            <option>

                            </option>
                        </optgroup>

                    </select>


                    <select class="form-control" name="classe" id="classe" required>

                        <optgroup label="Matiere">
                            <%--  ToDo:Ajouter une boucle foreach ici--%>
                            <option>

                            </option>
                        </optgroup>

                    </select>
                    <input type="submit" class="btn btn-success" value="Creer">
                </form>
            </div>
        </div>

    </div>

</div>


</body>
</html>
