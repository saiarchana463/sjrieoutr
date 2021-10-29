<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.Planon.User,com.Planon.UserDao" %>
      <%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>School Management</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<link rel="stylesheet" href="${pageContext.request.contextPath}/SignUpStyle.css" />
<script type="text/javascript">

	function text(x){
		if(x==2 || x==3)
			document.getElementById("subjectDisplay").style.display="block";
		else
			document.getElementById("subjectDisplay").style.display="none";
		return	
	}
</script>
</head>
<body>
	<%
	String email=request.getParameter("email");  
  	User userObj=UserDao.getUserByEmail(email); 
  	System.out.println(userObj);
  	request.setAttribute("userObj",userObj);
  	String role=userObj.getRole();
	%>
	<div class="container register">
     <div class="row">
            <div class="col-md-3 register-left">
                   
            </div>     
              
            <div class="col-md-9 register-right">    
                                	<h3  class="register-heading">Edit Details </h3>
                                	<form class="needs-validation" action="${pageContext.request.contextPath}/EditServlet2" method="post" name="registration-form"   novalidate>
                               			<div class="row register-form">
                                 	
                                    <div class="col-md-6">
                                    
                                    <% if("Student".equals(role)){ %>
                                    <div class="form-group">
                                            <div class="maxl">
                                                <label class="radio inline"> 
                                                    <input type="radio" name="role" value="Student" onclick="text(1)"required checked>
                                                    <span> Student </span> 
                                                </label>
                                                <label class="radio inline"> 
                                                    <input type="radio" name="role" value="Teacher" onclick="text(2)" >
                                                    <span>Teacher </span> 
                                                </label>
                                                <label class="radio inline"> 
                                                    <input type="radio" name="role" value="HeadMaster" onclick="text(3)">
                                                    <span>HeadMaster </span> 
                                                     <div class="invalid-feedback">Please enter a valid Role.</div>
                                                </label>
                                            </div>
                                        </div>
                                        <%} else if("Teacher".equals(role)){%>
                                        
                                    <div class="form-group">
                                            <div class="maxl">
                                                <label class="radio inline"> 
                                                    <input type="radio" name="role" value="Student" onclick="text(1)"required>
                                                    <span> Student </span> 
                                                </label>
                                                <label class="radio inline"> 
                                                    <input type="radio" name="role" value="Teacher" onclick="text(2)" checked>
                                                    <span>Teacher </span> 
                                                </label>
                                                <label class="radio inline"> 
                                                    <input type="radio" name="role" value="HeadMaster" onclick="text(3)">
                                                    <span>HeadMaster </span> 
                                                     <div class="invalid-feedback">Please enter a valid Role.</div>
                                                </label>
                                            </div>
                                        </div>
                                        <%}else if("HeadMaster".equals(role)){ %>
                                       
                                    <div class="form-group">
                                            <div class="maxl">
                                                <label class="radio inline"> 
                                                    <input type="radio" name="role" value="Student" onclick="text(1)"required>
                                                    <span> Student </span> 
                                                </label>
                                                <label class="radio inline"> 
                                                    <input type="radio" name="role" value="Teacher" onclick="text(2)" >
                                                    <span>Teacher </span> 
                                                </label>
                                                <label class="radio inline"> 
                                                    <input type="radio" name="role" value="HeadMaster" onclick="text(3)" checked>
                                                    <span>HeadMaster </span> 
                                                     <div class="invalid-feedback">Please enter a valid Role.</div>
                                                </label>
                                            </div>
                                        </div>
                                        <%} %>
                                        
                                        <div class="form-group">
                                            <input type="text" class="form-control" name="firstName" placeholder="First Name *" value="<c:out value="${userObj.getFirstName()}" />" autocomplete="off" required />
                                            <div class="invalid-feedback">Please enter a valid FirstName.</div>
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control" name="middleName" placeholder="Middle Name " value=" <c:out value="${userObj.getMiddleName()}" /> " autocomplete="off" />
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control" name="lastName" placeholder="Last Name *" value="<c:out value="${userObj.getLastName()}" /> " autocomplete="off" required/>
                                            <div class="invalid-feedback">Please enter a valid LastName.</div>
                                        </div>
                                        <div class="form-group">
                                            <div class="maxl">
                                                <label class="radio inline"> 
                                                    <input type="radio" name="gender" value="male" checked required>
                                                    <span> Male </span> 
                                                </label>
                                                <label class="radio inline"> 
                                                    <input type="radio" name="gender" value="female">
                                                    <span>Female </span> 
                                                     <div class="invalid-feedback">Please enter a valid Gender.</div>
                                                </label>
                                            </div>
                                        </div>
                                        
                                        
                                        
                                    </div>
                               
                                    <div class="col-md-6">
                                    <div class="form-group">
                                            <input type="date" class="form-control" name="dateOfBirth" placeholder="Date of Birth *" value="<c:out value="${userObj.getDateOfBirth()}" />" autocomplete="off" required/>
                                             <div class="invalid-feedback">Please enter a valid Date Of Birth</div>
                                        </div>
                                        <div class="form-group">
                                            <input type="email" class="form-control" name="email" placeholder="Your Email *" value="<c:out value="${userObj.getEmail()}" />" autocomplete="off" required/>
                                             <div class="invalid-feedback">Please enter a valid Email.</div>
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control" name="address" placeholder="Address *" value="<c:out value="${userObj.getAddress()}" />" autocomplete="off" required/>
                                             <div class="invalid-feedback">Please enter a valid Address.</div>
                                        </div>
                                        <div class="form-group">
                                            <input type="text" minlength="10" maxlength="10" class="form-control" name="phoneNumber" placeholder="Your Phone *" value="<c:out value="${userObj.getPhoneNumber()}" />" autocomplete="off" required/>
                                        	 <div class="invalid-feedback">Please enter a valid Phone Number.</div>
                                        </div>
                                        
                                        <%if("Student".equals(role)) {%>
                                      		<div class="form-group">
                                 		<input type="hidden" id="subjectDisplay" class="form-control"name="subject" placeholder="Subject" value="<c:out value="${userObj.getSubject()}" />" autocomplete="off" />
                                 		 <div class="invalid-feedback">Please enter a valid Subject.</div>
                                	</div > 
                                	<%} else if("Teacher".equals(role)){%>
                                	<div class="form-group">
                                 		<input type="hidden" id="subjectDisplay" class="form-control"name="subject" placeholder="Subject" value="<c:out value="${userObj.getSubject()}" />" autocomplete="off" />
                                 		 <div class="invalid-feedback">Please enter a valid Subject.</div>
                                	</div > 
                                	<%} %>
                                	
                                        <input type="submit" class="btnRegister"  value="Save"/>
                                    </div>
                                </div>  
                                	</form>
               </div>    
       </div>

</div>

<script>
        // Self-executing function
        (function() {
            'use strict';
            window.addEventListener('load', function() {
                // Fetch all the forms we want to apply custom Bootstrap validation styles to
                var forms = document.getElementsByClassName('needs-validation');
                
                // Loop over them and prevent submission
                var validation = Array.prototype.filter.call(forms, function(form) {
                    form.addEventListener('submit', function(event) {
                        if (form.checkValidity() === false) {
                            event.preventDefault();
                            event.stopPropagation();
                        }
                        form.classList.add('was-validated');
                    }, false);
                });
            }, false);
        })();
    </script>



      
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
      
</body>
</html>