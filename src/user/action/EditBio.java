package user.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import dao.db.Cont;
import obj.cont.impl.UserBio;
import obj.domain.*;

public class EditBio extends ActionSupport{

	private bio bio;

	public bio getBio() {
		return bio;
	}

	public void setBio(bio bio) {
		this.bio = bio;
	}
	
	@Override 
	public String execute(){
		String message="input";
		
		String sql = "insert into bio(name,phone,school,email,sex,type,worktime,job,location,low,high,profile,userid) values(?,?,?,?,?,?,?,?,?,?,?,?,?)";
		user user = (user)ActionContext.getContext().getSession().get("userobj");
		String userid = String.valueOf(user.getId());
		String[] args = {
			bio.getName(),
			bio.getPhone(),
			bio.getSchool(),
			bio.getEmail(),
			bio.getSex(),
			bio.getType(),
			bio.getWorkTime(),
			bio.getJob(),
			bio.getLocation(),
			String.valueOf(bio.getLow()),
			String.valueOf(bio.getHigh()),
			bio.getProfile(),
			userid
		};
		Cont add = new UserBio();
		int status = add.update(sql, args);
		if(status>0) {
			message="success";
		}
		
		return message;
	}
	
	
	public String lookBio() {
		
		String message="input";
		
		String sql = "select * from bio where id = ?";
		
		String[] args = {
			String.valueOf(bio.getId())
		};
		System.out.println(args);
		Cont search = new UserBio();
		this.bio=(bio)search.getOne(sql, args);
		if(bio!=null) {
			message="success";
		}
		return message;
	}
	
	public String delete() {
		String message="input";
		Cont delete = new UserBio();
		String sql = "delete from bio where id=?";
		String[] args= {
				String.valueOf(bio.getId())	
		};
		int status = delete.update(sql, args);
		if(status>0) {
			message="success";
		}
		return message;
	}
	
	public String searchbio() {
		Cont updateBio = new UserBio();
		String onesql="select * from bio where id = ?";

		String[] str= {
			String.valueOf(bio.getId())	
		};
		this.bio=(bio)updateBio.getOne(onesql, str);
		return "success";
	}
	public String editbio() {
		String message="input";
		Cont updateBio = new UserBio();
		String sql="update bio set name=?,phone=?,school=?,email=?,type=?,worktime=?,job=?,location=?,low=?,high=?,profile=? where id=?";
		System.out.println(this.bio.getId());
		System.out.println("1111");
		String[] args = {
			this.bio.getName(),
			this.bio.getPhone(),
			this.bio.getSchool(),
			this.bio.getEmail(),
			this.bio.getType(),
			this.bio.getWorkTime(),
			this.bio.getJob(),
			this.bio.getLocation(),
			String.valueOf(this.bio.getLow()),
			String.valueOf(this.bio.getHigh()),
			this.bio.getProfile(),
			String.valueOf(this.bio.getId())
		};
		int status = updateBio.update(sql, args);
		if(status > 0) {
			message="success";
		}
		return message;
		
	}
}
