package user.action;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import dao.db.Cont;
import obj.cont.impl.WorkCont;
import obj.domain.*;

public class CollectionWork extends ActionSupport{

	private Map<String, work> mapwork;
	private int jobid;
	
	
	public int getJobid() {
		return jobid;
	}


	public void setJobid(int jobid) {
		this.jobid = jobid;
	}


	public Map<String, work> getMapwork() {
		return mapwork;
	}


	public void setMapwork(Map<String, work> mapwork) {
		this.mapwork = mapwork;
	}

	@Override 
	public String execute() {
		
		String message="input";
		
		String sql = "SELECT * FROM WORK WHERE id in (SELECT jobid FROM collection WHERE userid=?)";	
		ActionContext act = ActionContext.getContext();
		user user = (user)act.getSession().get("userobj");
		String userid = String.valueOf(user.getId());
		String[] args= {
				userid
		};
		this.mapwork = new HashMap<String, work>();
		WorkCont search = new WorkCont();
		List<work> works= new ArrayList<work>();
//		System.out.println(userid);

		works = search.getSetDB(sql, args);
		for(int i=0; i<works.size(); i++) {
			this.mapwork.put(String.valueOf(works.get(i).getId()), works.get(i));
		}
		return "success";
	}
	public String addcollect() {
		String message="input";
		
		String sql="insert into collection(userid,jobid) values(?,?)";
		ActionContext act = ActionContext.getContext();
		user user = (user)act.getSession().get("userobj");
		String userid = String.valueOf(user.getId());
//		System.out.println("1111x1xx1");
//		System.out.println(jobid);
		String[] args= {
				userid,
				String.valueOf(this.jobid)
		};
		Cont update = new WorkCont();
		int status = update.update(sql, args);
		if(status>0) {
			message = "success";
		}
		return message;
	}
}
