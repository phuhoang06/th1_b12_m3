<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>User Management Application</title>
    <meta charset="UTF-8" />
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }
        h1, h2 {
            text-align: center;
        }
        .table-container {
            margin: 0 auto;
            max-width: 800px;
        }
        table {
            border-collapse: collapse;
            width: 100%;
            margin-top: 1em;
        }
        table, th, td {
            border: 1px solid #444;
        }
        th, td {
            padding: 8px 12px;
            text-align: left;
        }
        caption {
            caption-side: top;
            font-size: 1.2em;
            font-weight: bold;
            padding: 8px;
        }
        .actions a {
            margin-right: 8px;
            text-decoration: none;
            color: #007bff; /* xanh */
        }
        .actions a:hover {
            text-decoration: underline;
        }
        .add-new-user {
            display: inline-block;
            margin-top: 10px;
            text-decoration: none;
            padding: 6px 12px;
            background-color: #007bff;
            color: #ffffff;
            border-radius: 4px;
        }
        .add-new-user:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
<h1>User Management</h1>

<!-- Nút Thêm Mới Người Dùng -->
<div style="text-align: center;">
    <a class="add-new-user" href="/users?action=create">Add New User</a>
</div>

<div class="table-container">
    <table>
        <caption>List of Users</caption>
        <thead>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>Country</th>
            <th>Actions</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="user" items="${listUser}">
            <tr>
                <td><c:out value="${user.id}" /></td>
                <td><c:out value="${user.name}" /></td>
                <td><c:out value="${user.email}" /></td>
                <td><c:out value="${user.country}" /></td>
                <td class="actions">
                    <a href="/users?action=edit&id=${user.id}">Edit</a>
                    <a href="/users?action=delete&id=${user.id}">Delete</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>


</body>
</html>
