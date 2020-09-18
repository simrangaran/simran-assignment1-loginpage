package com.project.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.service.UserService;

import com.project.entity.*;

@Controller
public class userController
{
   @Autowired
   private UserService userservice;
   
   @RequestMapping("/")
	public String showForm(Model theModel) {
		String msg="";
		theModel.addAttribute("message",msg);
		return "login";
	}
   
   @RequestMapping("/login")
	public String dashboard(HttpServletRequest request,Model theModel)
	{
		String msg="";
		String theEmail = request.getParameter("email");
		String thePass = request.getParameter("password");
		
		User theUser = userservice.getUser(theEmail,thePass);
		if(theUser!=null) {
			theModel.addAttribute("userid", theUser.getId());
			theModel.addAttribute("username", theUser.getName().toUpperCase());
			return "dashboard";
		}
		else {
			msg="Invalid Credentials!!..";
			theModel.addAttribute("message",msg);
			return "login";
		}
	}
}