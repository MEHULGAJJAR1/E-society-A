package com.grownited.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.StateEntity;
import com.grownited.entity.VisitorEntity;
import com.grownited.repository.StateRepository;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class StateController {
	
	@Autowired
	StateRepository repoState;          //make repository's object for insert values in table.
	
	@GetMapping("newstate")
	public String newState() {
		return "NewState";
	}
	
	@PostMapping("savestate")
	public String saveState(StateEntity state) {               //make StateEntity object for console print
		System.out.println(state.getStateName());
		repoState.save(state);                                 //using object, save all the values in state table.
		return "NewState";
	}
	
	@GetMapping("liststate")
	public String liststate(Model model) {
		List<StateEntity> listState = repoState.findAll(); // select *
		model.addAttribute("listState", "listState");
		return "listState";
	}
	
	}