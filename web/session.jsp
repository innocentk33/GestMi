
<c:if test="${empty sessionScope.email}">
    <c:redirect url="/index"></c:redirect>
</c:if>
<c:if test="${!empty sessionScope.email}">
    <c:out value="Vous etes connectez sous le nom : ${sessionScope.nom}"></c:out>
</c:if>
