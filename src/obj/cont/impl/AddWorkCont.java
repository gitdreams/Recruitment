package obj.cont.impl;

import java.util.List;

import dao.db.Cont;
import dao.db.Dao;
import dao.impl.db.DaoImpl;

public class AddWorkCont implements Cont{

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
		Dao dao = new DaoImpl();
		int status = dao.update(sql, str);
		return status;
	}

}
