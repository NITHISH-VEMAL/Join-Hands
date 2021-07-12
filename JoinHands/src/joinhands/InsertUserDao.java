package joinhands;
import java.sql.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class InsertUserDao {

	
	
	String sql="insert into user values(?, ?, ?, ?, ?, ?, ?, ?)";
	String url="jdbc:mysql://localhost:3306/joinhands";
	String user="root";
	String pass="vns_1998";
	
	
	
	public void insert (String name, String address, String area, String city, String state, String phonenumber, String email, String password){
			
		try {
			
			//System.out.print(phonenumber);
			
			Class.forName("com.mysql.jdbc.Driver");
			System.out.print("hi1");
			
			Connection con=DriverManager.getConnection(url,user,pass);
			PreparedStatement st=con.prepareStatement(sql);
			

			
			
			st.setString(1, name);
			st.setString(2, address);
			st.setString(3, area);
			st.setString(4, city);
			st.setString(5, state);
			st.setString(6, phonenumber);
			st.setString(7, email);
			st.setString(8, password);
			
			
			
			st.executeUpdate();				
			String sql1="create table "+name+ " (servicename varchar(100), profession varchar(100))";
			
			PreparedStatement sts=con.prepareStatement(sql1);
			

			
			
		
			sts.execute();				
			
			
			
			con.close();
		}
		catch(Exception e)
		{
			System.out.print(e);
			
		}
}
	

	
	
	
}
