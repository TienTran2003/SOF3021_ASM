package tientran.com.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tientran.com.dao.OrderDAO;
import tientran.com.dao.OrderDetailDAO;
import tientran.com.model.Account;
import tientran.com.model.CartItem;
import tientran.com.model.Order;
import tientran.com.model.OrderDetail;
import tientran.com.model.Product;

@Service
public class CheckOutService {

	@Autowired
	ShoppingCartService shoppingCartService;

	@Autowired
	OrderDAO orderDAO;

	@Autowired
	OrderDetailDAO orderDetailDAO;

	public Order order(Account currentUser, String address) {
		Order order = new Order();
		order.setAccount(currentUser);
		order.setAddress(address);
		orderDAO.save(order);
		for (CartItem item : shoppingCartService.getItems()) {
			OrderDetail orderDetail = new OrderDetail();
			orderDetail.setOrder(order);
			orderDetail.setPrice(item.getPrice());
			orderDetail.setQuantity(item.getQty());

			Product product = new Product();
			product.setId(item.getId());
			product.setName(item.getName());
			orderDetail.setProduct(product);
			orderDetailDAO.save(orderDetail);
		}
		shoppingCartService.clear();
		return order;
	}
}
