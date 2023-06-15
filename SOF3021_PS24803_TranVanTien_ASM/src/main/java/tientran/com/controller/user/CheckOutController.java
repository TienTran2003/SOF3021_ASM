package tientran.com.controller.user;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import tientran.com.dao.OrderDetailDAO;
import tientran.com.model.Account;
import tientran.com.model.Order;
import tientran.com.model.OrderDetail;
import tientran.com.service.CheckOutService;
import tientran.com.service.ShoppingCartService;
import tientran.com.utils.ParamService;
import tientran.com.utils.SessionService;

@Controller
@RequestMapping("home")
public class CheckOutController {
	@Autowired
	ShoppingCartService shoppingCartService;

	@Autowired
	SessionService sessionService;

	@Autowired
	ParamService paramService;

	@Autowired
	CheckOutService checkOutService;

	@Autowired
	OrderDetailDAO orderDetailDAO;

	@RequestMapping("checkout")
	public String checkout(Model model) {
		model.addAttribute("cart", shoppingCartService);
		return "user/checkout";
	}

	@RequestMapping("order-detail")
	public String orderdetail(Model model) {
		try {
			String address = paramService.getString("address", "");
			if (!shoppingCartService.getItems().isEmpty()) {
				if (address.equals("")) {
					return "redirect: user/checkout";
				}
				Account currentUser = sessionService.get("currentUser");
				Order order = checkOutService.order(currentUser, address);
				List<OrderDetail> items = orderDetailDAO.findByOrderID(order.getId());
				model.addAttribute("order", order);
				model.addAttribute("items", items);
				return "user/order-detail";
			}
			return "redirect:/home";
		} catch (Exception ex) {
			// log the error
			ex.printStackTrace();
			// return an error view
			return "error";
		}

	}
}
