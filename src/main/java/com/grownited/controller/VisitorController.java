package com.grownited.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.VehicleEntity;
import com.grownited.entity.VisitorEntity;
import com.grownited.repository.VisitorRepository;


@Controller
public class VisitorController {
	
	@Autowired
	VisitorRepository repoVisitor;
	
	@Autowired
	VisitorRepository repositoryVisitor;
	@GetMapping("addvisitor")
	public String addvisitor() {
		return "Visitor";
		
	}
	
	@PostMapping("addvisitor")
	public String addvisitor(VisitorEntity entityVisitor) {
		repoVisitor.save(entityVisitor);
		
		
		
		return "Visitor";
	}
	@PostMapping("savevisitor")
	public String savevisitor(VisitorEntity entityvisitor, Model model) {
	    repoVisitor.save(entityvisitor); // Data save karna

	    // Confirmation message bhejna
	    model.addAttribute("successMessage", "Visitor entry successfully added!");

	    return "Home"; // Redirect na karke wahi Home.jsp load karna
	}
	
	@GetMapping("listvisitor")
	public String listvisitor(Model model) {
		List<VisitorEntity> listVisitor = repoVisitor.findAll(); // select *
		model.addAttribute("listVisitor", listVisitor);
		return "ListVisitor";
	
	
	}
	
	@GetMapping("visitorlist")
	public String visitorlist(Model model) {
		List<VisitorEntity> visitorlist= repositoryVisitor.findAll();
		model.addAttribute("visitorlist",visitorlist);
		return "VisitorList";
	}
	

}
