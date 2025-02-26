<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>
<head>
    <title>Users</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }
        h1, h2 {
            color: #000;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }
        table, th, td {
            border: 1px solid #000;
        }
        th, td {
            padding: 10px;
            text-align: left;
        }
        th {
            background-color: #f0f0f0;
        }
        form {
            display: inline;
        }
        input[type="text"] {
            padding: 5px;
            margin: 2px 0;
            border: 1px solid #ccc;
        }
        button {
            padding: 5px 10px;
            margin: 2px 0;
            border: 1px solid #000;
            background-color: #fff;
            cursor: pointer;
        }
        .add-user-form {
            margin-top: 20px;
        }
        .add-user-form input {
            width: 200px;
            margin-bottom: 10px;
        }
        .error {
            color: red;
            margin-left: 10px;
        }
        .form-group {
            margin-bottom: 10px;
        }
        .form-group label {
            display: inline-block;
            width: 50px;
            text-align: center;
            margin-bottom: 10px;
        }
    </style>
</head>
<body>
<h1>Users</h1>
<table>
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Email</th>
        <th>Actions</th>
    </tr>
    <c:forEach var="user" items="${users}">
        <tr>
            <td>${user.id}</td>
            <td>${user.name}</td>
            <td>${user.email}</td>
            <td>
                <form action="/users/delete" method="post">
                    <input type="hidden" name="id" value="${user.id}">
                    <button type="submit">Delete</button>
                </form>
                <form action="/users/update" method="post">
                    <input type="hidden" name="id" value="${user.id}">
                    <input type="text" name="name" value="${user.name}">
                    <input type="text" name="email" value="${user.email}">
                    <button type="submit">Update</button>
                </form>
            </td>
        </tr>
    </c:forEach>
</table>

<h2>Add User</h2>
<div class="add-user-form">
    <form:form action="/users/add" method="post" modelAttribute="user">
        <div class="form-group">
            <label for="name">Name:</label>
            <form:input path="name" name="name" />
            <form:errors path="name" cssClass="error" /><br>
        </div>
        <div class="form-group">
            <label for="email">Email:</label>
            <form:input path="email" id="email" />
            <form:errors path="email" cssClass="error" />
        </div>
        <button type="submit">Add User</button>
    </form:form>
</div>
</body>
</html>