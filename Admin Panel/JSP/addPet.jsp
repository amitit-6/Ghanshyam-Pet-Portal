<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Pet Details</title>
        <link rel="stylesheet" href="addPets.css">
    </head>
    <body>
        <div class="container">
            <h2>Add Pet Details</h2>
            <form action="AddPetServlet" method="post" enctype="multipart/form-data">
                <div class="form-group">
                    <label for="name">Pet Name:</label>
                    <input type="text" name="name" id="name" required />
                </div>

                <div class="form-group">
                    <label for="breed">Breed:</label>
                    <input type="text" name="breed" id="breed" required />
                </div>

                <div class="form-group">
                    <label for="age">Age:</label>
                    <input type="number" name="age" id="age" required />
                </div>

                <div class="form-group">
                    <label for="description">Description:</label><br>
                    <textarea name="description" id="description" rows="4" required></textarea>
                </div>

                <div class="form-group">
                    <label for="image">Pet Image:</label>
                    <input type="file" name="image" id="image" accept="image/*" required />
                </div>

                <div class="form-group">
                    <input type="submit" value="Add Pet" />
                </div>
            </form>

            <div class="link">
                <a href="adoptPet.jsp">Go to Adopt a Pet</a>
            </div>
        </div>
    </body>
</html>
