<%--
  Created by IntelliJ IDEA.
  User: islam
  Date: 10/4/2022
  Time: 1:14 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Custom Login Page</title>

    <style>
        .failed {
            color: red;
        }
    </style>

</head>


<body>
    <h3>My Custom Login Page</h3>

    <form:form action="${pageContext.request.contextPath}/authenticateTheUser" method="post">
        <c:if test="${param.error != null}">

            <i class="failed">Sorry! You Entered invalid username or password</i>
        </c:if>

        <p>
            User name: <input type="text" name="username"/>
        </p>

        <p>
            Password: <input type="password" name="password"/>
        </p>

        <input type="submit" value="Login"/>

    </form:form>
</body>

</html>