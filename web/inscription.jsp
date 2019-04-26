<%--
  Created by IntelliJ IDEA.
  User: inno-kirito
  Date: 23/08/2018
  Time: 21:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%@include file="inc/navbar.jsp" %>


<div class="register-photo">
    <div class="form-container">
        <div class="image-holder"></div>
        <form action="inscription" method="post">
            <h2 class="text-center"><strong>Creer</strong>&nbsp; un compte.</h2>
            <div class="form-group"><input class="form-control" type="email" name="email" required="" placeholder="Email"></div>
            <div class="form-group"><input class="form-control" type="text" name="nom" required="" placeholder="Nom"></div>
            <div class="form-group"><input class="form-control" type="text" name="prenom" required="" placeholder="Prenom"></div>
            <div class="form-group"><input class="form-control" type="password" name="motdepasse" required="" placeholder="Mot de passe"></div>
            <div class="form-group"><button class="btn btn-primary btn-block" type="submit">S'enregistrer</button></div><a href="<c:url value="/connexionProf"></c:url> " class="already">Vous avez deja un compte? connectez-vous ici</a></form>
    </div>
</div>
</body>
</html>
