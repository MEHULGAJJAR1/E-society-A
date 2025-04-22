package com.grownited.controller.admin;

import java.io.IOException;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.apache.tomcat.util.net.IPv6Utils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.multipart.MultipartFile;

import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;
import com.grownited.entity.UserEntity;
import com.grownited.repository.UserRepository;
import com.grownited.repository.VehicleRepository;
import com.grownited.repository.VisitorRepository;
import com.grownited.service.MailService;

import jakarta.servlet.http.HttpSession;




@Controller
public class AdminController {
	
	@Autowired
	UserRepository repoUser;
	
    @Autowired
    VehicleRepository repositoryVehicle;
    
    @Autowired
    VisitorRepository repositoryVisitor;
    
    @Autowired
    Cloudinary cloudinary;
    
    @Autowired
    PasswordEncoder encoder;
    
    @Autowired
    MailService servicemail;
	
	 /* @GetMapping("admindashboard") public String dashboard() { return
	  "AdminDashboard"; }
	 */
	
	@GetMapping("admindashboard")
	public String admindashboard(HttpSession session,Model model) {
		
		Long totalUsers = repoUser.count();
		Integer totalUser = repoUser.findByRole("USER").size();
		Integer totalAdmin = repoUser.findByRole("ADMIN").size();
		Long totalVehicles = repositoryVehicle.count();
		Long totalVisitor = repositoryVisitor.count();
		model.addAttribute("totalUser",totalUser);
		model.addAttribute("totalVehicles",totalVehicles);
		model.addAttribute("totalVisitor",totalVisitor);
		
		
		
		
	    UserEntity user = (UserEntity) session.getAttribute("user");
	    if (user == null || !"ADMIN".equals(user.getRole())) {
	        return "redirect:/home";  
	    }
	    return "AdminDashboard";
	}
	@GetMapping("adduser")
	public String adduser() {
		return "AddUser";
	}
	@PostMapping("addusers")
	public String addusers(UserEntity userentity,MultipartFile profilePic) {
		
		try {
			Map result = cloudinary.uploader().upload(profilePic.getBytes(), ObjectUtils.emptyMap());
			System.out.println(result);
			System.out.println(result.get("url"));
			userentity.setProfilePicPath(result.get("url").toString());
			
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		// bcrypt password
		String encpassword = encoder.encode(userentity.getPassword());
		userentity.setPassword(encpassword);
		userentity.setRole("USER");
		
		servicemail.sendwelcomeMail(userentity.getEmail(),userentity.getFirstName());
		
		repoUser.save(userentity);
		return "AddUser";
	}
	
	@GetMapping("edituser")
	public String edituser(Integer userId,Model model) {
	
		Optional<UserEntity> op = repoUser.findById(userId);
		if(op.isEmpty()) {
			return "redirect:/listuser";
			
		}else {
			model.addAttribute("user", op.get());
			return "EditUser";
		}
	}
	
	@PostMapping("updateuser")
	public String updateuser(UserEntity entity, MultipartFile profilePic) {
		
		Optional<UserEntity> op =repoUser.findById(entity.getUserId());
		
		if(op.isPresent()) {
			
			UserEntity dbUser =op.get();
			dbUser.setFirstName(entity.getFirstName());
			dbUser.setLastName(entity.getLastName());
			dbUser.setGender(entity.getGender());
			dbUser.setEmail(entity.getEmail());
			dbUser.setContactNum(entity.getContactNum());
			dbUser.setProfilePicPath(entity.getProfilePicPath());
			
			try {
				Map result =cloudinary.uploader().upload(profilePic.getBytes(), ObjectUtils.emptyMap());
				
				System.out.println(result);
				System.out.println(result.get("url"));
				entity.setProfilePicPath(result.get("url").toString());
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			repoUser.save(entity);
		}
		
		return "redirect:/listuser";
	}
	
	

	@GetMapping("listuser")
	public String listuser(Model model) {
		
	List<UserEntity> users = repoUser.findAll();
	model.addAttribute("users", users);
		return "ListUser";
	}
	
	
	@GetMapping("home")
	public String home() {
		return "Home";
	}
	
}
