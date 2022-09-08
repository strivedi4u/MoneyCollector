package com.mail;

import java.util.Properties;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;



public class Pay {
	public static void email(String person, String sub, String msg){
		
		
		
		String message = msg;
     	String subject = sub;
		String to = person;
		String from = "trivedi2u@gmail.com";
		

		String host="smtp.gmail.com";
		
		//get the system properties
		Properties properties = System.getProperties();
		System.out.println("PROPERTIES "+properties);
		
		//setting important information to properties object
		
		//host set
		properties.put("mail.smtp.host", host);
		properties.put("mail.smtp.port","465");
		properties.put("mail.smtp.ssl.enable","true");
		properties.put("mail.smtp.auth","true");
		
		//Step 1: to get the session object..
		Session session=Session.getInstance(properties, new Authenticator() {
			
			public PasswordAuthentication getPasswordAuthentication() {				
				return new PasswordAuthentication("trivedi2u@gmail.com", "tktiwctclfhwtgbw");
			}
			
			
			
		});
		
		session.setDebug(true);
		
		MimeMessage m = new MimeMessage(session);
		
		try {
			
			
		//from email
		m.setFrom(from);
		
		//adding recipient to message
		m.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
		
		//adding subject to message
		m.setSubject(subject);
	
		
		//adding text to message
		m.setText(message);
		m.setContent(message, "text/html; charset=utf-8");
		//send 
		
		//Step 3 : send the message using Transport class
		Transport.send(m);
		
		
		
		
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		
	}
	
//	public static void main(String[] args) {
//		Pay.email();
//	}
}
