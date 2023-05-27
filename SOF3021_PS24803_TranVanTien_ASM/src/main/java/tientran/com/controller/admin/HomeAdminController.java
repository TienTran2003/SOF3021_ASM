package tientran.com.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeAdminController {
	// show index
			@RequestMapping("/admin/home")
			public String shop(Model model) {		
				return "/admin/home";
			}
}
