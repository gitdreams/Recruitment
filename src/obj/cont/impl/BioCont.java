package obj.cont.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import dao.db.Cont;
import dao.db.Dao;
import dao.impl.db.DaoImpl;
import obj.domain.bio;
import obj.domain.company;
import obj.domain.message;

public class BioCont implements Cont{

	@Override
	public Object getOne(String sql, String[] str) {
		// TODO Auto-generated method stub
		ResultSet rs;
		Dao dao = new DaoImpl();
		rs = dao.Search(sql, str);
		bio bio = null;
		try {
			while(rs.next()) {
				bio = new bio();
//				message.setCompany(rs.getString("company"));
//				message.setMessage(rs.getString("message"));
				bio.setUserid(rs.getInt("userid"));
				bio.setId(rs.getInt("id"));
			}
		} catch(SQLException e) {
			e.printStackTrace();
		}
		return bio;
	}

	@Override
	public List getAllDB() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int update(String sql, String[] str) {
		// TODO Auto-generated method stub
		return 0;
	}

}
