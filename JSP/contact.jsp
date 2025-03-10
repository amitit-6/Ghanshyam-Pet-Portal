<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>GhanshyamPetPortal - Contact Us</title>
        <link rel="stylesheet" href="contact_styles.css">
    </head>
    <body>
        <header>
            <div class="logo">
                <a href="index.jsp"><img src="images/web-logo.png" alt="Website-Logo"/></a>
            </div>
            <nav>
                <ul>
                    <li><a href="index.jsp">Home</a></li>
                    <li><a href="BrowsePetsServlet">Browse Pets</a></li>
                    <li> <a href="adoptPet.jsp">Adopt a Pet</a></li>
                    <li><a href="about.jsp">About Us</a></li>
                    <li><a href="contact.jsp" class="active">Contact Us</a></li>
                    <li><a href="login.jsp">Login/Sign Up</a></li>
                </ul>  
            </nav>
        </header>
        <main>
            <section class="contact-section">
                <h1>Contact Us</h1>
                <p>If you have any questions, feedback, or require assistance, please fill out the form below, and we will get back to you as soon as possible.</p>

                <form action="contactServlet" method="POST">
                    <label for="name">Name:</label>
                    <input type="text" id="name" name="name" required>

                    <label for="email">Email:</label>
                    <input type="email" id="email" name="email" required>

                    <label for="message">Message:</label>
                    <textarea id="message" name="message" rows="5" required></textarea>

                    <button type="submit">Submit</button>
                </form>
            </section>
        </main>
        <script src="contact_scripts.js"></script>
        <footer>
            <p>&copy; 2025 GhanshyamPetPortal. All Rights Reserved.</p>
        </footer>
    </body>
</html>