package joinhands;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class CheckServiceDao {
	
	
	

	String sql="select * from service where email=? and password=?";
	String url="jdbc:mysql://localhost:3306/joinhands";
	String user="root";
	String pass="vns_1998";
	
	
	
	public boolean check(String email, String password){
			
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection(url,user,pass);
			PreparedStatement st=con.prepareStatement(sql);
			st.setString(1, email);
			st.setString(2, password);
			
			
			ResultSet rs= st.executeQuery();
					
			if(rs.next())
				return true;
			else
				return false;
			
			
		}
		catch(Exception e)
		{
			System.out.print(e);
		}
		return false;
		
	}
	

	

}
