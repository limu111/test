package com.icss.rankings.dao;

import java.util.List;

import com.icss.rankings.pojo.Info;

public interface InfoMapper {
	
	 //发布101新闻
	 void insert(Info info);
	 //查询全部新闻
	 List<Info> queryAllInfo();
	 //根据id删除新闻
	 void deleteInfoById(Integer iId);
	 //根据id查询新闻
     Info queryInfoById(Integer iId);
     //点赞
     void updateLike(Integer iId);
}
