<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ page import = "com.database.*"%>
<%@ page import = "java.util.*"%>
<%
String ids = request.getParameter("id");
System.out.println(ids);
int id = Integer.parseInt(ids);
int flag = Database.delete(id);
%>
<c:redirect url = "/allpayment"/>