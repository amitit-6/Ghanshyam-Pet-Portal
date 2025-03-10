
import java.sql.*;

public class UserDao {

    private final Connection connection;

    public UserDao() throws Exception {
        String url = "jdbc:mysql://localhost:3306/ghanshyamdb";
        String user = "root";
        String password = "";
        Class.forName("com.mysql.cj.jdbc.Driver");
        connection = DriverManager.getConnection(url, user, password);
    }

    public boolean validateUser(String username, String password) throws SQLException {
        String query = "SELECT * FROM users WHERE username = ? AND password = ?";
        PreparedStatement ps = connection.prepareStatement(query);
        ps.setString(1, username);
        ps.setString(2, password);
        ResultSet rs = ps.executeQuery();
        return rs.next();
    }

    public boolean registerUser(String username, String email, String password) throws SQLException {
        String query = "INSERT INTO users (username, email, password) VALUES (?, ?, ?)";
        PreparedStatement ps = connection.prepareStatement(query);
        ps.setString(1, username);
        ps.setString(2, email);
        ps.setString(3, password);
        try {
            ps.executeUpdate();
            return true;
        } catch (SQLIntegrityConstraintViolationException e) {
            return false; // Username already exists
        }
    }
}
