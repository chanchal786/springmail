package springmail.com.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import springmail.com.model.User;
import springmail.com.service.UserService;

@Controller
public class UserConroller {
	@Autowired
	private UserService userService;
	@ModelAttribute("user")
    public User formBackingObject() {
        return new User();
    }
	@PostMapping("/addUser")
	public String saveUser(@ModelAttribute("user")@Valid User user, BindingResult result,Model model) {
		List<User> list=userService.allUser();
		if(result.hasErrors()) {
		//	model.addAttribute("users",userService.list());
			model.addAttribute("list",list);
			return "userForm";
		}
		userService.saveUser(user);
		return "redirect:/";
	}
}
