import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

@WebServlet("/ContactServlet")
public class ContactServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Get form data from request
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String subject = request.getParameter("subject");
        String message = request.getParameter("message");

        // Database connection details
        String jdbcUrl = "jdbc:mysql://localhost:3306/annu";
        String dbUser = "root";
        String dbPassword = "12345";

        try {
            // Establish a database connection
            Class.forName("com.mysql.jdbc.Driver");
            Connection connection = DriverManager.getConnection(jdbcUrl, dbUser, dbPassword);

            // SQL query to insert data into the database
            String sql = "INSERT INTO contactus (Name, Email, Subject, Message) VALUES (?, ?, ?, ?)";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, name);
            preparedStatement.setString(2, email);
            preparedStatement.setString(3, subject);
            preparedStatement.setString(4, message);

            // Execute the query
            preparedStatement.executeUpdate();

            // Close resources
            preparedStatement.close();
            connection.close();
            System.out.println("success");            // Redirect or display a success message
           // response.sendRedirect("success.html"); // Redirect to a success page
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("Error");
            // Handle errors, e.g., show an error message
           // response.sendRedirect("error.html");  Redirect to an error page
        }
    }
}
