package tientran.com.model;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.Data;
import lombok.ToString;

@SuppressWarnings("serial")
@Data
@Entity
@Table(name = "products")

public class Product implements Serializable {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Integer id;

	String name;
	String image;
	Integer price;

    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd")
	@Temporal(TemporalType.DATE)
	@Column(name = "createdate")
	Date createDate = new Date();

	Boolean available;

	@ToString.Exclude
	@ManyToOne
	@JoinColumn(name = "Categoryid")
	Category category;

	@OneToMany(mappedBy = "product")
	List<OrderDetail> orderDetails;

//	@Override
//	public String toString() {
//		StringBuilder builder = new StringBuilder();
//		builder.append("Category [id=");
//		builder.append(id);
//		builder.append(", name=");
//		builder.append(name != null ? name : "null");
//		builder.append("]");
//		return builder.toString();
//	}

}
