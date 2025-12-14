<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registraion Form</title>
</head>

<style>
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

	</style>
	
<body>
	<h2>Welcome to the Home Page</h2>
	<form action="loginn" method = "post">
	    <div class="login-box">
	        <h2>Login</h2>

	        <label>Username</label>
	        <input type="text" name="username" placeholder="Enter username"   />

	        <label>Password</label>
	        <input type="password" name="password" placeholder="Enter password"   />

	        <button type="submit">Login</button>
	    </div>
	</form>


</body>
</html>
