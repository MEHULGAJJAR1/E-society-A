package com.grownited.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

import com.grownited.entity.ContactEntity;
import com.grownited.repository.ContactRepository;


@Controller
public class ContactUsController {
	@Autowired
	ContactRepository repocontact;

	@GetMapping("contactus")
	public String contactus(Model model) {
		List<ContactEntity> contact = repocontact.findAll();
		model.addAttribute("contact",contact);
		return"ContactUs";
	}
	@PostMapping("savecontactus")
	public String savecontactus(ContactEntity entity) {
		
		repocontact.save(entity);
		//TODO: process POST request
		
		return "Home";
	}
	
	
}
