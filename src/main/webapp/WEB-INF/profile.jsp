<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile" />
    </jsp:include>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />

    <div class="container">
        <h1>Welcome ${sessionScope.user.username}</h1>
    </div>
        <br>
    <div>
        <div>
            <jsp:include page="/WEB-INF/partials/currentUserProfile.jsp" />
        </div>

    </div>
    <jsp:include page="/WEB-INF/partials/footer.jsp" />
    <jsp:include page="/WEB-INF/partials/bundler.jsp" />
</body>
</html>
