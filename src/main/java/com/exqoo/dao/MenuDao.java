package com.exqoo.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.exqoo.entity.MenuEntity;

@Repository
public interface MenuDao {

	/**
	 * 新增标题名
	 * @param menuname 分类实体类
	 * @return 布尔值
	 */
	boolean saveMenu(String menuname);
	
	/**
	 * 删除标题名
	 * @param MenuEntity 分类实体类
	 */
	boolean deleteMenu(long menuid);
	
	/**
	 * 修改分类标题名
	 * @param menuid 分类实体类
	 * @param menuname 分类实体类
	 * @return 布尔值
	 */
	boolean UpdateMenu(MenuEntity menuEntity);
	
	/**
	 * 查询所有分类标题
	 * @return 标题集合
	 */
	List<MenuEntity> selectMenu();
	
	/**
	 * 单个标题查询
	 * @param menuid 标题id
	 * @return 标题集合
	 */
	MenuEntity selectMenuByMenuId(long menuid);
}
