package Servlet;

import java.sql.*;

public class Connect {
    private Connection cn;

    public Connect() {
        try {
            // Register the database driver
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException cnfe) {
            System.out.println(cnfe);
        }

        try {
            // Establish the connection
            cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/airreserve","root","12345");
        } catch (SQLException se) {
            System.out.println(se);
        }
    }

    // Method to get the connection
    public Connection getConnection() {
        return cn;
    }

    public static void main(String[] args) {
        new Connect();
    }
}
