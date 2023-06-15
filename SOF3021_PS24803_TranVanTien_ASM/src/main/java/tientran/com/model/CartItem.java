package tientran.com.model;

import javax.persistence.Id;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class CartItem {
	@Id
	Integer id;
	String name;
	double price;
	String image;
	int qty = 1;
}
