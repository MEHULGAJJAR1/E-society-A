package com.grownited.controller;

import java.io.IOException;
import java.util.Map;
import java.util.Optional;


import org.apache.catalina.User;
import org.apache.catalina.realm.UserDatabaseRealm.UserDatabasePrincipal;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;
import com.grownited.entity.UserEntity;
import com.grownited.repository.UserRepository;
import com.grownited.service.MailService;

import jakarta.mail.Multipart;
import jakarta.servlet.http.HttpSession;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;


@Controller
public class SessionController {
	@Autowired
	MailService serviceMail;
	
	@Autowired
	Cloudinary cloudinary;
	
    @Autowired
	UserRepository repoUser;
	
    @Autowired
    PasswordEncoder encoder;
	
	@GetMapping ("signup")     // url name
	public String signup() {   //String name
		return "Signup";   //.jsp file name
	}
	@GetMapping("/")
	public String loginhome() {
		return "Home";
	}
	
	@GetMapping ("login")     // url name
	public String login() {   //String name
		return "Login";   //.jsp file name
	}
	
	/*@PostMapping("savelogininfo")
	public String savelogininfo() {
		return "Home";
	}*/
	
	@PostMapping("saveuser")
	public String Saveuser(UserEntity userEntity, MultipartFile profilePic) {
		
		// cloudinary
      System.out.println(profilePic.getOriginalFilename());
		
/*
 * if(profilePic.getOriginalFilename().endsWith(".png")) {
 * 
 * }else { return "Signup"; }
 */   
		
		try {
			
		Map result = cloudinary.uploader().upload(profilePic.getBytes(), ObjectUtils.emptyMap());
		System.out.println(result);
    	System.out.println(result.get("url"));
		
		userEntity.setProfilePicPath(result.get("url").toString());
		
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		// Bcrypt
		String encPassword = encoder.encode(userEntity.getPassword());
		userEntity.setPassword(encPassword);
		
		userEntity.setRole("USER");  
	
		repoUser.save(userEntity);	
//		serviceMail.sendWelcomeMail(userEntity.getEmail(), userEntity.getFirstName());
		return "Login";
	}
		
	
	
	/*@PostMapping("authenticate")
	public String authenticate(String email, String password, Model model, HttpSession session) {
		System.out.println("Email: "+ email);
		System.out.println("Password: "+password);
		
		Optional<UserEntity> op = repoUser.findByEmail(email);
		//check data coming or not
		if(op.isPresent()) {
			
			UserEntity dbUsers = op.get();
			
			boolean ans = encoder.matches(password, dbUsers.getPassword());
			if(ans==true) {
				
				session.setAttribute("user", dbUsers);   // use session when login
				
				if(dbUsers.getRole().equals("ADMIN")) {
					return "redirect:/admindashboard";
					
				}else if(dbUsers.getRole().equals("USER")) {
					return "Home";
					
				}else {
					model.addAttribute("error", "Please contact Admin with error code #98433");
					return "Login";	
				}	
			}	
		}
		
		model.addAttribute("error", "<i class='bx bxs-error-circle'></i>Invalid Email Or Password");
		return "Login";	
	}*/
	
	@PostMapping("authenticate")
	 public String authenticate(String email, String password, Model model, HttpSession session){
	     
	     System.out.println(email);
	     System.out.println(password);
	     
	     Optional<UserEntity> op = repoUser.findByEmail(email);
	     
	     if(op.isPresent()) {
	         UserEntity dbUsers = op.get();
	         boolean ans = encoder.matches(password, dbUsers.getPassword());
	         
	         if(ans) {
	             session.setAttribute("user", dbUsers);
	             
	             if ("ADMIN".equals(dbUsers.getRole())) {
	                 return "redirect:/admindashboard";
	                 
	             } else if ("USER".equals(dbUsers.getRole())) {
	                 return "redirect:/home";
	             } else {
	                 model.addAttribute("error", "Please contact the admin.");
	                 return "Login";
	             }
	         }
	     }
	     
	     model.addAttribute("error", "Invalid email or password.");
	     return "Login";
	 }
	
	//open forget password jsp
	@GetMapping("forgetpassword")
	public String forgetPassword() {
		return "ForgetPassword";
	}
	
	@GetMapping("changepassword")
	public String changePassword() {
		return "ChangePassword";
	}
	
		
	//submit forget password jsp and open changepassword jsp
	@PostMapping("sendOtp")
	public String SendOtp(String email, Model model) {
		Optional<UserEntity> op = repoUser.findByEmail(email);
		if(op.isEmpty()) {
			
			model.addAttribute("error", "Email Not Found");
			return "ForgetPassword";
		}else {
			String otp = "";
			otp = (int) (Math.random() * 1000000 ) + "";
			
			UserEntity user = op.get();
			user.setOtp(otp);
			repoUser.save(user);
			serviceMail.sendotpForForgetPassword(email, user.getFirstName(), otp);
		} 
		return "ChangePassword";
	}
	
	@PostMapping("updatepassword")
	public String updatePassword(String email, String password, String otp, Model model) {
		Optional<UserEntity>  op = repoUser.findByEmail(email);
		
		if(op.isEmpty()) {
			model.addAttribute("error", "Invalid data");
			return "ChangePassword";
		
		}else {
			UserEntity user = op.get();
			if(user.getOtp().equals(otp)) {
				String encpwd = encoder.encode(password);
				user.setPassword(encpwd);
				user.setOtp("");
				repoUser.save(user);
				
			}else {
				model.addAttribute("error", "Invalid data");
				return "ChangePassword";
			}
		}
		model.addAttribute("msg", "Password Succesfully Updated");
		return "Login";
	}

	@GetMapping("logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/login";
	}
	
	@GetMapping("viewuser")
	public String viewuser(Integer userId, Model model) {
		System.out.println("view Member Id:"+userId);
		Optional<UserEntity> op = repoUser.findById(userId);
		if(op.isEmpty()) {
			
		}else {
			UserEntity user = op.get();
			model.addAttribute("user", user);
		}
		return "ViewUser";
	}	
	@GetMapping("deleteuser")
	public String deleteuser(Integer userId) {
		repoUser.deleteById(userId);
		return "redirect:/listuser";
	}
}

 