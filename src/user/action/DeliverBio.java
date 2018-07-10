package user.action;

import java.util.List;
import java.text.SimpleDateFormat;
import java.util.Date;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import dao.db.Cont;
import obj.cont.impl.DeliverCont;
import obj.cont.impl.UserBio;
import obj.cont.impl.UsersCont;
import obj.cont.impl.WorkCont;
import obj.domain.*;

public class DeliverBio extends ActionSupport {
	
	private delivery delivery;
	private work work;
	private List bio;
	private List worklist;
	private String job;
	
	
	
	public String getJob() {
		return job;
	}

	public void setJob(String job) {
		this.job = job;
	}

	public List getWorklist() {
		return worklist;
	}

	public void setWorklist(List worklist) {
		this.worklist = worklist;
	}

	public work getWork() {
		return work;
	}

	public void setWork(work work) {
		this.work = work;
	}

	

	public List getBio() {
		return bio;
	}

	public void setBio(List bio) {
		this.bio = bio;
	}

	public delivery getDelivery() {
		return delivery;
	}

	public void setDelivery(delivery delivery) {
		this.delivery = delivery;
	}
	
	@Override 
	public String execute() {
		
		String message="input";
		String sql = "insert into delivery(bio_id, user_id,company,date) values(?,?,?,?)";
		this.getAllUserInfo();
//		int bio_id=0;
		String search = "select * from bio where userid=? and job=?";
		ActionContext a = ActionContext.getContext();
		user u = (user)a.getSession().get("userobj");
		int userid = u.getId();
		String[] str= {
				String.valueOf(userid),
				this.job
		};
		Cont ubio=new UserBio();
		bio b = (bio)ubio.getOne(search, str);
		
		ActionContext act = ActionContext.getContext();
		user user = (user) act.getSession().get("userobj");
		int user_id = user.getId();
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
		String date=df.format(new Date());
		String[] args= {
				String.valueOf(b.getId()),
				String.valueOf(user_id),
				this.delivery.getCompany(),
				date
		};
		Cont add = new DeliverCont();
		int status=add.update(sql, args);
		if(status>0) {
			message="success";
		}
		return message;
	}
	
	public void getAllUserInfo() {
		ActionContext act = ActionContext.getContext();
		user user = (user)act.getSession().get("userobj");
		String userid = String.valueOf(user.getId());
		UserBio usersearch = new UserBio();
		String usersql="select * from bio where userid=?";
		String[] str= {
				userid
		};
		this.bio = usersearch.getSetBio(usersql, str);
	}
	
	public String getAllWorkInfo() {

		Cont search = new WorkCont();
		this.worklist = search.getAllDB();
		this.getAllUserInfo();
		return "success";
	}
	
	public String getInfo() {
		String message = "input";
		
		String sql="select * from work where company=?";
		String[] args= {
				this.work.getCompany()
		};
		Cont search = new WorkCont();
		Object obj = search.getOne(sql, args);
		WorkCont search2 = new WorkCont();
		this.worklist = search2.getSetDB(sql, args);
		this.getAllUserInfo();
		
		if(obj!=null && this.bio!=null) {
			this.work=(work)obj;
			message="success";
		}
		return message;
	}
}
