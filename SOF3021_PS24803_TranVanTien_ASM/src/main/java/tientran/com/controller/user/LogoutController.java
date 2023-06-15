package tientran.com.controller.user;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import tientran.com.utils.SessionService;

@Controller
public class LogoutController {
	@Autowired
	SessionService sessionService;

	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:home/login";
	}
}
