<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="container-fluid">
    <nav class="navbar navbar-dark bg-dark">
        Not-So-Bad Lister
        <%--<ul class="nav navbar-nav navbar-right">--%>
            <%--<li><a href="/login">Login</a></li>--%>
            <%--<li><a href="/logout">Logout</a></li>--%>
        <%--</ul>--%>

            <%--<c:if>--%>
                <c:if test = "${sessionScope.user != null}">
                    <a href = "/logout">
                        <button type="button" class="btn btn-dark">Logout</button>
                    </a>
                </c:if>

                <c:if test = "${sessionScope.user == null}">
                    <a href = "/login">
                        <button type="button" class="btn btn-dark">Login</button>
                    </a>
                </c:if>

            <%--</c:if>--%>


    </nav>
</div>
