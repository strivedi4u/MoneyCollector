<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<jsp:useBean id="d" class="com.database.Details"></jsp:useBean>  
<jsp:setProperty property="*" name="d"/>  
<%@ page import = "com.database.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%

int flag = Database.save(d);
if(flag>0){
	%><c:redirect url = "../allpayment"/><%
}
else{
	%><c:redirect url = "../add"/><%
}
%>
</head>
<body>

</body>
</html>