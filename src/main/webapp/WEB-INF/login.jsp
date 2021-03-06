<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp"/>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />
    <div class="container login-cage shadow-lg p-3 mb-5 bg-white rounded">
        <h1>Please Log In</h1>
        <form action="/login" method="POST">
            <div class="form-group shadow">
                <label for="username">Username</label>
                <input id="username" name="username" class="form-control" type="text">
            </div>
            <div class="form-group shadow">
                <label for="password">Password</label>
                <input id="password" name="password" class="form-control" type="password">
            </div>
            <input type="submit" class="btn btn-primary btn-block shadow-lg p-3 mb-5" value="Log In">
        </form>
        <a href="/register"><button>Signup</button></a>
    </div>
    <jsp:include page="/WEB-INF/partials/bundler.jsp" />
    <jsp:include page="/WEB-INF/partials/footer.jsp" />
</body>
</html>
