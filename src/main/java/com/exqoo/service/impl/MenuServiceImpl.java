package com.exqoo.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.exqoo.dao.MenuDao;
import com.exqoo.entity.MenuEntity;
import com.exqoo.service.MenuService;

/**
 * 标题分类实现类
 * @author 王耀民
 */
@Service
public class MenuServiceImpl implements MenuService {

	@Autowired
	private MenuDao menudao;
	
	@Override
	public boolean saveMenu(String menuname) {
		// TODO Auto-generated method stub
		return menudao.saveMenu(menuname);
	}

	@Override
	public List<MenuEntity> selectMenu() {
		// TODO Auto-generated method stub
		return menudao.selectMenu();
	}

	@Override
	public MenuEntity selectMenuByMenuId(long menuid) {
		// TODO Auto-generated method stub
		return menudao.selectMenuByMenuId(menuid);
	}

	@Override
	public boolean UpdateMenu(MenuEntity menuEntity) {
		// TODO Auto-generated method stub
		return menudao.UpdateMenu(menuEntity);
	}

	@Override
	public boolean deleteMenu(long menuid) {
		// TODO Auto-generated method stub
		return menudao.deleteMenu(menuid);
	}

}
