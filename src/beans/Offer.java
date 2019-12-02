package beans;

import java.time.LocalDate;

import db.repo.ProductRepository;

public class Offer {

	private long id;

	private String description;

	private LocalDate expiryDate;

	private long productId;

	private Product product;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public LocalDate getExpiryDate() {
		return expiryDate;
	}

	public void setExpiryDate(LocalDate expiryDate) {
		this.expiryDate = expiryDate;
	}

	public Product getProduct() {

		return product = ProductRepository.findProduct(productId);
	}

	@Override
	public String toString() {
		return "Offers [id=" + id + ", description=" + description + ", expiryDate=" + expiryDate + "]";
	}

	public long getProductId() {
		return productId;
	}

	public void setProductId(long productId) {
		this.productId = productId;
	}

}
