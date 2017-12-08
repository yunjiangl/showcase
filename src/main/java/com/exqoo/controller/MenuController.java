package com.exqoo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.exqoo.entity.MenuEntity;
import com.exqoo.service.impl.MenuServiceImpl;

@Controller
@RequestMapping("")
public class MenuController {
	
	@Autowired
	private MenuServiceImpl menuServiceImpl;

/*	@RequestMapping("/men")
	public String index() {
		return "menu";
	}
	
	@RequestMapping("/xinzeng")
	public String zx() {
		return "add";
	} */
	
	/**
	 * 查询所有菜单
	 */
	@RequestMapping("/chaxun")
	public String chaxun(Model model) {
		List<MenuEntity> list=menuServiceImpl.selectMenu();
		model.addAttribute("lis", list);
		return "list";
	}
	
	/**
	 * 新增标题
	 */
	@RequestMapping(value="/save")
	public String add(@RequestParam("uname") String uname) {
		System.out.println("fasdasdas");
		boolean flag=menuServiceImpl.saveMenu(uname);
		if(flag) {
			System.out.println("true");
			}else {
				System.out.println("false");
			}
		return "menu";
		}
	
	/**
	 * 单行查询标题
	 */
	@RequestMapping(value="/update")
	public String queryone(Model model,@RequestParam("id") long id) {
		MenuEntity menuEntity=menuServiceImpl.selectMenuByMenuId(id);
		model.addAttribute("menus", menuEntity);
		return "update";
	}
	/**
	 * 修改标题
	 */
	@RequestMapping(value="/xiugai")
	public String updatemenu(@RequestParam("id") long id,@RequestParam("uname") String uname) {
		MenuEntity menuEntity=new MenuEntity();
		menuEntity.setMenuId(id);
		menuEntity.setMenuName(uname);
		boolean flag=menuServiceImpl.UpdateMenu(menuEntity);
		if(flag) {
			System.out.println("true");
			}else {
				System.out.println("false");
			}
		return "menu";
	}
	
	/**
	 * 删除标题
	 */
	@RequestMapping(value="/delete")
	public String delete(@RequestParam("id") long id) {
		boolean flag=menuServiceImpl.deleteMenu(id);
		if(flag) {
			System.out.println("true");
			}else {
				System.out.println("false");
			}
		return "list";
	}
	
}
