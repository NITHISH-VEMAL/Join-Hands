package joinhands;


import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import joinhands.InsertServiceDao;
import joinhands.InsertUserDao;

/**
 * Servlet implementation class Signupservice
 */
@WebServlet("/Signupservice")
public class Signupservice extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
			String name=request.getParameter("name");
			String profession=request.getParameter("profession");
			String experience=(String)request.getParameter("experience");
			
			String address=(String) request.getParameter("address");
			String area=request.getParameter("area");
			String city= request.getParameter("city");
			String state=request.getParameter("state");
			String phonenumber=(String) request.getParameter("phonenumber");
			String email=request.getParameter("email");
			String password= request.getParameter("password");
			
			System.out.print("hi");
			
		
			
			InsertServiceDao is=new InsertServiceDao();
			is.insert(name,profession, experience,address,area,city,state,phonenumber,email,password);
			
			
			response.sendRedirect("home-service.jsp");
			//doGet(request, response);
	}

}
