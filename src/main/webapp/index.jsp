<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import = "com.razorpay.PayOrder"%>
<%@ page import = "org.json.JSONObject"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://checkout.razorpay.com/v1/checkout.js"></script>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head> 
<body>


<form  name="myForm" id="myForm" target="_myFrame" action="" method="POST">
    <p>
        <input id="test" name="test" value="test" />
    </p>
    <p>
        <input type="submit" value="Submit" />
    </p>
</form>


<%
String paymentIds = request.getParameter("test");
System.out.println("PaymentTds" + paymentIds);
%>

<%
String rupees = request.getParameter("ammount");
rupees = "6";
int ammount = Integer.parseInt(rupees);
String orders = PayOrder.createOrder(ammount);
out.print(orders);
%>

<script type="text/javascript">
var paymentId ="";
const json = <%=orders%>;
console.log(json);
console.log(json.status);
console.log(json.id);
var orderId = json.id;
</script>
<button id="rzp-button1">Pay</button>

<script>
var flag = false;
var options = {
"key": "rzp_test_wtYSSwt2sx2XwN", // Enter the Key ID generated from the Dashboard
"amount": "50000", // Amount is in currency subunits. Default currency isINR. Hence, 50000 refers to 50000 paise
"currency": "INR",
"name": "Acme Corp",
"description": "Test Transaction",
"image": "https://example.com/your_logo",
"order_id": orderId, //This is a sample Order ID. Pass the`id` obtained in the response of Step 1
"handler": function (response){

alert(response.razorpay_payment_id);
 paymentId = response.razorpay_payment_id;
console.log(paymentId);
alert(response.razorpay_order_id);
alert(response.razorpay_signature);
console.log("Hello Response");
console.log(response);
flag = true;
done();
console.log("Hi Response");
<%

%>



},
"prefill": {
"name": "Gaurav Kumar",
"email": "gaurav.kumar@example.com",
"contact": "9999999999"
},
"notes": {
"address": "Razorpay Corporate Office"

},
"theme": {
"color": "#3399cc"
}
};
var rzp1 = new Razorpay(options);
rzp1.on('payment.failed', function (response){
	console.log(response);
alert(response.error.code);
alert(response.error.description);
alert(response.error.source);
alert(response.error.step);
alert(response.error.reason);
alert(response.error.metadata.order_id);
alert(response.error.metadata.payment_id);
});


rzp1.open();

</script>


<script>
function done(){
	console.log("done Call");
if(flag== true){
	console.log("Flag true");
	console.log(paymentId);
	  
	    	console.log("onload Call");
	     	document.getElementById("test").value = paymentId;
        console.log(document.getElementById("test").value);
	        function submitform(){
	          alert('test');
	          document.forms["myForm"].submit();
	        }
	        submitform();
	        
	    

}
}

</script>



</body>
</html>