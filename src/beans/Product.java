package beans;

import java.io.Serializable;
import java.time.Duration;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.Period;

import db.repo.OfferRepository;
import db.repo.UserRepository;

public class Product implements Serializable {

	public long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public Long getUserId() {
		return userId;
	}

	public void setUserId(long userId) {
		this.userId = userId;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public float getPrice() {
		return price;
	}

	public void setPrice(float price) {
		this.price = price;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getImage1() {
		return image1;
	}

	public void setImage1(String image1) {
		this.image1 = image1;
	}

	public String getImage2() {
		return image2;
	}

	public void setImage2(String image2) {
		this.image2 = image2;
	}

	public String getImage3() {
		return image3;
	}

	public void setImage3(String image3) {
		this.image3 = image3;
	}

	public String getImage4() {
		return image4;
	}

	public void setImage4(String image4) {
		this.image4 = image4;
	}

	public String getImage5() {
		return image5;
	}

	public void setImage5(String image5) {
		this.image5 = image5;
	}

	public User getUser() {
		return UserRepository.findUser(this.userId);
	}

	public String[] getImages() {
		return new String[] { image1, image2, image3, image4, image5 };
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public Offer getOffer() {

		offer = OfferRepository.findOfferByProductId(id);

		if (offer != null && (!offer.getExpired())) {
			LocalDate exipryDate = offer.getExpiryDate();

			LocalDateTime localDateTime1 = exipryDate.atTime(23, 59, 59);
			LocalDateTime now = LocalDateTime.now();

			Period period = getPeriod(now, localDateTime1);
			long[] hms = getTime(now, localDateTime1);
			int days = period.getDays();

			remainingTime = "";

			if (days < 0) {

				OfferRepository.exipredOffer(offer);

			} else {

				if (days > 0) {
					remainingTime = remainingTime + days + " Day(s) ";
				}
				if (hms[0] > 0) {
					remainingTime = remainingTime + hms[0] + " hour(s) ";
				}
				if (hms[1] > 0) {
					remainingTime = remainingTime + hms[1] + " min(s) ";
				}
				if (hms[2] > 0) {
					remainingTime = remainingTime + hms[2] + " sec(s)";
				}
			}

		}
		return offer;
	}

	private static Period getPeriod(LocalDateTime dob, LocalDateTime now) {
		return Period.between(dob.toLocalDate(), now.toLocalDate());
	}

	private static long[] getTime(LocalDateTime dob, LocalDateTime now) {
		LocalDateTime today = LocalDateTime.of(now.getYear(), now.getMonthValue(), now.getDayOfMonth(), dob.getHour(),
				dob.getMinute(), dob.getSecond());
		Duration duration = Duration.between(today, now);

		long seconds = duration.getSeconds();

		long hours = seconds / SECONDS_PER_HOUR;
		long minutes = ((seconds % SECONDS_PER_HOUR) / SECONDS_PER_MINUTE);
		long secs = (seconds % SECONDS_PER_MINUTE);

		return new long[] { hours, minutes, secs };
	}

	public String getRemainingTime() {
		return remainingTime;
	}

	@Override
	public String toString() {
		return "Product [id=" + id + ", category=" + category + ", description=" + description + ", price=" + price
				+ ", title=" + title + ", image1=" + image1 + ", image2=" + image2 + ", image3=" + image3 + ", image4="
				+ image4 + ", image5=" + image5 + ", userId=" + userId + ", location=" + location + "]";
	}

	/**
	 * 
	 */
	private static final long serialVersionUID = -3752581537251761520L;

	private Long id;
	private Offer offer;

	private String category;
	private String description;
	private float price;
	private String title;
	private String image1;
	private String image2;
	private String image3;
	private String image4;
	private String image5;
	private long userId;
	private String location;

	private String remainingTime;

	static final int MINUTES_PER_HOUR = 60;
	static final int SECONDS_PER_MINUTE = 60;
	static final int SECONDS_PER_HOUR = SECONDS_PER_MINUTE * MINUTES_PER_HOUR;
}
