package company.action;

import com.opensymphony.xwork2.ActionSupport;

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
		
		
		return message;
	}
}
