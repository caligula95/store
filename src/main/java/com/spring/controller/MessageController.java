package com.spring.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.spring.mail.EmailModel;
import com.spring.service.MailService;

@Controller
public class MessageController {
	@Autowired
	MailService mailService;
	
	@RequestMapping(value = "/email", method = RequestMethod.GET)
	public String getMessageForm(Model model) {
		EmailModel emailModel = new EmailModel();
		model.addAttribute("order", emailModel);
		return "email";
	}
	
	@RequestMapping(value = "/email", method = RequestMethod.POST) 
	public String sendMessage(Model model, @ModelAttribute("order") EmailModel order) {
	//CrunchifyEmailTest test = new CrunchifyEmailTest();
		mailService.readyToSendEmail("burdden@gmail.com", "burdaden15@yandex.ua", order.getName(), order.getPhone());
		return "redirect:/success";
	}
	
	@RequestMapping("/success") 
	public String getSuccess() {
		return "success";
	}
	
	@RequestMapping(value = "/contact", method = RequestMethod.GET)
	public String contactUs(Model model) {
		EmailModel emailModel = new EmailModel();
		model.addAttribute("request", emailModel);
		return "contact";
	}
	
	@RequestMapping(value = "/contact", method = RequestMethod.POST) 
		public String sentRequest(Model model, @ModelAttribute("request") EmailModel request) {
		mailService.readyToSendEmail("burdden@gmail.com", "burdaden15@yandex.ua", request.geteMail(), request.getName() + " body: " +request.getBody());
		return "redirect:/success";
		}
	}

