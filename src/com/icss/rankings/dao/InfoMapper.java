package com.icss.rankings.dao;

import java.util.List;

import com.icss.rankings.pojo.Info;

public interface InfoMapper {
	
	 //����101����
	 void insert(Info info);
	 //��ѯȫ������
	 List<Info> queryAllInfo();
	 //����idɾ������
	 void deleteInfoById(Integer iId);
	 //����id��ѯ����
     Info queryInfoById(Integer iId);
     //����
     void updateLike(Integer iId);
}
