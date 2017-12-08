package com.exqoo.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.exqoo.entity.UserEntity;
import com.exqoo.service.impl.UserServiceImpl;


/**
 * 用户管理
 * @author Admin
 *
 */
@Controller
@RequestMapping("/sys/user")
public class SysUsersController {
	@Resource
	private UserServiceImpl userServiceImpl;
	/**
	 * 查询nfdw_users全部数据
	 * @return
	 */
	@RequestMapping(value="/query")
	public String query(Model model) {
		List<UserEntity> list=userServiceImpl.query();
		System.out.println(list.get(0));
		model.addAttribute("query", list);
		return "user";
	}
	/**
	 * 新增数据
	 */
	@RequestMapping(value="/add")
	public String add(Model model,@RequestParam("uname") String uname,
									@RequestParam("upassword") String upassword,
									@RequestParam("createdate") String createdate) {
		int num=userServiceImpl.add(uname, upassword, createdate);
		System.out.println(num);
		if(num>0) {
			return "新增成功！！！";
		}
		return "新增失败!!!";
	}
}
