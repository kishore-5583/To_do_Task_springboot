<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <title>User Registration</title>
    <style>
        .register-box {
            width: 420px;
            margin: 50px auto;
            padding: 25px;
            border: 1px solid #ddd;
            border-radius: 10px;
            box-shadow: 0 2px 10px rgba(0,0,0,0.1);
        }
        .register-box h2 {
            text-align: center;
            margin-bottom: 20px;
        }
        .register-box label {
            font-weight: bold;
            display: block;
            margin-top: 10px;
        }
        .register-box input,
        .register-box select,
        .register-box textarea {
            width: 100%;
            padding: 8px;
            margin-top: 5px;
        }
        .register-box button {
            margin-top: 20px;
            width: 100%;
            padding: 10px;
            background-color: #2e8b57;
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 16px;
        }
		.alert-success {
		    background-color: #28a745;
		    color: white;
		    padding: 10px;
		    border-radius: 5px;
		    text-align: center; 
		    margin-bottom: 15px;
		}

		.alert-error {
		    background-color: #dc3545;
		    color: white;
		    padding: 10px;
		    border-radius: 5px;
		    text-align: center; 
		    margin-bottom: 15px;
		}
		button{
			cursor : pointer;
		}
		button:hover { 
		    background-color: #45a049;
		}
		

    </style>
</head>

<body>

<%-- Check if there is a success message --%>
<% if(request.getAttribute("successMessage") != null) { %>
    <div class="alert-success" id="successMessage">
        <%= request.getAttribute("successMessage") %>
    </div>
	<% } %>
	<% if(request.getAttribute("errorMessage") != null) { %>
		<div class="alert-success" id="successMessage">
		        <%= request.getAttribute("errorMessage") %>
		</div>
		<% } %>	
    <script>
        setTimeout(function() {
            document.getElementById("successMessage").style.display = "none";
        }, 5000); // Hide the message after 5 seconds
    </script>
	
	<script>
	        setTimeout(function() {
	            document.getElementById("errorMessage").style.display = "none";
	        }, 5000); // Hide the message after 5 seconds
	</script>

<div class="register-box">
    <h2>Register</h2>

    <form action="register" method="post">

        <label>Full Name</label>
        <input type="text" name="fullName" required />

        <label>Email</label>
        <input type="email" name="email" required />

        <label>Password</label>
        <input type="password" name="password" required />

        <label>Confirm Password</label>
        <input type="password" name="confirmPassword" required />

        <label>Age</label>
        <input type="number" name="age" min="1" required />

        <label>Gender</label>
        <select name="gender" required>
            <option value="">-- Select --</option>
            <option>Male</option>
            <option>Female</option>
            <option>Other</option>
        </select>

        <label>Occupation</label>
        <input type="text" name="occupation" />

        <label>Mobile Number</label>
        <input type="text" name="mobile" pattern="[0-9]{10}" placeholder="10 digit number" required />

        <label>Address</label>
        <textarea name="address" rows="3"></textarea>

        <label>
            <input type="checkbox" required /> I agree to Terms & Conditions
        </label>

		<div class="button-container">
			<button type="submit" class="register-btn">Register</button>
		    <button type="button" class="login-btn" onclick="window.location.href='/login'">Login</button>
		 </div>
    </form>
</div>

</body>
</html>
