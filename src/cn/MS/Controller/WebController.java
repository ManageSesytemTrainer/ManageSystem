package cn.MS.Controller;

import org.springframework.web.bind.annotation.RequestMapping;

public class WebController {
   @RequestMapping("/")
   public String goIndex(){
	   return "index";
   }
}