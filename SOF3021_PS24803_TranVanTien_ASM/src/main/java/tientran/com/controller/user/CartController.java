package tientran.com.controller.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import tientran.com.service.ShoppingCartService;
import tientran.com.utils.ParamService;

@Controller
@RequestMapping("home")
public class CartController {

	@Autowired
	ShoppingCartService cart;
	@Autowired
	ParamService param;

	@RequestMapping("cart")
	public String index(Model model) {
		model.addAttribute("cart", cart);
		return "user/cart";
	}

	@RequestMapping("/cart/add/{id}")
	public String add(@PathVariable("id") Integer id) {
		cart.add(id);
		return "redirect:/home/cart";
	}

	@RequestMapping("/cart/sub/{id}")
	public String sub(@PathVariable("id") Integer id) {
		cart.sub(id);
		return "redirect:/home/cart";
	}

	@RequestMapping("/cart/remove/{id}")
	public String remove(@PathVariable("id") Integer id) {
		cart.remove(id);
		return "redirect:/home/cart";
	}

	@RequestMapping("/cart/update")
	public String update() {
		Integer id = param.getInt("id", 0);
		int qty = param.getInt("qty", 0);
		cart.update(id, qty);
		return "redirect:/home/cart";
	}

	@RequestMapping("/cart/clear")
	public String clear() {
		cart.clear();
		return "redirect:/home/cart";
	}
}
