package com.barkeyshop.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class InistateBakaryController {

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String welcome(ModelMap model) {

		model.addAttribute("message", "Welcome");
		return "index";

	}
	@RequestMapping(value = "/createUser", method = RequestMethod.POST)
	public void createUser(ModelMap model,String customerInfo) {

		//model.addAttribute("message", "Welcome");
		//model.addAttribute("message", "Welcome");
		//model.addAttribute("message", "Welcome");
		//model.addAttribute("message", "Welcome");
		System.out.println("controler cLLWS");


	}
}
