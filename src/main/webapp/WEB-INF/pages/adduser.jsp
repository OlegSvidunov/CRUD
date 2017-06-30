<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" %>

<html>
<head>
    <title>Add</title>
    <style type="text/css">

        table {
            margin: auto;
            margin-top: 50px;
            font-family: "Lucida Sans Unicode", "Lucida Grande", Sans-Serif;
            font-size: 18px;
            color: #669;
            background: white;
            border-collapse: collapse;
        }

    </style>
</head>
<body>

<c:url var="addAction" value="/users/add"/>

<form:form action="${addAction}" commandName="user">
    <table>

        <tr>
            <td>
                <form:label path="name">
                    <spring:message text="Username"/>
                </form:label>
            </td>
            <td>
                <form:input path="name"/>
            </td>
        </tr>
        <tr>
            <td>
                <form:label path="age">
                    <spring:message text="Age"/>
                </form:label>
            </td>
            <td>
                <form:input path="age"/>
            </td>
        </tr>
        <tr>
            <td class="param"><form:label path="admin"><spring:message text="IsAdmin"/></form:label></td>
            <td>
                <form:checkbox path="admin" value="false"/>
            </td>
         </tr>

        <tr>
            <td colspan="2" style="text-align: center">
                <input type="submit" value="<spring:message text="Add user"/>"/>
            </td>
        </tr>
    </table>
</form:form>
</body>
</html>