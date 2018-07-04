package obj.cont.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dao.db.Cont;
import dao.db.Dao;
import dao.impl.db.DaoImpl;
import obj.domain.*;

public class CompanyCont implements Cont{

	@Override
	public Object getOne(String sql, String[] str) {
		// TODO Auto-generated method stub
		ResultSet rs;
		Dao dao = new DaoImpl();
		rs = dao.Search(sql, str);
		company company = new company();
		try {
			while(rs.next()) {
				company.setId(rs.getInt("ID"));
				company.setCompany_name(rs.getString("company_name"));
				company.setUsername(rs.getString("username"));
				company.setPassword(rs.getString("password"));
				company.setProfile(rs.getString("profile"));
				company.setLocation(rs.getString("location"));
				company.setPhone(rs.getString("phone"));
				company.setEmail(rs.getString("email"));
			}
		} catch(SQLException e) {
			e.printStackTrace();
		}
		return company;
	}

	@Override
	public List getAllDB() {
		// TODO Auto-generated method stub
		ResultSet rs;
		String sql = "select * from company";
		Dao dao = new DaoImpl();
		rs = dao.Search(sql, null);
		List<company> companys = new ArrayList<company>();
		try {
			while(rs.next()) {
				company company = new company();
				company.setCompany_name(rs.getString("company_name"));
				company.setUsername(rs.getString("username"));
				company.setPassword(rs.getString("password"));
				company.setProfile(rs.getString("profile"));
				company.setLocation(rs.getString("location"));
				company.setPhone(rs.getString("phone"));
				company.setEmail(rs.getString("email"));
				companys.add(company);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return companys;
	}

	@Override
	public int update(String sql, String[] str) {
		// TODO Auto-generated method stub
		Dao dao = new DaoImpl();
		int status = dao.update(sql, str);
		return status;
	}

}
