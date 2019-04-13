package fcfm.doo.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="user")
public class User {
	
	@Id
	private int id;
	private int age;
	private String phone;
	private String username;
	private String password;
	private String email;
	private String birthday;
	private String name;	

	public User() {
		
	}
	
	public User(String birthday, String phone, String username, String password, String email, int age, String name) {
		super();
		this.age = age;
		this.phone = phone;
		this.username = username;
		this.password = password;
		this.email = email;
		this.birthday = birthday;
		this.name = name;
	}
	
	public int getId() {
		return id;
	}
	
	public void setId(int id) {
		this.id = id;
	}
	
	public int getAge() {
		return age;
	}
	
	public void setAge(int age) {
		this.age = age;
	}
	
	public String getPhone() {
		return phone;
	}
	
	public void setPhone(String phone) {
		this.phone = phone;
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
	
	public String getBirthday() {
		return birthday;
	}
	
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	@Override
	public String toString() {
		return "User [id=" + id + ", age=" + age + ", phone=" + phone + ", username=" + username + ", password="
				+ password + ", email=" + email + ", birthday=" + birthday + ", name=" + name + "]";
	}
}
