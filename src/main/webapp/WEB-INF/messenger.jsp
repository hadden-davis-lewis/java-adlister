<%--
  Created by IntelliJ IDEA.
  User: charleshadden
  Date: 8/30/18
  Time: 2:20 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Messenger</title>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Messenger" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />
    <h1 class="text-center">Messenger</h1>
    <div class="container-fluid">
        <form>
            <div class="message-form form-group">
                <label for="exampleTextarea">Message User</label>
                <textarea class="form-control" id="exampleTextarea" rows="3"></textarea>
            </div>
            <button type="submit" class="btn btn-primary">Submit</button>
        </form>
    </div>
</body>
</html>
