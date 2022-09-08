<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html lang="en">
<jsp:directive.include file = "/VIEW/COMPONENTS/head.jsp" /> 
<link rel="stylesheet" href="${pageContext.request.contextPath}/VIEW/CSS/login.css">
<body>
<jsp:directive.include file = "/VIEW/COMPONENTS/nav.jsp" /> <br><br><br>
<div class="login-form">
	<h2 class="text-center"><b>Admin Login<b></b></h2>
    <form action="" method="post">
		<div class="avatar"  style="background-color:transparent;">
			<img src="https://yt3.ggpht.com/5qAj3nd-NdyUX3eRARBbLV2lUJL3T3qUnZG3H2eBB3FeYjjj60iSRUfkovabULPiYyCbKNMnig=s900-c-k-c0x00ffffff-no-rj" alt="Avatar">
		</div>           
        <div class="form-group">
        	<input type="text" class="form-control input-lg" name="username" placeholder="Username" required="required">	
        </div>
		<div class="form-group">
            <input type="password" class="form-control input-lg" name="password" placeholder="Password" required="required">
        </div>        
        <div class="form-group clearfix">
            <button type="submit" class="btn btn-primary btn-lg pull-right">Sign in</button>
        </div>		
    </form>
    
<%
String username = request.getParameter("username");
String password = request.getParameter("password");
 if(username == null){}
else if(username.equals("shashank@gmail.com") && password.equals("123")){
	session.setAttribute("session", username);	%>
	<c:redirect url = "/allpayment"/>
	<%}else{%>
	<script type="text/javascript">
	swal("Error:", "Email Id or Password Wrong", "error");
	</script>
	<%}
%>
	
</div>
<jsp:directive.include file = "/VIEW/COMPONENTS/foot.jsp" /> 
</body>
</html>