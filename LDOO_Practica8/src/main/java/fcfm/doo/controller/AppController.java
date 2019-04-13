package fcfm.doo.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import fcfm.doo.model.User;
import fcfm.doo.services.UserService;

@Controller
public class AppController {
		
		@Autowired
		private UserService userService;
		
		@RequestMapping("/welcome")
		public String Welcome(HttpServletRequest request) {
			request.setAttribute("mode", "MODE_HOME");
			return "welcomepage";
		}
		
		@RequestMapping("/register")
		public String Registration(HttpServletRequest request) {
			request.setAttribute("mode", "MODE_REGISTER");
			return "welcomepage";
		}
		
		@PostMapping("/save-user")
		public String registerUser(@ModelAttribute User user, BindingResult bindingResult, HttpServletRequest request) {
			userService.saveUser(user);
			request.setAttribute("mode", "MODE_HOME");
			return "welcomepage";
		}
		
		@RequestMapping("/login")
		public String login(HttpServletRequest request) {
			request.setAttribute("mode", "MODE_LOGIN");
			return "welcomepage";
		}
		
		@RequestMapping("/login-user")
		public String loginUser(@ModelAttribute User user, HttpServletRequest request) {
			if(userService.findByUsernameAndPassword(user.getUsername(), user.getPassword()) != null) {
				return"loginpage";
			}
			else {
				request.setAttribute("error", "IUsuario o Contraseña Inválidos");
				request.setAttribute("mode", "MODE_LOGIN");
				return "welcomepage";
			}
		}
}
