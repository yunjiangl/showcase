package com.exqoo.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.exqoo.dao.FolderDao;
import com.exqoo.entity.FolderEntity;
import com.exqoo.entity.MenuEntity;
import com.exqoo.service.FolderService;

@Service
public class FolderServiceImpl implements FolderService {
	@Resource
	private FolderDao folderDao;
	/**
	 * 查询全部二级菜单
	 * @return 二级菜单集合
	 */
	public List<FolderEntity> queryAll() {
		return folderDao.queryAll();
	}
	/**
	 * 删除二级菜单
	 */
	public int deleteFolder(String name) {
		
		return folderDao.deleteFolder(name);
	}
	/**
	 * 新增二级菜单
	 */
	public int insertFolder(String name, long menu) {
		
		return folderDao.insertFolder(name, menu);
	}
	/**
	 * 查询一级标题ID
	 */
	public MenuEntity selectMenuByName(String menu_name) {
		return folderDao.selectMenuByName(menu_name);
	}
	/**
	 * 单行查询二级标题
	 */
	public FolderEntity selectFolderByName(String folder_name) {
		
		return folderDao.selectFolderByName(folder_name);
	}
	/**
	 * 查询全部一级标题
	 */
	public List<MenuEntity> queryMenu() {
		
		return folderDao.queryMenu();
	}
	/**
	 * 修改二级标题
	 */
	public int updateFolder(String folder_name,long folder_menu) {
		
		return folderDao.updateFolder(folder_name,folder_menu);
	}
	@Override
	public List<FolderEntity> selectFoldersByMenuId(long menuId) {
		
		return folderDao.selectFoldersByMenuId(menuId);
	}
	
	

}
