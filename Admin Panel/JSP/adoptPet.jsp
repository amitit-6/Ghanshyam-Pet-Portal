<%@ page import="java.sql.*" %>

<html>
    <head>
        <title>Adopt a Pet</title>
        <link rel="stylesheet" type="text/css" href="adoptPets.css">
    </head>
    <body>
        <div class="container">
            <h2>Available Pets for Adoption</h2>
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
                <div class="pet-card">
                    <img src="data:image/jpeg;base64,<%= base64Image%>" alt="<%= name%>" />
                    <!--width="100" height="100"-->
                    <h2><%= name%></h2>
                    <p><strong>Breed: </strong> <%= breed%></p>
                    <p><strong>Age: </strong> <%= age%> years</p>
                    <p class="description"><%= description%></p>
                </div>
                <%
                        }
                    } catch (SQLException e) {
                        e.printStackTrace();
                    }
                %>
            </div>
        </div>
    </body>
</html>
