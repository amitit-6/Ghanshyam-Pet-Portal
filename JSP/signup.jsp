<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sign Up - Ghanshyam Pet Portal</title>
        <link rel="stylesheet" href="signUp_style.css">
    </head>
    <body class="bg_signup">
        <div class="container">
            <form action="signup" method="post">
                <h2>Sign Up</h2>
                <input type="text" name="username" placeholder="Username" required>
                <input type="email" name="email" placeholder="Email" required>
                <input type="password" name="password" placeholder="Password" required>
                <button type="submit">Sign Up</button>
                <p>Already have an account? <a href="login.jsp">Login</a></p>
                <p>${errorMessage}</p>
            </form>    
        </div>
        <footer>
            <p>&copy; 2025 GhanshyamPetPortal. All Rights Reserved.</p>
        </footer>
    </body>
</html>
