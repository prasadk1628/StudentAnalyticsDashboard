<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>

<link rel="stylesheet" href="../css/style.css">
</head>

<body>

<div class="login-container">

    <div class="login-card">

        <h2>Student Performance Analytics Dashboard</h2>

        <form action="../LoginServlet" method="post">

            <div class="form-group">
                <label>Username</label>
                <input type="text" name="username" required>
            </div>

            <div class="form-group">
                <label>Password</label>
                <input type="password" name="password" required>
            </div>

            <button type="submit" class="btn">
                Login
            </button>

        </form>

    </div>

</div>

</body>
</html>