package user.action;

import com.opensymphony.xwork2.ActionSupport;

import obj.domain.*;
import obj.cont.impl.*;
import dao.db.Cont;

public class user_registration extends ActionSupport {

	private user user;
	private String repass;

	public String getRepass() {
		return repass;
	}

	public void setRepass(String repass) {
		this.repass = repass;
	}

	public user getUser() {
		return user;
	}

	public void setUser(user user) {
		this.user = user;
	}

	@Override
	public String execute() {
		String message = "input";
		
//		System.out.println(user.getEmail());
		
		Cont adduser = new UsersCont();
		// 注册只需用户名，密码，和邮箱，当用户登入到系统之后可以补全个人信息，phone,sex,profile
		String sql = "insert into users(username, password, email) values(?,?,?)";
		String[] args = { user.getUsername(), user.getPassword(), user.getEmail() };
		int status = adduser.update(sql, args);
		if (status > 0) {
			message = "success";
		}

		return message;

	}
}
