package company.action;

import java.util.List;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import com.opensymphony.xwork2.ActionSupport;

import obj.cont.impl.WorkCont;
import obj.domain.*;

public class ListJob extends ActionSupport{

	private Map<String, work> mapwork;
	private String condition;
	

	
	public String getCondition() {
		return condition;
	}



	public void setCondition(String condition) {
		this.condition = condition;
	}



	public Map<String, work> getMapwork() {
		return mapwork;
	}



	public void setMapwork(Map<String, work> mapwork) {
		this.mapwork = mapwork;
	}

	@Override
	public String execute() {
		String message = "input";
		this.mapwork = new HashMap<String, work>();
		WorkCont search = new WorkCont();
		List<work> works = new ArrayList<work>();
		String sql = "select * from work";
		String[] args = new String[1];

		works = search.getSetDB(sql, null);
		for(int i=0; i<works.size(); i++) {
			this.mapwork.put(String.valueOf(works.get(i).getId()), works.get(i));
		}
		return "success";
	}
}
