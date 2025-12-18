<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Task</title>
    <link rel="stylesheet" href="styles.css">

    <script>
        // Function to hide the message after 5 seconds
        function hideMessage() {
            setTimeout(function() {
                const messageElement = document.getElementById('msg');
                if (messageElement) {
                    messageElement.style.display = 'none';
                }
            }, 5000); // 5000 ms = 5 seconds
        }

        // Run the function once the page loads
        window.onload = hideMessage;
    </script>
</head>
<body>

    <h2>Add Task</h2>

    <!-- Display the message if it's set in the model -->
    <c:if test="${not empty msg}">
        <div id="msg" style="background-color: lightgreen; padding: 10px; border: 1px solid green; 
                             border-radius: 5px; width: 60%; margin: 10px auto; text-align: center; 
                             font-weight: bold; box-shadow: 0 4px 8px rgba(0,0,0,0.1);">
            ${msg}
        </div>
    </c:if>

    <form action="addTaskk" method="POST">
        <label for="taskTitle">Task Title:</label><br>
        <input type="text" id="taskTitle" name="taskTitle" required><br><br>

        <label for="taskDescription">Description:</label><br>
        <textarea id="taskDescription" name="taskDescription" rows="4" cols="50" required></textarea><br><br>

        <input type="submit" value="Add Task">
    </form>

    <br>
    <a href=".jsp">Back to Task List</a>

</body>
</html>
