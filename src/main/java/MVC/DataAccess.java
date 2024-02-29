package MVC;
import java.net.http.HttpResponse;
import java.sql.*;
import java.text.ParseException;
import java.text.*;
import java.util.Date;  

public class DataAccess {
	Connect cnt=new Connect();
	 public ResultSet rs,rs1,rs2,rs3,rs4,rs5,rs6;
	Statement st,st1,st2,st3,st4;
	String ID;
	PreparedStatement pst,pst1,pst2,pst3,pst4,pst5,pst6;
	public BeansClass bc=new BeansClass();;
	public ResultSetMetaData rsmd;
	
	
	public int FlightSearch(String from,String to,String Deptdate) throws SQLException,ParseException
	{
		
		int i=-1;
		Statement st=cnt.cn.createStatement();
		
		rs=st.executeQuery("Select * from flights where Source='"+from+"' and Destination='"+to+"' and Date(Departure_date)='"+Deptdate+"'");
		rsmd=rs.getMetaData();

	
		return i;
	}
	
	public void passengersDetails(String FirstName,String LastName,String Gender ,int age)throws SQLException
	{
		//BookFlight.jsp
		pst=cnt.cn.prepareStatement("insert into login values (?,?,?,?)");
		
	}
	public void AdminAddFlights(String from,String to,String Deptdate ,String time ,int price)throws SQLException
	{
		//BookFlight.jsp
		st1=cnt.cn.createStatement();
		rs2=st1.executeQuery("select Flight_ID from flights");
		while(rs2.next())
		{
		if(rs2.getString("Flight_ID")== null)
		{
			ID= "F"+1001;
		}
		else
		{
			ID = rs2.getString(1);
		
			int n= Integer.parseInt(ID.substring(1,5));
			n++;
			ID ="F"+String .valueOf(n);
			MVC.BeansObject.ba.setID(ID);
		}
		}
		
		pst1=cnt.cn.prepareStatement("insert into flights values (?,?,?,?,?,?)");
		pst1.setString(1,from);
		pst1.setString(2,to);
		pst1.setString(3,Deptdate);
		pst1.setString(4, time);
		pst1.setInt(5, price);
		pst1.setString(6, ID);
		
		pst1.executeUpdate();
	}
	public void AdminDeleteFlights(String from,String to,String Deptdate,String time)throws SQLException
	{
		//BookFlight.jsp
		pst2=cnt.cn.prepareStatement("Delete from flights where Source='"+from+"' and Destination='"+to+"' and Date(Departure_date)='"+Deptdate+"' and Time='"+time+"'");
		pst2.executeUpdate();
	}
	
	public boolean Checkseats(String name,String seat) throws SQLException
	{
		st2=cnt.cn.createStatement();
		rs3=st2.executeQuery("select * from seat_selection where seat_number='"+seat+"'");
		
		if(!rs3.isBeforeFirst())
		{
			pst3=cnt.cn.prepareStatement("insert into seat_selection values(?,?)");
			pst3.setString(1, name);
			pst3.setString(2, seat);
			pst3.executeUpdate();
			
			return true;
		}
		else
		{
			System.out.println("seat is already alloted choose another seats");
			return false;
		}
	}

	//MyBookings
	
	public void MyBookings(String un) throws SQLException
	{
		st3=cnt.cn.createStatement();
		rs4=st3.executeQuery("Select * from flightreservations where Username='"+un+"'");
			
	}
	
	//SaveDetails
	
	public void SaveDetails()throws SQLException {
		String un= MVC.BeansObject.ba.getUn();
        
        String seatno="1";
        String from= MVC.BeansObject.ba.getFrom();
        String to= MVC.BeansObject.ba.getTo();
        java.sql.Date Departure_Date= MVC.BeansObject.ba.getDeptdate();
        int Price= MVC.BeansObject.ba.getPrice();
        System.out.println(from);
        System.out.println(Departure_Date);
        
        //For Reteriving FlighId
		pst5 = cnt.cn.prepareStatement("SELECT Flight_ID FROM flights WHERE Source=? AND Destination=? AND Departure_date=?");
		pst5.setString(1, from);
		pst5.setString(2, to);
		pst5.setDate(3, Departure_Date);
		rs5 = pst5.executeQuery();
		String ID="";
		while(rs5.next())
		 ID = rs5.getString("Flight_ID");
        
		
		
		//For Reteriving Time
		pst6 = cnt.cn.prepareStatement("SELECT Departure_time  FROM flights WHERE Flight_ID=?");
		pst6.setString(1, ID);
		rs6 = pst6.executeQuery();
		String Departure_Time="";
		while(rs6.next())
			Departure_Time = rs6.getString("Departure_time");
        
		
		
		System.out.println(Departure_Time);
		
        String insertSQL1 = "INSERT INTO flightReservations VALUES (?,?,?,?,?,?,?,?)";
         PreparedStatement preparedStatement1 = cnt.cn.prepareStatement(insertSQL1);
        
         preparedStatement1.setString(1, un);
         preparedStatement1.setString(2, ID);
         preparedStatement1.setString(3, seatno);
         preparedStatement1.setString(4,from);
         preparedStatement1.setString(5,to);
         preparedStatement1.setDate(6,Departure_Date);
         preparedStatement1.setString(7, Departure_Time);
         preparedStatement1.setInt(8,Price);
         preparedStatement1.executeUpdate();
         
	}
}

