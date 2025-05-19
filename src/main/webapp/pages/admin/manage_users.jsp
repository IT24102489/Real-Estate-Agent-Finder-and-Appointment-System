<%@ page import="com.realestate.model.User" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Manage Clients</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            padding: 20px;
        }

        h2 {
            color: #333;
        }

        ul {
            list-style-type: none;
            padding: 0;
        }

        li {
            padding: 10px;
            border-bottom: 1px solid #ddd;
        }

        li:last-child {
            border-bottom: none;
        }
    </style>
</head>
<body>
<h2>Registered Clients</h2>
<ul>
    <%
        List<User> clients = (List<User>) request.getAttribute("clients");
        if (clients != null && !clients.isEmpty()) {
            for (User u : clients) {
    %>
    <li>
        <strong>Name:</strong> <%= u.getName() %> |
        <strong>Email:</strong> <%= u.getEmail() %> |
        <strong>Username:</strong> <%= u.getUsername() %>
    </li>
    <%
        }
    } else {
    %>
    <li>No clients found.</li>
    <%
        }
    %>
</ul>
</body>
</html>
