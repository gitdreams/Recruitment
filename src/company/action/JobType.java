package company.action;

import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import dao.db.Cont;
import obj.cont.impl.TypeCont;
import obj.domain.category;


public class JobType extends ActionSupport {
	
	private List<category> typelist;

	
	public void setTypelist(List<category> typelist) {
		this.typelist = typelist;
	}


	public List<category> getTypelist() {
		
		Cont search = new TypeCont();
		List<category> list = search.getAllDB();
		return list;
	}
	

}
