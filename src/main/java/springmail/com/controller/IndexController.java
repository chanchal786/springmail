package springmail.com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {
	
	@RequestMapping("/")
	public String userForm(Model model) {
		System.out.println("Hi Controller");
		return "home";
	}
	/*@RequestMapping("form")
	public String form(Model model) {
		return "form";
	}*/
}
