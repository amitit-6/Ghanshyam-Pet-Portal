<%@ page import="java.sql.*" %>

<html>
    <head>
        <title>Adopt a Pet</title>
        <link rel="stylesheet" type="text/css" href="AdoptPet_Styles.css">
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
        <div class="container">
            <h1 class="heading">Available Pets for Adoption</h1>
            <div class="pet-card-container">
                <%
                    String dbURL = "jdbc:mysql://localhost:3306/admin_panel_gpp";
                    String dbUser = "root";
                    String dbPass = "";

                    try {
                        Class.forName("com.mysql.cj.jdbc.Driver");
                        Connection conn = DriverManager.getConnection(dbURL, dbUser, dbPass);
                        String sql = "SELECT name , breed , age , description , image FROM pets";
                        Statement st = conn.createStatement();
                        ResultSet rs = st.executeQuery(sql);

                        while (rs.next()) {
                            String name = rs.getString("name");
                            String breed = rs.getString("breed");
                            int age = rs.getInt("age");
                            String description = rs.getString("description");
                            Blob blob = rs.getBlob("image");
                            byte[] imageBytes = blob.getBytes(1, (int) blob.length());
                            String base64Image = java.util.Base64.getEncoder().encodeToString(imageBytes);
                %>
                <div class="pet-item">
                    <img src="data:image/jpeg;base64,<%= base64Image%>" alt="<%= name%>" class="pet-image"/>
                    <!--width="100" height="100"-->
                    <h2 class="pet-name"><%= name%></h2>
                    <p class="pet-breed"><strong>Breed:</strong><%= breed%></p>
                    <p class="pet-age"><strong>Age:</strong><%= age%> years</p>
                    <p class="pet-description"><%= description%></p>
                    <button class="adopt-btn">Adopt Me</button>
                </div>
                <%
                        }
                    } catch (SQLException e) {
                        e.printStackTrace();
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


