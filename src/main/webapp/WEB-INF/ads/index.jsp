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

<div class="container-fluid text-center">
    <h1 class="text-center">Here Are all the ads!</h1>
    <!-- Search form -->
    <div class="text-center active-cyan-4 mb-4 col-lg-3 col-md-3 col-sm-10">
        <input class="form-control" type="text" placeholder="Search" aria-label="Search">
        <button type="submit" class="btn btn-primary">Submit</button>
    </div>

    <c:forEach var="ad" items="${ads}">
        <div class="theCard col-12 col-md-3 col-lg-3 col-sm-12 col-xs-12">
            <div class="card">
                <a href="/showAds?id=${ad.id}"><img class="card-img-top" src="http://placecage.com/c/200/300" alt="cage placeholder"></a>
                <div class="card-body">
                    <h5 class="card-title">${ad.title}</h5>
                    <p class="card-text">${ad.description}</p>
                    <p class="card-text">${ad.price}</p>
                    <a href="/messenger" class="btn btn-primary">Message User</a>
                </div>
            </div>
        </div>

    </c:forEach>
</div>




    <jsp:include page="/WEB-INF/partials/bundler.jsp" />
</body>
</html>
