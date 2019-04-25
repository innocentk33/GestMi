<%--
  Created by IntelliJ IDEA.
  User: inno-kirito
  Date: 24/08/2018
  Time: 00:05
  To change this template use File | Settings | File Templates.
--%>

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
   <%@include file="inc/navbarConnecter.jsp"%>
</c:if>
<c:if test="${empty sessionScope.email}">
    <%@include file="inc/navbar.jsp"%>
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
                    <h5>Publier un article</h5>
                    <div class="form-group"><label for="titre">Titre</label>
                        <input class="form-control" type="text" name="titre" id="titre" required=""></div>
                    <div class="form-group"><label for="categorie">Categorie</label>
                        <select class="form-control" name="categorie" required id="categorie">
                            <optgroup label="Selectioner une categorie">
                                <c:forEach var="categorie" items="${listcategorie}">
                                    <option value="<c:out value="${categorie.nomCategorie}"></c:out>">
                                        <c:out value="${categorie.nomCategorie}"></c:out>
                                    </option>
                                </c:forEach>
                            </optgroup>
                        </select></div>
                    <div class="form-group"><label for="contenu">Contenu de l'article</label>
                        <textarea class="form-control" wrap="hard" name="contenu" id="contenu" required
                                  placeholder="Cet article"></textarea>
                    </div>
                    <div class="form-group">
                        <label for="image">Ajouter une image</label>
                        <input type="file" class="ml-auto" name="image" id="image">
                    </div>
                    <input type="submit" class="btn btn-success" value="Valider votre publication">
                </form>
            </div>
        </div>

    </div>
    
</div>





</body>
</html>
