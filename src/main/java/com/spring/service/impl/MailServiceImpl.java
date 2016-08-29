package com.spring.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.domain.repository.MailRepository;
import com.spring.service.MailService;

@Service
public class MailServiceImpl implements MailService {

	@Autowired
	MailRepository mailRepository;
	@Override
	public void readyToSendEmail(String toAddress, String fromAddress, String subject, String msgBody) {
		mailRepository.readyToSendEmail(toAddress, fromAddress, subject, msgBody);
		
	}

}
