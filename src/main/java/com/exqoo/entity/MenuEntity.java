package com.exqoo.entity;

public class MenuEntity {
	
	private long menuId;	//分类id
	
	private String menuName;	//分类名

	public long getMenuId() {
		return menuId;
	}

	public void setMenuId(long menuId) {
		this.menuId = menuId;
	}

	public String getMenuName() {
		return menuName;
	}

	public void setMenuName(String menuName) {
		this.menuName = menuName;
	}

	@Override
	public String toString() {
		return "MenuEntity [menuId=" + menuId + ", menuName=" + menuName + "]";
	}
	
	
	
	
}
