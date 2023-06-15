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
import tientran.com.dao.ProductDAO;
import tientran.com.model.Product;
import tientran.com.utils.CookieService;
import tientran.com.utils.ParamService;
import tientran.com.utils.SessionService;

@Controller
@RequestMapping("home")
public class ShopController {

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

//	 filter sản phẩm
//	@RequestMapping("shop")
//	public String shop(Model model, @RequestParam("field2") Optional<String> field2) {
//		Sort sort = Sort.by(Direction.DESC, field2.orElse("price"));
//		List<Product> list = proDAO.findAll(sort);
//		model.addAttribute("items", list);
//		return "user/product";
//	}

	@RequestMapping("shop")
	public String paginate(Model model, @RequestParam("p") Optional<Integer> p) {

		Pageable pageable = PageRequest.of(p.orElse(0), 6);
		Page<Product> page = proDAO.findAll(pageable);
		int currentPage = 1;
		int totalItems = page.getNumberOfElements();
		int totalPages = page.getTotalPages();
		model.addAttribute("totalItems", totalItems);
		model.addAttribute("totalPages", totalPages);
		model.addAttribute("currentPage", currentPage);
		model.addAttribute("page", page);
		return "user/shop";
	}

//	// Submit lọc theo hãng
//	@RequestMapping("brand")
//	public String locBrand(Model model, @RequestParam("field1") Optional<String> field1,
//			@RequestParam("p") Optional<Integer> p) {
//		String field = field1.orElse(sessionService.get("field1"));
//		sessionService.set("field1", field);
//		Pageable pageable = PageRequest.of(p.orElse(0), 9);
//		Page<Product> page = proDAO.findByCategory(field, pageable);
//		model.addAttribute("page", page);
//		return "home/brandshop";
//	}
//
	// Submit theo khoang gia
	@RequestMapping("price")
	public String searchGia(Model model, @RequestParam("min") Optional<Double> min,
			@RequestParam("max") Optional<Double> max, @RequestParam("p") Optional<Integer> p) {
		Double minPrice = min.orElse(Double.MIN_VALUE);
		Double maxPrice = max.orElse(Double.MAX_VALUE);
		sessionService.set("max", maxPrice);
		sessionService.set("min", minPrice);
		Pageable pageable = PageRequest.of(p.orElse(0), 6);
		Page<Product> page = proDAO.findByPrice(minPrice, maxPrice, pageable);
		model.addAttribute("page", page);
		return "user/shop";

	}

	@RequestMapping("search")
	public String searchAndPage(Model model, @RequestParam("keywords") Optional<String> kw,
			@RequestParam("p") Optional<Integer> p) {
		String kwords = kw.orElse(sessionService.get("keywords"));
		sessionService.set("keywords", kwords);
		Pageable pageable = PageRequest.of(p.orElse(0), 6);
		Page<Product> page = proDAO.findByKeywords("%" + kwords + "%", pageable);
		model.addAttribute("page", page);
		return "user/shop";
	}

}
