<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Real Estate Ratings and Reviews</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css">
</head>
<body>
    <nav class="navbar">
        <div class="container">
            <a href="${pageContext.request.contextPath}/index.jsp" class="navbar-brand">Real Estate System</a>
            <ul class="navbar-nav">
                <li class="nav-item"><a href="${pageContext.request.contextPath}/index.jsp" class="nav-link">Home</a></li>
                <li class="nav-item"><a href="${pageContext.request.contextPath}/listAgents" class="nav-link">Agents</a></li>
                <li class="nav-item"><a href="${pageContext.request.contextPath}/listReviews" class="nav-link">Reviews</a></li>
            </ul>
        </div>
    </nav>
    <div class="container mt-4">
