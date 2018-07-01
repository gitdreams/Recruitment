package dao.impl.db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import util.db.DBUtils;
import dao.db.Dao;

public class DaoImpl implements Dao {

	private Connection conn = null;
	private PreparedStatement ps = null;

	@Override
	public ResultSet Search(String sql, String[] str) {
		// TODO Auto-generated method stub
		ResultSet rs = null;
		try {
			conn = DBUtils.getConnection();
			ps = conn.prepareStatement(sql);
			if (str != null) {
				for (int i = 0; i < str.length; i++) {
					ps.setString(i + 1, str[i]);
				}
				//ps.setInt(str.length, Integer.parseInt(str[str.length - 1]));
			}
			rs = ps.executeQuery();
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("²éÑ¯Ê§°Ü");
		}
		return rs;
	}

	@Override
	public int update(String sql, String[] str) {
		// TODO Auto-generated method stub
		int state = 0;
		try {
			conn = DBUtils.getConnection();
			ps = conn.prepareStatement(sql);
			if (str != null) {
				for (int i = 0; i < str.length; i++) {
					ps.setString(i + 1, str[i]);
				}
				//ps.setInt(str.length, Integer.getInteger(str[str.length - 1]));
			}
			state = ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("¸üÐÂÊ§°Ü");
		}
		return state;
	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}
