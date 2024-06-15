
import java.io.IOException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        boolean isValidUser = validateUser(username, password);

        if (isValidUser) {
            response.sendRedirect("Dashboard.jsp");
        } else {
            response.sendRedirect("login.jsp?error=invalid");
        }
    }

    private boolean validateUser(String username, String password) {
        return "admin".equals(username) && "admin123".equals(password);
    }
}
