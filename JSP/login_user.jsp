<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Ghanshyam Pet Portal</title>
        <link rel="stylesheet" href="index_style.css">
    </head>
    <body>
        <header>
            <div class="logo">
                <a href="index.jsp"><img src="images/web-logo.png" alt="Website-Logo"/></a>
            </div>
            <nav>
                <ul>
                    <li><a href="login_user.jsp">Home</a></li>
                    <li><a href="BrowsePets">Browse Pets</a></li>
                    <li> <a href="adoptPet_user.jsp">Adopt a Pet</a></li>
                    <li><a href="about_user.jsp">About Us</a></li>
                    <li><a href="contact_user.jsp">Contact Us</a></li>
                    <li><a href="#" id="logoutLink">Logout</a></li>
                </ul>
            </nav>
        </header>
        <h2>Welcome, <%= request.getSession().getAttribute("username")%>!</h2>
        <main>
            <section class="slider-section">
                <div class="slider">
                    <div class="slides">
                        <div class="slide">
                            <img src="images/p1.jpg" alt="Pet 1">
                        </div>

                        <div class="slide">
                            <img src="images/p6.jpg" alt="Pet 2">
                        </div>

                        <div class="slide">
                            <img src="images/p3.jpg" alt="Pet 3">
                        </div>

                        <div class="slide">
                            <img src="images/p2.jpg" alt="Pet 4">
                        </div>

                        <div class="slide">
                            <img src="images/pet2.jpg" alt="Pet 4">
                        </div>

                    </div>

                    <button class="prev">&#10094;</button>
                    <button class="next">&#10095;</button>

                    <div class="dots">
                        <span class="dot"></span>
                        <span class="dot"></span>
                        <span class="dot"></span>
                        <span class="dot"></span>
                        <span class="dot"></span>
                    </div>
                </div>
            </section>
        </main>

        <script src="index_script.js"></script>
        <script src="login_script.js"></script>

        <footer>
            <p>&copy; 2025 GhanshyamPetPortal. All Rights Reserved.</p>
        </footer>
    </body>
</html>
