package obj.domain;

/**
 * 
 * @author admin
 *
 * 该类描述的是应聘者收藏职位的信息
 * 用户id， 职位id
 *
 */

public class collection {

	private int user_id;
	private int job_id;
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public int getJob_id() {
		return job_id;
	}
	public void setJob_id(int job_id) {
		this.job_id = job_id;
	}
	
	
}