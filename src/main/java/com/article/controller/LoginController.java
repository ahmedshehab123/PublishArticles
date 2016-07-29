package com.article.controller;

import javax.persistence.NoResultException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.articles.model.Users;
import com.articles.services.UserServices;

@Controller
public class LoginController {
 
	@Autowired
	UserServices userServices;
	
	@RequestMapping(value="/",method=RequestMethod.GET)
	public String getStarted(Users user){
		
		return "landing";
	}
	@RequestMapping(value="/gotoregistration",method=RequestMethod.GET)
	public String goToregister(){
		
		
		return "registration";
	}
	@RequestMapping(value="/backtologin",method=RequestMethod.GET)
	public String goToLogin(){
		
		
		return "login";
	}
	 @RequestMapping(value="/logout",method=RequestMethod.GET)
     public String logout(HttpSession session){
    	 session.invalidate();
        
    	 
    	 return "redirect:/";
     }

	
	@RequestMapping(value="/signup",method=RequestMethod.POST)
	public String signup(@ModelAttribute("signup") Users user,HttpServletRequest request){
		userServices.createUser(user);
		request.getSession().setAttribute("userlogin", user);
		System.out.println("age "+user.getAge());
		return "redirect:/";
		
	}
	@RequestMapping(value="login",method=RequestMethod.POST)
	public String login(@RequestParam String email,@RequestParam String password,ModelMap model ,HttpServletRequest request){
		
		Users user=null;
		try{
			user = userServices.login(email, password);
			request.getSession().setAttribute("userlogin", user);
			
		}
			catch (NoResultException nre){
			//Ignore this because as per your logic this is ok!
			}

			if(user == null){
				System.out.println("password error");
				return "landing";
			}
			else{
				return "landing";
				}
			
		
	}
}
