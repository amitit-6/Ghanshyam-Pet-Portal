import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet("/contactServlet_User")
public class contactServlet_User extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");

        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String message = request.getParameter("message");

        PrintWriter out = response.getWriter();

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ghanshyamdb", "root", "");

            PreparedStatement ps = con.prepareStatement("INSERT INTO contact (name, email, message) VALUES (?, ?, ?)");
            ps.setString(1, name);
            ps.setString(2, email);
            ps.setString(3, message);

            int rowsInserted = ps.executeUpdate();

            if (rowsInserted > 0) {
                out.println("<html><body>");
                out.println("<h1>Thank you, " + name + "!</h1>");
                out.println("<p>Your message has been received. We will get back to you soon.</p>");
                out.println("<a href='login_user.jsp'>Go to Home</a>");
                out.println("</body></html>");
            }

            ps.close();
            con.close();
        } catch (ClassNotFoundException | SQLException e) {
            out.println("<html><body>");
            out.println("<h1>Error!</h1>");
            out.println("<p>Unable to submit your message. Please try again later.</p>");
            out.println("<a href='login_user.jsp'>Go Back</a>");
            out.println("</body></html>");
        }
    }
}
