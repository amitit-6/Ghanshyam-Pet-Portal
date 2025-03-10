
import com.browsePet.Pet;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.*;
import java.util.*;

public class BrowsePets extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String searchQuery = request.getParameter("search");
        List<Pet> pets = new ArrayList<>();

        try {

            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/admin_panel_gpp", "root", "");
            String query = "SELECT * FROM pets";
            if (searchQuery != null && !searchQuery.isEmpty()) {
                query += " WHERE name LIKE ? OR breed LIKE ?";
            }

            PreparedStatement stmt = conn.prepareStatement(query);
            if (searchQuery != null && !searchQuery.isEmpty()) {
                stmt.setString(1, "%" + searchQuery + "%");
                stmt.setString(2, "%" + searchQuery + "%");
            }

            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                Pet pet = new Pet(
                        rs.getInt("id"),
                        rs.getString("name"),
                        rs.getString("breed"),
                        rs.getInt("age"),
                        rs.getString("description"),
                        rs.getBlob("image"));
                pets.add(pet);
            }
            request.setAttribute("pets", pets);
            conn.close();
        } catch (SQLException | ClassNotFoundException e) {
        }

        RequestDispatcher dispatcher = request.getRequestDispatcher("browsepets_user.jsp");
        dispatcher.forward(request, response);
    }
}
