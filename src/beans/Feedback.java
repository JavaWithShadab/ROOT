package beans;

public class Feedback {

	private Long id;

	private String text;

	private Product product;

	@Override
	public String toString() {
		return "Feedback [id=" + id + ", text=" + text + ", product=" + product + "]";
	}

	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;

	}

	public Product getProduct() {
		return product;
	}

	public Long getProductId() {
		return product.getId();
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

}
