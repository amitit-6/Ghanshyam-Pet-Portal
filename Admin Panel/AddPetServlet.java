
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
import java.io.*;
import java.sql.*;

@WebServlet("/AddPetServlet")
@MultipartConfig(maxFileSize = 16177215) // 16MB
public class AddPetServlet extends HttpServlet {

    private final String dbURL = "jdbc:mysql://localhost:3306/admin_panel_gpp";
    private final String dbUser = "root";
    private final String dbPass = "";

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String breed = request.getParameter("breed");
        int age = Integer.parseInt(request.getParameter("age"));
        String description = request.getParameter("description");

        InputStream inputStream = null;

        Part filePart = request.getPart("image");
        if (filePart != null) {
            inputStream = filePart.getInputStream();
        }

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection(dbURL, dbUser, dbPass);

            String sql = "INSERT INTO pets (name, breed, age, description, image) values (?, ?, ?, ?, ?)";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, name);
            ps.setString(2, breed);
            ps.setInt(3, age);
            ps.setString(4, description);

            if (inputStream != null) {
                ps.setBlob(5, inputStream);
            }

            int row = ps.executeUpdate();
            if (row > 0) {
                request.getRequestDispatcher("addPetSuccess.jsp").forward(request, response);
            }
            conn.close();
        } catch (IOException | ClassNotFoundException | SQLException e) {
            System.out.println(e.getMessage());
        }
    }
}
