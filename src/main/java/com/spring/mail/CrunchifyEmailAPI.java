package com.spring.mail;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.spring.domain.repository.MailRepository;
 
@Repository
public class CrunchifyEmailAPI implements MailRepository{
 
	@Autowired
	private MailSender crunchifymail; // MailSender interface defines a strategy
										// for sending simple mails
 
	public void readyToSendEmail(String toAddress, String fromAddress, String subject, String msgBody) {
 
		SimpleMailMessage crunchifyMsg = new SimpleMailMessage();
		crunchifyMsg.setFrom(fromAddress);
		crunchifyMsg.setTo(toAddress);
		crunchifyMsg.setSubject(subject);
		crunchifyMsg.setText(msgBody);
		crunchifymail.send(crunchifyMsg);
	}
}
