package com.sjsushil09.SpringBootFirstApp.web.web.services;

import org.springframework.stereotype.Component;

@Component
public class LoginService {
	public boolean isValid(String name,String password) {
		return name.equalsIgnoreCase("Sushil") && password.equalsIgnoreCase("dummy");
	}
}
