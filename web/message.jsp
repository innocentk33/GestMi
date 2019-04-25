<%--
  Created by IntelliJ IDEA.
  User: inno-kirito
  Date: 24/08/2018
  Time: 13:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Message</title>
</head>
<body>
<c:if test="${!empty sessionScope.email}">
    <%@include file="inc/navbarConnecter.jsp"%>
</c:if>
<c:if test="${empty sessionScope.email}">
    <%@include file="inc/navbar.jsp"%>
</c:if>
<div class="main">
    
    <div class="container">
        <center>
            <h3><%=request.getAttribute("Message")%></h3>
        </center>

        
        <%@include file="inc/footer.jsp"%>
    </div>
    
</div>

</body>
</html>