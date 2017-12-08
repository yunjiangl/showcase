package com.exqoo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class IndexController extends AbstractController {

	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String index() {

		return "index";
	}

	/*@RequestMapping(value = "sys/main", method = RequestMethod.GET)
	public String main() {
		return "sys/main";
	}*/
}
