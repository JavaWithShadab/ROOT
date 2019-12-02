package db;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {

	// Development Side
//	private static final String DRIVER_CLASS = "org.mariadb.jdbc.Driver";
//	private static final String DB_URL = "jdbc:mariadb://localhost:3307/stepzart";
//	private static final String DB_USER = "root";
//	private static final String DB_PASS = "root";

	// Production Side
	private static final String DRIVER_CLASS = "com.mysql.cj.jdbc.Driver";
	private static final String DB_URL = "jdbc:mysql://103.93.17.59:3306/stepzart";
	private static final String DB_USER = "admin";
	private static final String DB_PASS = "Mysql@database9102";

	public static Connection getConnection() {

		Connection connection = null;

		try {
			Class.forName(DRIVER_CLASS).newInstance();
			connection = DriverManager.getConnection(DB_URL, DB_USER, DB_PASS);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return connection;

	}

}
