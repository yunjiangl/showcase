package com.exqoo.service;

import java.util.List;

import com.exqoo.entity.FolderEntity;
import com.exqoo.entity.MenuEntity;

/**
 * 文件夹名管理（二级标题）
 * 
 * @author Admin
 *
 */
public interface FolderService {

	/**
	 * 查询全部二级菜单
	 * 
	 * @return 二级菜单集合
	 */

	List<FolderEntity> queryAll();

	/**
	 * 删除二级菜单
	 */
	int deleteFolder(String name);

	/**
	 * 新增二级菜单
	 */
	int insertFolder(String name, long menu);

	/**
	 * 查询一级标题ID
	 */
	MenuEntity selectMenuByName(String menu_name);

	/**
	 * 单行查询二级标题
	 */
	FolderEntity selectFolderByName(String folder_name);

	/**
	 * 查询全部一级标题
	 */
	List<MenuEntity> queryMenu();

	/**
	 * 修改二级标题
	 */
	int updateFolder(String folder_name, long folder_menu);

	/**
	 * 通过一级标题查询该一级标题下的所有文件夹
	 * 
	 * @param menuId
	 *            一级标题id
	 * @return 文件夹集合
	 */
	List<FolderEntity> selectFoldersByMenuId(long menuId);
}
