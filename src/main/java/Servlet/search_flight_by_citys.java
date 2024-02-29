package Servlet;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
public class search_flight_by_citys extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        Connection conn = null;
        String url = "jdbc:mysql://localhost:3306/";
        String dbName = "AIRRESERVE";
        String driver = "com.mysql.jdbc.Driver";
        String userName = "root";
        String password = "12345";
        Statement st=null;
        try {
            
            Class.forName(driver).newInstance();
            conn = DriverManager.getConnection(url + dbName, userName, password);
            System.out.println("connected!.....");
            String from_city = request.getParameter("from_city");
            String to_city = request.getParameter("to_city");
            
            if(from_city == null || from_city.equals("") && to_city == null || to_city.equals("")){
                RequestDispatcher error = request.getRequestDispatcher("error.jsp");
                error.forward(request, response);
                conn.close();
                System.out.println("Disconnected!");
            }
            else{
                ArrayList al = null;
            ArrayList pid_list = new ArrayList();
            String query = "select * from flight_details";
                if(from_city!=null && !from_city.equals("") && to_city!=null && !to_city.equals("") ){
                    query = "SELECT * FROM flight_details WHERE from_city='" + from_city + "' AND to_city='"+to_city+"' ";
                }
                System.out.println("query " + query);
                st = conn.createStatement();
                ResultSet rs = st.executeQuery(query);
            
                while (rs.next()) {
                    al = new ArrayList();

                    al.add(rs.getString(1));
                    al.add(rs.getString(2));
                    al.add(rs.getString(3));
                    al.add(rs.getString(4));
                    al.add(rs.getString(5));
                    al.add(rs.getString(6));
                    al.add(rs.getString(7));
                    al.add(rs.getString(8));
                    al.add(rs.getString(9));
                    al.add(rs.getString(10));
                    al.add(rs.getString(11));
                    al.add(rs.getString(12));
                    al.add(rs.getString(13));
                    al.add(rs.getString(14));
                    al.add(rs.getString(15));
                    al.add(rs.getString(16));
                    al.add(rs.getString(17));
                    al.add(rs.getString(18));
                    al.add(rs.getString(19));
                    al.add(rs.getString(20));
                    al.add(rs.getString(21));
                    System.out.println("al :: " + al);
                    pid_list.add(al);
               }

            request.setAttribute("piList", pid_list);
            RequestDispatcher view = request.getRequestDispatcher("searc_filter_flights_result.jsp");
            view.forward(request, response);
            conn.close();
            System.out.println("Disconnected!");
            }
        } 
        catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    public String getServletInfo() {
        return "getting records from database through servlet controller";
    }// </editor-fold>
}