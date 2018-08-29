<%--
  Created by IntelliJ IDEA.
  User: charleshadden
  Date: 8/28/18
  Time: 2:16 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing the Ad" />
    </jsp:include>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />

    <div class="container">
        <h1>Here is the Ad!</h1>

        <h2>${ad.title}</h2>
        <p>${ad.description}</p>
        <p>${ad.photo}</p>



    </div>
    <jsp:include page="/WEB-INF/partials/bundler.jsp" />
</body>
</html>
