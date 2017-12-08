package com.exqoo.dao;


import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestParam;

import com.exqoo.entity.UserEntity;

@Repository
public interface UserDao {
	
	/**
	 * 通过用户名查询用户信息
	 * @param username 用户名
	 * @return 用户实体类
	 */
	UserEntity selectUserByUserName(String username);
	
	/**
	 * 查询全部数据
	 */
	@Select("select * from nfdw_users")
	List<UserEntity> query();
	/**
	 * 查询单行数据
	 */
	@Select("select * from nfdw_users where user_name=#{name}")
	UserEntity single(@RequestParam("name") String name);
	/**
	 * 新增数据
	 */
	/*@Insert("INSERT INTO nfdw_users(user_name, user_password,user_createdate) VALUES (#{uname},#{upassword},#{createdate})")*/
	int add(@Param("uname") String uname,
			@Param("upassword") String upassword,
			@Param("createdate") String createdate);
	/**
	 * 修改密码
	 */
	/*@Update("update nfdw_users set user_password=#{password} where user_name=#{name}")*/
	int updatePassword(Map<String, Object> map);
	
}
