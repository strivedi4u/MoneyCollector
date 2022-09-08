<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ page import = "com.database.*"%>
<%@ page import = "com.mail.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:directive.include file = "/VIEW/COMPONENTS/loading.jsp" /> 

<%
String payment_id = (String)session.getAttribute("payment_id");
String order_id = (String)session.getAttribute("order_id");
String signature = (String)session.getAttribute("signature");
String status = (String)session.getAttribute("status");

String name = (String)session.getAttribute("name");
String email = (String)session.getAttribute("email");
String mobile = (String)session.getAttribute("mobile");
String country = (String)session.getAttribute("country");
String state = (String)session.getAttribute("state");
String city = (String)session.getAttribute("city");
String address = (String)session.getAttribute("address");
String pincode = (String)session.getAttribute("pincode");
String message = (String)session.getAttribute("message");
String moneys = (String)session.getAttribute("money");
int money = Integer.parseInt(moneys);
Details d = new Details();
d.setPayment_id(payment_id);
d.setOrder_id(order_id);
d.setSignature(signature);
d.setStatus(status);

d.setName(name);
d.setEmail(email);
d.setMobile(mobile);
d.setAddress(address);
d.setCountry(country);
d.setState(state);
d.setCity(city);
d.setPincode(pincode);
d.setMessage(message);
d.setMoney(money);

int i = Database.save(d);
if(i>0){
	System.out.println("Saved");
}
else{
	System.out.println("NOT Saved");
}


















System.out.println("DONE-----------------------");
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

System.out.println(payment_id);
System.out.println(order_id);
System.out.println(signature);
System.out.println(status);


%>



<%
String to= d.getEmail(); 
String subject= "Donation Email"; 
String outs ="";
String output = d.getPayment_id();
if(d.getStatus().equals("PAID")){
outs = "Congratulation your amount " + d.getMoney() + " have been successfully recived. and your Transaction Id is";
}
else{
   outs = "Unfortunately your amount " + d.getMoney() + " have not been recived. and your Transaction Id is";
}
String msg ="<div style='font-family: Helvetica,Arial,sans-serif;min-width:1000px;overflow:auto;line-height:2'>";
msg +="<div style='margin:50px auto;width:70%;padding:20px 0'>";
msg += "<div style='border-bottom:1px solid #eee'>";
msg +=  "<a href='' style='font-size:1.4em;color: #00466a;text-decoration:none;font-weight:600;'>HackWithCode</a>";
msg += "</div>";
msg += "<p style='font-size:1.1em'>Hi, User</p>";
msg += "<p>"+outs+"</p>";
msg += "<h2 style='background: #00466a;margin: 0 auto;width: max-content;padding: 0 10px;color: #fff;border-radius: 4px;'>";
msg += output;

msg += "</h2>";
msg += "<h3><a href='http://localhost:8080/Donation/home3.jsp'>Check Your Payment Recipt</a></h3>";
msg += "<p style='font-size:0.9em;'>Regards,<br />eLibray Team</p>";
msg += "<hr style='border:none;border-top:1px solid #eee' />";
msg += "<div style='float:right;padding:8px 0;color:#aaa;font-size:0.8em;line-height:1;font-weight:300'>";
msg +=  "<p>HackWithCode</p>";
msg +=  "<p>Uttar Pradesh</p>";
msg +=   "<p>India</p>";
msg += "</div>";
msg += "</div>";
msg += "</div>";


%>

<%
Pay.email(to, subject, msg ); 
%>

<jsp:forward page="verify">
  <jsp:param name="search" value="<%=d.getPayment_id() %>" ></jsp:param>
</jsp:forward>
</body>
</html>