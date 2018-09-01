<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp"/>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />

    <div class="container">

        <div class="profile-container text-center">
            <img class="show-user-profile"src="${lister.profile_pic}">
            <h4><strong>First Name:   </strong><em>${lister.first_name}</em></h4>
            <h4><strong>Last Name:   </strong><em>${lister.last_name}</em></h4>
            <h4><strong>Email:   </strong><em>${lister.email}</em></h4>
            <h4><strong>Member Location:   </strong><em>${lister.location}</em></h4>
            <h4><strong>Member Since:   </strong><em>${lister.user_since}</em></h4>
            <button class="edit-button text-center">Edit My Profile</button>
        </div>

    </div>
    <h1 class="text-center">Your Ads</h1>
    <div class="container">
<%--<c:forEach var="ad" items="${lister.ads}">--%>
    <%--<h6>${lister.ad}</h6>--%>
<%--</c:forEach>--%>
    </div>
    <jsp:include page="/WEB-INF/partials/footer.jsp" />
    <jsp:include page="/WEB-INF/partials/bundler.jsp" />
</body>
</html>
