package com.article.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import com.articles.model.Users;
import com.articles.services.UserServices;

@Controller
public class UserController {
	@Autowired
	UserServices userServices;
	@RequestMapping(value="/displayprofilesetting",method=RequestMethod.GET)
	public String profileStting(HttpServletRequest request){
		Users user=(Users) request.getSession().getAttribute("userlogin");
		List<Users> users=userServices.profileSettings(user.getId());
		System.out.println("full name"+user.getFullName());
		request.setAttribute("users", users);
		return "setting";
	}
	@RequestMapping(value="/updatesetting",method=RequestMethod.POST)
	public String updateSetting(@RequestParam String email,@RequestParam String fullName,
			@RequestParam int age,@RequestParam String category,HttpServletRequest request){
		Users user=(Users) request.getSession().getAttribute("userlogin");
		userServices.updateSettings(user.getId(), email, fullName, age, category);
		System.out.println("updated");
		return "redirect:displayprofilesetting";
	}

}
