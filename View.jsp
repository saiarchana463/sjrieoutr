<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
	<%@ page import="java.util.List" %>
	<%@ page import="com.Planon.User,com.Planon.UserDao" %>
  <%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>School Management</title>
 <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>

	<header>
                <nav class="navbar navbar-expand-md navbar-dark bg-info" style="background-color: info">
                    <div>
                        <a href="/SchoolApplication" class="navbar-brand"> Planon  </a>
                    </div>

                    <ul class="navbar-nav">
                        <li><a href="<%=request.getContextPath()%>/View.jsp" class="nav-link">Users</a></li>
                    </ul>
                </nav>
            </header>
            <br>

            <div class="row">
                <!-- <div class="alert alert-success" *ngIf='message'>{{message}}</div> -->

                <div class="container">
                    <h3 class="text-center">List of Users</h3>
                    <hr>
                    <div class="container d-flex justify-content-between">
						<div class="p-2"><a href="SignUp.jsp" class="btn btn-success">RegisterNew User</a></div>
                        <div class="p-2">  <form class="mr-auto"><input type="text" name="query" placeholder="search here"/></form></div>
   						<%String query = request.getParameter("query");
   						List<User> list=UserDao.getAllUsers(query);
   						request.setAttribute("list",list);
   						System.out.println("list:"+list);
   						
   						%>
                    </div>
                    <br>
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th>Role</th>
                                <th>FirstName</th>
                                <th>MiddleName</th>
                                <th>LastName</th>
                                <th>Gender</th>
                                <th>Date Of Birth</th>
                                <th>Email</th>
                                <th>PhoneNumber</th>
                                <th>Address</th>
                                <th>Subject</th>
                            </tr>
                        </thead>
                        <tbody>
                        	
                            <!--   for (Todo todo: todos) {  -->
                            <c:forEach var="user" items="${list}">
							
                                <tr>
                                    <td>
                                      <c:out value="${user.getRole()}" />
                                    </td>
                                    <td>
                                        <c:out value="${user.getFirstName()}" />
                                    </td>
                                    <td>
                                        <c:out value="${user.getMiddleName()}" />
                                    </td>
                                    <td>
                                        <c:out value="${user.getLastName()}" />
                                    </td>
                                    <td>
                                        <c:out value="${user.getGender()}" />
                                    </td>
                                    <td>
                                        <c:out value="${user.getDateOfBirth()}" />
                                    </td>
                                    <td>
                                        <c:out value="${user.getEmail()}" />
                                    </td>
                                    <td>
                                        <c:out value="${user.getPhoneNumber()}" />
                                    </td>
                                    <td>
                                        <c:out value="${user.getAddress()}" />
                                    </td>
                                    <td>
                                        <c:out value="${user.getSubject()}" />
                                    </td>
                                    <td><a href="Edit.jsp?email=<c:out value='${user.getEmail()}' />">Edit</a> &nbsp;&nbsp;&nbsp;&nbsp; <a href="DeleteServlet?email=<c:out value='${user.getEmail()}' />">Delete</a></td>
                                </tr>
                            </c:forEach>
                            <!-- } -->
                        </tbody>

                    </table>
                </div>
            </div>
	
</body>
</html>