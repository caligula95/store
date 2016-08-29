package com.spring.service;

public interface MailService {
	public void readyToSendEmail(String toAddress, String fromAddress, String subject, String msgBody);
}
