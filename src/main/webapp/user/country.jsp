<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Kết quả tìm kiếm User theo Country</title>
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
            color: #007bff;
        }
        .actions a:hover {
            text-decoration: underline;
        }
        .return-link {
            display: inline-block;
            text-decoration: none;
            padding: 6px 12px;
            background-color: #007bff;
            color: #ffffff;
            border-radius: 4px;
            margin-bottom: 10px;
        }
        .return-link:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>

<h1>Kết quả tìm kiếm User theo Country</h1>

<!-- Nút quay về danh sách (tuỳ chỉnh theo URL mà bạn muốn) -->
<div style="text-align: center;">
    <a class="return-link" href="/users">Return to Main List</a>
</div>

<div class="table-container">
    <table>
        <caption>Danh sách User</caption>
        <thead>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>Country</th>
        </tr>
        </thead>
        <tbody>
        <!-- Sử dụng c:choose để hiển thị thông báo nếu rỗng -->
        <c:choose>
            <c:when test="${empty findUser}">
                <!-- Nếu không có user nào khớp, hiển thị 1 dòng -->
                <tr>
                    <td colspan="4" style="text-align: center;">
                        Không tìm thấy user cho country này!
                    </td>
                </tr>
            </c:when>
            <c:otherwise>
                <!-- Nếu có user, lặp qua danh sách -->
                <c:forEach var="user" items="${findUser}">
                    <tr>
                        <td><c:out value="${user.id}" /></td>
                        <td><c:out value="${user.name}" /></td>
                        <td><c:out value="${user.email}" /></td>
                        <td><c:out value="${user.country}" /></td>
                    </tr>
                </c:forEach>
            </c:otherwise>
        </c:choose>
        </tbody>
    </table>
</div>

</body>
</html>
