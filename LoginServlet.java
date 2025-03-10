
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet(urlPatterns = {"/login"})
public class LoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        try {
            UserDao userDao = new UserDao();
            if (userDao.validateUser(username, password)) {
                
                HttpSession session=request.getSession();
                session.setAttribute("username",username);
                
                response.sendRedirect("login_user.jsp");
            } else {
                request.setAttribute("errorMessage", "Invalid Credentials");
                request.getRequestDispatcher("login.jsp").forward(request, response);

            }
        } catch (Exception e) {
            System.out.println("Connection not established!" + e);
        }
    }
}
