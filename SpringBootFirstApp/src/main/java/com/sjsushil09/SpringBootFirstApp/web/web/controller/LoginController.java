package com.sjsushil09.SpringBootFirstApp.web.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.sjsushil09.SpringBootFirstApp.web.web.services.LoginService;

@Controller
@SessionAttributes("name") //to store this info across multiple pages 
public class LoginController {
	@Autowired
	LoginService loginservice;
	
	@RequestMapping(value="/login",method=RequestMethod.GET)//to map to particular url routing & only applicable for get method
	//@ResponseBody//When we don't have view to render
	public String showLoginPage(ModelMap map) {
		return "login";
	}
	
	@RequestMapping(value="/login",method=RequestMethod.POST)//to map to particular url routing & only applicable for post method
	//@ResponseBody//When we don't have view to render
	public String showWelcomPage(ModelMap map, @RequestParam String name, @RequestParam String password) {
		if(!loginservice.isValid(name, password))
			return "login";
		
		map.put("name",name);
		map.put("password",password);
		return "Welcome";
	}
}