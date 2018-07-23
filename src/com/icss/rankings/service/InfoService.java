package com.icss.rankings.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.icss.rankings.dao.InfoMapper;
import com.icss.rankings.pojo.Info;

@Service
@Transactional(rollbackFor=Exception.class)
public class InfoService {
	@Autowired
	InfoMapper infoMapper;
	
	public void insertInfo(Info info){
		infoMapper.insert(info);
	}
	@Transactional(readOnly=true)
	public List<Info> queryAllInfo(){
		return infoMapper.queryAllInfo();
	}
	
	public void deleteInfoById(Integer iId){
		infoMapper.deleteInfoById(iId);
	}
	
	public  Info queryInfoById(Integer iId){
		return infoMapper.queryInfoById(iId);
	}
	
	public  void updateLike(Integer iId){
		infoMapper.updateLike(iId);
	}

}
