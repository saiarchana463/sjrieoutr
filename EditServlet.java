package com.Planon;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/EditServlet")
public class EditServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response)   
	           throws ServletException, IOException {  
	        response.setContentType("text/html");  
	        PrintWriter out=response.getWriter();  
	        out.println("<h1>Update User</h1>");  
	        String email=request.getParameter("email");  
	          out.println("email:"+email);
	        User userObj=UserDao.getUserByEmail(email);  
	          
	        out.print("<form action='EditServlet2' method='post'>");  
	        out.print("<table>");  
	        out.print("<tr><td>Role:</td><td>");  
	        out.print("<select name='role' style='width:150px'>");  
	        out.print("<option>Student</option>");  
	        out.print("<option>Teacher</option>");  
	        out.print("<option>HeadMaster</option>");  
	        out.print("</select>");  
	        out.print("</td></tr>");  
	        out.print("<tr><td>FirstName:</td><td><input type='text' name='firstName' value='"+userObj.getFirstName()+"' required/></td></tr>");  
	        out.print("<tr><td>MiddleName:</td><td><input type='text' name='middleName' value='"+userObj.getMiddleName()+"' /></td></tr>");  
	        out.print("<tr><td>LastName:</td><td><input type='text' name='lastName' value='"+userObj.getLastName()+"' required/></td></tr>");  
	        out.print("<tr><td>Gender:</td><td>");  
	        out.print("<select name='gender' style='width:150px'>");  
	        out.print("<option>Feamle</option>");  
	        out.print("<option>Male</option>");  
	        out.print("</select>");  
	        out.print("</td></tr>");
	        out.print("<tr><td>DateOfBirth:</td><td><input type='date' name='dateOfBirth' value='"+userObj.getDateOfBirth()+"' required/></td></tr>");  
	        out.print("<tr><td>Address:</td><td><input type='text' name='email' value='"+userObj.getEmail()+"' required/></td></tr>");
	        out.print("<tr><td>Phone Number:</td><td><input type='text' name='phoneNumber' value='"+userObj.getPhoneNumber()+"' required/></td></tr>");
	        out.print("<tr><td>Address:</td><td><input type='text' name='address' value='"+userObj.getAddress()+"' required/></td></tr>");
	        out.print("<tr><td>Subject:</td><td><input type='text' name='subject' value='"+userObj.getSubject()+"' required/></td></tr>");
	        out.print("<tr><td colspan='2'><input type='submit' value='Edit & Save '/></td></tr>");  
	        out.print("</table>");  
	        out.print("</form>");  
	          
	        out.close();  
	    }  
    

}