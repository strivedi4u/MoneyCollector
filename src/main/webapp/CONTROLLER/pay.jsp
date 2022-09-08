<%@ include file = "../VIEW/COMPONENTS/loading.jsp" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ page import = "com.razorpay.PayOrder"%>
<%@ page import = "org.json.JSONObject"%>
<%@ page import = "java.util.*"%>
<%@ page import = "java.lang.*"%>
<!DOCTYPE html>
<html>
<jsp:directive.include file = "/VIEW/COMPONENTS/head.jsp" /> 
<script src="https://checkout.razorpay.com/v1/checkout.js"></script>
<body>
<%@ include file = "../VIEW/COMPONENTS/loading.jsp" %>
<div id="body">
<form style="display:none;" name="payment" id="payment" target="" action="" method="POST">
        <input id="payment_id" name="payment_id" value="" />
        <input id="order_id" name="order_id" value="" />
        <input id="signature" name="signature" value="" />
        <input id="status" name="status" value="created" />
        <input type="submit" value="Submit" />
</form>


<%
String payment_id = request.getParameter("payment_id");
if(payment_id != null || payment_id != ""){
String order_id = request.getParameter("order_id");
String signature = request.getParameter("signature");
String status = request.getParameter("status");

session.setAttribute("payment_id", payment_id);
session.setAttribute("order_id", order_id);
session.setAttribute("signature", signature);
session.setAttribute("status", status);
System.out.println("1");
}
String redirect = request.getParameter("payment_id");
if(redirect != null){
%>
<script>
window.top.location.href = "../done"; 
</script>
	
	<%
		}
		%>




<%
String name = (String)session.getAttribute("name");
String email = (String)session.getAttribute("email");
String mobile = (String)session.getAttribute("mobile");
String message = (String)session.getAttribute("message");
String rupees = (String)session.getAttribute("money");
int amount = Integer.parseInt(rupees);

String orders = PayOrder.createOrder(amount);
%>

<script type="text/javascript">
var name = "<%=name %>";
var email = "<%=email %>";
var mobile = <%=mobile %>;
var message = "<%=message %>";
var amount = <%=amount %>;

var flag = false;
var payment_id ="";
var order_id = "";
var signature = "";
var status = "";
const json = <%=orders%>;
var orderId = json.id;

console.log(json);
console.log(json.status);
console.log(json.id);




// Razorpay Code
var options = {
"key": "rzp_test_wtYSSwt2sx2XwN", // Enter the Key ID generated from the Dashboard
"amount": amount*100, // Amount is in currency subunits. Default currency isINR. Hence, 50000 refers to 50000 paise
"currency": "INR",
"name": "HackWithCode",
"description": "Donation",
"image": "https://yt3.ggpht.com/5qAj3nd-NdyUX3eRARBbLV2lUJL3T3qUnZG3H2eBB3FeYjjj60iSRUfkovabULPiYyCbKNMnig=s900-c-k-c0x00ffffff-no-rj",
"order_id": orderId, //This is a sample Order ID. Pass the`id` obtained in the response of Step 1

"handler": function (response){
console.log(response.razorpay_payment_id);
console.log(response.razorpay_order_id);
console.log(response.razorpay_signature);

payment_id = response.razorpay_payment_id;
order_id = response.razorpay_order_id;
signature = response.razorpay_signature;
status = "PAID";

console.log(response);

flag = true;
done();
},

"prefill": {
"name": name,
"email": email,
"contact": "+91" +  mobile,
},
"notes": {
"address": message,
},
"theme": {
"color": "#3399cc"
}
};

var rzp1 = new Razorpay(options);
rzp1.on('payment.failed', function (response){
console.log(response);
console.log(response.error.code);
console.log(response.error.description);
console.log(response.error.source);
console.log(response.error.step);
console.log(response.error.reason);
console.log(response.error.metadata.order_id);
console.log(response.error.metadata.payment_id);

payment_id = response.error.metadata.payment_id;
order_id = response.error.metadata.order_id;
signature = response.error.reason;
status = "FAILED";

flag = true;
done();
});

setTimeout(function(){
	rzp1.open();
	},12000);

</script>


<script>
function done(){
if(flag== true){
	document.getElementById("payment_id").value = payment_id;
	document.getElementById("order_id").value = order_id;
	document.getElementById("signature").value = signature;
	document.getElementById("status").value = status;
	function submitform(){
		document.forms["payment"].submit();
	}
	submitform();
}
}
</script>
</div>

</body>
</html>