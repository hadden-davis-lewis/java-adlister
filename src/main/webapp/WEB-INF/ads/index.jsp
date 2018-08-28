<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />

<div class="container">
    <h1>Here Are all the ads!</h1>

    <c:forEach var="ad" items="${ads}">
        <div class="col-md-6">
            <div class="card" style="width: 18rem;">
                <img class="card-img-top" src="http://placecage.com/c/200/300" alt="cage placeholder">
                <div class="card-body">
                    <h5 class="card-title">${ad.title}</h5>
                    <p class="card-text">${ad.description}</p>
                    <a href="../ads/index.jsp" class="btn btn-primary">Return to Adds</a>
                    <a href="#" class="btn btn-primary">Interested? Click Here</a>
                </div>
            </div>
        </div>

    </c:forEach>
</div>




    <jsp:include page="/WEB-INF/partials/bundler.jsp" />
</body>
</html>
