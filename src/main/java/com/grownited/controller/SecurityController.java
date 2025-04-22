package com.grownited.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

import com.grownited.entity.SecurityEntity;
import com.grownited.repository.SecurityRepository;


@Controller
public class SecurityController {

	@Autowired
	SecurityRepository repoSecurity;
	
	@GetMapping("addsecurity") 
		public String addsecurity() {
		return "Security";
	}
		
	@PostMapping("savesecurity")
	public String saveSecurity(SecurityEntity entitySecurity) {
		repoSecurity.save(entitySecurity); 
		
		return "redirect:/addsecurity";
	}
	
}
