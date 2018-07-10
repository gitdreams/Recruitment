package obj.cont.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dao.db.Cont;
import dao.db.Dao;
import dao.impl.db.DaoImpl;
import obj.domain.bio;
import obj.domain.category;

public class UserBio implements Cont{

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
				bio.setId(rs.getInt("id"));
				bio.setJob(rs.getString("job"));
				bio.setLocation(rs.getString("location"));
				bio.setLow(rs.getInt("low"));
				bio.setHigh(rs.getInt("high"));
				bio.setProfile(rs.getString("profile"));
				bio.setName(rs.getString("name"));
				bio.setPhone(rs.getString("phone"));
				bio.setSchool(rs.getString("school"));
				bio.setEmail(rs.getString("email"));
				bio.setSex(rs.getString("sex"));
				bio.setType(rs.getString("type"));
				bio.setWorkTime(rs.getString("worktime"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return bio;
	}

	@Override
	public List getAllDB() {
		// TODO Auto-generated method stub
		ResultSet rs;
		String sql="select * from bio";
		Dao dao = new DaoImpl();
		rs = dao.Search(sql, null);
		List<bio> bios = new ArrayList<bio>();
		try {
			while(rs.next()) {
				bio bio = new bio();
				bio.setId(rs.getInt("id"));
				bio.setJob(rs.getString("job"));
				bio.setLocation(rs.getString("location"));
				bio.setLow(rs.getInt("low"));
				bio.setHigh(rs.getInt("high"));
				bio.setProfile(rs.getString("profile"));
				bio.setName(rs.getString("name"));
				bio.setPhone(rs.getString("phone"));
				bio.setSchool(rs.getString("school"));
				bio.setEmail(rs.getString("email"));
				bio.setSex(rs.getString("sex"));
				bio.setType(rs.getString("type"));
				bio.setWorkTime(rs.getString("worktime"));
				bios.add(bio);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return bios;
	}

	@Override
	public int update(String sql, String[] str) {
		// TODO Auto-generated method stub
		Dao dao = new DaoImpl();
		int status = dao.update(sql, str);
		return status;
	}
	
	public List getSetBio(String sql, String[] args) {
		// TODO Auto-generated method stub
		ResultSet rs;
		Dao dao = new DaoImpl();
		rs = dao.Search(sql, args);
		List<bio> bios = new ArrayList<bio>();
		try {
			while(rs.next()) {
				bio bio = new bio();
				bio.setId(rs.getInt("id"));
				bio.setJob(rs.getString("job"));
				bio.setLocation(rs.getString("location"));
				bio.setLow(rs.getInt("low"));
				bio.setHigh(rs.getInt("high"));
				bio.setProfile(rs.getString("profile"));
				bio.setName(rs.getString("name"));
				bio.setPhone(rs.getString("phone"));
				bio.setSchool(rs.getString("school"));
				bio.setEmail(rs.getString("email"));
				bio.setSex(rs.getString("sex"));
				bio.setType(rs.getString("type"));
				bio.setWorkTime(rs.getString("worktime"));
				bios.add(bio);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return bios;
	}

}
