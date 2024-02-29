import java.io.*;
import java.sql.*;
import javax.servlet.http.*;
import javax.swing.JOptionPane;
//import jakarta.servlet.http.*;
public class SignupServlet extends HttpServlet{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	PreparedStatement st;
	Connect cnt;
	ResultSet rs;
	public void doGet(HttpServletRequest req,HttpServletResponse res) throws IOException
	{
		cnt=new Connect();
		try
		{
			st=cnt.cn.prepareStatement("insert into login values (?,?,?,?,?,?)");
			
		}
		catch(SQLException se)
		{
			System.out.println(se);
		}
		PrintWriter pw=res.getWriter();//stream class
		String un,pass,nm,em,cnfpass,ques;
		nm=req.getParameter("name");
		un=req.getParameter("username");    
		em=req.getParameter("email"); 
		pass=req.getParameter("password");
		cnfpass=req.getParameter("confirm-password");
		ques=req.getParameter("Ques");
		
		try {
			
			st.setString(1, nm);
			st.setString(2, un);
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			st.setString(3, em);
			st.setString(4, pass);
			st.setString(5, cnfpass);
			st.setString(6, ques);
			
			
			st.executeUpdate();
			res.sendRedirect("login2.html");
		}
		catch(SQLException se)
		{
			System.out.println(se);
			}
		   

		}
		
		
}