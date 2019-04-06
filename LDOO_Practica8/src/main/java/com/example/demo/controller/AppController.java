package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class AppController {

		@ResponseBody
		@RequestMapping("/home")
		public String Hello() {
			return "Hola desde Spring";
		}
		
		@RequestMapping("/welcome")
		public String Welcome() {
			return "welcomepage";
		}
}
