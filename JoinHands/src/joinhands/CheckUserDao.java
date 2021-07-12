package joinhands;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class CheckUserDao {
	
	
	String sql="select name from user where email=? and password=?";
	String url="jdbc:mysql://localhost:3306/joinhands";
	String user="root";
	String pass="vns_1998";
	//private HttpServletRequest request;
	
	
	public boolean check(String email, String password){
			
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection(url,user,pass);
			PreparedStatement st=con.prepareStatement(sql);
			st.setString(1, email);
			st.setString(2, password);
			
			ResultSet rs= st.executeQuery();
			ResultSetMetaData rsmd = rs.getMetaData();
			String username = "";
					
			if(rs.next()) {
				username = rs.getString(1);
				//HttpSession session=request.getSession();
				//session.setAttribute("username",username);
				
				return true;
			}
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
