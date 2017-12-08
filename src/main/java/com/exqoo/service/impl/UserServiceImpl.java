package com.exqoo.service.impl;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.exqoo.dao.UserDao;
import com.exqoo.entity.UserEntity;
import com.exqoo.service.UserService;

/**
 * 用户业务实现类
 * @author 芸江
 */
@Service
public class UserServiceImpl implements UserService{

	@Autowired
	private UserDao userDao;

	@Override
	public UserEntity queryByUserName(String username) {
		
		return userDao.selectUserByUserName(username);
	}
	
	/**
	 * 查询全部
	 */
	public List<UserEntity> query() {
		// TODO Auto-generated method stub
		return userDao.query();
	}

	/**
	 * 查询单行数据
	 */
	public UserEntity single(String name) {
		// TODO Auto-generated method stub
		return userDao.single(name);
	}

	/**
	 * 新增数据
	 */
	public int add(String uname, String upassword,String createdate) {
		// TODO Auto-generated method stub
		return userDao.add(uname, upassword, createdate);
	}

	/**
	 * 修改密码
	 */
	@Override
	public int updatePassword(Long userId, String password, String newPassword) {
		Map<String, Object> map = new HashMap<>();
		map.put("userId", userId);
		map.put("password", password);
		map.put("newPassword", newPassword);
		return userDao.updatePassword(map);
	}

	
	
	
	

}
