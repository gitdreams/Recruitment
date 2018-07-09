package company.action;

import java.text.SimpleDateFormat;
import java.util.Date;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import dao.db.Cont;
import obj.cont.impl.BioCont;
import obj.cont.impl.DeliverCont;
import obj.cont.impl.MessageCont;
import obj.cont.impl.UserBio;
import obj.domain.*;

public class Message extends ActionSupport {

	private message message;
	private int userid;
	private int bioid;
	
	public int getBioid() {
		return bioid;
	}
	public void setBioid(int bioid) {
		this.bioid = bioid;
	}
	public message getMessage() {
		return message;
	}
	public void setMessage(message message) {
		this.message = message;
	}
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	
	@Override
	public String execute() {
		
		String message="input";
		String sql = "insert into message(bio_id,company,message,userid) values(?,?,?,?)";
		String getuserid = "select * from bio where id=?";
		String[] str= {
				String.valueOf(this.message.getBio_id())
		};
		Cont search = new BioCont();
		System.out.println(this.message.getBio_id());
		bio b = (bio) search.getOne(getuserid, str);
//		System.out.println(b.getName()+"1111");
		if(b == null) {
			return "input";
		}
		String[] args= {
				String.valueOf(this.message.getBio_id()),
				this.message.getCompany(),
				this.message.getMessage(),
				String.valueOf(b.getUserid())
		};
		
		Cont umessage=new MessageCont();
		int status = umessage.update(sql, args);	
		if(status>0) {
			message="success";
		}
		return message;
	}
}
