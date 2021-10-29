<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<link rel="stylesheet" href="${pageContext.request.contextPath}/SignUpStyle.css" />
<title>SignUp</title>
</head>
<body>
      



<div class="container register">
     <div class="row">
            <div class="col-md-3 register-left">
                   <img src="images/logo_white.png" alt=""/>
                   <h3>Welcome</h3>
            </div>     
              
            <div class="col-md-9 register-right">    
                        
                        
                        
                            
                         		
                        		
                                	<h3  class="register-heading">Register </h3>
                                	<form class="needs-validation" action="${pageContext.request.contextPath}/SaveServlet" method="post" name="registration-form"   novalidate>
                               			<jsp:include page="CommonRegistration.jsp"></jsp:include>
                               			
                                	</form>
                        
               </div>    
       </div>

</div>





      
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
      
      
</body>
</html>