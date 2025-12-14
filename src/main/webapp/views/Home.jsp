<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login and Register</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f7f6;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .container {
            text-align: center;
            background-color: white;
            padding: 20px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
        }
        button {
            background-color: #4CAF50;
            color: white;
            border: none;
            padding: 10px 20px;
            font-size: 16px;
            cursor: pointer;
            margin: 10px;
            border-radius: 5px;
            transition: background-color 0.3s;
        }
        button:hover {
            background-color: #45a049;
        }
        .button-container {
            display: flex;
            justify-content: center;
            gap: 15px;
        }
    </style>
</head>
<body>

    <div class="container">
        <h2>Welcome to Our Application(Simple ToDoList)</h2>
        <p>Please choose one of the options below:</p>

        <div class="button-container">
			<form action="registerform" method="get">
			    <button type="submit">Register New User</button>
			</form>

			<form action="login" method="get">
			    <button type="submit">Login</button>
			</form>

        </div>
    </div>

</body>
</html>
