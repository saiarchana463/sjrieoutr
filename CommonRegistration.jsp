<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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

	
	
	<!--  <form action="${pageContext.request.contextPath}/UserDetails" method="post">  -->
	
                                 <div class="row register-form">
                                 	
                                    <div class="col-md-6">
                                    
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
                                        
                                        <div class="form-group">
                                            <input type="text" class="form-control" name="firstName" placeholder="First Name *" value="" autocomplete="off" required />
                                            <div class="invalid-feedback">Please enter a valid FirstName.</div>
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control" name="middleName" placeholder="Middle Name " value="" autocomplete="off" />
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control" name="lastName" placeholder="Last Name *" value="" autocomplete="off" required/>
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
                                            <input type="date" class="form-control" name="dateOfBirth" placeholder="Date of Birth *" value="" autocomplete="off" required/>
                                             <div class="invalid-feedback">Please enter a valid Date Of Birth</div>
                                        </div>
                                        <div class="form-group">
                                            <input type="email" class="form-control" name="email" placeholder="Your Email *" value="" autocomplete="off" required/>
                                             <div class="invalid-feedback">Please enter a valid Email.</div>
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control" name="address" placeholder="Address *" value="" autocomplete="off" required/>
                                             <div class="invalid-feedback">Please enter a valid Address.</div>
                                        </div>
                                        <div class="form-group">
                                            <input type="text" minlength="10" maxlength="10" class="form-control" name="phoneNumber" placeholder="Your Phone *" value="" autocomplete="off" required/>
                                        	 <div class="invalid-feedback">Please enter a valid Phone Number.</div>
                                        </div>
                                      		<div class="form-group">
                                 		<input type="text" id="subjectDisplay" class="form-control"name="subject" placeholder="Subject" value="" autocomplete="off" />
                                 		 <div class="invalid-feedback">Please enter a valid Subject.</div>
                                	</div > 
                                        <input type="submit" class="btnRegister"  value="Save"/>
                                    </div>
                                </div>  
                         <!--         </form> -->
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
	
</body>
</html>