
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

        <div class="container-fluid">
            <nav class="navbar navbar-dark bg-dark">
                <h1>Not-So-Bad Lister</h1>

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

            </nav>
        </div>
    </nav>
</div>
