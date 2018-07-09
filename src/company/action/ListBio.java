package company.action;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import obj.cont.impl.UserBio;
import obj.domain.bio;
import obj.domain.company;
import obj.domain.work;


public class ListBio extends ActionSupport{

	private Map<String, bio> mapbio;
	private bio bio;
	
	public bio getBio() {
		return bio;
	}

	public void setBio(bio bio) {
		this.bio = bio;
	}

	public Map<String, bio> getMapbio() {
		return mapbio;
	}

	public void setMapbio(Map<String, bio> mapbio) {
		this.mapbio = mapbio;
	}
	
	@Override
	public String execute() {
		String message="input";
		
		String sql="SELECT * FROM bio WHERE id IN (SELECT DISTINCT bio_id FROM delivery WHERE company=?)";
		ActionContext act = ActionContext.getContext();
		company company = (company) act.getSession().get("companyobj");
		String[] args = {
				company.getCompany_name()
		};
		UserBio ub = new UserBio();
		List<bio> bios = new ArrayList<bio>();
		bios = ub.getSetBio(sql, args);
		this.mapbio = new HashMap<String, bio>();
		for(int i=0; i<bios.size(); i++) {
			this.mapbio.put(String.valueOf(bios.get(i).getId()), bios.get(i));
		}
		return "success";
	}
	
	public String oneBio() {
		String message = "input";
		
		return message;
	}
}
