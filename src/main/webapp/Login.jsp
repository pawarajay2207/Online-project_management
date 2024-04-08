<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<style>
body {
    font-family: Arial, sans-serif;
    background-color: #f2f2f2;
    margin: 0;
    padding: 0;
}

header {
    background-color: #333;
    color: white;
    padding: 10px;
    text-align: center;
}

#error-message {
    color: red;
    margin-bottom: 10px;
}

form {
    background-color: white;
    width: 300px;
    margin: 50px auto;
    padding: 20px;
    border-radius: 5px;
    box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
}

form h4 {
    margin-bottom: 20px;
    text-align: center;
}

form label {
    display: block;
    margin-bottom: 5px;
}

form input[type="email"],
form input[type="password"] {
    width: 100%;
    padding: 10px;
    margin-bottom: 10px;
    border: 1px solid #ccc;
    border-radius: 3px;
}

form input[type="email"]:focus,
form input[type="password"]:focus {
    outline: none;
    border-color: #333;
}

form .error-message {
    color: red;
    margin-top: 5px;
}

form button {
    width: 100%;
    background-color: #333;
    color: white;
    padding: 10px;
    border: none;
    border-radius: 3px;
    cursor: pointer;
}

form button:hover {
    background-color: #555;
}

a {
    display: block;
    text-align: center;
    margin-top: 10px;
    color: #333;
    text-decoration: none;
}

a:hover {
    color: #555;
}
</style>
</head>
<body>
	<header>
		<div>
			<img id="logo" src="images/Logo.svg" alt="Logo">
		</div>
	</header>

	<form action="/dashboard" method="post" onsubmit="return validateForm()">
		<div>
			<h4>Login to get started</h4>
		</div>
		<div>
			<label for="email">Email:</label> <input type="email" id="email"
				name="email" placeholder="Email" required>
			<div id="emailError" class="error-message"></div>
		</div>
		<div>
			<label for="password">Password:</label> <input type="password"
				id="password" name="password" placeholder="Password" required>
			<div id="passwordError" class="error-message"></div>
		</div>
		<a href="/forgetpassword.jsp">Forgot password?</a>
		<button type="submit">Login</button>
		
	</form>

	<c:if test="${not empty errorMessage}">
		<div class="error-message">${errorMessage}</div>
	</c:if>

	<script>
		function validateForm() {
			var email = document.getElementById("email").value;
			var password = document.getElementById("password").value;
			var isValid = true;

			// Email validation
			var emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
			if (!emailRegex.test(email)) {
				document.getElementById("emailError").innerText = "Invalid email format";
				isValid = false;
			} else {
				document.getElementById("emailError").innerText = "";
			}

			// Password validation (non-empty)
			if (password.trim() === "") {
				document.getElementById("passwordError").innerText = "Password cannot be empty";
				isValid = false;
			} else {
				document.getElementById("passwordError").innerText = "";
			}

			return isValid;
		}
	</script>

</body>
</html>
