<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Welcome to my site!" />
    </jsp:include>
    <%--<link href="css/style.css" rel="stylesheet" >--%>
</head>
<body>
    <div class="container-fluid">
        <div class="jumbotron">
            <div class="container text-center">
                <div class="banner text-center">
                    <h1 class="display-4">Not So Bad Lister</h1>
                </div>
                    <a class="login-feature" href="/login"> <div class="theCard box col-sm-12 col-12 col-md-5 col-lg-5 col-xl-5">
                        <div class="card-login">
                            <div class="jumbo-card-body">
                                Already a User? Login Here and continue shopping!
                            </div>
                        </div>
                    </div></a>
                    <a class="register-feature" href="/register"><div class="theCard box col-sm-12 col-12 col-md-5 col-lg-5 col-xl-5">
                         <div class="card-register">
                             <div class="jumbo-card-body">
                                New User? Register Here and start shopping!
                             </div>
                         </div>
                    </div></a>
            </div>
        </div>
    </div>


    <jsp:include page="/WEB-INF/partials/bundler.jsp" />
</body>
</html>
