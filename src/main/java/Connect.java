
import java.sql.*;
public class Connect {
	Connection cn;
	Connect()
	{
		try				//register database
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
		}
		catch(ClassNotFoundException cnfe)
		{
			System.out.println(cnfe);
		}
		
		try
		{
			//establishing the connection
			cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/BCA2021", "root","gvmitm@123");
		}
		catch(SQLException se)
		{
			System.out.println(se);
		}
	}
	
	public static void main(String ar[])
	{
		new Connect();
	}
}

