package db.repo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import beans.User;
import db.DBConnection;

public class UserRepository {

	public static User findUser(String email, String password) {

		User user = null;

		String insert = "SELECT * FROM users WHERE email=? AND password=?";

		try (Connection connection = DBConnection.getConnection();) {

			PreparedStatement ps = connection.prepareStatement(insert);

			ps.setString(1, email);
			ps.setString(2, password);

			ResultSet rs = ps.executeQuery();

			if (rs.next()) {

				user = new User();

				user.setId(rs.getLong("id"));
				user.setAddressLine1(rs.getString("addressLine1"));
				user.setAddressLine2(rs.getString("addressLine2"));
				user.setCategory(rs.getString("category"));
				user.setCity(rs.getString("city"));
				user.setContact(rs.getString("contact"));
				user.setEmail(email);
				user.setName(rs.getString("name"));
				user.setPassword(password);
				user.setPincode(rs.getString("pincode"));
				user.setRoleLevel(rs.getString("roleLevel"));
				user.setState(rs.getString("state"));
			}

			ps.close();

		} catch (SQLException e) {

			e.printStackTrace();
		}
		return user;
	}

	public static User findUser(long id) {

		User user = null;

		String insert = "SELECT * FROM users WHERE id=?";

		try (Connection connection = DBConnection.getConnection();) {

			PreparedStatement ps = connection.prepareStatement(insert);

			ps.setLong(1, id);

			ResultSet rs = ps.executeQuery();

			if (rs.next()) {

				user = new User();

				user.setId(rs.getLong("id"));
				user.setAddressLine1(rs.getString("addressLine1"));
				user.setAddressLine2(rs.getString("addressLine2"));
				user.setCategory(rs.getString("category"));
				user.setCity(rs.getString("city"));
				user.setContact(rs.getString("contact"));
				user.setEmail(rs.getString("email"));
				user.setName(rs.getString("name"));
				user.setPassword(rs.getString("password"));
				user.setPincode(rs.getString("pincode"));
				user.setRoleLevel(rs.getString("roleLevel"));
				user.setState(rs.getString("state"));

			}

			ps.close();

		} catch (SQLException e) {

			e.printStackTrace();
		}
		return user;
	}

	public static List<User> getAllUser() {

		List<User> users = new ArrayList<User>();

		String insert = "SELECT * FROM users WHERE rolelevel=?";

		try (Connection connection = DBConnection.getConnection();) {

			PreparedStatement ps = connection.prepareStatement(insert);

			ps.setString(1, "User");

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {

				User user = new User();

				user.setId(rs.getLong("id"));
				user.setAddressLine1(rs.getString("addressLine1"));
				user.setAddressLine2(rs.getString("addressLine2"));
				user.setCategory(rs.getString("category"));
				user.setCity(rs.getString("city"));
				user.setContact(rs.getString("contact"));
				user.setEmail(rs.getString("email"));
				user.setName(rs.getString("name"));
				user.setPassword(rs.getString("password"));
				user.setPincode(rs.getString("pincode"));
				user.setRoleLevel(rs.getString("roleLevel"));
				user.setState(rs.getString("state"));

				users.add(user);
			}

			ps.close();

		} catch (SQLException e) {

			e.printStackTrace();
		}
		return users;
	}

	public static boolean createUser(User user) {

		boolean isSucces = false;

		String insert = "INSERT INTO users (name, email, password, contact, category, addressLine1, addressLine2, roleLevel ,city,state, pincode) values (?,?,?,?,?,?,?,?,?,?,?)";

		try (Connection connection = DBConnection.getConnection();) {

			PreparedStatement ps = connection.prepareStatement(insert);

			ps.setString(1, user.getName());
			ps.setString(2, user.getEmail());
			ps.setString(3, user.getPassword());
			ps.setString(4, user.getContact());
			ps.setString(5, user.getCategory());
			ps.setString(6, user.getAddressLine1());
			ps.setString(7, user.getAddressLine2());
			ps.setString(8, user.getRoleLevel());
			ps.setString(9, user.getCity());
			ps.setString(10, user.getState());
			ps.setString(11, user.getPincode());

			ps.executeUpdate();

			isSucces = true;

			ps.close();

		} catch (SQLException e) {

			e.printStackTrace();
		}
		return isSucces;
	}

	public static void updateUser(User user) {
	}

	public static void deleteUser(long id) {

		String delete = "DELETE FROM users WHERE id=?";

		try (Connection connection = DBConnection.getConnection();) {

			PreparedStatement ps = connection.prepareStatement(delete);

			ps.setLong(1, id);

			ps.executeUpdate();

			ps.close();

		} catch (SQLException e) {

			e.printStackTrace();
		}

	}

}
