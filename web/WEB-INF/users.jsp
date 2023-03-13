<%-- 
    Document   : users
    Created on : 9-Mar-2023, 3:12:45 PM
    Author     : Mitchell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Users</title>
    </head>
    <body>
        <h1>Manage Users</h1>
        <p>${message}</p>
        <table>
            <tr>
                <th>Username</th>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Email</th>
                <th>Role</th>
            </tr>
            <c:forEach items="${users}" var="user">
                <tr>
                    <td>${user.username}</td>
                    <td>${user.firstName}</td>
                    <td>${user.lastName}</td>
                    <td>${user.email}</td>
                    <td>${user.role}</td>
                    <td><a href="?action=edit?username=${user.username}">Edit</a></td>
                    <td><a href="?action=delete?username=${user.username}">Delete</a></td>
                </tr>
            </c:forEach>

        </table>
        <br>
        <br>
        <h2>Add User</h2>
    <form action="users" method="post">
        <label>Username:</label>
        <input type="text" name="username"><br>
        <label>First Name:</label>
        <input type="text" name="firstName"><br>
        <label>Last Name:</label>
        <input type="text" name="lastName"><br>
        <label>Password</label>
        <input type="text" name="email"><br>
        <label>Role:</label>
        <input
        <input type="submit" value="Add User">
    </form>
    </body>
</html>
