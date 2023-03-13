<%-- 
    Document   : users
    Created on : 9-Mar-2023, 3:12:45 PM
    Author     : Mitchell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Users</title>
    </head>
    <body>
        <h1>Manage Users</h1>
        <table>
            <tr>
                <th>Username</th>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Email</th>
                <th>Role</th>
                <th>Actions</th>
            </tr>
            <c:forEach items="${users}" var="user">
                <tr>
                    <td>${user.username}</td>
                    <td>${user.firstName}</td>
                    <td>${user.lastName}</td>
                    <td>${user.email}</td>
                    <td>${user.role}</td>
                    <td>
                        <a href="editUser.jsp?id=${user.id}">Edit</a>
                        <a href="deleteUser.jsp?id=${user.id}">Delete</a>
                    </td>
                </tr>
            </c:forEach>

        </table>
        <a href="addUser.jsp">Add User</a>

    </body>
</html>
