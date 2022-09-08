<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String name = request.getParameter("name");
String email = request.getParameter("email");
String mobile = request.getParameter("mobile");
String address = request.getParameter("address");
String country = request.getParameter("country");
String state = request.getParameter("state");
String city = request.getParameter("city");
String pincode = request.getParameter("pincode");
String message = request.getParameter("message");
String money = request.getParameter("money");

System.out.println(name);
System.out.println(email);
System.out.println(mobile);
System.out.println(address);
System.out.println(mobile);
System.out.println(country);
System.out.println(state);
System.out.println(city);
System.out.println(pincode);
System.out.println(money);

session.setAttribute("name", name);
session.setAttribute("email", email);
session.setAttribute("mobile", mobile);
session.setAttribute("address", address);
session.setAttribute("country", country);
session.setAttribute("state", state);
session.setAttribute("city", city);
session.setAttribute("pincode", pincode);
session.setAttribute("message", message);
session.setAttribute("money", money);

%>
<c:redirect url = "../collect"/>

</body>
</html>