package com.spring.domain.repository;

public interface MailRepository {
	public void readyToSendEmail(String toAddress, String fromAddress, String subject, String msgBody);
}
