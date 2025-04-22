package com.grownited.service;

import org.apache.logging.log4j.message.SimpleMessage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

@Service
public class MailService{
	
	@Autowired
	JavaMailSender mailSender;
	
	public void sendwelcomeMail(String email, String Kelin) {
		String subject = "Welcome to esociety";
		String body = "Hey " + Kelin
				+ ", We're excited to have you on board. If you have any questions, feel free to reach out – we’re here to help!";
		String from = "archipanchal01@gmail.com";
		
		//logic
		SimpleMailMessage message = new SimpleMailMessage();
		
		message.setFrom(from);
		message.setTo(email);
		message.setSubject(subject);
		message.setText(body);
		
		mailSender.send(message);
	}
	
	public void sendotpForForgetPassword(String email, String Kelin, String otp) {
		String subject = "Otp for Resetpassword";
		String body = "Hey " + Kelin
				+ ", It seems you request for forget password, please use below otp for the reset password. If not then simply ignore the message! Your OTP is:"+ otp;
		String from = "archipanchal01@gmail.com";
		
		//logic
		SimpleMailMessage message = new SimpleMailMessage();
		
		message.setFrom(from);
		message.setTo(email);
		message.setSubject(subject);
		message.setText(body);
		
		mailSender.send(message);
	}
}
