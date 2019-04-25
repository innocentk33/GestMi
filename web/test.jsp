<%--
  Created by IntelliJ IDEA.
  User: inno-kirito
  Date: 25/08/2018
  Time: 15:39
  To change this template use File | Settings | File Templates.
--%>



<html>
<head>
    <title>test</title>
</head>
<body>
<h1>TEST</h1>
<c:if test="${empty sessionScope}">
    <c:redirect url="/inscription" context="/inscription">

    </c:redirect>
</c:if>
Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquid beatae dolor ducimus harum illum ipsam, ipsum laboriosam necessitatibus pariatur perspiciatis possimus quia quidem, recusandae, sequi sint temporibus voluptatibus voluptatum! Magni!
</body>
</html>