<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Hello</title>

    <style type="text/css">
        body{
            margin-top: 50px;
            text-align: center;
            font-family: "Lucida Sans Unicode", "Lucida Grande", Sans-Serif;
            font-size: 24px;
        }
    </style>
</head>
<body>
<p>JavaRush CRUD Web App</p>
<a href="<c:url value="/users"/>" target="_blank">Go to users list</a>
<br/>
</body>
</html>
