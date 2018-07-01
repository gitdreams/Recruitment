package util.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ResourceBundle;

public class DBUtils {

//	public static String url;
//	public static String username;
//	public static String password;
//	public static String driver;
//	private static ResourceBundle rb = ResourceBundle.getBundle("com.util.db.db-config");

	private DBUtils() {

	}

	static {
//		url = rb.getString("jdbc.url");
//		username = rb.getString("jdbc.username");
//		password = rb.getString("jdbc.password");
//		driver = rb.getString("jdbc.driver");
//		System.out.println(url+username+password+driver);
		try {
			Class.forName("org.hsqldb.jdbc.JDBCDriver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}

	public static Connection getConnection() {
		Connection con = null;
		try {
			con = DriverManager.getConnection("jdbc:hsqldb:hsql://localhost", "sa", "");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return con;
	}

	public static void close(ResultSet rs, Statement stat, Connection conn) {
		try {
			if (rs != null)
				rs.close();
			if (stat != null)
				stat.close();
			if (conn != null)
				conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}
