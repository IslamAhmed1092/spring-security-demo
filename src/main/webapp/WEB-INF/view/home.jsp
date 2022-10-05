<%--
  Created by IntelliJ IDEA.
  User: islam
  Date: 10/4/2022
  Time: 10:50 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<head>
    <title>Ejada Company Home Page</title>
</head>
<body>
    <h2>Ejada Company Home Page</h2>
    <hr>

    <p>
        Welcome to Ejada Company Home Page!
    </p>

    <hr>

    <p>
        User: <security:authentication property="principal.username" />
        <br><br>
        Role (s): <security:authentication property="principal.authorities" />
    </p>


    <security:authorize access="hasRole('MANAGER')">
        <p>
            <a href="${pageContext.request.contextPath}/leaders">LeaderShip Meeting</a>
            (Only for Manager peeps)

        </p>
    </security:authorize>

    <security:authorize access="hasRole('ADMIN')">
        <p>
            <a href="${pageContext.request.contextPath}/systems">IT Systems Meeting</a>
            (Only for Admin peeps)
        </p>
    </security:authorize>

    <hr>

    <form:form action="${pageContext.request.contextPath}/logout" method="POST">

        <input type="submit" value="Logout"/>

    </form:form>
</body>
</html>
