package com.ait.controllers;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ait.Entity.userRegEntity;
import com.ait.Repository.userRegRepo;
import com.ait.dto.UserRegisterDto;

import jakarta.servlet.http.HttpSession;

@Controller
public class mvcController {

	@Autowired
	private userRegRepo ur;

	@GetMapping("/")
	public String Home() {
		return "Home";
	}

	@PostMapping("/loginn")
	public String Handlelogin(@RequestParam String username, @RequestParam String password , HttpSession session, Model model) {
		System.out.println(username + "  " + password);
		if (ur.findByEmailAndPassword(username, password)==null) {
			model.addAttribute("msg", "Incorrect email and password");
			return "login";
		}else {
			String fullname = ur.findByEmailAndPassword(username, password).getFullName();
			session.setAttribute("username", fullname);
		}
		return "sample";
	}

	@GetMapping("/login")
	public String loginbtnHandle() {
		return "login";
	}

	@GetMapping("/registerform")
	public String registerbtnHandle() {
		return "registerform";
	}

	@PostMapping("/register")
	public String registreUser(@ModelAttribute UserRegisterDto urd, Model model) {
		userRegEntity ure = new userRegEntity();
		BeanUtils.copyProperties(urd, ure);
		String email = urd.getEmail();
		if (ur.findByEmail(email)!=null) {
			model.addAttribute("errorMessage", "Email already Exists!");
			return "registerform";
		} else {

			if (ur.save(ure)!=null) {
				System.out.println(ure);
				model.addAttribute("successMessage", "Registration Successfull!");
				return "registerform"; // Redirect to avoid resubmission on refresh
			} else {
				model.addAttribute("errorMessage", "Registration Failed. Please try again.");
				return "registerform"; // Return to the same register page in case of failure
			}
		}

	}
	
    
    
    
}
