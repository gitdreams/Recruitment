package user.action;

import org.apache.catalina.startup.UserConfig;

import com.opensymphony.xwork2.ActionSupport;

import dao.db.Cont;
import obj.cont.impl.UsersCont;
import obj.cont.impl.CompanyCont;

public class login extends ActionSupport {
	
	private String email_name;
	private String password;
	public String getEmail_name() {
		return email_name;
	}
	public void setEmail_name(String email_name) {
		this.email_name = email_name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	public String user_login() {
		String message = "input";
		
		String sql = "select * from users where (username=? or email=?) and password=? values(?,?,?)";
		String[] args = {
				this.email_name,
				this.email_name,
				this.password
		};
		Cont search = new UsersCont();
		Object obj = search.getOne(sql, args);
		if(obj!=null) {
			// 将用户名，角色，加入session
			message = "success";
		}
		return message;
		
	}
	
	public String company_login() {
		String message = "input";
		
		String sql = "select * from company where (username=? or email=?) and password=? values(?,?,?)";
		String[] args = {
				this.email_name,
				this.email_name,
				this.password
		};
		Cont search = new CompanyCont();
		Object obj = search.getOne(sql, args);
		if(obj!=null) {
			// 将用户名,加入session
			message = "success";
		}
		return message;
	}
}
