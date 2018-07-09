package user.action;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import obj.cont.impl.MessageCont;
import obj.domain.*;

public class ListMessage extends ActionSupport {

	private Map<String, message> mapmessage;
	
	

	public Map<String, message> getMapmessage() {
		return mapmessage;
	}



	public void setMapmessage(Map<String, message> mapmessage) {
		this.mapmessage = mapmessage;
	}



	@Override
	public String execute() {
//		String message = "input";
		this.mapmessage = new HashMap<String, message>();
		MessageCont mc = new MessageCont();
		String sql="select * from message where userid=?";
		ActionContext ctl = ActionContext.getContext();
		user user = (user) ctl.getSession().get("userobj");
		String[] args = {
				String.valueOf(user.getId())
		};
		List<message> messages = mc.getSetDB(sql, args);
		for(int i=0; i<messages.size(); i++) {
			this.mapmessage.put(String.valueOf(messages.get(i).getId()), messages.get(i));
		}
		return "success";
	}
}
