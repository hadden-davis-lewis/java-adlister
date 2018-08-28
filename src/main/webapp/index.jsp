<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Welcome to my site!" />
    </jsp:include>
    <%--<link href="css/style.css" rel="stylesheet" >--%>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />
    <div class="container-fluid">
        <h1>Welcome to the Not-so-Bad Lister!</h1>
    </div>
    <jsp:include page="/WEB-INF/partials/bundler.jsp" />
</body>
</html>
