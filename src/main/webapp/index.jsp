<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
    <link rel="stylesheet" href="styles.css"> <!-- Link to your CSS file -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="script.js"></script> <!-- Link to your jQuery validation script -->
</head>
<body>
    <div class="login-container">
        <h1>Login</h1>
        <% if (request.getParameter("error") != null && request.getParameter("error").equals("invalid")) { %>
            <div class="error-message">Invalid username or password. Please try again.</div>
        <% } %>
        <form id="loginForm" action="LoginServlet" method="POST">
            <div class="input-group">
                <label for="username">Username</label>
                <input type="text" id="username" name="username" required>
            </div>
            <div class="input-group">
                <label for="password">Password</label>
                <input type="password" id="password" name="password" required>
            </div>
            <button type="submit" class="login-button">Login</button>
        </form>
    </div>
</body>
</html>
