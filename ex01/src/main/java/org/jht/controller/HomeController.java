package org.jht.controller;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		return "index";
	}
	@RequestMapping(value = "/cal", method = RequestMethod.GET)
	public String cal() {
		return "calendar";
	}
	@RequestMapping(value="/mail", method = RequestMethod.GET)
	public String mail() {
		return "mail";
	}
	@RequestMapping(value="/cafe", method = RequestMethod.GET)
	public void cafe() {
		
	}
	@RequestMapping(value="/blog", method = RequestMethod.GET)
	public String blog() {
		return "blog";
	}
	@RequestMapping(value="/write", method = RequestMethod.GET)
	public String boardWrite() {
		return "board/write";
	}
}
