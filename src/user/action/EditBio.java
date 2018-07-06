package user.action;

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
		
		String sql = "insert into bio(name,phone,school,email,sex,type,worktime,job,location,low,high,profile) values(?,?,?,?,?,?,?,?,?,?,?,?)";
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
			bio.getProfile()
		};
		Cont add = new UserBio();
		int status = add.update(sql, args);
		if(status>0) {
			message="success";
		}
		
		return message;
	}
}
