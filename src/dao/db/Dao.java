package dao.db;

import java.sql.ResultSet;

public interface Dao {

	public ResultSet Search(String sql, String str[]);

	public int update(String sql, String str[]);

	// public void add(Person p)throws SQLException;
	//
	// public void update(Person p)throws SQLException;
	//
	// public void delete(int id)throws SQLException;
	//
	// public Person findById(int id)throws SQLException;

}
