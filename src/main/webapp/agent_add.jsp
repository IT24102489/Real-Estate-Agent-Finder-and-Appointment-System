<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Add Agent</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background: linear-gradient(120deg, #a1c4fd, #c2e9fb);
            display: flex;
            flex-direction: column;
            align-items: center;
            padding-top: 50px;
        }
        h1 {
            color: #003366;
        }
        form {
            background: white;
            padding: 25px 40px;
            border-radius: 12px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
            width: 400px;
        }
        label {
            display: block;
            margin: 15px 0 5px;
            font-weight: bold;
            color: #333;
        }
        input[type="text"],
        input[type="email"],
        input[type="file"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #bbb;
            border-radius: 8px;
        }
        input[type="submit"] {
            margin-top: 20px;
            width: 100%;
            background-color: #007bff;
            color: white;
            border: none;
            padding: 12px;
            border-radius: 8px;
            font-size: 16px;
            cursor: pointer;
            transition: 0.3s ease;
        }
        input[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>

<h1>Add A New Real Estate Agent 🏡</h1>
<form action="addAgent" method="post" enctype="multipart/form-data">
    <label>Name:</label>
    <input type="text" name="name" required>

    <label>Email:</label>
    <input type="email" name="email" required>

    <label>Phone:</label>
    <input type="text" name="phone" required>

    <label>Expertise:</label>
    <input type="text" name="expertise" required>

    <label>Profile Image:</label>
    <input type="file" name="image" accept="image/*" required>

    <input type="submit" value="Add Agent">
</form>

</body>
</html>
