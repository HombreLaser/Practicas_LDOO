package fcfm.doo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import fcfm.doo.model.User;
import fcfm.doo.services.UserService;

@org.springframework.web.bind.annotation.RestController
public class RestController {
	
	@Autowired
	private UserService userService;
	
	@GetMapping("/")
	public String Hello() {
		return "Bienvenidos a Práctica 8 LDOO";
	}
	
	@GetMapping("/save-user")
	public String saveUser(@RequestParam String username, @RequestParam String password, @RequestParam String email, @RequestParam String birthday, @RequestParam String phone, @RequestParam int age, @RequestParam String name) {
		User user = new User(username, password, email, birthday, phone, age, name);
		userService.saveUser(user);
		return "Usuario guardado";
	}
}
