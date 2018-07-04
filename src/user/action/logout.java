package user.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class logout extends ActionSupport{

	@Override
	public String execute(){
		
		ActionContext act = ActionContext.getContext();
		act.getSession().remove("username");
		act.getSession().remove("role");
		
		return "success";
	}
}
