package com.Planon;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 	response.setContentType("text/html");  
		    PrintWriter out = response.getWriter();  
		          
		    String userName=request.getParameter("userName");  
		    String password=request.getParameter("userpass");  
		          
		    if(UserDao.validate(userName,password)){  
		        RequestDispatcher rd=request.getRequestDispatcher("View.jsp");  
		        rd.forward(request,response);  
		    }  
		    else{  
		        out.print("Sorry username or password error");  
		        RequestDispatcher rd=request.getRequestDispatcher("index.jsp");  
		        rd.include(request,response);  
		    }  
		          
		    out.close();
	}

}
