package com.grownited.controller;

import org.springframework.beans.factory.annotation.Autowired;
import java.util.List;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.NewCityEntity;
import com.grownited.entity.StateEntity;
import com.grownited.repository.CityRepository;
import com.grownited.repository.StateRepository;

@Controller
public class NewCityController {
	@Autowired
	CityRepository repoCity;
	@Autowired
	StateRepository repoState;
	
	@GetMapping ("newcity")
	public String newCity(Model model) {
		
		List<StateEntity> allState =repoState.findAll();   //get data from table.
		
		model.addAttribute("allState", allState);          //send it to jsp.
		return "NewCity";
	}
	@PostMapping("savecity")
	public String saveCity(NewCityEntity entityCity) {
		System.out.println(entityCity.getCityName());
		repoCity.save(entityCity);
		return "redirect:/newcity";
	}
		
		@GetMapping("listcity")
		public String listcity(Model model) {
			List<NewCityEntity> listCity = repoCity.findAll(); // select *
			model.addAttribute("listCity", "listCity");
			return "listCity";
		
				
		
	}
}
