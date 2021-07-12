package joinhands;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class InsertServiceDao {

	
	
	String sql="insert into service values(?, ?, ?, ?, ?, ?, ?, ?,?,?)";
	String url="jdbc:mysql://localhost:3306/joinhands";
	String user="root";
	String pass="vns_1998";
	
	
	
	public void insert (String name,String profession, String experience ,String address, String area, String city, String state, String phonenumber, String email, String password){
			
		try {
			
			//System.out.print(phonenumber);
			
			Class.forName("com.mysql.jdbc.Driver");
			System.out.print("hi1");
			
			Connection con=DriverManager.getConnection(url,user,pass);
			PreparedStatement st=con.prepareStatement(sql);
			

			
			
			st.setString(1, name);
			st.setString(2, profession);
			st.setString(3, experience);
			
			st.setString(4, address);
			st.setString(5, area);
			st.setString(6, city);
			st.setString(7, state);
			st.setString(8, phonenumber);
			st.setString(9, email);
			st.setString(10, password);
			
			
			
			st.executeUpdate();
			
			
			String sql1="create table "+name+ " (username varchar(100))";
			
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
