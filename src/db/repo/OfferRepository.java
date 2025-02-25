package db.repo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import com.sun.org.apache.xpath.internal.operations.Bool;

import beans.Offer;
import db.DBConnection;

public class OfferRepository {

	public static Offer findOffer(long id) {

		String select = "SELECT * FROM offers WHERE id=? AND is_expired=?";

		Offer offer = null;

		try (Connection connection = DBConnection.getConnection();
				PreparedStatement ps = connection.prepareStatement(select);) {

			ps.setLong(1, id);
			ps.setString(2, "false");

			ResultSet rs = ps.executeQuery();

			if (rs.next()) {

				offer = new Offer();

				offer.setProductId(rs.getLong("product_id"));
				offer.setId(rs.getLong("id"));
				offer.setDescription(rs.getString("description"));

				offer.setExpired(Boolean.valueOf(rs.getString("is_expired")));

				LocalDate expiryDate = LocalDate.parse(rs.getString("expiryDate"));
				offer.setExpiryDate(expiryDate);

			}

			rs.close();

		} catch (SQLException e) {

			e.printStackTrace();
		}

		return offer;

	}

	public static Offer findOfferByProductId(long productId) {

		String select = "SELECT * FROM offers WHERE product_id=? AND is_expired=?";

		Offer offer = null;

		try (Connection connection = DBConnection.getConnection();
				PreparedStatement ps = connection.prepareStatement(select);) {

			ps.setLong(1, productId);
			ps.setString(2, "false");

			ResultSet rs = ps.executeQuery();

			if (rs.next()) {

				offer = new Offer();

				offer.setProductId(rs.getLong("product_id"));
				offer.setId(rs.getLong("id"));
				offer.setDescription(rs.getString("description"));
				offer.setExpired(Boolean.valueOf(rs.getString("is_expired")));
				LocalDate expiryDate = LocalDate.parse(rs.getString("expiryDate"));
				offer.setExpiryDate(expiryDate);

			}

			rs.close();

		} catch (SQLException e) {

			e.printStackTrace();
		}

		return offer;

	}

	public static List<Offer> getAllOffers() {

		String select = "SELECT * FROM offers WHERE is_expired=?";

		List<Offer> offers = new ArrayList<Offer>();

		try (Connection connection = DBConnection.getConnection();
				PreparedStatement ps = connection.prepareStatement(select);) {

			ps.setString(1, "false");

			ResultSet rs = ps.executeQuery();

			if (rs.next()) {

				Offer offer = new Offer();

				offer.setId(rs.getLong("id"));
				offer.setDescription(rs.getString("description"));
				offer.setExpired(Boolean.valueOf(rs.getString("is_expired")));

				LocalDate expiryDate = LocalDate.parse(rs.getString("expiryDate"));
				offer.setExpiryDate(expiryDate);

				offers.add(offer);

			}

		} catch (SQLException e) {

			e.printStackTrace();
		}

		return offers;

	}

	public static boolean createOffer(Offer offer) {

		boolean isSucces = false;

		String insert = "INSERT INTO offers (description, expiryDate, product_id, is_expired) VALUES (?,?,?,?)";

		try (Connection connection = DBConnection.getConnection();
				PreparedStatement ps = connection.prepareStatement(insert);) {

			ps.setString(1, offer.getDescription());
			ps.setString(2, offer.getExpiryDate().toString());
			ps.setLong(3, offer.getProductId());
			ps.setString(4, "false");

			ps.executeUpdate();

			isSucces = true;

		} catch (SQLException e) {

			e.printStackTrace();
		}
		return isSucces;

	}

	public static void updateOffer(Offer offer) {

		long id = offer.getId();
		if (id == 0) {

			createOffer(offer);

		} else {
			String update = "UPDATE offers SET description=? , expiryDate=? WHERE id=?";

			try (Connection connection = DBConnection.getConnection();
					PreparedStatement ps = connection.prepareStatement(update);) {

				ps.setString(1, offer.getDescription());
				ps.setString(2, offer.getExpiryDate().toString());
				ps.setLong(3, offer.getId());

				ps.executeUpdate();

			} catch (SQLException e) {

				e.printStackTrace();
			}
		}

	}

	public static void exipredOffer(Offer offer) {

		String update = "UPDATE offers SET is_expired=? WHERE id=?";

		try (Connection connection = DBConnection.getConnection();
				PreparedStatement ps = connection.prepareStatement(update);) {

			ps.setString(1, "true");

			ps.setLong(2, offer.getId());

			ps.executeUpdate();

		} catch (SQLException e) {

			e.printStackTrace();
		}
	}

	public static void deleteOffer(long id) {

		String delete = "DELETE FROM offers WHERE id=?";

		try (Connection connection = DBConnection.getConnection();
				PreparedStatement ps = connection.prepareStatement(delete);) {

			ps.setLong(1, id);
			ps.executeUpdate();

		} catch (SQLException e) {

			e.printStackTrace();
		}

	}

}
