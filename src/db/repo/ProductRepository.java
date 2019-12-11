package db.repo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import beans.Product;
import db.DBConnection;

public class ProductRepository {

	public static Product findProduct(long id) {

		String select = "SELECT * FROM products WHERE id=?";

		Product product = new Product();

		try (Connection connection = DBConnection.getConnection();
				PreparedStatement ps = connection.prepareStatement(select);) {

			ps.setLong(1, id);

			ResultSet rs = ps.executeQuery();

			if (rs.next()) {

				product = convertProductFromResultSet(rs);

			}

			rs.close();

		} catch (SQLException e) {

			e.printStackTrace();
		}

		return product;

	}

	public static List<Product> getAllProduct() {

		String select = "SELECT * FROM products";

		List<Product> products = new ArrayList<Product>();

		try (Connection connection = DBConnection.getConnection();
				PreparedStatement ps = connection.prepareStatement(select);
				ResultSet rs = ps.executeQuery();)

		{
			while (rs.next()) {

				Product product = convertProductFromResultSet(rs);

				products.add(product);

			}

		} catch (

		SQLException e) {

			e.printStackTrace();
		}

		return products;

	}

	public static List<Product> getAllProductByCategory(String category) {

		String select = "SELECT * FROM products WHERE category=?";

		List<Product> products = new ArrayList<Product>();

		try (Connection connection = DBConnection.getConnection();
				PreparedStatement ps = connection.prepareStatement(select);) {

			ps.setString(1, category);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {

				Product product = convertProductFromResultSet(rs);

				products.add(product);

			}

			rs.close();

		} catch (SQLException e) {

			e.printStackTrace();
		}

		return products;
	}

	public static List<Product> getAllProductByLocation(String location) {

		String select = "SELECT * FROM products WHERE location=?";

		List<Product> products = new ArrayList<Product>();

		try (Connection connection = DBConnection.getConnection();
				PreparedStatement ps = connection.prepareStatement(select);) {

			ps.setString(1, location);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				Product product = convertProductFromResultSet(rs);
				products.add(product);
			}

			rs.close();

		} catch (SQLException e) {

			e.printStackTrace();
		}

		return products;
	}

	public static List<Product> getAllProductByCategoryAndLocation(String category, String location) {

		String select = "SELECT * FROM products WHERE category=? AND location=?";

		List<Product> products = new ArrayList<Product>();

		try (Connection connection = DBConnection.getConnection();
				PreparedStatement ps = connection.prepareStatement(select);) {

			ps.setString(1, category);
			ps.setString(2, location);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {

				Product product = convertProductFromResultSet(rs);

				products.add(product);

			}

			rs.close();

		} catch (SQLException e) {

			e.printStackTrace();
		}

		return products;
	}

	public static List<Product> getAllProduct(long userId) {

		String select = "SELECT * FROM products WHERE user_id=?";

		List<Product> products = new ArrayList<Product>();

		try (Connection connection = DBConnection.getConnection();
				PreparedStatement ps = connection.prepareStatement(select);) {

			ps.setLong(1, userId);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {

				Product product = convertProductFromResultSet(rs);

				products.add(product);

			}

			rs.close();

		} catch (SQLException e) {

			e.printStackTrace();
		}

		return products;
	}

	public static long createProduct(Product product) {

		long id = -1;

		String insert = "INSERT INTO products (category, title, description, image1, image2, image3, image4, image5, location, price, user_id) values (?,?,?,?,?,?,?,?,?,?,?)";

		try (Connection connection = DBConnection.getConnection();
				PreparedStatement ps = connection.prepareStatement(insert, Statement.RETURN_GENERATED_KEYS);) {

			ps.setString(1, product.getCategory());
			ps.setString(2, product.getTitle());
			ps.setString(3, product.getDescription());

			ps.setString(4, product.getImage1());
			ps.setString(5, product.getImage2());
			ps.setString(6, product.getImage3());
			ps.setString(7, product.getImage4());
			ps.setString(8, product.getImage5());
			ps.setString(9, product.getLocation());

			ps.setFloat(10, product.getPrice());

			ps.setLong(11, product.getUser().getId());

			ps.executeUpdate();

			ResultSet rs = ps.getGeneratedKeys();

			if (rs.next()) {

				id = rs.getLong(1);
			}

		} catch (SQLException e) {

			e.printStackTrace();
		}
		return id;

	}

	public static boolean updateProduct(Product product) {

		boolean isSucces = false;

		String insert = "UPDATE products SET category=?, title=?, description=?, image1=?, image2=?, image3=?, image4=?, image5=?, price=?, user_id=? WHERE id=?";

		try (Connection connection = DBConnection.getConnection();
				PreparedStatement ps = connection.prepareStatement(insert);) {

			ps.setString(1, product.getCategory());
			ps.setString(2, product.getTitle());
			ps.setString(3, product.getDescription());

			ps.setString(4, product.getImage1());
			ps.setString(5, product.getImage2());
			ps.setString(6, product.getImage3());
			ps.setString(7, product.getImage4());
			ps.setString(8, product.getImage5());

			ps.setFloat(9, product.getPrice());
			ps.setLong(10, product.getUser().getId());

			ps.setLong(11, product.getId());

			ps.executeUpdate();

			isSucces = true;

		} catch (SQLException e) {

			e.printStackTrace();
		}
		return isSucces;

	}

	public static void deleteProduct(long id) {

		String delete = "DELETE FROM products WHERE id=?";

		try (Connection connection = DBConnection.getConnection();
				PreparedStatement ps = connection.prepareStatement(delete);) {

			ps.setLong(1, id);

			ps.executeUpdate();

		} catch (SQLException e) {

			e.printStackTrace();
		}

	}

	private static Product convertProductFromResultSet(ResultSet rs) {

		Product product = new Product();

		try {

			product.setCategory(rs.getString("category"));
			product.setDescription(rs.getString("description"));
			product.setId(rs.getLong("id"));

			product.setImage1(rs.getString("image1"));
			product.setImage2(rs.getString("image2"));
			product.setImage3(rs.getString("image3"));
			product.setImage4(rs.getString("image4"));
			product.setImage5(rs.getString("image5"));

			product.setLocation(rs.getString("location"));

			product.setTitle(rs.getString("title"));
			product.setPrice(rs.getFloat("price"));

			product.setUserId(rs.getLong("user_id"));
			product.getOffer();

		} catch (Exception e) {
			e.printStackTrace();
		}

		return product;
	}

}
