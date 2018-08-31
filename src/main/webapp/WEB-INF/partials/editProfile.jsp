<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="head.jsp">
        <jsp:param name="title" value="Make profile changes" />
    </jsp:include>
    <title>Edit Profile</title>
</head>
<body>
<jsp:include page="navbar.jsp" />
<div class="container">
    <h1>Edit your profile below:</h1>
    <form action="/editProfile" method="post">
        <div class="form-group">
            <label for="first_name">First Name</label>
            <input id="first_name" name="first_name" class="form-control" type="text" value="${lister.first_name()}">
        </div>
        <div class="form-group">
            <label for="last_name">Last Name</label>
            <input id="last_name" name="last_name" class="form-control" type="text" value="${lister.last_name()}">
        </div>
        <div class="form-group">
            <label for="location">Location</label>
            <input id="location" name="location" class="form-control" type="text" value="${lister.location()}">
        </div>
        <div class="form-group">
            <label for="username">Username</label>
            <input id="username" name="username" class="form-control" type="text" value="${lister.username()}">
        </div>
        <div class="form-group">
            <label for="email">Email</label>
            <input id="email" name="email" class="form-control" type="text" value="${lister.email()}">
        </div>

        <input type="submit" class="btn btn-primary btn-block">
    </form>
</div>
<jsp:include page="/WEB-INF/partials/bundler.jsp" />
</body>
</html>



