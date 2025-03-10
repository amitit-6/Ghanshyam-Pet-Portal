import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.PrintWriter;
import java.sql.*;

public class ViewPets extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        
        PrintWriter out = response.getWriter();

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ghanshyam_pet_portal", "root", "");
           
            String query = "SELECT * FROM pets";
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery(query);
            
            out.println("<link rel='stylesheet' href='styles.css'>");
         
            out.println("<h2>Pet List</h2>");
            out.println("<table border='1'><tr><th>ID</th><th>Name</th><th>Age</th><th>Breed</th><th>Status</th><th>Images</th></tr>");
            //out.println("<table border='1'><tr><th>ID</th><th>Name</th><th>Age</th><th>Breed</th><th>Status</th></tr>");
        
            while (rs.next()) {
                out.println("<tr>");
                out.println("<td>" + rs.getInt("id") + "</td>");
                out.println("<td>" + rs.getString("name") + "</td>");
                out.println("<td>" + rs.getInt("age") + "</td>");
                out.println("<td>" + rs.getString("breed") + "</td>");
                out.println("<td>" + rs.getString("status") + "</td>");
                out.println("<td>" + rs.getString("image_url") + "</td>");
                out.println("</tr>");
            }
            out.println("</table>");
            out.println("<a href='admin_dashboard.jsp'><p style='text-align: center'>Back to Dashboard</p></a>");
        } catch (ClassNotFoundException | SQLException e) {
        }
    }
}
