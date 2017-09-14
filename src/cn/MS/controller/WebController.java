package cn.MS.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class WebController {
   @RequestMapping("/index")
   public String goIndex(){
	   return "index";
   }
   @RequestMapping("/home")
   public String goHome() {
	   return "home";
   }
   @RequestMapping("/login")
   public String login() {
	   return "login";
   }
   @RequestMapping("/admin")
   public String admin() {
	   return "AdminManage";
   }
}
