package user.action;

import org.apache.catalina.startup.UserConfig;

import com.opensymphony.xwork2.ActionContext;
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
	
	public void addSession(String role){
		ActionContext session = ActionContext.getContext();
		session.getSession().put("username", this.email_name);
		session.getSession().put("role", role);		
	}
	
	public String user_login() {
		String message = "input";
		
		String sql = "select * from users where (username=? or email=?) and password=?";
		String[] args = {
				this.email_name,
				this.email_name,
				this.password
		};
		Cont search = new UsersCont();
		Object obj = search.getOne(sql, args);
//		System.out.println(obj);
		if(obj!=null) {
			// ���û�������ɫ������session
			this.addSession("user");
			message = "success";
//			System.out.println(message);
		}
		else {
			addActionMessage("�û������������");
		}
		return message;
		
	}
	
	public String company_login() {
		String message = "input";
		
		String sql = "select * from company where (username=? or email=?) and password=?";
		String[] args = {
				this.email_name,
				this.email_name,
				this.password
		};
		Cont search = new CompanyCont();
		Object obj = search.getOne(sql, args);
		if(obj!=null) {
			// ���û���,����session
			this.addSession("company");
			message = "success";
		}
		else {
			addActionMessage("�û������������");
		}
		return message;
	}
}