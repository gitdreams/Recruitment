package obj.domain;

/**
 * 
 * @author admin
 * 
 * 该类描述用户简历的类，
 * 包括id，工作类型（实习，全职，暑假工），期望工作地点，月薪，简历主体
 * 
 */

public class bio {

	private int id;
	private String job;
	private String location;
	private int low; //薪资最低和最高
	private int high;
	private String profile;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}

	public String getJob() {
		return job;
	}
	public void setJob(String job) {
		this.job = job;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	
	public int getLow() {
		return low;
	}
	public void setLow(int low) {
		this.low = low;
	}
	public int getHigh() {
		return high;
	}
	public void setHigh(int high) {
		this.high = high;
	}
	public String getProfile() {
		return profile;
	}
	public void setProfile(String profile) {
		this.profile = profile;
	}
	
}