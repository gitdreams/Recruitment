package user.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import dao.db.Cont;
import obj.cont.impl.UsersCont;
import obj.domain.user;

public class EditProfile extends ActionSupport{

	private user user;

	public user getUser() {
		return user;
	}

	public void setUser(user user) {
		this.user = user;
	}
	
	@Override
	public String execute() {
		// 完善个人信息
		String message = "input";
		Cont updateUser = new UsersCont();
		String sql = "update users set phone=?, sex=?, profile=? WHERE username=?";
		ActionContext ctl = ActionContext.getContext();
		this.user.setUsername((String)ctl.getSession().get("username"));
		
		String[] args = {
				this.user.getPhone(),
				this.user.getSex(),
				this.user.getProfile(),
				this.user.getUsername()
		};
		int status = updateUser.update(sql, args);
		if(status > 0) {
			message="success";
		}
		return message;
	}
	
}
