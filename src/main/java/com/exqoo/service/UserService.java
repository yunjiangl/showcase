package com.exqoo.service;

import java.util.List;

import com.exqoo.entity.UserEntity;

/**
 * 用户业务接口类
 * 
 * @author 芸江
 */
public interface UserService {

	/**
	 * 通过用户名，查询用户信息
	 * 
	 * @param username
	 *            用户名
	 * @return UserEntity 实体类
	 */
	UserEntity queryByUserName(String username);
	
	/**
	 * 查询全部
	 */
	List<UserEntity> query();
	
	/**
	 * 查询单行数据
	 */
	UserEntity single(String name);
	
	/**
	 * 新增数据
	 */
	int add(String uname, String upassword,String createdate);
	/**
	 * 修改密码
	 */
	int updatePassword(Long userId, String password, String newPassword);

}
