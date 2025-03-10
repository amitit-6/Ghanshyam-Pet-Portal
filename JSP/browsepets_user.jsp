<%@page import="com.browsePet.Pet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.sql.Blob" %>
<%@ page import="java.util.Base64" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Browse Pets</title>
        <link rel="stylesheet" href="browsepets_style.css"/>
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
        <h1 style="text-align: center;">Browse Pets</h1>
        <div class="search-container">
            <form action="BrowsePets" method="get">
                <input type="text" id="search" name="search" placeholder="Search by name or breed" value="${param.search}">
                <input type="submit" value="Search">
            </form>
        </div>

        <div class="container">
            <h2 style="text-align: center;">Available Pets</h2>
            <div class="pet-list">
                <%
                    List<Pet> pets = (List<Pet>) request.getAttribute("pets");

                    if (pets != null && !pets.isEmpty()) {
                        for (Pet pet : pets) {
                            Blob petImageBlob = pet.getImage();
                            String imageData = "";

                            if (petImageBlob != null) {
                                byte[] imageBytes = petImageBlob.getBytes(1, (int) petImageBlob.length());
                                imageData = "data:image/jpeg;base64," + Base64.getEncoder().encodeToString(imageBytes);
                            }
                %>
                <div class="pet-item">
                    <img src="<%= imageData%>" alt="<%= pet.getName()%>" class="pet-image">
                    <h2 class="pet-name"><%= pet.getName()%></h2>
                    <p class="pet-breed"><strong>Breed:</strong> <%= pet.getBreed()%></p>
                    <p class="pet-age"><strong>Age:</strong> <%= pet.getAge()%> years</p>
                    <p class="pet-description"><%= pet.getDescription()%></p>
                    <button class="adopt-btn">Adopt Me</button>
                </div>
                <%
                    }
                } else {
                %>
                <p style="text-align: center;">No pets found matching your search criteria.</p>
                <%
                    }
                %>
            </div>
        </div>

        <script src="login_script.js"></script>
        <footer>
            <p>&copy; 2025 GhanshyamPetPortal. All Rights Reserved.</p>
        </footer>
    </body>
</html>