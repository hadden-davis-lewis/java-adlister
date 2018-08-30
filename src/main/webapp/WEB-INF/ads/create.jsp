<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Create a new Ad" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />
    <div class="container">
        <h1>Create a new Ad</h1>
        <form action="/ads/create" method="post">
            <div class="form-group">
                <label for="title">Title</label>
                <input id="title" name="title" class="form-control" type="text">
            </div>
            <div class="form-group">
                <label for="description">Description</label>
                <textarea id="description" name="description" class="form-control" type="text"></textarea>
            </div>
            <div>
                <label for="photo">photo</label>
                <input type="text" name="photo" id="photo">
            </div>
            <div class="form-group">
                <label for="tags">Enter Search Tags</label>
                <textarea id="tags" name="tags" class="form-control" type="text"></textarea>
            </div>
            <div>
                <label for="price">Price</label>
                <input type="text" name="price" id="price">
            </div>
            <div>
                <label for="location">location</label>
                <input type="text" name="location" id="location">
            </div>
            <input type="submit" class="btn btn-block btn-primary">
        </form>
    </div>
</body>
</html>
