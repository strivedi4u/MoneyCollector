<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<html>
<jsp:directive.include file = "/VIEW/COMPONENTS/head.jsp" /> 
<link rel="stylesheet" href="${pageContext.request.contextPath}/VIEW/CSS/pay.css">
<body>

<%
String redirect = request.getParameter("payment_id");
if(redirect != null){%>
	<c:redirect url = "/done"/>
	<%}

%>
<jsp:directive.include file = "/VIEW/COMPONENTS/loading.jsp" /> 
<div id="body">
<jsp:directive.include file = "/VIEW/COMPONENTS/nav.jsp" /> 
<jsp:directive.include file = "/VIEW/COMPONENTS/pay.jsp" /> 
</div>
<script src="${pageContext.request.contextPath}/VIEW/COMPONENTS/nav.js"></script>
</body>
</html>