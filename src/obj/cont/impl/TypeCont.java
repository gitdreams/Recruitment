package obj.cont.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dao.db.Cont;
import dao.db.Dao;
import dao.impl.db.DaoImpl;
import obj.domain.category;

public class TypeCont implements Cont{

	@Override
	public Object getOne(String sql, String[] str) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<category> getAllDB() {
		// TODO Auto-generated method stub
		ResultSet rs;
		String sql="select * from category";
		Dao dao = new DaoImpl();
		rs = dao.Search(sql, null);
		List<category> cate = new ArrayList<category>();
		try {
			while(rs.next()) {
				category category = new category();
				category.setFirst(rs.getString("first"));
				category.setSecond(rs.getString("second"));
				cate.add(category);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return cate;
	}

	public List<category> getFirstType() {
		// TODO Auto-generated method stub
		ResultSet rs;
		String sql="select distinct first from category";
		Dao dao = new DaoImpl();
		rs = dao.Search(sql, null);
		List<category> cate = new ArrayList<category>();
		try {
			while(rs.next()) {
				category category = new category();
				category.setFirst(rs.getString("first"));
//				category.setSecond(rs.getString("second"));
				cate.add(category);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return cate;
	}
	
	@Override
	public int update(String sql, String[] str) {
		// TODO Auto-generated method stub
		return 0;
	}

}
