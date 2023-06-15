package tientran.com.controller.user;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import tientran.com.dao.AccountDAO;
import tientran.com.dao.OrderDetailDAO;
import tientran.com.dao.ProductDAO;
import tientran.com.model.Product;
import tientran.com.utils.CookieService;
import tientran.com.utils.ParamService;
import tientran.com.utils.SessionService;

@Controller
public class HomeController {

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

	@Autowired
	OrderDetailDAO orderDetailDAO;

	// show index
	@RequestMapping("/home")
	public String shop(Model model, @RequestParam("p") Optional<Integer> p) {
		Pageable pageable = PageRequest.of(p.orElse(0), 8);
		Page<Product> page = proDAO.findAll(pageable);
		int currentPage = 1;
		int totalItems = page.getNumberOfElements();
		int totalPages = page.getTotalPages();
		model.addAttribute("totalItems", totalItems);
		model.addAttribute("totalPages", totalPages);
		model.addAttribute("currentPage", currentPage);
		model.addAttribute("page", page);

		return "user/index";
	}

	@RequestMapping("shop/women")
	public String paginatewomen(Model model, @RequestParam("p") Optional<Integer> p) {

		Pageable pageable = PageRequest.of(p.orElse(0), 6);
		Page<Product> wmList = proDAO.findByCategorywm("2", pageable);
		int currentPage = 1;
		int totalItems = wmList.getNumberOfElements();
		int totalPages = wmList.getTotalPages();
		model.addAttribute("totalItems", totalItems);
		model.addAttribute("totalPages", totalPages);
		model.addAttribute("currentPage", currentPage);
		model.addAttribute("wmList", wmList);
		return "user/womenproduct";
	}

	@RequestMapping("shop/men")
	public String paginate1men(Model model, @RequestParam("p") Optional<Integer> p) {

		Pageable pageable = PageRequest.of(p.orElse(0), 6);
		Page<Product> mList = proDAO.findByCategorywm("1", pageable);
		int currentPage = 1;
		int totalItems = mList.getNumberOfElements();
		int totalPages = mList.getTotalPages();
		model.addAttribute("totalItems", totalItems);
		model.addAttribute("totalPages", totalPages);
		model.addAttribute("currentPage", currentPage);
		model.addAttribute("mList", mList);
		return "user/menproduct";
	}

	@RequestMapping("pricemen")
	public String searchGiamen(Model model, @RequestParam("min") Optional<Double> min,
			@RequestParam("max") Optional<Double> max, @RequestParam("p") Optional<Integer> p) {
		Double minPrice = min.orElse(Double.MIN_VALUE);
		Double maxPrice = max.orElse(Double.MAX_VALUE);
		sessionService.set("max", maxPrice);
		sessionService.set("min", minPrice);
		Pageable pageable = PageRequest.of(p.orElse(0), 6);
		Page<Product> page = proDAO.findByCategory1("1", pageable, minPrice, maxPrice);
		model.addAttribute("mList", page);
		return "user/menproduct";

	}

	@RequestMapping("pricewomen")
	public String searchGiawomen(Model model, @RequestParam("min") Optional<Double> min,
			@RequestParam("max") Optional<Double> max, @RequestParam("p") Optional<Integer> p) {
		Double minPrice = min.orElse(Double.MIN_VALUE);
		Double maxPrice = max.orElse(Double.MAX_VALUE);
		sessionService.set("max", maxPrice);
		sessionService.set("min", minPrice);
		Pageable pageable = PageRequest.of(p.orElse(0), 6);
		Page<Product> page = proDAO.findByCategory1("2", pageable, minPrice, maxPrice);
		model.addAttribute("wmList", page);
		return "user/womenproduct";

	}
}
