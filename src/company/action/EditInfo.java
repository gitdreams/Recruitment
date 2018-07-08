package company.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import dao.db.Cont;
import obj.cont.impl.CompanyCont;
import obj.domain.company;

public class EditInfo extends ActionSupport{

	private company company;

	public company getCompany() {
		return company;
	}

	public void setCompany(company company) {
		this.company = company;
	}
	
	@Override
	public String execute() {
		// 完善公司信息
		String message = "input";
		Cont updateCompany = new CompanyCont();
		String sql = "update company set phone=?, location=?, profile=? where company_name=?";
		ActionContext ctl = ActionContext.getContext();
		this.company.setCompany_name((String)ctl.getSession().get("company"));
		
		String[] args = {
			this.company.getPhone(),
			this.company.getLocation(),
			this.company.getProfile(),
			this.company.getCompany_name()
		};
		int status = updateCompany.update(sql, args);
		if(status > 0) {
			ActionContext act = ActionContext.getContext();
			act.getSession().put("companyobj", this.company);
			message = "success";
		}
		return message;
	}
	
}
