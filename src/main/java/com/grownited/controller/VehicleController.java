package com.grownited.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.VehicleEntity;
import com.grownited.repository.VehicleRepository;

@Controller
public class VehicleController{
//	newvehicle 

	@Autowired
	VehicleRepository repositoryVehicle;

	@GetMapping("newvehicle")
	public String newVehicle() {
		return "NewVehicle";
	}

//	savevehicle 
	/*@PostMapping("savevehicle")
	public String saveVehicle(VehicleEntity entityVehicle) {
		repositoryVehicle.save(entityVehicle);// insert

		return "redirect:/listvehicle";// jsp name
	}*/

	@PostMapping("savevehicle")
	public String saveVehicle(VehicleEntity entityVehicle, Model model) {
	    repositoryVehicle.save(entityVehicle); // Data save karna

	    // Confirmation message bhejna
	    model.addAttribute("successMessage" ,"Vehicle entry successfully added!");

	    return "Home"; // Redirect na karke wahi Home.jsp load karna
	}
	@PostMapping("addvehicle")
	public String addvehicle(VehicleEntity entityvehicle) {
		repositoryVehicle.save(entityvehicle);
	return "NewVehicle";

	}
	@GetMapping("listvehicle")
	public String listVehicle(Model model) {
		List<VehicleEntity> listvehicle = repositoryVehicle.findAll(); 
		model.addAttribute("listVehicle", listvehicle);
		return "ListVehicle";
	}
	@GetMapping("viewvehicle")
	public String viewvehicle(Integer vehicleId,Model model) {
		//?
		System.out.println("id ===>"+vehicleId);
	 Optional<VehicleEntity> op = repositoryVehicle.findById(vehicleId);
	 if(op.isEmpty()) {
		 //not found
	 }else {
		 //data found
		 VehicleEntity vehicle = op.get();
		 //send data to jsp ->
		 model.addAttribute("vehicle",vehicle);
	 }
		return"ViewVehicle";
	}
	
	@GetMapping("deletevehicle")
	public String deletevehicle(Integer vehicleId) {
		repositoryVehicle.deleteById(vehicleId);//delete from members where memberID = :memberId
		return "redirect:/listvehicle";
  }
	@GetMapping("editvehicle")
	public String editvehicle(Integer vehicleId, Model model) {
		
		Optional<VehicleEntity> op =repositoryVehicle.findById(vehicleId);
		
		if(op.isEmpty()) {
			return "redirect:/listvehicle";
		}else {
			
			model.addAttribute("vehicle", op.get());
			return "EditVehicle";
		}
		
	}
	@PostMapping("updatevehicle")
	public String updatevehicle(VehicleEntity entity) {
		 
		Optional<VehicleEntity> op = repositoryVehicle.findById(entity.getVehicleId());
		if(op.isPresent()) {
			
			VehicleEntity dbvehicle =op.get();
			dbvehicle.setDriverName(entity.getDriverName());
			dbvehicle.setContactNum(entity.getContactNum());
			dbvehicle.setFlatNum(entity.getFlatNum());
			dbvehicle.setPurpose(entity.getPurpose());
			dbvehicle.setVehicleNum(entity.getVehicleNum());
			dbvehicle.setVehicleType(entity.getVehicleType());
			
			repositoryVehicle.save(entity);
		
		}
		return "redirect:/listvehicle";
	}
	@GetMapping("vehiclelist")
	public String vehiclelist(Model model) {
		List<VehicleEntity> vehiclelist= repositoryVehicle.findAll();
		model.addAttribute("vehiclelist",vehiclelist);
		return "Vehiclelist";
	}
	
}