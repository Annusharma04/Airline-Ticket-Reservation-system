import java.io.*;
import java.sql.*;
import javax.servlet.http.*;
import javax.swing.JOptionPane;
import MVC.BeansClass;

//import jakarta.servlet.http.*;
public class TestServletDB extends HttpServlet{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	Statement st;
	Connect cnt;
	ResultSet rs;
	public void doGet(HttpServletRequest req,HttpServletResponse res) throws IOException
	{
		cnt=new Connect();
		try
		{
			st=cnt.cn.createStatement();
			
		}
		catch(SQLException se)
		{
			System.out.println(se);
		}
		PrintWriter pw=res.getWriter();//stream class
		 String un,pass;
		pass=req.getParameter("password");
		un=req.getParameter("username");     
		
		
	//Admin Username 
		
		if(un.equals("admin"))
				{
					if(pass.equals("admin123"))
					{
						res.sendRedirect("Admin.html");
					}
					else
					{
						JOptionPane.showMessageDialog(null,"username & password is wrong"); 
					}
				}
		
		
		else {
		
		
						try {
								rs=st.executeQuery("Select * From login");  
								while(rs.next())
								{
									
									if(un.compareTo(rs.getString(2))==0) 
										if(pass.compareTo(rs.getString(4))==0)
										{
											//Setting Un Value in Bean class
											 MVC.BeansObject.ba.setUn(un);
											res.sendRedirect("index.html");
										}
										else
										{   JOptionPane.showMessageDialog(null,"username & password is wrong"); }   
								}
						}
						catch(SQLException se)
						{
							System.out.println(se);
						}
          }
    }	
}
