package com.Planon;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/EditServlet2")
public class EditServlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	 protected void doPost(HttpServletRequest request, HttpServletResponse response)   
	          throws ServletException, IOException {  
	        response.setContentType("text/html");  
	        PrintWriter out=response.getWriter();  
	          
	        String role=request.getParameter("role");  
	        String firstName=request.getParameter("firstName");  
	        String middleName=request.getParameter("middleName");  
	        String lastName=request.getParameter("lastName");  
	        String gender=request.getParameter("gender");  
	        String dateOfBirth=request.getParameter("dateOfBirth");  
	        String email=request.getParameter("email");  
	        String phoneNumber=request.getParameter("phoneNumber"); 
	        String address=request.getParameter("address");  
	        String subject=request.getParameter("subject"); 
	        System.out.println("edit2 :"+role+" "+firstName+" "+middleName+" "+" "+lastName+" "+gender+" "+dateOfBirth+" "+email+" "+phoneNumber+" "+address+" "+subject);
	        
	        User userObj=new User();  
	        userObj.setRole(role);  
            userObj.setFirstName(firstName);  
            userObj.setMiddleName(middleName);  
            userObj.setLastName(lastName);  
            userObj.setGender(gender);
            userObj.setDateOfBirth(dateOfBirth);  
            userObj.setEmail(email);  
            userObj.setPhoneNumber(phoneNumber);  
            userObj.setAddress(address);  
            userObj.setSubject(subject); 
            System.out.println("calling upadte dao");
	        int status=UserDao.update(userObj);  
	        if(status>0){  
	            response.sendRedirect("View.jsp");  
	        }else{  
	            out.println("Sorry! unable to update record");  
	        }  
	          
	        out.close();  
	    }  

}