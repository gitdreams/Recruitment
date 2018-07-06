package obj.cont.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dao.db.Dao;
import dao.impl.db.DaoImpl;
import dao.db.Cont;
import obj.domain.*;

public class UsersCont implements Cont{


	@Override
	public Object getOne(String sql, String[] str) {
		// TODO Auto-generated method stub
		ResultSet rs;
		Dao dao = new DaoImpl();
		rs = dao.Search(sql, str);
		user user = null;
		try {
			while(rs.next()) {
				user = new user();
				user.setId(rs.getInt("id"));
				user.setUsername(rs.getString("username"));
				user.setPassword(rs.getString("password"));
				user.setEmail(rs.getString("email"));
				user.setPhone(rs.getString("phone"));
				user.setProfile(rs.getString("profile"));
				user.setSex(rs.getString("sex"));
			}
		} catch(SQLException e) {
			e.printStackTrace();
		}
		return user;
	}

	@Override
	public List<user> getAllDB() {
		// TODO Auto-generated method stub
		ResultSet rs;
		String sql = "select * from users";
		Dao dao = new DaoImpl();
		rs = dao.Search(sql, null);
		List<user> users = new ArrayList<user>();
		try {
			while(rs.next()) {
				user user = new user();				
				user.setId(rs.getInt("id"));
				user.setUsername(rs.getString("username"));
				user.setPassword(rs.getString("password"));
				user.setEmail(rs.getString("email"));
				user.setPhone(rs.getString("phone"));
				user.setProfile(rs.getString("profile"));
				user.setSex(rs.getString("sex"));
				users.add(user);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return users;
	}

	@Override
	public int update(String sql, String[] str) {
		// TODO Auto-generated method stub
		Dao dao = new DaoImpl();
		int status = dao.update(sql, str);
		return status;
	}


}
