package com.icss.rankings.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.icss.rankings.pojo.User;
import com.icss.rankings.service.UserService;

@Controller
public class UserController {
	
	@Autowired
	UserService userService;
	
	@RequestMapping("insertUser")
	public String insertUser(User user){
		userService.insertUser(user);
		return "queryAllUser";
	}
	
	@RequestMapping("userLogin")
	public ModelAndView userLogin(User user){
		User u = userService.userLogin(user);
		ModelAndView  mv = new ModelAndView();
		if(u!=null){
			mv.addObject("u",u);
			if(u.getuRole()==0){
			  mv.setViewName("rankingFrame");
			}else{
				//���D���Ñ�������
				mv.setViewName("index");
			}
		}else{
			mv.setViewName("userLogin");
		}
		return mv;
	}
	
	@ResponseBody
	@RequestMapping("queryAllUser")
	public List<User> queryAllUser(){
		List<User> list=userService.queryAllUser();
		return list;
	}
	
	@ResponseBody
	@RequestMapping("deleteUserById")
	public String deleteUserById(Integer uId){
		userService.deleteUserById(uId);
		return "yes";//����ֵyes
	}
	
	@RequestMapping("queryUserById")
	public ModelAndView queryUserById(Integer uId){
		User user = userService.queryUserById(uId);
		ModelAndView mv = new ModelAndView();
		//��������
		mv.addObject("user",user);
		//ת���Ľ���
		mv.setViewName("updateUser");
		return mv;
	}
	
	@RequestMapping("updateUserById")
	public String updateUserById(User user){
		userService.updateUserById(user);
		return "queryAllUser";//��ת���浽queryAllUser.jsp
	}
	@ResponseBody
	@RequestMapping("queryUserById2")
	public User queryUserById2(Integer uId){
		User user = userService.queryUserById(uId);
		return user;
	}
	
	
}
