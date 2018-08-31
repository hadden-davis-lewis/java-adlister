<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp"/>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />
<br/><br/>
<div class="container-fluid text-center">
    <!-- Search form -->
    <div class="main-btn text-center active-cyan-4 mb-4 col-lg-6 col-md-6 col-sm-10">
        <form action="/ads" method="POST">
             <input name="searchString" class="form-control" type="text" placeholder="Search" aria-label="Search">
             <button type="submit" class="main-btn btn btn-primary"><i class="fas fa-dollar-sign"></i>earch</button>
        </form>
    </div>

        <c:if test = "${ads.size() == 0}">
            <jsp:include page="/WEB-INF/partials/notfound.jsp" />
        </c:if>
    <%--<h1>${ads}</h1>--%>

    <c:forEach var="ad" items="${ads}">
        <div class="theCard col-12 col-md-3 col-lg-3 col-sm-12 col-xs-12">
            <div class="card">
                <a href="/showAds?id=${ad.id}"><img class="card-img-top" src="${ad.photo}" alt="placeholder"></a>
                <div class="card-body">
                    <h5 class="card-title">${ad.title.toUpperCase()}</h5>
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
