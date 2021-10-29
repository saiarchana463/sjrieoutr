package com.Planon;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ViewServlet
 */
@WebServlet("/ViewServlet")
public class ViewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response)   
            throws ServletException, IOException {  
     response.setContentType("text/html");  
     PrintWriter out=response.getWriter();  
     out.print("<a href='SignUp.jsp'>Add New User</a>"); 
     out.println("");
     out.print("<form >"
    		 +"<input type='text' name='query' placeholder='Search here' />"
     		+ " </form>"
     		+ "");
     String query = request.getParameter("query");
//     request.setAttribute("query", query);
     out.println("<h1>Users List</h1>");  
       
     List<User> list=UserDao.getAllUsers(query);  
       
     out.print("<table border='1' width='100%'");  
     out.print("<tr><th>Role</th>"
     		+ "<th>FirstName</th>"
     		+ "<th>MiddleName</th>"
     		+ "<th>LastName</th>"
     		+ "<th>Gender</th>"
     		+ "<th>DateOfBirth</th>"
     		+ "<th>Email</th>"
     		+ "<th>PhoneNumber</th>"
     		+ "<th>Address</th>"
     		+ "<th>Subject</th></tr>");  
     for(User e:list){  
      out.print("<tr><td>"+e.getRole()+"</td><td>"+
     e.getFirstName()+"</td><td>"+
     e.getMiddleName()+"</td><td>"+
     e.getLastName()+"</td><td>"+
     e.getGender()+"</td><td>"+
     e.getDateOfBirth()+"</td><td>"+
     e.getEmail()+"</td><td>"+
     e.getPhoneNumber()+"</td><td>"+
     e.getAddress()+"</td><td>"+
     e.getSubject()+"</td><td>"+
     		 "<a href='EditServlet?email="+e.getEmail()+"'>edit</a></td><td><a href='DeleteServlet?email="+e.getEmail()+"'>delete</a></td></tr>");  
     }  
     out.print("</table>");  
       
     out.close();  
 }  

}