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
            --hover-bg: rgba(52, 152, 219, 0.1);
            --gradient: linear-gradient(135deg, #3498db 0%, #2c3e50 100%);
        }

        body {
            font-family: 'Segoe UI', system-ui, -apple-system, sans-serif;
            background: #f8f9fa;
            margin: 0;
            padding: 2rem;
        }

        .container {
            max-width: 1200px;
            margin: auto;
            background: white;
            border-radius: 1rem;
            box-shadow: 0 12px 24px rgba(0,0,0,0.08);
        }

        .header {
            padding: 1.5rem 2rem;
            background: var(--gradient);
            display: flex;
            justify-content: space-between;
            align-items: center;
            border-radius: 1rem 1rem 0 0;
        }

        h1 {
            color: white;
            font-size: 2.2rem;
            margin: 0;
            display: flex;
            align-items: center;
            gap: 1rem;
        }

        .rating-btn {
            background: #add8e6; /* Light blue */
            color: gold; /* Only the star gets the golden glow */
            padding: 0.5rem 0.7rem;
            border: none;
            border-radius: 50%;
            font-size: 1rem;
            cursor: pointer;
            display: inline-flex;
            align-items: center;
            justify-content: center;
            box-shadow: 0 0 8px rgba(0, 0, 0, 0.2);
            transition: transform 0.2s ease;
        }
        .rating-btn:hover {
            transform: scale(1.1);
        }

        .header-controls {
            display: flex;
            align-items: center;
            gap: 1rem;
        }

        .search-bar {
            padding: 0.6rem 1.2rem 0.6rem 2.5rem;
            background: white url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='20' height='20'%3E%3Cpath fill='%232c3e50' d='M18.031 16.617l4.283 4.282-1.415 1.415-4.282-4.283A8.96 8.96 0 0 1 11 20c-4.968 0-9-4.032-9-9s4.032-9 9-9 9 4.032 9 9a8.96 8.96 0 0 1-1.969 5.617zM16.025 15.875A6.977 6.977 0 0 0 18 11c0-3.868-3.133-7-7-7-3.868 0-7 3.132-7 7 0 3.867 3.132 7 7 7a6.977 6.977 0 0 0 4.875-1.975l.15-.15z'/%3E%3C/svg%3E") no-repeat 0.8rem center;
            border-radius: 2rem;
            border: none;
            width: 250px;
            font-size: 1rem;
        }

        .add-btn {
            background: white;
            color: var(--primary);
            padding: 0.6rem 1.2rem;
            border-radius: 2rem;
            text-decoration: none;
            display: flex;
            align-items: center;
            font-weight: 600;
            gap: 0.6rem;
        }

        .table-container {
            padding: 2rem;
            overflow-x: auto;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        th, td {
            padding: 1rem;
            text-align: left;
            border-bottom: 1px solid #ececec;
            font-size: 0.95rem;
        }

        th {
            background: #f4f4f4;
            color: var(--primary);
            text-transform: uppercase;
            font-size: 0.9rem;
        }

        tr:hover {
            background: var(--hover-bg);
        }

        .agent-avatar {
            width: 40px;
            height: 40px;
            object-fit: cover;
            border-radius: 50%;
            border: 2px solid var(--secondary);
        }

        .action-btn {
            padding: 0.5rem 0.8rem;
            border-radius: 0.6rem;
            font-size: 0.9rem;
            border: none;
            cursor: pointer;
            display: inline-flex;
            align-items: center;
            justify-content: center;
        }

        .update-btn {
            background: var(--secondary);
            color: white;
        }

        .delete-btn {
            background: var(--danger);
            color: white;
        }

        .cards-container {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(280px, 1fr));
            gap: 1.5rem;
            padding: 1rem 2rem 2rem;
        }

        .agent-card {
            background: #ffffff;
            border-radius: 1rem;
            padding: 1.5rem;
            box-shadow: 0 6px 14px rgba(0,0,0,0.07);
            border-top: 4px solid var(--secondary);
            transition: transform 0.2s ease;
        }

        .agent-card:hover {
            transform: translateY(-4px);
        }

        .card-header {
            display: flex;
            gap: 1rem;
            align-items: center;
            margin-bottom: 1rem;
        }

        .card-avatar {
            width: 60px;
            height: 60px;
            border-radius: 50%;
            object-fit: cover;
            border: 2px solid var(--secondary);
        }

        .card-title {
            font-size: 1.2rem;
            font-weight: 600;
            margin: 0;
            color: var(--primary);
        }

        .card-id {
            font-size: 0.85rem;
            color: #7f8c8d;
        }

        .detail-row {
            display: flex;
            justify-content: space-between;
            padding: 0.4rem 0;
            font-size: 0.95rem;
        }

        .card-actions {
            margin-top: 1rem;
            display: flex;
            gap: 0.6rem;
        }

        .no-agents {
            text-align: center;
            padding: 4rem;
            font-size: 1.2rem;
            color: #7f8c8d;
        }

        .no-agents i {
            font-size: 3rem;
            margin-bottom: 1rem;
        }
    </style>
</head>
<body>
<div class="container">
    <div class="header">
        <h1><i class="fas fa-user-tie"></i> Registered Agents</h1>
        <div class="header-controls">
            <input type="text" class="search-bar" placeholder="Search agents..." id="searchInput" onkeyup="filterAgents()">
            <a href="agent_add.jsp" class="add-btn">
                <i class="fas fa-plus"></i> New Agent
            </a>
        </div>
    </div>

    <%
        List<Agent> agents = (List<Agent>) request.getAttribute("agents");
        if (agents != null && !agents.isEmpty()) {
    %>

    <div class="table-container">
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
            <tr class="agent-row">
                <td>#<%= agent.getId() %></td>
                <td><img src="<%= agent.getImagePath() %>" class="agent-avatar" onerror="this.src='https://via.placeholder.com/50?text=No+Photo'" alt="Photo"></td>
                <td><%= agent.getName() %></td>
                <td><%= agent.getEmail() %></td>
                <td><%= agent.getPhone() %></td>
                <td><%= agent.getExpertise() %></td>
                <td>




                    <a href="updateAgent?id=<%= agent.getId() %>" class="action-btn update-btn"><i class="fas fa-edit"></i></a>
                    <form action="deleteAgent" method="post" onsubmit="return confirm('Delete this agent?');" style="display:inline;">
                        <input type="hidden" name="id" value="<%= agent.getId() %>">
                        <button type="submit" class="action-btn delete-btn"><i class="fas fa-trash-alt"></i></button>

                    </form>
                </td>
            </tr>
            <% } %>
            </tbody>
        </table>
    </div>

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


    <div class="cards-container">
        <% for (Agent agent : agents) { %>
        <div class="agent-card">
            <div class="card-header">
                <img src="<%= agent.getImagePath() %>" class="card-avatar" alt="Agent" onerror="this.src='https://via.placeholder.com/60?text=No+Photo'">
                <div>
                    <p class="card-title"><%= agent.getName() %></p>
                    <p class="card-id">ID: #<%= agent.getId() %></p>
                </div>



            </div>
            <div class="detail-row"><span>Email:</span><span><%= agent.getEmail() %></span></div>
            <div class="detail-row"><span>Phone:</span><span><%= agent.getPhone() %></span></div>
            <div class="detail-row"><span>Expertise:</span><span><%= agent.getExpertise() %></span></div>
            <div class="card-actions">
                <a href="updateAgent?id=<%= agent.getId() %>" class="action-btn update-btn"><i class="fas fa-edit"></i> Update</a>
                <form action="deleteAgent" method="post" onsubmit="return confirm('Delete this agent?');" style="display:inline;">
                    <input type="hidden" name="id" value="<%= agent.getId() %>">
                    <button type="submit" class="action-btn delete-btn"><i class="fas fa-trash-alt"></i> Delete</button>
                </form>
            </div>
        </div>
        <% } %>
    </div>

    <% } else { %>
    <div class="no-agents">
        <i class="fas fa-user-slash"></i><br>
        No agents registered yet!
    </div>
    <% } %>
</div>

<script>
    function filterAgents() {
        let input = document.getElementById("searchInput").value.toLowerCase();
        let rows = document.querySelectorAll(".agent-row");
        rows.forEach(row => {
            row.style.display = row.innerText.toLowerCase().includes(input) ? "" : "none";
        });
    }
</script>
</body>
</html>
