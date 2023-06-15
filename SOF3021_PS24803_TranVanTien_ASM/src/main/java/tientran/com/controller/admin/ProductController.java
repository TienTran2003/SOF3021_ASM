package tientran.com.controller.admin;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import tientran.com.dao.CategoryDAO;
import tientran.com.dao.ProductDAO;
import tientran.com.model.Product;

@RequestMapping("/admin")
@Controller
public class ProductController {
	@Autowired
	ProductDAO dao;

	@Autowired
	CategoryDAO categoryDAO;

	@RequestMapping("/product")
	public String control(Model model) {
		Product item = new Product();
		model.addAttribute("item", item);
		return "admin/product";
	}

	@RequestMapping("/product/edit/{id}")
	public String edit(Model model, @PathVariable("id") Integer id) {
		Product item = dao.findById(id).get();
		model.addAttribute("item", item);
		List<Product> items = dao.findAll();
		model.addAttribute("items", items);
		return "admin/product";
	}

	@RequestMapping("/product/create")
	public String create(Product item) {
		item.setCreateDate(new Date());
		dao.save(item);
		return "redirect:/admin/product";
	}

	@RequestMapping("/product/delete/{id}")
	public String create(@PathVariable("id") Integer id) {
		dao.deleteById(id);
		return "/admin/product";
	}

	@RequestMapping("/product/update")
	public String update(Product item) {
		dao.save(item);
		return "redirect:/admin/product/edit/" + item.getId();
	}

//	@ModelAttribute("categories")
//	public List<Category> getCategories() {
//		List<Category> categories = categoryDAO.findAll();
//		return categories;
//	}
//
//	@ModelAttribute("availables")
//	public Map<Boolean, String> getAdmins() {
//		Map<Boolean, String> map = new HashMap<>();
//		map.put(true, "Stocking");
//		map.put(false, "Out of Stock");
//		return map;
//	}
}
