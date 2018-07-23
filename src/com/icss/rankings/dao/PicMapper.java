package com.icss.rankings.dao;

import java.util.List;

import com.icss.rankings.pojo.Pic;

public interface PicMapper {
    void insert(Pic pic);
    
    List<Pic> queryAllPic(Integer iId);
}