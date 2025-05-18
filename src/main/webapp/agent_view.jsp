<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="com.example.oop.model.Agent" %>
<!DOCTYPE html>
<html>
<head>
    <title>Registered Agents</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <style>
        :root {
            --primary: #2c3e50;
            --secondary: #3498db;
            --danger: #e74c3c;
            --hover-bg: #f8f9fa;
        }

        body {
            font-family: 'Segoe UI', sans-serif;
            background: #f8f9fa;
            margin: 0;
            padding: 30px;
        }

        .container {
            max-width: 1200px;
            margin: 0 auto;
            background: white;
            border-radius: 12px;
            box-shadow: 0 4px 6px rgba(0,0,0,0.1);
            padding: 2rem;
        }

        .header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 2rem;
        }

        h1 {
            color: var(--primary);
            margin: 0;
            font-size: 2rem;
        }

        .add-btn {
            background: var(--secondary);
            color: white;
            padding: 10px 20px;
            border-radius: 6px;
            text-decoration: none;
            display: flex;
            align-items: center;
            gap: 8px;
            transition: background 0.3s;
        }

        .add-btn:hover {
            background: #2980b9;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            background: white;
            border-radius: 8px;
            overflow: hidden;
        }

        th, td {
            padding: 15px 20px;
            text-align: left;
            border-bottom: 1px solid #eee;
        }

        th {
            background: var(--primary);
            color: white;
            font-weight: 600;
        }

        tr:hover {
            background: var(--hover-bg);
        }

        .agent-avatar {
            width: 60px;
            height: 60px;
            border-radius: 50%;
            object-fit: cover;
            border: 2px solid var(--secondary);
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
        }

        .actions {
            display: flex;
            gap: 10px;
        }

        .btn {
            padding: 8px 15px;
            border-radius: 5px;
            border: none;
            cursor: pointer;
            display: inline-flex;
            align-items: center;
            gap: 6px;
            transition: transform 0.2s;
        }

        .btn:hover {
            transform: translateY(-2px);
        }

        .btn-update {
            background: var(--secondary);
            color: white;
        }

        .btn-delete {
            background: var(--danger);
            color: white;
        }
    </style>
</head>
<body>
<div class="container">
    <div class="header">
        <h1>Registered Agents</h1>
        <a href="agent_add.jsp" class="add-btn">
            <i class="fas fa-plus"></i>
            Add New Agent
        </a>
    </div>

    <% List<Agent> agents = (List<Agent>) request.getAttribute("agents"); %>
    <% if (agents != null && !agents.isEmpty()) { %>
    <table>
        <thead>
        <tr>
            <th>ID</th>
            <th>Photo</th>
            <th>Name</th>
            <th>Email</th>
            <th>Phone</th>
            <th>Expertise</th>
            <th>Actions</th>
        </tr>
        </thead>
        <tbody>
        <% for (Agent agent : agents) { %>
        <tr>
            <td>#<%= agent.getId() %></td>
            <td>
                <img src="<%= agent.getImagePath() %>"
                     class="agent-avatar"
                     alt="Agent photo"
                     onerror="this.src='https://via.placeholder.com/60?text=No+Photo'">
            </td>
            <td><%= agent.getName() %></td>
            <td><%= agent.getEmail() %></td>
            <td><%= agent.getPhone() %></td>
            <td><%= agent.getExpertise() %></td>
            <td>
                <div class="actions">
                    <a href="updateAgent?id=<%= agent.getId() %>" class="btn btn-update">
                        <i class="fas fa-update"></i>
                        Update
                    </a>
                    <form action="deleteAgent" method="post"
                          onsubmit="return confirm('Delete this agent?');">
                        <input type="hidden" name="id" value="<%= agent.getId() %>">
                        <button type="submit" class="btn btn-delete">
                            <i class="fas fa-trash-alt"></i>
                            Delete
                        </button>
                    </form>
                </div>
            </td>
        </tr>
        <% } %>
        </tbody>
    </table>


    <!-- ADD THIS SEPARATOR -->
    <div style="margin: 40px 0; text-align: center; position: relative;">
        <div style="border-top: 2px solid #3498db;
                  margin: 20px 0;
                  position: relative;">
            <span style="background: white;
                       padding: 0 20px;
                       position: relative;
                       top: -15px;
                       color: #2c3e50;
                       font-size: 1.2rem;
                       font-weight: 600;">
                🏡 Agent Profiles 🏡
            </span>
        </div>
    </div>



    <!-- START OF ENHANCED AGENT CARDS -->
    <div style="margin: 40px 0; display: grid; grid-template-columns: repeat(auto-fill, minmax(320px, 1fr)); gap: 25px;">
        <% for (Agent agent : agents) { %>
        <div style="background: linear-gradient(135deg, #f8f9fa, #ffffff);
                  border-radius: 12px;
                  padding: 25px;
                  box-shadow: 0 5px 15px rgba(0,0,0,0.1);
                  border-left: 4px solid #3498db;
                  transition: transform 0.3s ease;">
            <div style="display: flex; align-items: center; margin-bottom: 20px;">
                <img src="<%= agent.getImagePath() %>"
                     style="width: 100px;
                            height: 100px;
                            border-radius: 50%;
                            object-fit: cover;
                            border: 3px solid #3498db;
                            box-shadow: 0 4px 8px rgba(52,152,219,0.2);
                            margin-right: 20px;"
                     alt="Agent photo"
                     onerror="this.src='https://via.placeholder.com/100'">
                <div>
                    <h3 style="margin: 0;
                             color: #2c3e50;
                             font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
                             font-size: 1.4rem;
                             letter-spacing: -0.5px;">
                        <%= agent.getName() %>
                    </h3>
                    <p style="margin: 5px 0 0;
                            color: #7f8c8d;
                            font-size: 0.9rem;
                            font-weight: 500;">
                        ID: #<%= agent.getId() %>
                    </p>
                </div>
            </div>
            <div style="margin: 20px 0;">
                <div style="display: flex;
                          justify-content: space-between;
                          margin-bottom: 12px;
                          padding: 10px 0;
                          border-bottom: 1px solid rgba(52,152,219,0.1);">
                    <span style="color: #7f8c8d;
                               font-weight: 500;
                               font-size: 0.95rem;">
                        Email:
                    </span>
                    <span style="color: #2c3e50;
                               font-weight: 600;
                               max-width: 60%;
                               text-align: right;">
                        <%= agent.getEmail() %>
                    </span>
                </div>
                <div style="display: flex;
                          justify-content: space-between;
                          margin-bottom: 12px;
                          padding: 10px 0;
                          border-bottom: 1px solid rgba(52,152,219,0.1);">
                    <span style="color: #7f8c8d;
                               font-weight: 500;
                               font-size: 0.95rem;">
                        Phone:
                    </span>
                    <span style="color: #2c3e50;
                               font-weight: 600;">
                        <%= agent.getPhone() %>
                    </span>
                </div>
                <div style="display: flex;
                          justify-content: space-between;
                          padding: 10px 0;">
                    <span style="color: #7f8c8d;
                               font-weight: 500;
                               font-size: 0.95rem;">
                        Expertise:
                    </span>
                    <span style="color: #3498db;
                               font-weight: 700;
                               text-transform: uppercase;
                               letter-spacing: 0.5px;">
                        <%= agent.getExpertise() %>
                    </span>
                </div>
            </div>
            <div style="display: flex;
                      gap: 15px;
                      justify-content: flex-end;
                      margin-top: 20px;">
                <a href="updateAgent?id=<%= agent.getId() %>"
                   style="padding: 10px 20px;
                          background: linear-gradient(135deg, #3498db, #2980b9);
                          color: white;
                          border-radius: 6px;
                          text-decoration: none;
                          font-weight: 600;
                          transition: all 0.3s ease;">
                    <i class="fas fa-edit"></i> Update
                </a>
                <form action="deleteAgent" method="post"
                      onsubmit="return confirm('Delete this agent?');"
                      style="display: inline;">
                    <input type="hidden" name="id" value="<%= agent.getId() %>">
                    <button type="submit"
                            style="padding: 10px 20px;
                                   background: linear-gradient(135deg, #e74c3c, #c0392b);
                                   color: white;
                                   border: none;
                                   border-radius: 6px;
                                   cursor: pointer;
                                   font-weight: 600;
                                   transition: all 0.3s ease;">
                        <i class="fas fa-trash-alt"></i> Delete
                    </button>
                </form>
            </div>
        </div>
        <% } %>
    </div>
    <!-- END OF ENHANCED AGENT CARDS -->

    <% } else { %>
    <div class="no-agents">
        <i class="fas fa-user-slash fa-2x"></i>
        <p>No agents found in the system</p>
    </div>
    <% } %>
</div>
</body>
</html>