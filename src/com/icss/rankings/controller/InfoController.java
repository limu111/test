package com.icss.rankings.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.icss.rankings.pojo.Info;
import com.icss.rankings.service.InfoService;

@Controller
public class InfoController {

	@Autowired
	InfoService infoService;

	@RequestMapping("insertInfo")
	public String insertInfo(Info info) {
		infoService.insertInfo(info);
		return "queryAllInfo";
	}
	
	@ResponseBody
	@RequestMapping("queryAllInfo")
	public List<Info> queryAllInfo(){
		return infoService.queryAllInfo();
	}
	
	@ResponseBody
	@RequestMapping("deleteInfoById")
	public String deleteInfoById(Integer iId){
		infoService.deleteInfoById(iId);
		return "yes";
	}
	
	@ResponseBody
	@RequestMapping("queryInfoById")
	public Info queryInfoById(Integer iId){
		
		return infoService.queryInfoById(iId);
	}
	
	@ResponseBody
	@RequestMapping("updateLike")
	public String updateLike(Integer iId){
		infoService.updateLike(iId);
		return "yes";
	}
}
