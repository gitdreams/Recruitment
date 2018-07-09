package obj.cont.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dao.db.Cont;
import dao.db.Dao;
import dao.impl.db.DaoImpl;
import obj.domain.company;
import obj.domain.message;

public class MessageCont implements Cont{

	@Override
	public Object getOne(String sql, String[] str) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List getAllDB() {
		// TODO Auto-generated method stub
		return null;
	}

	public List getSetDB(String sql, String[] args) {
		ResultSet rs;
		Dao dao = new DaoImpl();
		rs = dao.Search(sql, args);
		List<message> messages = new ArrayList<message>();
		try {
			while(rs.next()) {
				message message = new message();
				message.setBio_id(rs.getInt("bio_id"));
				message.setCompany(rs.getString("company"));
				message.setId(rs.getInt("id"));
				message.setUserid(rs.getInt("userid"));
				message.setMessage(rs.getString("message"));
				messages.add(message);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return messages;
	}

	@Override
	public int update(String sql, String[] str) {
		// TODO Auto-generated method stub
		return 0;
	}
}
