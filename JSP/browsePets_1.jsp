<%@page import="com.browsePet.Pet"%>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>

<%@ page import="java.sql.Blob" %>
<%@ page import="java.util.Base64" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Browse Pets</title>
        <link rel="stylesheet" href="browsePet_style.css"/>
    </head>
    <body>
        <h1 style="text-align: center;">Browse Pets</h1>
        <div class="search-container">
            <form action="BrowsePetsServlet" method="get">
                <input type="text" id="search" name="search" placeholder="Search by name or breed" value="${param.search}">
                <input type="submit" value="Search">
            </form>
        </div>

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
                <img src="<%= imageData%>" alt="<%= pet.getName()%>">
                <h3><%= pet.getName()%></h3>
                <p>Breed: <%= pet.getBreed()%></p>
                <p>Age: <%= pet.getAge()%> years</p>
                <p><%= pet.getDescription()%></p>
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
        <footer>
            <p>&copy; 2025 GhanshyamPetPortal. All Rights Reserved.</p>
        </footer>
    </body>
</html>