
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = {"/signup"})
public class SignupServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        try {
            UserDao userDao = new UserDao();
            if (userDao.registerUser(username, email, password)) {
                response.sendRedirect("login.jsp");
            } else {
                request.setAttribute("errorMessage", "Email Address already exists!");
                request.getRequestDispatcher("signup.jsp").forward(request, response);
            }
        } catch (Exception e) {
        }
    }
}
