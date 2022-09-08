package com.razorpay;

import java.util.List;

import javax.servlet.annotation.WebServlet;

import org.json.JSONObject;

import com.razorpay.Order;
import com.razorpay.Payment;
import com.razorpay.RazorpayClient;
import com.razorpay.RazorpayException;


public class PayOrder {
public static String createOrder(int ammount) throws RazorpayException {
	RazorpayClient razorpay = null;
	razorpay = new RazorpayClient("rzp_test_wtYSSwt2sx2XwN", "Oj62K7L67x6OHn0qMPRA6RFT");
	
JSONObject orderRequest = new JSONObject();
orderRequest.put("amount",ammount *100);
orderRequest.put("currency","INR");
orderRequest.put("receipt", "receipt#1");
JSONObject notes = new JSONObject();
notes.put("notes_key_1","Tea, Earl Grey, Hot");
notes.put("notes_key_1","Tea, Earl Grey, Cold");
orderRequest.put("notes",notes);

		Order order = razorpay.Orders.create(orderRequest);
		JSONObject json = new JSONObject(order.toString());  
		System.out.println(json.getString("id"));
return order.toString();
}
//public static void main(String[] args) throws RazorpayException {
//	String ab = PayOrder.createOrder(5);
//	System.out.println(ab);
//}

}



