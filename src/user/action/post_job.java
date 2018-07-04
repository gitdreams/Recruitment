package user.action;

import com.opensymphony.xwork2.ActionContext;

import obj.cont.impl.CompanyCont;
import obj.domain.*;
import dao.db.Cont;

public class post_job {

	private String company;
	private work work;
	private String CompanyName;
	
	public String getCompany() {
		return company;
	}
	
	
	public String getCompanyName() {
		return CompanyName;
	}


	public void setCompanyName(String companyName) {
		CompanyName = companyName;
	}


	public String searchCompanyName() {
//		return company;
		String message = "input";
		ActionContext act = ActionContext.getContext();
		String session = (String)act.getSession().get("username");
		String sql = "select * from company where username=?";
		String[] args= {
				session
		};
		Cont cont = new CompanyCont();
		company c = (company)cont.getOne(sql, args);
		if(c.getCompany_name() !=null ) {
			this.CompanyName = c.getCompany_name();
			message = "success";
		}
		return message;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	public work getWork() {
		return work;
	}
	public void setWork(work work) {
		this.work = work;
	}
	
	
}
