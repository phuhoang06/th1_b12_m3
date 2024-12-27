<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8"/>
    <title>User Management Application</title>
    <!-- Nếu muốn dùng Bootstrap, bạn có thể thêm link CDN dưới đây
    <link
        rel="stylesheet"
        href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
    />
    -->
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 30px;
        }
        h1, h2 {
            text-align: center;
        }
        .nav-actions {
            text-align: center;
            margin-bottom: 20px;
        }
        .nav-actions a {
            text-decoration: none;
            color: #007bff; /* Xanh */
            margin: 0 10px;
        }
        .nav-actions a:hover {
            text-decoration: underline;
        }
        .form-container {
            display: flex;
            justify-content: center;
        }
        .form-table {
            border-collapse: collapse;
            border: 1px solid #444;
        }
        .form-table caption {
            font-size: 1.3em;
            font-weight: bold;
            padding: 10px;
        }
        .form-table th, .form-table td {
            padding: 8px 12px;
            border: 1px solid #444;
            vertical-align: middle;
        }
        .form-table input[type="text"] {
            width: 300px;
            padding: 5px;
        }
        .form-table input[type="submit"] {
            padding: 6px 12px;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        .form-table input[type="submit"]:hover {
            background-color: #0056b3;
        }
        /* Định dạng ô colspan */
        .submit-cell {
            text-align: center;
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>
<h1>User Management</h1>

<!-- Link quay lại danh sách người dùng -->
<div class="nav-actions">
    <a href="users?action=users">List All Users</a>
</div>

<div class="form-container">
    <form method="post">
        <table class="form-table">
            <caption>Edit User</caption>

            <!-- Nếu user != null, điền sẵn giá trị vào form để sửa -->
            <c:if test="${user != null}">
                <input type="hidden" name="id" value="<c:out value='${user.id}' />" />
            </c:if>

            <tr>
                <th>User Name:</th>
                <td>
                    <input type="text" name="name"
                           value="<c:out value='${user.name}'/>"
                           placeholder="Enter user name..." />
                </td>
            </tr>
            <tr>
                <th>User Email:</th>
                <td>
                    <input type="text" name="email"
                           value="<c:out value='${user.email}'/>"
                           placeholder="Enter user email..." />
                </td>
            </tr>
            <tr>
                <th>Country:</th>
                <td>
                    <input type="text" name="country"
                           value="<c:out value='${user.country}'/>"
                           placeholder="Enter country..." />
                </td>
            </tr>
            <tr>
                <td colspan="2" class="submit-cell">
                    <input type="submit" value="Save" />
                </td>
            </tr>
        </table>
    </form>
</div>

<!-- Nếu dùng Bootstrap, có thể thêm script bên dưới để hỗ trợ các plugin:
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
-->
</body>
</html>
