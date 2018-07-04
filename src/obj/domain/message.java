package obj.domain;

/**
 * 
 * @author admin
 * 
 * 该类表示企业给应聘者回复的消息，
 * 包括id，公司，应聘者，简历，和消息主体
 * 
 */

public class message {
	
	private int id;
	private String company;
	private int bio_id;
	private String message;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	public int getBio_id() {
		return bio_id;
	}
	public void setBio_id(int bio_id) {
		this.bio_id = bio_id;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	
	
}