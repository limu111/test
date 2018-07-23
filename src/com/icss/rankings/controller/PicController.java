package com.icss.rankings.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.icss.rankings.pojo.Pic;
import com.icss.rankings.service.PicService;

@Controller
public class PicController {
	
	@Autowired
	PicService picService;

	@ResponseBody
	@RequestMapping("insertPic")
	public String insertPic(Pic pic){
		picService.insert(pic);
		return "yes";
	}
	
	@ResponseBody
	@RequestMapping("queryAllPic")
	public List<Pic> queryAllPic(Integer iId){
		return picService.queryAllPic(iId);
	}
}
