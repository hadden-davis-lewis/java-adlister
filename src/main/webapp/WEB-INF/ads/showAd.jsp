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
    <jsp:include page="/WEB-INF/partials/head.jsp"/>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />


        <div class="card2 text-center">
            <img class="card2-img-top" src="${ad.photo}" alt="placeholder">
            <h2 class="card2-title">${ad.title.toUpperCase()}</h2>
            <p class="card2-info">${ad.description}</p>
            <p class="card2-info">${ad.price}</p>
        </div>
            <br/><br/>
        <div class="show-ad">
            <h2 class="card2-title">Seller Info</h2>
            ///how to get the user profile\\\
                <a href="/profile?lister=${ad.userId}">
                    <div class="user-circle"><img class="show-profile"src="${lister.profile_pic}"></div>
                </a>
            <p class="card2-info">${lister.username}</p>
            <p class="card2-info">${lister.location}</p>
            <P class="card2-info">Lister Rating Goes Here</P>
        </div>

    <jsp:include page="/WEB-INF/partials/bundler.jsp" />

</body>
</html>
