package com.exqoo.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.exqoo.entity.FileEntity;
import com.exqoo.entity.FolderEntity;
import com.exqoo.entity.MenuEntity;
import com.exqoo.service.impl.FileServiceImpl;
import com.exqoo.service.impl.FolderServiceImpl;

@Controller
public class SysFolderController {
	@Resource
	private FolderServiceImpl folderServiceImpl;
	@Resource
	private FileServiceImpl fileServiceImpl;
	
	@RequestMapping(value = "/xinzengaa")
	public String ss() {
		return "menu";
	}

	/**
	 * 查询全部二级菜单 使用model方法把查询出来的值传入前端页面
	 * 
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/queryAll")
	public String queryAll(Model model) {
		List<FolderEntity> list = folderServiceImpl.queryAll();
		model.addAttribute("queryAll", list);
		return null;
	}

	/**
	 * 删除二级菜单
	 * 
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/deleteFolder")
	public String deleteFolder(Model model, @RequestParam("folder_name") String name) {
		int num = folderServiceImpl.deleteFolder(name);
		return null;
	}

	/**
	 * 新增二级菜单
	 */
	@RequestMapping(value = "/insertFolder")
	public String insertFolder(Model model, @RequestParam("folder_name") String name,
			@RequestParam("menu_name") String menu_name) {
		// 查询出当前一级标题的ID
		MenuEntity menuEntity = folderServiceImpl.selectMenuByName(menu_name);
		long menu = menuEntity.getMenuId();
		// 通过二级菜单名称和一级菜单ID进行新增
		int num = folderServiceImpl.insertFolder(menu_name, menu);

		return null;
	}

	/**
	 * 修改二级菜单
	 */
	@RequestMapping(value = "/updateFolder")
	public String updateFolder(Model model, @RequestParam("folder_name") String folder_name,
			@RequestParam("menu_name") String menu_name) {
		MenuEntity menuEntity = folderServiceImpl.selectMenuByName(menu_name);
		long folder_menu = menuEntity.getMenuId();
		int num = folderServiceImpl.updateFolder(folder_name, folder_menu);
		return null;
	}
	/**
	 * 主页数据的获取
	 */
	@RequestMapping(value="sys/main/page")
	public String selectQueryAll(Model model) {
		//获取标题
		List<MenuEntity> list=folderServiceImpl.queryMenu();
		for (int i = 0; i < list.size(); i++) {
			model.addAttribute("msg"+i, list.get(i).getMenuName());
			model.addAttribute("num"+i, list.get(i).getMenuId());
		}
		//获取二级标题
		List<FolderEntity> fodellist=folderServiceImpl.queryAll();
		model.addAttribute("fodellist", fodellist);
		//获取文件名
		List<FileEntity> filelist=fileServiceImpl.selectQueryAll();
		model.addAttribute("filelist", filelist);
		return "sys/main";
	}
	/**
	 * 通过ajax获取二级菜单下的文件数据
	 */
	@RequestMapping(value="/sys/main/selectfolder",method=RequestMethod.GET)
	@ResponseBody
	public List<FileEntity> selectfolder(Model model,@RequestParam("qwe") long qwe) {
		List<FileEntity> list=fileServiceImpl.selectFileFolder(qwe);
		model.addAttribute("flist", list);
		return list;
	}
	/**
	 * 更多页面跳转
	 * 数据展示
	 */
	@RequestMapping(value="/sys/main/more")
	public String more(Model model,@RequestParam("menuId") long menuId) {
		//查询出所有文件数据
		List<FileEntity> FileList=folderServiceImpl.selectFileAll(menuId);
		//查询出所有文件夹数据
		List<FolderEntity> FileListAll=folderServiceImpl.selectFoldersByMenuId(menuId);
		model.addAttribute("FileList", FileList);
		model.addAttribute("FileListAll", FileListAll);
		return "sys/more";
	}
}
