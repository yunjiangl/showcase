package com.exqoo.entity;

/**
 * 
 * 用户实体类
 * 
 * @author 芸江
 */
public class UserEntity {
	
	private Long userId; // 用户的id
	
	private String userName; // 用户的登陆名
	
	private String userPassword; // 用户的登陆密码
	 
	private String userCreatedate; // 用户的创建时间

	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserPassword() {
		return userPassword;
	}

	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}

	public String getUserCreatedate() {
		return userCreatedate;
	}

	public void setUserCreatedate(String userCreatedate) {
		this.userCreatedate = userCreatedate;
	}

	@Override
	public String toString() {
		return "UserEntity [userId=" + userId + ", userName=" + userName + ", userPassword=" + userPassword
				+ ", userCreatedate=" + userCreatedate + "]";
	}
	
	
	
}
