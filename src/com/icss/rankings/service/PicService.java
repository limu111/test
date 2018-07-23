package com.icss.rankings.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.icss.rankings.dao.PicMapper;
import com.icss.rankings.pojo.Pic;

@Service
@Transactional(rollbackFor=Exception.class)
public class PicService {
	
	@Autowired
	PicMapper picMapper;
	
	public void insert(Pic pic){
		picMapper.insert(pic);
	}
	
	public List<Pic> queryAllPic(Integer iId){
		return picMapper.queryAllPic(iId);
	}
}
