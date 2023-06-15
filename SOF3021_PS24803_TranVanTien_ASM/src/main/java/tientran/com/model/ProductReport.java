package tientran.com.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Id;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
public class ProductReport implements Serializable{
	@Id
	int productid;
	String name;
	String image;
	Integer price;
}
