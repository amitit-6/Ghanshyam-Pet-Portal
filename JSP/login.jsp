<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login - Ghanshyam Pet Portal</title>
        <link rel="stylesheet" href="login_style.css">
    </head>
    <body class="bg_login">
        <div class="container">
            <form action="login" method="post">
                <h2>Login</h2>
                <input type="text" name="username" placeholder="Username" required>
                <input type="password" name="password" placeholder="Password" required>
                <button type="submit">Login</button>
                <p>Don't have an account? <a href="signup.jsp">Sign Up</a></p>
                <p style="text-align: center; padding-top: 15px; margin-right: 5px">${errorMessage}</p>
            </form>    
        </div>
        <footer>
            <p>&copy; 2025 GhanshyamPetPortal. All Rights Reserved.</p>
        </footer>
    </body>
</html>
