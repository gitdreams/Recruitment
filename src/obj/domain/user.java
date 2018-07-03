package obj.domain;

/**
 * 
 * @author dreams
 *
 * 该类是用户类，描述应聘者信息，
 * 包括ID，用户名，密码，邮箱，个人介绍，性别
 * true:男
 * false:女
 * profile:个人简介，不会同步到简历
 * 注册只需“用户名，email，密码”
 * 
 */

public class user {

	private long id;
	private String username;
	private String password;
	private String email;
	private String phone;
	private boolean sex;
	private String profile;
	
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public boolean isSex() {
		return sex;
	}
	public void setSex(boolean sex) {
		this.sex = sex;
	}
	public String getProfile() {
		return profile;
	}
	public void setProfile(String profile) {
		this.profile = profile;
	}
	
	
	
}
