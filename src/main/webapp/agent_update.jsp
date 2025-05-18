<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.example.oop.model.Agent" %>
<% Agent agent = (Agent) request.getAttribute("agent"); %>
<!DOCTYPE html>
<html>
<head>
    <title>Update Agent</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background: linear-gradient(120deg, #f0f5ff, #e3eeff);
            display: flex;
            flex-direction: column;
            align-items: center;
            padding: 40px 20px;
            min-height: 100vh;
            margin: 0;
        }

        .update-container {
            background: white;
            padding: 30px 40px;
            border-radius: 16px;
            box-shadow: 0 8px 20px rgba(0,0,0,0.08);
            width: 100%;
            max-width: 500px;
            margin-bottom: 30px;
        }

        h1 {
            color: #2c3e50;
            text-align: center;
            margin-bottom: 30px;
        }

        .current-photo {
            text-align: center;
            margin: 20px 0;
        }

        .current-photo img {
            width: 150px;
            height: 150px;
            border-radius: 50%;
            object-fit: cover;
            border: 3px solid #3498db;
            box-shadow: 0 4px 8px rgba(52,152,219,0.2);
        }

        .form-group {
            margin-bottom: 20px;
        }

        label {
            display: block;
            margin-bottom: 8px;
            font-weight: 500;
            color: #34495e;
        }

        input[type="text"],
        input[type="email"],
        input[type="tel"] {
            width: 100%;
            padding: 12px 15px;
            border: 2px solid #dde4ec;
            border-radius: 8px;
            font-size: 1em;
            transition: border-color 0.3s;
        }

        input:focus {
            border-color: #3498db;
            outline: none;
        }

        .file-upload {
            margin-top: 15px;
            text-align: center;
        }

        .file-upload label {
            background: #f8f9fa;
            border: 2px dashed #dde4ec;
            padding: 15px;
            border-radius: 8px;
            cursor: pointer;
            color: #7f8c8d;
            transition: all 0.3s;
        }

        .file-upload label:hover {
            border-color: #3498db;
            color: #3498db;
        }

        .btn-update {
            background: #3498db;
            color: white;
            width: 100%;
            padding: 14px;
            border-radius: 8px;
            border: none;
            cursor: pointer;
            font-size: 1em;
            margin-top: 20px;
            transition: background 0.3s;
        }

        .btn-update:hover {
            background: #2980b9;
        }
    </style>
</head>
<body>
<div class="update-container">
    <h1>Update Agent Profile</h1>
    <% if (agent != null) { %>
    <form action="updateAgent" method="post" enctype="multipart/form-data">
        <input type="hidden" name="id" value="<%= agent.getId() %>">

        <div class="current-photo">
            <img src="<%= agent.getImagePath() %>"
                 alt="Current Photo"
                 onerror="this.src='https://via.placeholder.com/150?text=No+Photo'">
            <p>Current Profile Photo</p>
        </div>

        <div class="form-group">
            <label>Full Name</label>
            <input type="text" name="name" value="<%= agent.getName() %>" required>
        </div>

        <div class="form-group">
            <label>Email Address</label>
            <input type="email" name="email" value="<%= agent.getEmail() %>" required>
        </div>

        <div class="form-group">
            <label>Phone Number</label>
            <input type="tel" name="phone" value="<%= agent.getPhone() %>" required>
        </div>

        <div class="form-group">
            <label>Expertise</label>
            <input type="text" name="expertise" value="<%= agent.getExpertise() %>" required>
        </div>

        <div class="form-group">
            <div class="file-upload">
                <label>
                    <i class="fas fa-camera"></i>
                    Upload New Photo (Optional)
                    <input type="file" name="image" accept="image/*" hidden>
                </label>
            </div>
        </div>

        <button type="submit" class="btn-update">
            <i class="fas fa-save"></i>
            Save Changes
        </button>
    </form>
    <% } else { %>
    <div class="error">
        <i class="fas fa-exclamation-triangle"></i>
        <p>Agent not found or invalid ID</p>
    </div>
    <% } %>
</div>
</body>
</html>