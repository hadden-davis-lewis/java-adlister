
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

        <div class="container-fluid">
            <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
                <a class="navbar-brand" href="/ads"><h1>Not-<i class="fas fa-dollar-sign"></i>o-Bad Li<i class="fas fa-dollar-sign"></i>ter</h1></a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">



                    <c:if test = "${sessionScope.user != null}">
                        <a href = "/logout">
                            <button type="button" class="btn btn-dark nav-btn">Logout</button>
                        </a>
                        <a href = "/profile?listerId=${sessionScope.user.id}">
                            <button type="button" class="btn btn-dark nav-btn">View Profile </button>
                        </a>
                        <a href = "/ads/create">
                            <button type="button" class="btn btn-dark nav-btn">Post Ad</button>
                        </a>

                    </c:if>

                    <%--<c:if test = "${sessionScope.user == null}">--%>
                        <%--<a href = "/login">--%>
                            <%--<button type="button" class="btn btn-dark">Login</button>--%>
                        <%--</a>--%>
                    <%--</c:if>--%>

                </div>
            </nav>
        </div>
