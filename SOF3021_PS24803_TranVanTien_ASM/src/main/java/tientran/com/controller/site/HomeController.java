package tientran.com.controller.site;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller
public class HomeController {
	// show index
		@RequestMapping("/user/home")
		public String shop(Model model) {		
			return "/user/index";
		}
}
