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
            <img class="card-img-top" src="${ad.photo}" alt="placeholder">
        <div class="card2">
            <h2 class="card2-title">${ad.title.toUpperCase()}</h2>
            <p class="card2-info">${ad.description}</p>
            <p class="card2-info">${ad.price}</p>
        </div>
            <br/><br/>

        <div class="card2">
            <h2 class="card2-title">Seller Info</h2>
            <div class="user-circle"><img class="show-profile"src="${user.profile_pic}"></div>
            <p class="card2-info">${user.username}</p>
            <p class="card2-info">${user.location}</p>
            <P class="card2-info">User Rating Goes Here</P>
        </div>





    </div>
    <jsp:include page="/WEB-INF/partials/bundler.jsp" />
    <jsp:include page="/WEB-INF/partials/footer.jsp" />
</body>
</html>
