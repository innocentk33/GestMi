<%--
  Created by IntelliJ IDEA.
  User: inno-kirito
  Date: 24/08/2018
  Time: 17:33
  To change this template use File | Settings | File Templates.
--%>
<c:if test="${empty sessionScope.email}">
    <c:redirect url="/connexion"></c:redirect>
</c:if>
<c:if test="${!empty sessionScope.email}">
    <c:out value="Vous etes connectez sous le nom : ${sessionScope.nom}"></c:out>
</c:if>
