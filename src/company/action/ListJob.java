package company.action;

import java.util.List;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import dao.db.Cont;
import obj.cont.impl.UserBio;
import obj.cont.impl.WorkCont;
import obj.domain.*;

public class ListJob extends ActionSupport{

	private Map<String, work> mapwork;
	private String condition;
	private work job;

	
	public work getJob() {
		return job;
	}



	public void setJob(work job) {
		this.job = job;
	}



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
	
	public String typeJob() {
		String message = "input";
		this.mapwork = new HashMap<String, work>();
		WorkCont search = new WorkCont();
		List<work> works = new ArrayList<work>();
		String sql = "select * from work where type=?";
		
		String[] args = {
				this.job.getType()
		};
		
		works = search.getSetDB(sql, args);
		for(int i=0; i<works.size(); i++) {
			this.mapwork.put(String.valueOf(works.get(i).getId()), works.get(i));
		}
		return "success";
	}
	
	public String ListWork() {
		String message = "input";
		this.mapwork = new HashMap<String, work>();
		WorkCont search = new WorkCont();
		List<work> works = new ArrayList<work>();
		String sql = "select * from work where company=?";
		ActionContext act = ActionContext.getContext();
		company company = (company)act.getSession().get("companyobj");
		String[] args = {
				company.getCompany_name()
		};
		
		works = search.getSetDB(sql, args);
		for(int i=0; i<works.size(); i++) {
			this.mapwork.put(String.valueOf(works.get(i).getId()), works.get(i));
		}
		return "success";
	}
	
	
	public String lookJob() {
		
		String message="input";
		
		String sql = "select * from work where id = ?";
		
		String[] args = {
			String.valueOf(job.getId())
		};
//		System.out.println(args);
		Cont search = new WorkCont();
		this.job=(work)search.getOne(sql, args);
		if(job!=null) {
			message="success";
		}
		return message;
	}
	
	public String delete() {
		String message="input";
		Cont delete = new WorkCont();
		String sql = "delete from work where id=?";
		String[] args= {
				String.valueOf(job.getId())	
		};
		int status = delete.update(sql, args);
		if(status>0) {
			message="success";
		}
		return message;
	}
	
	public String searchjob() {
		Cont updateJob = new WorkCont();
		String onesql="select * from work where id = ?";

		String[] str= {
			String.valueOf(job.getId())	
		};
		this.job=(work)updateJob.getOne(onesql, str);
		return "success";
	}
	public String editjobs() {
		String message="input";
		Cont updateJob = new WorkCont();
		String sql="update work set work=?,location=?,low=?,high=?,jobtime=?,company=?,experence=?,type=?,profile=? where id= ?";
//		System.out.println(this.bio.getId());
		System.out.println("율율율율");
		String[] args = {
				this.job.getWork(),
				this.job.getLocation(),
				String.valueOf(this.job.getLow()),
				String.valueOf(this.job.getHigh()),
				this.job.getJobtime(),
				this.job.getCompany(),
				this.job.getExperience(),
				this.job.getType(),
				this.job.getProfile(),
				String.valueOf(this.job.getId())
		};
		int status = updateJob.update(sql, args);
		if(status > 0) {
			message="success";
		}
		return message;
		
	}
}
