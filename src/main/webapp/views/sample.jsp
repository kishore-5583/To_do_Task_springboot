<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome to the Application</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }
        .container {
            max-width: 800px;
            margin: 50px auto;
            padding: 20px;
            background-color: white;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }
        h2 {
            text-align: center;
            color: #2e8b57;
        }
        .greeting {
            text-align: center;
            font-size: 18px;
            margin-bottom: 30px;
        }
        .button-container {
            display: flex;
            justify-content: space-around;
            margin-bottom: 20px;
        }
        .button-container button {
            padding: 10px 20px;
            font-size: 16px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        .view-tasks-btn {
            background-color: #28a745;
            color: white;
        }
        .add-task-btn {
            background-color: #007bff;
            color: white;
        }
        .logout-btn {
            background-color: #dc3545;
            color: white;
        }
        .task-list, .add-task-form {
            margin-top: 20px;
        }
    </style>
</head>

<body>

<div class="container">

    <h2>Welcome to the Application</h2>

    <%-- Assuming you have the logged-in username available in the session --%>
    <div class="greeting">
        <p>Hello, <strong><%= session.getAttribute("username") %></strong>! Welcome to the application.</p>
    </div>

    <!-- Buttons -->
    <div class="button-container">
        <form action="/viewTasks" method="get">
            <button type="submit" class="view-tasks-btn">View Tasks</button>
        </form>

        <form action="/addTask" method="get">
            <button type="submit" class="add-task-btn">Add Task</button>
        </form>

        <form action="/logout" method="get">
            <button type="submit" class="logout-btn">Logout</button>
        </form>
    </div>

    <%-- Task List (Optional placeholder) --%>
    <div class="task-list">
        <h3>Your Tasks</h3>
        <ul>
            <li>Task 1: Complete the project</li>
            <li>Task 2: Attend the meeting</li>
            <li>Task 3: Submit the report</li>
        </ul>
    </div>

    <%-- Add Task Form (Optional placeholder) --%>
    <div class="add-task-form">
        <h3>Add a New Task</h3>
        <form action="/saveTask" method="post">
            <label for="taskName">Task Name</label>
            <input type="text" id="taskName" name="taskName" required />

            <label for="taskDescription">Task Description</label>
            <textarea id="taskDescription" name="taskDescription" rows="3"></textarea>

            <button type="submit">Save Task</button>
        </form>
    </div>

</div>

</body>
</html>
