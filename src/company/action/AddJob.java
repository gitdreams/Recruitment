package company.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import dao.db.Cont;
import obj.cont.impl.AddWorkCont;
import obj.domain.*;

public class AddJob extends ActionSupport {

	private work work;

	public work getWork() {
		return work;
	}

	public void setWork(work work) {
		this.work = work;
	}
	
	@Override
	public String execute() {
		String message="input";
		
		String sql = "insert into work(work,location,low,high,jobtime,company,experence,type,profile) values(?,?,?,?,?,?,?,?,?)";
		ActionContext ctl = ActionContext.getContext();
		String company = (String)ctl.getSession().get("company");
				
		String[] args = {
			this.work.getWork(),
			this.work.getLocation(),
			String.valueOf(this.work.getLow()),
			String.valueOf(this.work.getHigh()),
			this.work.getJobtime(),
			company,
			this.work.getExperience(),
			this.work.getType(),
			this.work.getProfile()
		};
		
		Cont add = new AddWorkCont();
		int status = add.update(sql, args);
		if(status>0) {
			System.out.println(args);
			message = "success";
		}
		return message;
	}
}
