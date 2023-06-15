package tientran.com.controller.user;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import tientran.com.dao.AccountDAO;
import tientran.com.dao.ProductDAO;
import tientran.com.model.Account;
import tientran.com.utils.CookieService;
import tientran.com.utils.ParamService;
import tientran.com.utils.SessionService;

@Controller
@RequestMapping("home")
public class LoginController {
	@Autowired
	CookieService cookieService;
	@Autowired
	ParamService paramService;
	@Autowired
	SessionService sessionService;
	@Autowired
	AccountDAO accDAO;

	@Autowired
	ProductDAO proDAO;

	@GetMapping("login")
	public String index() {
		return "/login";
	}

	@PostMapping("login")
	public String loginPost(Model model, HttpSession session) {
		String username = paramService.getString("username", "");
		String password = paramService.getString("password", "");
		boolean remember = paramService.getBoolean("remember", false);
		try {
			Account user = accDAO.findById(username).get();
			if (!user.getPassword().equals(password)) {
				model.addAttribute("message", "Wrong Password!");
			} else {
//				sessionService.set("user", user);
				session.setAttribute(tientran.com.utils.SessionAttr.CURRENT_USER, user);
				if (remember) {
					cookieService.add("username", user.getUsername(), 10);
					cookieService.add("password", user.getPassword(), 10);
				} else {
					cookieService.remove("username");
					cookieService.remove("password");
				}
				model.addAttribute("message", "Login Successfully");
				return "user/index";
			}
		} catch (Exception e) {
			model.addAttribute("message", "Account is invalid!");
		}
		return "/login";
	}
}
