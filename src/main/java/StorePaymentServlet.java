
import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import MVC.BeansClass;
import MVC.DataAccess;


@WebServlet("/StorePaymentServlet")
public class StorePaymentServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Retrieve payment details from the form

    	String name = request.getParameter("name");
        String cardNumber = request.getParameter("card_number");
        String amount = request.getParameter("amount");

        // Database connection details
        Connect cnt=new Connect();

        try {
          

            // Create a SQL statement to insert payment details into the database
            String insertSQL = "INSERT INTO payments (name, card_number, amount) VALUES (?, ?, ?)";
            PreparedStatement preparedStatement = cnt.cn.prepareStatement(insertSQL);
            // Insert payment details
            preparedStatement.setString(1, name);
            preparedStatement.setString(2, cardNumber);
            preparedStatement.setString(3, amount);
            preparedStatement.executeUpdate();

            
            
           
           
            //Save the all Details To the Passenger Bookings
          
            MVC.BeansObject.da.SaveDetails();
       

            // Respond to the client
            response.setContentType("text/html");
            PrintWriter out = response.getWriter();
            out.println("<html><body>");
            out.println("<h1>tickets Book Succesfully</h1>");
            out.println("</body></html>");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}