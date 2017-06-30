<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" %>

<html>
<head>
    <title>Edit</title>
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

<c:url var="addAction" value="/users/edit"/>

<form:form action="${addAction}" commandName="user">
    <table class="features-table">
        <tr>
                <td class="param"><form:label path="id">ID</form:label></td>
                <td><form:input readonly="true" path="id" value="${user.id}" /></td>
        </tr>
        <tr>
            <td class="param">
                <form:label path="name">
                    <spring:message text="Username"/>
                </form:label>
            </td>
            <td>
                <form:input path="name"/>
            </td>
        </tr>
        <tr>
            <td class="param">
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
                <form:checkbox path="admin" value="${user.admin}"/>
            </td>
        </tr>
        <tr>
            <td><form:input type="hidden" path="createDate" value="${user.createDate}" /></td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
                <input type="submit" value="<spring:message text="Edit User"/>"/>
            </td>
        </tr>
    </table>
</form:form>
</body>
</html>