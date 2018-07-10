package user.action;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import dao.db.Cont;
import obj.cont.impl.BioCont;
import obj.cont.impl.UserBio;
import obj.cont.impl.WorkCont;
import obj.domain.bio;
import obj.domain.user;
import obj.domain.work;

public class ListBio extends ActionSupport{

	private Map<String, bio> mapbio;

	public Map<String, bio> getMapbio() {
		return mapbio;
	}

	public void setMapbio(Map<String, bio> mapbio) {
		this.mapbio = mapbio;
	}
	@Override
	public String execute() {
		String message = "input";
		this.mapbio = new HashMap<String, bio>();
		UserBio search = new UserBio();
		List<bio> bios = new ArrayList<bio>();
		String sql = "select * from bio where userid=?";
		ActionContext act = ActionContext.getContext();
		user user = (user)act.getSession().get("userobj");
//		System.out.println(user);
		String userid = String.valueOf(user.getId());
//		System.out.println(userid);
		String[] args= {
				userid
		};
		bios = search.getSetBio(sql, args);
		for(int i=0; i<bios.size(); i++) {
			this.mapbio.put(String.valueOf(bios.get(i).getId()), bios.get(i));
		}
//		System.out.println(this.mapbio);
		return "success";
	}
}
