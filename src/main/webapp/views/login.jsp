	<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
    <style>
		
		/* Styling for error message */
		.error-message {
		    background-color: #dc3545; /* Red background */
		    color: white;
		    padding: 10px;
		    text-align: center;
		    margin: 0 auto 15px;  /* Center the message and add bottom margin */
		    border-radius: 5px;
		    font-weight: bold;
		    max-width: 300px; /* Limit the width */
		    width: 100%; /* Ensure it takes up full width up to max-width */
		    font-size: 14px; /* Slightly smaller font size */
		    box-sizing: border-box; /* Include padding in width calculation */
		}

        .login-box {
            width: 300px;
            margin: 80px auto;
            padding: 20px;
            border: 1px solid #ddd;
            border-radius: 8px;
            box-shadow: 0 2px 8px rgba(0,0,0,0.1);
        }

        .login-box label {
            display: block;
            margin-top: 10px;
            font-weight: bold;
        }

        .login-box input {
            width: 100%;
            padding: 8px;
            margin-top: 5px;
        }

        .login-box button {
            margin-top: 15px;
            width: 100%;
            padding: 10px;
            background-color: #2e8b57;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        /* Styling for error message */
        .error-message {
            background-color: #dc3545; /* Red background */
            color: white;
            padding: 10px;
            text-align: center;
            margin-bottom: 15px;
            border-radius: 5px;
            font-weight: bold;
        }
    </style>
</head>

<body>

<h2>Login Page</h2>

<%-- Check if there is an error message --%>
<% if (request.getAttribute("msg") != null) { %>
    <div class="error-message" id="errorMessage">
        <%= request.getAttribute("msg") %>
    </div>
<% } %>

<form action="loginn" method="post">
    <div class="login-box">
        <h2>Login</h2>

        <label>Email</label>
        <input type="text" name="username" placeholder="Enter username" required />

        <label>Password</label>
        <input type="password" name="password" placeholder="Enter password" required />

        <button type="submit">Login</button>
    </div>
</form>

<%-- JavaScript to hide the error message after 5 seconds --%>
<% if (request.getAttribute("msg") != null) { %>
    <script>
        setTimeout(function() {
            document.getElementById("errorMessage").style.display = "none";
        }, 5000); // Hide the message after 5 seconds
    </script>
<% } %>

</body>
</html>
