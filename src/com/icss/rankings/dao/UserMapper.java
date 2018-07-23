package com.icss.rankings.dao;

import java.util.List;

import com.icss.rankings.pojo.User;

public interface UserMapper {
	//ע��һ���û�
    int insert(User record);
    //��½
    User userLogin(User user);
    //��ѯȫ��
    List<User> queryAllUser();
    
    //����Idɾ���û���Ϣ
    void deleteUserById(Integer uId);
    
    //����Id��ѯ����
    User queryUserById(Integer uId);
    
    //����Id����޸�
    void updateUserById(User user);

}