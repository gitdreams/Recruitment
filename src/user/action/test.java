package user.action;

import com.opensymphony.xwork2.ActionSupport;

public class test extends ActionSupport {

	@Override
	public String execute() {
		System.out.println("test");
		return "success";
	}
}
