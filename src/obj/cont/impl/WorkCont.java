package obj.cont.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dao.db.Cont;
import dao.db.Dao;
import dao.impl.db.DaoImpl;
import obj.domain.work;

public class WorkCont implements Cont{

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

	@Override
	public int update(String sql, String[] str) {
		// TODO Auto-generated method stub
		return 0;
	}

	public List getSetDB(String sql, String[] args) {
		ResultSet rs;
		Dao dao = new DaoImpl();
		rs = dao.Search(sql, args);
		List<work> works = new ArrayList<work>();
		try {
			while(rs.next()) {
				work work = new work();
				work.setId(rs.getInt("id"));
				work.setWork(rs.getString("work"));
				work.setLocation("location");
				work.setLow(rs.getInt("low"));
				work.setHigh(rs.getInt("high"));
				work.setProfile(rs.getString("profile"));
				work.setJobtime(rs.getString("jobtime"));
				work.setCompany(rs.getString("company"));
				work.setExperience(rs.getString("experience"));
				work.setType(rs.getString("type"));
				works.add(work);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return works;
	}
}
