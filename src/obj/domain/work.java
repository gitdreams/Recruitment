package obj.domain;

/**
 * 
 * @author admin
 *
 * 该类是描述一个企业发布一个工作的类
 * 企业发布一个职位需要包括
 * 职位名称， 职位工作地点，职位待遇，职位简介，发布日期，有效日期，公司名称，工作经验， 职位类别
 * 日期 String to Date
 *
 */

public class work {
	
	private int id;
	private String work;
	private String location;
	private int low; // 待遇
	private int high; // 待遇
	private String profile;
	private String jobtime;
	private int effective;
	private String company;
	private String experience; // 工作经验
	private String type; //职位类别，该工作是属于哪个类别工作，下拉框选择
	
	
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	public String getExperience() {
		return experience;
	}
	public void setExperience(String experience) {
		this.experience = experience;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getWork() {
		return work;
	}
	public void setWork(String work) {
		this.work = work;
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
	
	
	public String getJobtime() {
		return jobtime;
	}
	public void setJobtime(String jobtime) {
		this.jobtime = jobtime;
	}
	public int getEffective() {
		return effective;
	}
	public void setEffective(int effective) {
		this.effective = effective;
	}
		
}