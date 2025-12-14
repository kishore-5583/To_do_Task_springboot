package com.ait.controllers;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ait.Entity.userRegEntity;
import com.ait.Repository.userRegRepo;
import com.ait.dto.UserRegisterDto;

@Controller
public class mvcController { 
	
	@Autowired
	private userRegRepo ur;
	
	@GetMapping("/")
	public String Home() {
		return "Home";
	}
	
	
	@PostMapping("/loginn")
	public String Handlelogin(@RequestParam String username , @RequestParam String password) {
		System.out.println(username +"  "+password);
		if(ur.findByEmailAndPassword(username, password)) {
			System.out.println(ur.findByEmailAndPassword(username, password));
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
	
	
	@ResponseBody
	@PostMapping("/register")
	public String registreUser(@ModelAttribute UserRegisterDto urd) {
		userRegEntity ure = new userRegEntity();
		BeanUtils.copyProperties(urd, ure);
		if(ur.save(ure)!=null) {
			System.out.println(ure);
			return "data insertion Successfully";
		}else {
			return "data insertion failed";
		}
		
		
	}
}
