package company.action;

import com.opensymphony.xwork2.ActionSupport;

import obj.domain.*;

public class ListJob extends ActionSupport{

	private work work;
	
	
	public work getWork() {
		return work;
	}


	public void setWork(work work) {
		this.work = work;
	}


	@Override
	public String execute() {
		
		return "";
	}
}
