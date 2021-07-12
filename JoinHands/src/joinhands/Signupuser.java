package joinhands;


import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/Signupuser")

public class Signupuser extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name=request.getParameter("name");
		String address=(String) request.getParameter("address");
		String area=request.getParameter("area");
		String city= request.getParameter("city");
		String state=request.getParameter("state");
		String phonenumber=(String) request.getParameter("phonenumber");
		String email=request.getParameter("email");
		String password= request.getParameter("password");
		
		System.out.print("hi");
		
	
		
		InsertUserDao ins=new InsertUserDao();
		ins.insert(name,address,area,city,state,phonenumber,email,password);
		
		
		response.sendRedirect("home-user.jsp");
		//doGet(request, response);
	}

}
