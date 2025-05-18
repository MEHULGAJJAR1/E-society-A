package com.grownited.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.grownited.entity.HouseEntity;
import com.grownited.repository.HouseRepository;

import org.springframework.web.bind.annotation.PostMapping;


@Controller
public class HouseController {
	
	@Autowired
	HouseRepository repoHouse;
	
	@GetMapping("addhouse")
	public String addHouse() {
		return "House";
	}
	
	@PostMapping("savehouse")
	public String saveHouse(HouseEntity entityHouse) {
		repoHouse.save(entityHouse);
		
		return "House";
	}
	
	@GetMapping("listhouse")
	public String listhouse(Model model) {
		List<HouseEntity> ListHouse = repoHouse.findAll(); // select *
		model.addAttribute("listHouse", "listHouse");
		return "listHouse";
	
	}
	
	
}
