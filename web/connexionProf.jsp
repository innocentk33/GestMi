<%--
  Created by IntelliJ IDEA.
  User: inno-kirito
  Date: 23/08/2018
  Time: 22:36
  To change this template use File | Settings | File Templates.
--%>

<html>
<head>
    <title>Connexion</title>
</head>
<body>

<%@include file="inc/navbar.jsp" %>

<div class="login-clean">
    <form method="post" action="connexionProf">
        <h2 class="center-block text-center">Connexion Professeur</h2>
        <div class="illustration"><i class="icon ion-ios-contact"></i></div>
        <div class="form-group"><input class="form-control" type="email" name="email" required="" placeholder="Email">
        </div>
        <div class="form-group"><input class="form-control" type="password" name="motdepasse" required
                                       placeholder="Mot de passe"></div>
        <div class="form-group">
            <button class="btn btn-primary btn-block" type="submit">Connexion</button>
        </div>

    </form>
</div>
</body>
</html>
